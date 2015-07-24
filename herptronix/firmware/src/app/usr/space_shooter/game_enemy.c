/**
 * @file game_enemy.c
 * @brief Q&D space shooter 2D game, enemies management.
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "game.h"


/**
 * Private defines
 */
#define ENEMY_UNAMED  false
#define ENEMY_BOSS    true

typedef enum {
  STATE_NOMINAL,
  STATE_DYING,
  STATE_DEAD
} state_st;

typedef struct enemy_t {
  graphic_obj_st gobj;                                /*generic animation object*/
  float x, y, pxPerMsX, pxPerMsY;                     /*X&Y position and speed*/
  void (*Process)(struct enemy_t *self, uint16_t ms); /*enemy handler; if NULL, the slot is available*/
  uint16_t pv, ps;                                    /*life points, shield points*/
  uint16_t tm, fsm;                                   /*internal time counter & state machine*/
  state_st state;                                     /*internal state*/
} enemy_st;


/**
 * local variables
 */
static enemy_st enemies[MAX_ENEMY];


/**
 * local functions
 */
static void EnemyAdd(bool bBoss);
static void InitEnemy1(enemy_st *self);
static void InitEnemy2(enemy_st *self);
static void InitEnemy3(enemy_st *self);
static void InitEnemyBoss(enemy_st *self);
static void InitAsteroid(enemy_st *self);
static void ProcessEnemy1(enemy_st *self, uint16_t ms);
static void ProcessEnemy2(enemy_st *self, uint16_t ms);
static void ProcessEnemy3(enemy_st *self, uint16_t ms);
static void ProcessEnemyBoss(enemy_st *self, uint16_t ms);
static void ProcessAsteroid(enemy_st *self, uint16_t ms);


/**
 * @function EnemyHandleCollision
 * @brief check if a given rect is in collision with an enemy & apply damage
 * @param const rect_st *rec: input rect
 * @param uint8_t dmg: missile damage
 * @return bool: true -> collsion, false otherwise
 */
bool EnemyHandleCollision(const rect_st *missileRec, uint8_t dmg) {

  rect_st lrect;
  enemy_st *p = enemies;
  uint16_t len = MAX_ENEMY;
  bool bRes = false;
 
  while(len && bRes == false) {
  
    /*for each valid enemy*/
    if(p->Process != NULL && p->state == STATE_NOMINAL) {
    
      /*check collision*/
      lrect = p->gobj.rdst;
      P2D_Clip(&lrect, missileRec);
      
      /*collision?*/
      if(lrect.w > 0 && lrect.h > 0) {
      
        bRes = true;
      
        /*damage on shield, if possible*/
        if(p->ps > dmg) {
          p->ps -= dmg;
          ExplosionAdd(EXPLOSION_SHIELD, missileRec);
        }
        /*otherwise damage on life*/
        else {
          p->ps = 0;
          if(p->pv > dmg) {
            p->pv -= dmg;
            
            /*ship is not yet destroyed: small explosion happens on the missile*/
            ExplosionAdd(EXPLOSION_SMALL, missileRec);
          }
          /*no more life? kill the enemy*/
          else {
            p->pv = 0;
            p->fsm = 0;
            p->state = STATE_DYING;
            
            /*ship is destroyed: medium explosion happens on the ship*/
            ExplosionAdd(EXPLOSION_MEDIUM, &(p->gobj.rdst));
          }
        }
      }
    }

    len--;
    p++;
  }
  
  return bRes;
}


/**
 * @function EnemyProcess
 * @brief draw & move ennemies
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void EnemyProcess(uint16_t ms) {

  enemy_st *p = enemies;
  uint16_t len = MAX_ENEMY;
  static uint16_t delayPop;
  static uint32_t delayPopBoss;
  
  /*DISPLAY_TRANSPARENT: display pixels only if != black*/
  P2D_SetDisplayMode(DISPLAY_TRANSPARENT);
  P2D_SetAlpha(255);

  /*t == 0? initialization*/
  if(ms == 0) {
    memset(enemies, 0, (uint16_t)MAX_ENEMY * sizeof(enemy_st));
    delayPop = 0;
    delayPopBoss = 0;
  }
  else {
  
    /*replace a died enemy every 200ms (anti flood)*/
    delayPop += ms;
    if(delayPop > 200) {
      delayPop = 0;
      EnemyAdd(ENEMY_UNAMED);
    }

    /*add a boss every 40s*/
    delayPopBoss += ms;
    if(delayPopBoss > 40000) {
      delayPopBoss = 0;
      EnemyAdd(ENEMY_BOSS);
    }


    while(len) {

      /*for each valid enemy*/
      if(p->Process != NULL) {

        /*launch its handler*/
        p->Process(p, ms);

        /*display it*/
        if(p->state == STATE_NOMINAL || p->state == STATE_DYING) {
          if(GraphicObjDraw(&(p->gobj), ms) < 0) {
            p->Process = NULL;
          }
        }
        else {
          p->Process = NULL;
        }
      }

      /*next slot*/
      len--;
      p++;
    }
  }
}


