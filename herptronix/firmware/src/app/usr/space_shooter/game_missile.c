/**
 * @file game_missile.c
 * @brief Q&D space shooter 2D game, missile management.
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "game.h"


/**
 * private defines
 */
typedef struct missile_s {
  void (*Handler)(struct missile_s *, uint16_t);  /*missile handler; if NULL, the slot is available*/
  graphic_obj_st gobj;                            /*animation object*/
  float x, y;                                     /*missile position*/
  float pxPerMsX, pxPerMsY;                       /*missile speed (x & y), in pixels per milliseconds*/
  uint16_t tm, dmg;                               /*internal timer (for the Handler) & damage points, if collide*/
} missile_st;


/**
 * local functions
 */
static void HndMissileBasic(missile_st *self, uint16_t ms);
static void HndGuidedMissile(missile_st *self, uint16_t ms);
static void InitPlayerMissile(missile_st *self, const rect_st *shipClip);
static void InitEnemyMissile1(missile_st *self, const rect_st *shipClip);
static void InitEnemyMissile2(missile_st *self, const rect_st *shipClip);
static void InitEnemyMissile3(missile_st *self, const rect_st *shipClip);
static void InitAsteroid(missile_st *self, const rect_st *shipClip);
static missile_st *FindAvailable(missile_st *head, uint16_t len);
float fabs(float in);


/**
 * local variable
 */
static missile_st playerMissiles[MAX_PLAYER_MISSILES];
static missile_st enemyMissiles[MAX_ENEMY_MISSILES];


/**
 * @function MissileLaunch
 * @brief launch... a missile
 * @param missile_e type: type... see missile_e
 * @param const rect_st *shipClip: clip (to surface) of the shooting ship
 * @return 0 success, -1 error
 */
int8_t MissileLaunch(missile_e type, const rect_st *shipClip) {

  int8_t res = -1;
  missile_st *p = NULL;
  
  if(type < _MISSILE_FROM_MAX && shipClip != NULL) {
  
    /*get an available slot, according to the sender type (player / enemy)*/
    if(type <= MISSILE_FROM_PLAYER) {
      p = FindAvailable(playerMissiles, MAX_PLAYER_MISSILES);
    }
    else if(type < _MISSILE_FROM_MAX) {
      p = FindAvailable(enemyMissiles, MAX_ENEMY_MISSILES);
    }
    
    /*available slot?*/
    if(p != NULL) {
    
      /*erase the previous content*/
      memset(p, 0, sizeof(missile_st));
      
      /*initialize according to the missile type*/
      switch(type) {
        case MISSILE_FROM_PLAYER  : InitPlayerMissile(p, shipClip); break;
        case MISSILE_FROM_ENEMY_1 : InitEnemyMissile1(p, shipClip); break;
        case MISSILE_FROM_ENEMY_2 : InitEnemyMissile2(p, shipClip); break;
        case MISSILE_FROM_ENEMY_3 : InitEnemyMissile3(p, shipClip); break;
        case MISSILE_FROM_ASTEROID: InitAsteroid(p, shipClip); break;
        default: break;
      }
      
      res = 0;
    }
  }

  return res;
}


