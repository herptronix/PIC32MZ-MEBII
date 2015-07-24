/**
 * @file plane_game_player.c
 * @brief plane mangement & user interactions
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-09
 * Licence: MIT
 */

#include "plane_game.h"
#include "game.h"

/**
 * Local variables
 */
static graphic_obj_st gobj; /*plane animation*/
static float x, y;          /*plane position*/
static uint16_t nbStar;     /*stars counter*/
static float coeff;         /*time coeff; increase when the display is pressed*/
static bool bAlive;         /*if false, game over*/
static float pxPerMsY;      /*plane speed, px per milliseconds*/


/**
 * some accessors
 */
const rect_st *PlanePlayerGetRec(void) {
  return &(gobj.rdst);
}
uint16_t PlanePlayerGetStar(void) {
  return nbStar;
}
void PlanePlayerAddStar(void) {
  nbStar++;
}
bool PlanePlayerIsAlive(void) {
  return bAlive;
}
void PlanePlayerKill(void) {
  bAlive = false;
}


/**
 * @function PlanePlayerProcess
 * @brief plane player display & management
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void PlanePlayerProcess(uint16_t ms) {

  /*DISPLAY_TRANSPARENT: display pixels only if != black*/
  P2D_SetDisplayMode(DISPLAY_TRANSPARENT);
  P2D_SetAlpha(255);
  
  /*t == 0? initialization*/
  if(ms == 0) {
    GraphicObjInit(&gobj, sp_plane_player);
    x = 30;
    y = 100;
    nbStar = 0;
    bAlive = true;
    gobj.tmFrame = 100;
    coeff = 0.0f;
    pxPerMsY = 0.17f;
  }
  else {

    /*touchscreen pressed? plane goes up*/
    if(TouchScreenIsPressed()) {
      if(pxPerMsY > 0.0f) {
        pxPerMsY = -pxPerMsY;
        coeff = 0.0f;
      }
      else {
        coeff += 0.001f * ms;
      }
    }
    /*...or down*/
    else {
      if(pxPerMsY < 0.0f) {
        pxPerMsY = -pxPerMsY;
        coeff = 0.0f;
      }
      else {
        coeff += 0.001f * ms;
      }
    }

    /*time coeff limitation*/
    if(coeff > 1.0f) coeff = 1.0f;
    y += pxPerMsY * coeff * ms;

    /*y limitation*/
    if(y < 0.0f) {
      y = 0.0f;
    }
    else if(y > GetHeight() - gobj.rsrc.h - P2D_SpriteGetHeight(sp_plane_background2)) {
      y = GetHeight() - gobj.rsrc.h - P2D_SpriteGetHeight(sp_plane_background2);
    }

    /*update object position*/
    gobj.rdst.x = x;
    gobj.rdst.y = y;
    
    /*display object*/
    GraphicObjDraw(&gobj, ms);
  }
}
