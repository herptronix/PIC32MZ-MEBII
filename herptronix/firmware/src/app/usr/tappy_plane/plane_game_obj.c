/**
 * @file plane_game_obj.c
 * @brief stars & rock management
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-09
 * Licence: MIT
 */

#include "plane_game.h"
#include "game.h" //for the graphic_obj_st management


/**
 * local defines
 */
typedef struct rock_t {
  void (*Handler)(struct rock_t *, uint16_t);
  graphic_obj_st gobj;
  float x, y;
  float pxPerMsX, pxPerMsY;
  uint8_t fsm;
} plane_obj_st;


/**
 * local variables
 */
static plane_obj_st objects[PLANE_MAX_OBJ];

/**
 * local functions
 */
static void RockAdd(bool bRising);
static void StarAdd(void);
static plane_obj_st *FindAvailable(void);
static void RockHandler(plane_obj_st *self, uint16_t ms);
static void StarHandler(plane_obj_st *self, uint16_t ms);


/**
 * @function PlaneObjProcess
 * @brief plane objects (stars / rocks) display
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void PlaneObjProcess(uint16_t ms) {

  static bool bRising;
  static uint16_t tm, fsm;
  uint16_t len = PLANE_MAX_OBJ;
  plane_obj_st *p = objects;

  /*t == 0? initialization*/
  if(ms == 0) {
    memset(objects, 0, (uint16_t) PLANE_MAX_OBJ * sizeof(plane_obj_st));
    bRising = false;
    tm = fsm = 0;
  }
  else {

    tm += ms;
  
    /*add stars / rocks */
    if(tm > 200) {
      tm = 0;
      fsm++;

      switch(fsm) {

        case 0: case 1: case 2:
          break;
        
        case 3: case 4:
          if(P2D_Rand(50) < 25) StarAdd();
          break;

        case 5: case 6: case 7:
          break;

        default:
          bRising = !bRising;
          RockAdd(bRising);
          fsm = 0;
          break;
      }
    }

    /*display stars & rocks*/
    P2D_SetDisplayMode(DISPLAY_TRANSPARENT);
    P2D_SetAlpha(255);
    
    while(len > 0) {
    
      /*valid objeect? process it*/
      if(p->Handler) {
        p->Handler(p, ms);
      }
      
      /*display it; kill it if out of screen*/
      if(GraphicObjDraw(&(p->gobj), ms) < 0) {
        p->Handler = NULL;
      }
      
      /*next slot*/
      len--;
      p++;
    }
  }
}


/**
 * @function FindAvailable
 * @brief find an available object slot
 * @param none
 * @return plane_obj_st *: pointer to available slot, NULL if no available slot
 */
static plane_obj_st *FindAvailable(void) {

  uint16_t len = PLANE_MAX_OBJ;
  plane_obj_st *p = objects, *res = NULL;
  
  while(len && res == NULL) {
    if(p->Handler == NULL) {
      res = p;
    }
    else {
      len--;
      p++;
    }
  }
  return res;
}


/**
 * @function RockAdd
 * @brief add a rock at random y coords
 * @param bool bRising: rising / falling rock
 * @return none
 */
static void RockAdd(bool bRising) {

  plane_obj_st *p = FindAvailable();
  
  if(p != NULL) {
  
    /*select the right sprite file*/
    if(bRising) {
      GraphicObjInit(&(p->gobj), sp_plane_rock_rising);
      p->x = GetWidth() - 2;
      p->y = GetHeight() - p->gobj.rdst.h + (P2D_Rand(p->gobj.rdst.h) / 2);
    }
    else {
      GraphicObjInit(&(p->gobj), sp_plane_rock_falling);
      p->x = GetWidth() - 2;
      p->y = 0.0f - (P2D_Rand(p->gobj.rdst.h) / 2);
    }
    
    /*set speed*/
    p->pxPerMsX = -PLANE_PX_PER_MS;

    /*configure the graphical object*/
    p->gobj.tmFrame = 0xFFFF;
    p->gobj.rdst.x = p->x;
    p->gobj.rdst.y = p->y;
    
    /*set handler*/
    p->Handler = RockHandler;
  }
}