/**
 * @function MissileProcess
 * @brief draw & move missiles, check for collisions
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void MissileProcess(uint16_t ms) {

  uint16_t len;
  missile_st *p;
  
  /*DISPLAY_TRANSPARENT: display pixels only if != black*/
  P2D_SetDisplayMode(DISPLAY_TRANSPARENT);
  P2D_SetAlpha(255);
  
  /*t == 0? initialization*/
  if(ms == 0) {
    memset(playerMissiles, 0, (uint16_t) MAX_PLAYER_MISSILES * sizeof(missile_st));
    memset(enemyMissiles, 0, (uint16_t) MAX_ENEMY_MISSILES * sizeof(missile_st));
  }

  /*process player missiles*/
  len = MAX_PLAYER_MISSILES;
  p = playerMissiles;
  while(len) {
  
    /*valid missile?*/
    if(p->Handler != NULL) {
    
      /*update its position*/
      p->Handler(p, ms);
      
      /*display the missile; if not displayable (out of screen) -> kill it*/
      if(GraphicObjDraw(&(p->gobj), ms) < 0) {
        p->Handler = NULL;
      }
      /*else, check for collision with an enemy ship; if collide, apply damage*/
      else {
        if(EnemyHandleCollision(&(p->gobj.rdst), p->dmg)) {
          p->Handler = NULL; /*... and remove the missile*/
        }
      }
    }
    
    /*next missile*/
    len--;
    p++;
  }
  
  /*process enemy missiles*/
  len = MAX_ENEMY_MISSILES;
  p = enemyMissiles;
  while(len) {
  
    /*valid missile?*/
    if(p->Handler != NULL) {
    
      /*update its position*/
      p->Handler(p, ms);
      
      /*display the missile; if not displayable (out of screen) -> kill it*/
      if(GraphicObjDraw(&(p->gobj), ms) < 0) {
        p->Handler = NULL;
      }
      /*else, check for collision with an player's ship; if collide, apply damage*/
      else {
        if(PlayerHandleCollision(&(p->gobj.rdst), p->dmg)) {
          p->Handler = NULL; /*... and remove the missile*/
        }
      }
    }
    
    /*next missile*/
    len--;
    p++;
  }
}


/**
 * @function HndMissileBasic
 * @brief minimalist missile handler
 * @param missile_st *self: pointer parent obj
 * @param uint16_t ms: milliseconds elapsed during the last frame
 * @return none
 */
