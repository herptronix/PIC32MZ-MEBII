/**
 * @file game_obj.c
 * @brief Q&D space shooter 2D game, basic animation management.
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "game.h"


/**
 * @function GraphicObjInit
 * @brief clear & initialize the graphic_obj_st
 * @param graphic_obj_st *p: pointer to a graphic_obj_st
 * @param const uint8_t *pSprite: sprite to use
 * @return none
 */
void GraphicObjInit(graphic_obj_st *p, const uint8_t *pSprite) {

  if(p != NULL && pSprite != NULL) {

    /*clear it*/
    memset(p, 0, sizeof(graphic_obj_st));

    /*store the sprite*/
    p->pSprite = pSprite;

    /*configure source clip (from sprite)*/
    p->rsrc.w = P2D_SpriteGetWidth(pSprite);
    p->rsrc.h = P2D_SpriteGetHeight(pSprite) / P2D_SpriteGetNbAnim(pSprite);

    /*configure destination clip (to screen)*/
    p->rdst.w = p->rsrc.w;
    p->rdst.h = p->rsrc.h;
  }
}


/**
 * @function GraphicObjDraw
 * @brief display a graphic_obj_st
 * @param graphic_obj_st *p: pointer to a graphic_obj_st
 * @param uint16_t ms: time elapsed during the last frame
 * @return int8_t: 0 ok, -1 if the object is out of screen
 */
int8_t GraphicObjDraw(graphic_obj_st *obj, uint16_t ms) {

  int8_t res = -1;

  if(obj != NULL && obj->pSprite != NULL) {
  
    /*update the timer*/
    obj->tm += ms;
    
    /*timer overflow?*/
    if(obj->tm > obj->tmFrame) {
    
      /*increment frame*/
      obj->tm = 0;
      obj->step++;
      
      /*frame overflow? reset it*/
      if(obj->step >= P2D_SpriteGetNbAnim(obj->pSprite)) {
        obj->step = 0;
      }
      
      /*update the source clip (from sprite)*/
      obj->rsrc.y = obj->rsrc.h * obj->step;
    }
    
    /*display the object*/
    res = P2D_Sprite16(&(obj->rsrc), &(obj->rdst), obj->pSprite);
  }
  
  return res;
}