/**
 * @function RockHandler
 * @brief rock handler; check for collision with the player
 * @param plane_obj_st *self: rock ptr
 * @param ms: milliseconds elapsed during the last frame
 * @return none
 */
static void RockHandler(plane_obj_st *self, uint16_t ms) {

  rect_st colRec;
  coord_t x, y, xShip, yShip, xRock, yRock;
  color_t colShip, colRock;
  bool bCollide = false;

  /*update position*/
  self->x += self->pxPerMsX * ms;
  self->gobj.rdst.x = self->x;

  /*collsion with the player clip?*/
  colRec = self->gobj.rdst;
  P2D_Clip(&colRec, PlanePlayerGetRec());
  if(colRec.w > 0 && colRec.h > 0) {

    /**
     * unlike the q&d space shooter, collisions have to be checked with
     * more accuracy. Here, we check that superposed pixels of player &
     * rock sprites are both != color key (black)
     */
    xShip = colRec.x - PlanePlayerGetRec()->x;
    yShip = colRec.y - PlanePlayerGetRec()->y;
    xRock = colRec.x - self->gobj.rdst.x;
    yRock = colRec.y - self->gobj.rdst.y;

    /*check only some pixels contained in the collision rec;
     * checking all pixels would consume too much cpu ?*/
    for(y = 0; y < colRec.h && bCollide == false; y += 2) {
      for(x = 0; x < colRec.w && bCollide == false; x += 2) {

        colShip = P2D_Sprite16GetPixel(sp_plane_player, xShip + x, yShip + y);
        colRock = P2D_Sprite16GetPixel(self->gobj.pSprite, xRock + x, yRock + y);

        if(colShip != 0 && colRock != 0) {
          bCollide = true;
        }
      }
    }

    /*collision? game over*/
    if(bCollide) {
      PlanePlayerKill();
    }
  }
}


/**
 * @function StarAdd
 * @brief add a star at random y coords
 * @param bool bRising: rising / falling rock
 * @return none
 */
static void StarAdd(void) {

  plane_obj_st *p = FindAvailable();

  if(p != NULL) {

    GraphicObjInit(&(p->gobj), sp_plane_star);
    p->x = GetWidth() - 2;
    p->y = (GetHeight()/5) + P2D_Rand(3*GetHeight()/5);

    /*set speed*/
    p->pxPerMsX = -PLANE_PX_PER_MS;
    p->pxPerMsY = 0;

    /*configure the graphical object*/
    p->gobj.tmFrame = 0xFFFF;
    p->gobj.rdst.x = p->x;
    p->gobj.rdst.y = p->y;

    p->Handler = StarHandler;
    p->fsm = 0;
  }
}


/**
 * @function StarHandler
 * @brief star handler; check for collision with the player
 * @param plane_obj_st *self: star ptr
 * @param ms: milliseconds elapsed during the last frame
 * @return none
 */
static void StarHandler(plane_obj_st *self, uint16_t ms) {

  rect_st objRec;
  float fdx, fdy;

  /*update position*/
  self->x += self->pxPerMsX * ms;
  self->y += self->pxPerMsY * ms;
  self->gobj.rdst.x = self->x;
  self->gobj.rdst.y = self->y;

  if(self->fsm == 0) {
  
    /*check for collision*/
    objRec = self->gobj.rdst;
    P2D_Clip(&objRec, PlanePlayerGetRec());

    /*collision?*/
    if(objRec.w > 0 && objRec.h > 0) {

      /*move the star to the GUI counter*/
      self->pxPerMsX = 0.60f;
      fdx = GetWidth() - self->x;
      fdy = (float)GetHeight() - self->y;
      self->pxPerMsY = (fdy / fdx) * fabs(self->pxPerMsX);

      /*increment the counter*/
      PlanePlayerAddStar();
      
      /*then don't check for collision anymore*/
      self->fsm = 1;
    }
  }
}