static void HndMissileBasic(missile_st *self, uint16_t ms) {

  /*update the missile position & the corresponding graphical obj*/
  self->x += self->pxPerMsX * ms;
  self->y += self->pxPerMsY * ms;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function HndGuidedMissile
 * @brief guided missile
 * @param missile_st *self: pointer parent obj
 * @param uint16_t ms: milliseconds elapsed during the last frame
 * @return none
 */
static void HndGuidedMissile(missile_st *self, uint16_t ms) {

  coord_t dx, dy;
  float fdx, fdy;
  
  /*update missile trajectory according to the ship position*/
  PlayerGetCoords(&dx, &dy);
  fdx = self->x - dx;
  fdy = (float)dy - self->y;

  /*guide the missile ONLY if not too close to the player*/
  /*...otherwise it is impossible to dodge it*/
  if(fdx > 50.0f) {
    self->pxPerMsY = (fdy / fdx) * fabs(self->pxPerMsX);
    if(fabs(self->pxPerMsY) > fabs(self->pxPerMsX)) {
      if(self->pxPerMsY < 0.0f) self->pxPerMsY = -fabs(self->pxPerMsX);
      else self->pxPerMsY = fabs(self->pxPerMsX);
    }
  }
  
  /*update the missile position & the corresponding graphical obj*/
  self->x += self->pxPerMsX * ms;
  self->y += self->pxPerMsY * ms;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function InitPlayerMissile
 * @brief minimalist missile init (player ship)
 * @param missile_st *self: pointer parent obj
 * @param const rect_st *shipClip: clip of the player's ship
 * @return none
 */
static void InitPlayerMissile(missile_st *self, const rect_st *shipClip) {

  GraphicObjInit(&(self->gobj), sp_player_missile);

  /*set initial position*/
  self->x = shipClip->x + shipClip->w;
  self->y = shipClip->y + ((coord_t)shipClip->h - self->gobj.rdst.h) / 2;

  /*set speed*/
  self->pxPerMsX = 0.25f;
  self->pxPerMsY = 0.0f;

  /*set damage points*/
  self->dmg = 10;

  /*register missile handler*/
  self->Handler = HndMissileBasic;

  /*configure the graphical object*/
  self->gobj.tmFrame = 0xFFFF;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function InitEnemyMissile1
 * @brief minimalist missile init (enemy ship)
 * @param missile_st *self: pointer parent obj
 * @param const rect_st *shipClip: clip of the player's ship
 * @return none
 */
static void InitEnemyMissile1(missile_st *self, const rect_st *shipClip) {

  GraphicObjInit(&(self->gobj), sp_enemy1_missile);

  /*set initial position*/
  self->x = shipClip->x + shipClip->w;
  self->y = shipClip->y + ((coord_t)shipClip->h - self->gobj.rdst.h) / 2;

  /*set speed*/
  self->pxPerMsX = -0.15f;
  self->pxPerMsY = 0.0f;

  /*set damage points*/
  self->dmg = 10;

  /*register missile handler*/
  self->Handler = HndMissileBasic;

  /*configure the graphical object*/
  self->gobj.tmFrame = 0xFFFF;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function InitEnemyMissile2
 * @brief animated (3 frames) & oriented missile init (enemy ship)
 * @param missile_st *self: pointer parent obj
 * @param const rect_st *shipClip: clip of the player's ship
 * @return none
 */
static void InitEnemyMissile2(missile_st *self, const rect_st *shipClip) {

  coord_t dx, dy;
  float fdx, fdy;

  GraphicObjInit(&(self->gobj), sp_enemy2_missile);

  /*set initial position*/
  self->x = shipClip->x - P2D_SpriteGetWidth(sp_enemy2_missile);
  self->y = shipClip->y + ((coord_t)shipClip->h - self->gobj.rdst.h) / 2;

  /*set speed, according to the player position*/
  self->pxPerMsX = -0.20f;
  PlayerGetCoords(&dx, &dy);
  fdx = self->x - dx;
  fdy = (float)dy - self->y;
  if(fdx > 50.0f) self->pxPerMsY = (fdy / fdx) * fabs(self->pxPerMsX);
  else self->pxPerMsY = 0.0f; /*enemy is too close to the player*/

  /*set damage points*/
  self->dmg = 15;

  /*register missile handler*/
  self->Handler = HndMissileBasic;

  /*configure the graphical object*/
  self->gobj.tmFrame = 150;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function InitEnemyMissile3
 * @brief animated (10 frames) & AUTO oriented missile init (enemy ship)
 * @param missile_st *self: pointer parent obj
 * @param const rect_st *shipClip: clip of the player's ship
 * @return none
 */
static void InitEnemyMissile3(missile_st *self, const rect_st *shipClip) {

  GraphicObjInit(&(self->gobj), sp_enemy3_missile);

  /*set initial position (center of the firing ship)*/
  self->x = shipClip->x + ((coord_t)shipClip->w - self->gobj.rdst.w) / 2;
  self->y = shipClip->y + ((coord_t)shipClip->h - self->gobj.rdst.h) / 2;

  /*set speed, according to the player position*/
  self->pxPerMsX = -0.15f;
  self->pxPerMsY = 0.0f;

  /*set damage points*/
  self->dmg = 20;

  /*register missile handler*/
  self->Handler = HndGuidedMissile;

  /*configure the graphical object*/
  self->gobj.tmFrame = 100;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function InitAsteroid
 * @brief animated (6 frames) asteroid (invulnerable)
 * @param missile_st *self: pointer parent obj
 * @param const rect_st *shipClip: clip of the player's ship
 * @return none
 */
static void InitAsteroid(missile_st *self, const rect_st *shipClip) {

  GraphicObjInit(&(self->gobj), sp_asteroid);

  /*set initial position*/
  self->x = shipClip->x;
  self->y = shipClip->y;

  /*set speed*/
  self->pxPerMsX = -(float) P2D_Rand(1000) / 3000;
  self->pxPerMsY = (float) P2D_Rand(1000) / 10000;
  if(P2D_Rand(1) == 1) self->pxPerMsY = -self->pxPerMsY;

  /*set damage points*/
  self->dmg = 30;

  /*register missile handler*/
  self->Handler = HndMissileBasic;

  /*configure the graphical object*/
  self->gobj.tmFrame = 100;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function FindAvailable
 * @brief find an available missile slot
 * @param missile_st *p: pointer to the head
 * @param uint16_t len: list size
 * @return missile_st: pointer to available slot, NULL if no available slot
 */
static missile_st *FindAvailable(missile_st *p, uint16_t len) {

  missile_st *res = NULL;
  
  while(len && res == NULL) {
    if(p->Handler == NULL) {
      res = p;
    }
    else {
      p++;
      len--;
    }
  }
  return res;
}


/**
 * @function fabs
 * @brief fabs
 * @param float in
 * @return fabs(in)
 */
float fabs(float in) {
  if(in >= 0.0f) return in;
  else return -in;
}
