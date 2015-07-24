/**
 * @file game_explosion.c
 * @brief Q&D space shooter 2D game, explosion management.
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "game.h"


/**
 * Private defines
 */
typedef struct {
  const uint8_t *pSprite; /*pointer to the sprite; if NULL, slot is available*/
  rect_st rsrc, rdst;     /*source & destination clip*/
  uint16_t tmFrame, tm;   /*time between 2 frames & internal time counter*/
  uint8_t step;           /*current displayed frame*/
} explosion_st;


/**
 * local variables
 */
static explosion_st explosions[MAX_EXPLOSION];


/**
 * local functions
 */
static explosion_st *FindAvailable(void);
static void ExplosionDraw(explosion_st *obj, uint16_t ms);


/**
 * @function ExplosionAdd
 * @brief add an explosion, if possible
 * @param explosion_e type: see explosion_e enumeration
 * @param const rect_st *rec: explosion will be centered to this rec
 * @return none
 */
void ExplosionAdd(explosion_e type, const rect_st *rec) {

  explosion_st *p;

  if(rec != NULL && type < _EXPLOSION_MAX) {

    /*find an available slot for the new ewplosion*/
    p = FindAvailable();
    
    if(p != NULL) {

      /*select the corresponding sprite*/
      switch(type) {
        case EXPLOSION_SMALL  : p->pSprite = sp_explosion_small; break;
        case EXPLOSION_MEDIUM : p->pSprite = sp_explosion_medium; break;
        case EXPLOSION_LARGE  : p->pSprite = sp_explosion_medium; break;
        case EXPLOSION_SHIELD : p->pSprite = sp_explosion_shield; break;
        default: break;
      }
      
      /*configure the animation*/
      p->tm = 0;
      p->tmFrame = SP_EXPLOSION_TFRAME;
      p->step = 0;

      /*configure source clip (from sprite)*/
      p->rsrc.x = 0;
      p->rsrc.y = 0;
      p->rsrc.w = P2D_SpriteGetWidth(p->pSprite);
      p->rsrc.h = P2D_SpriteGetHeight(p->pSprite) / P2D_SpriteGetNbAnim(p->pSprite);

      /*configure destination clip (to screen)*/
      p->rdst.x = rec->x + ((coord_t)rec->w - p->rsrc.w) / 2;
      p->rdst.y = rec->y + ((coord_t)rec->h - p->rsrc.h) / 2;
      p->rdst.w = p->rsrc.w;
      p->rdst.h = p->rsrc.h;
    }
  }
}


/**
 * @function ExplosionProcess
 * @brief draw active explosions
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void ExplosionProcess(uint16_t ms) {

  explosion_st *p = explosions;
  uint16_t len = MAX_EXPLOSION;

  /*t == 0? initialization*/
  if(ms == 0) {
    memset(explosions, 0, sizeof(explosion_st));
  }
  else {
  
    while(len) {
    
      /*active?*/
      if(p->pSprite != NULL) {
        ExplosionDraw(p, ms);
      }

      /*next slot*/
      len--;
      p++;
    }
  }
}


/**
 * @function FindAvailable
 * @brief find an available slot for a new explosion
 * @param none
 * @return explosion_st *: pointer to available slot, NULL otherwise
 */
static explosion_st *FindAvailable(void) {

  explosion_st *p = explosions, *res = NULL;
  uint16_t len = MAX_EXPLOSION;
  
  while(len && res == NULL) {
  
    if(p->pSprite == NULL) {
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
 * @function ExplosionDraw
 * @brief draw & handle an explosion
 * @param uint16_t ms: milliseconds elapsed during the last frame
 * @return none
 */
static void ExplosionDraw(explosion_st *obj, uint16_t ms) {

  /*update the timer*/
  obj->tm += ms;
  
  /*timer overflow?*/
  if(obj->tm > obj->tmFrame) {
  
    /*increment frame*/
    obj->tm = 0;
    obj->step++;
    
    /*frame overflow? end of explosion, release the slot*/
    if(obj->step >= P2D_SpriteGetNbAnim(obj->pSprite)) {
      obj->pSprite = NULL;
    }
    
    /*update the source clip (from sprite)*/
    obj->rsrc.y = obj->rsrc.h * obj->step;
  }
  
  /*display the object*/
  if(obj->pSprite != NULL) {
    P2D_Sprite16(&(obj->rsrc), &(obj->rdst), obj->pSprite);
  }
}