/**
 * @function EnemyAdd
 * @brief add (if possible) a new random enemy
 * @param bool bBoss: if true, add a boss; otherwise, add an unamed random enemy
 * @return none
 */
static void EnemyAdd(bool bBoss) {

  enemy_st *p = enemies;
  uint16_t len = MAX_ENEMY;
  
  while(len) {
  
    /*available slot?*/
    if(p->Process == false) {
    
      /*clear content*/
      memset(p, 0, sizeof(enemy_st));

      /*new handler, random*/
      if(bBoss == false) {
        switch(P2D_Rand(_ENEMY_MAX)) {
          case ENEMY_SHIP_1: InitEnemy1(p); break;
          case ENEMY_SHIP_2: InitEnemy2(p); break;
          case ENEMY_SHIP_3: InitEnemy3(p); break;
          case ENEMY_ASTEROID: InitAsteroid(p); break;
          default: break;
        }
      }
      else {
        InitEnemyBoss(p);
      }

      len = 0;
    }
    else {
      len--;
      p++;
    }
  }
}


/**
 * @function InitEnemy1
 * @brief enemy #1 initializer
 * @param enemy_st *self
 * @return none
 */
static void InitEnemy1(enemy_st *self) {

  GraphicObjInit(&(self->gobj), sp_enemy1_ship);

  /*set initial position*/
  self->x = GetWidth() - 2;
  self->y = P2D_Rand(GetHeight() - self->gobj.rdst.h);

  /*set speed*/
  self->pxPerMsX = -0.060f;
  self->pxPerMsY = 0.0f;

  /*register missile handler*/
  self->Process = ProcessEnemy1;
  
  /*set life & shield*/
  self->pv = 5;
  self->ps = 0;

  /*configure the graphical object*/
  self->gobj.tmFrame = 100;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function InitEnemy2
 * @brief enemy #2 initializer
 * @param enemy_st *self
 * @return none
 */
static void InitEnemy2(enemy_st *self) {

  GraphicObjInit(&(self->gobj), sp_enemy2_ship);

  /*set initial position*/
  self->x = GetWidth() - 2;
  self->y = P2D_Rand(GetHeight() - self->gobj.rdst.h);

  /*set speed*/
  self->pxPerMsX = -0.060f;
  self->pxPerMsY = 0.02f;
  
  /*set life & shield*/
  self->pv = 15;
  self->ps = 0;

  /*register missile handler*/
  self->Process = ProcessEnemy2;

  /*configure the graphical object*/
  self->gobj.tmFrame = 100;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function InitEnemy3
 * @brief enemy #3 initializer
 * @param enemy_st *self
 * @return none
 */
static void InitEnemy3(enemy_st *self) {

  GraphicObjInit(&(self->gobj), sp_enemy3_ship);

  /*set initial position*/
  self->x = GetWidth() - 2;
  self->y = P2D_Rand(GetHeight() - self->gobj.rdst.h);

  /*set speed*/
  self->pxPerMsX = -0.060f;
  self->pxPerMsY = 0.0f;
  
  /*set life & shield*/
  self->pv = 25;
  self->ps = 0;

  /*register missile handler*/
  self->Process = ProcessEnemy3;

  /*configure the graphical object*/
  self->gobj.tmFrame = 100;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function InitEnemy3
 * @brief boss enemy initializer
 * @param enemy_st *self
 * @return none
 */
static void InitEnemyBoss(enemy_st *self) {

  GraphicObjInit(&(self->gobj), sp_enemy_boss_ship);

  /*set initial position*/
  self->x = GetWidth() - 2;
  self->y = P2D_Rand(GetHeight() - self->gobj.rdst.h);

  /*set speed*/
  self->pxPerMsX = -0.060f;
  self->pxPerMsY = -0.060f;

  /*set life & shield*/
  self->pv = 300;
  self->ps = 200;

  /*register missile handler*/
  self->Process = ProcessEnemyBoss;

  /*configure the graphical object*/
  self->gobj.tmFrame = 60;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;
}


/**
 * @function InitAsteroid
 * @brief asteroid initializer
 * @param enemy_st *self
 * @return none
 */
static void InitAsteroid(enemy_st *self) {

  /*just register missile handler*/
  self->Process = ProcessAsteroid;
}


/**
 * @function ProcessEnemy1
 * @brief enemy #1 process
 * @param enemy_st *p: enemy object
 * @param uint16_t ms: milliseconds elapsed during the last frame
 * @return none
 */
static void ProcessEnemy1(enemy_st *self, uint16_t ms) {

  /*update timer*/
  self->tm += ms;

  /*update position (decrement X only)*/
  self->x += self->pxPerMsX * ms;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;

  /*nominal mode? fire every 1 seconds @50%*/
  if(self->state == STATE_NOMINAL) {
    if(self->tm > 1000) {
      self->tm = 0;
      if(P2D_Rand(1) == 1) {
        MissileLaunch(MISSILE_FROM_ENEMY_1, &(self->gobj.rdst));
      }
    }
  }
  /*dying? disappear after 300ms (when the explosion anim is bigger than the ship*/
  else if(self->state == STATE_DYING) {
    if(self->tm > SP_EXPLOSION_TFRAME) {
      self->tm = 0;
      self->fsm++;
      if(self->fsm >= 3) {
        self->state = STATE_DEAD;
      }
    }
  }
  /*dead? nothing to do, shouldn't be here...*/
  else { }
}


/**
 * @function ProcessEnemy2
 * @brief enemy #2 process
 * @param enemy_st *p: enemy object
 * @param uint16_t ms: milliseconds elapsed during the last frame
 * @return none
 */
static void ProcessEnemy2(enemy_st *self, uint16_t ms) {

  coord_t dx, dy;

  /*update timer*/
  self->tm += ms;

  /*update position (try to get the same Y than the player, if still alive)*/
  if(PlayerGetLife() > 0) {
    
    PlayerGetCoords(&dx, &dy);
    if(dy < self->y) {
      self->y -= self->pxPerMsY * ms;
    }
    else if(dy > self->y) {
      self->y += self->pxPerMsY * ms;
    }
    self->gobj.rdst.y = self->y;
  }
  
  self->x += self->pxPerMsX * ms;
  self->gobj.rdst.x = self->x;

  /*nominal mode? fire every 2 seconds @50%*/
  if(self->state == STATE_NOMINAL) {
    if(self->tm > 2000) {
      self->tm = 0;
      if(P2D_Rand(1) == 1) {
        MissileLaunch(MISSILE_FROM_ENEMY_2, &(self->gobj.rdst));
      }
    }
  }
  /*dying? disappear after 300ms (when the explosion anim is bigger than the ship*/
  else if(self->state == STATE_DYING) {
    if(self->tm > SP_EXPLOSION_TFRAME) {
      self->tm = 0;
      self->fsm++;
      if(self->fsm >= 3) {
        self->state = STATE_DEAD;
      }
    }
  }
  /*dead? nothing to do, shouldn't be here...*/
  else { }
}


/**
 * @function ProcessEnemy3
 * @brief enemy #3 process
 * @param enemy_st *p: enemy object
 * @param uint16_t ms: milliseconds elapsed during the last frame
 * @return none
 */
static void ProcessEnemy3(enemy_st *self, uint16_t ms) {

  /*update timer*/
  self->tm += ms;

  /*update position (decrement X only)*/
  self->x += self->pxPerMsX * ms;
  self->y += self->pxPerMsY * ms;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;

  /*nominal mode? fire x3 every 3 seconds @50%*/
  if(self->state == STATE_NOMINAL) {
    switch(self->fsm) {
      case 0:
        if(self->tm > 3000) {
          self->tm = 0;
          if(P2D_Rand(1) == 1) self->fsm = 1;
        }
        break;
        
      case 1: case 2: case 3:
        if(self->tm > 200) {
          self->tm = 0;
          MissileLaunch(MISSILE_FROM_ENEMY_3, &(self->gobj.rdst));
          self->fsm++;
        }
        break;
        
      default:
        self->fsm = 0;
        break;
    }
  }
  /*dying? disappear after 300ms (when the explosion anim is bigger than the ship*/
  else if(self->state == STATE_DYING) {
    if(self->tm > SP_EXPLOSION_TFRAME) {
      self->tm = 0;
      self->fsm++;
      if(self->fsm >= 3) {
        self->state = STATE_DEAD;
      }
    }
  }
  /*dead? nothing to do, shouldn't be here...*/
  else { }
}


/**
 * @function ProcessEnemyBoss
 * @brief enemy boss process
 * @param enemy_st *p: enemy object
 * @param uint16_t ms: milliseconds elapsed during the last frame
 * @return none
 */
static void ProcessEnemyBoss(enemy_st *self, uint16_t ms) {

  rect_st lrect;

  /*update timer*/
  self->tm += ms;

  /*update position*/
  if(self->x > GetWidth() - 100) {
    self->x += self->pxPerMsX * ms;
  }
  
  self->y += self->pxPerMsY * ms;
  if(self->y < 0.0f) {
    self->pxPerMsY = 0.05f;
  }
  else if(self->y > GetHeight() - self->gobj.rdst.h) {
    self->pxPerMsY = -0.05f;
  }
  
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;

  /*nominal mode? fire x3 every 3 seconds @50%*/
  if(self->state == STATE_NOMINAL) {
    switch(self->fsm) {
      case 0:
        if(self->tm > 3000) {
          self->tm = 0;
          self->fsm = 10 * (1 + P2D_Rand(1));
        }
        break;

      /*guided salve*/
      case 10: case 11: case 12: case 13: case 14: case 15: case 16: case 17:
        if(self->tm > 100) {
          self->tm = 0;
          MissileLaunch(MISSILE_FROM_ENEMY_2, &(self->gobj.rdst));
          self->fsm++;
        }
        break;

      /*double canon*/
      case 20: case 21: case 22: case 23: case 24:
        if(self->tm > 100) {
          self->tm = 0;
          lrect.w = 2;
          lrect.h = 2;
          lrect.x = self->gobj.rdst.x;
          lrect.y = self->gobj.rdst.y + lrect.h / 2;
          MissileLaunch(MISSILE_FROM_ENEMY_1, &lrect);

          lrect.y = self->gobj.rdst.y + self->gobj.rdst.h - lrect.h / 2;
          MissileLaunch(MISSILE_FROM_ENEMY_1, &lrect);
          self->fsm++;
        }
        break;

      default:
        self->fsm = 0;
        break;
    }
  }
  /*dying?*/
  else if(self->state == STATE_DYING) {
    /*during the 15 first cycles, create some random explosions*/
    if(self->fsm < 15) {
      self->fsm++;
      if(self->tm > 10) {
        lrect.x = self->gobj.rdst.x + (P2D_Rand(self->gobj.rdst.w));
        lrect.y = self->gobj.rdst.y + (P2D_Rand(self->gobj.rdst.h));
        lrect.w = 1;
        lrect.h = 1;
        ExplosionAdd(EXPLOSION_MEDIUM, &lrect);
      }
    }
    /*then vanish the boss*/
    else {
      if(self->tm > SP_EXPLOSION_TFRAME) {
        self->tm = 0;
        self->fsm++;
        if(self->fsm >= 18) {
          self->state = STATE_DEAD;
        }
      }
    }
  }
  /*dead? nothing to do, shouldn't be here...*/
  else { }
}


/**
 * @function ProcessAsteroid
 * @brief asteroid process
 * @param enemy_st *p: enemy object
 * @param uint16_t ms: milliseconds elapsed during the last frame
 * @return none
 */
static void ProcessAsteroid(enemy_st *self, uint16_t ms) {

  rect_st rec;

  /*launch an asteroid, then release the slot*/
  if(self->state == STATE_NOMINAL) {
    rec.x = GetWidth() - 2;
    rec.y = P2D_Rand(GetHeight()) - P2D_SpriteGetHeight(sp_asteroid);
    MissileLaunch(MISSILE_FROM_ASTEROID, &rec);
    self->state = STATE_DEAD;
  }
  else { }
}
