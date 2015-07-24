/**
 * @file plane_background.c
 * @brief tappy plane, background management
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-09
 * Licence: MIT
 */

#include "plane_game.h"


/**
 * local variables
 */
float pxPerMs1 = PLANE_PX_PER_MS / 5; /*far background scrolling speed*/
float pxPerMs2 = PLANE_PX_PER_MS;     /*near background scrolling speed*/


/**
 * @function PlaneBackground1Process
 * @brief plane background (far) display
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void PlaneBackground1Process(uint16_t ms) {

  rect_st lsrc, ldst;
  static length_t wSprite, hSprite, wSurface, hSurface;
  static float fOffsetX;

  /*background is opaque -> DISPLAY_SOLID (fastest procedure)*/
  P2D_SetDisplayMode(DISPLAY_SOLID);
  P2D_SetAlpha(255);
  
  /*t == 0? initialization*/
  if(ms == 0) {
    wSprite = P2D_SpriteGetWidth(sp_plane_background1);
    hSprite = P2D_SpriteGetHeight(sp_plane_background1);
    wSurface = GetWidth();
    hSurface = GetHeight();
    fOffsetX = 0.0f;
  }
  
  /*actualise the display offset according to the elasped time since last execution*/
  fOffsetX += pxPerMs1 * ms;

  /*configure source clip (sprite clip)*/
  lsrc.x = (coord_t) fOffsetX;
  lsrc.y = 0;
  lsrc.w = wSprite;
  lsrc.h = hSprite;
  if(lsrc.x >= lsrc.w) {
    lsrc.x = 0;
    fOffsetX = 0.0f;
  }

  /*configure destination clip (surface clip)*/
  ldst.x = 0;
  ldst.y = 0;
  ldst.w = wSurface;  /*don't care if too large: P2D will correct it*/
  ldst.h = hSurface;

  /*far background sprite*/
  P2D_Sprite16(&lsrc, &ldst, sp_plane_background1);

  /*if the sprite does not fill the whole surface (lsrc.x too high), continue displaying
   by "looping" the sprite (~circular display of the background)*/
  if(wSprite < lsrc.x + wSurface) {
    ldst.x = wSprite - lsrc.x;
    lsrc.x = 0;
    P2D_Sprite16(&lsrc, &ldst, sp_plane_background1);
  }
}


/**
 * @function PlaneBackground2Process
 * @brief plane background (near) display
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void PlaneBackground2Process(uint16_t ms) {

  rect_st lsrc, ldst;
  static length_t wSprite, hSprite, wSurface, hSurface;
  static float fOffsetX;

  /*background is transparent*/
  P2D_SetDisplayMode(DISPLAY_TRANSPARENT);
  P2D_SetAlpha(255);
  
  /*t == 0? initialization*/
  if(ms == 0) {
    wSprite = P2D_SpriteGetWidth(sp_plane_background2);
    hSprite = P2D_SpriteGetHeight(sp_plane_background2);
    wSurface = GetWidth();
    hSurface = GetHeight();
    fOffsetX = 0.0f;
  }
  
  /*actualise the display offset according to the elasped time since last execution*/
  fOffsetX += pxPerMs2 * ms;

  /*configure source clip (sprite clip)*/
  lsrc.x = (coord_t) fOffsetX;
  lsrc.y = 0;
  lsrc.w = wSprite;
  lsrc.h = hSprite;
  if(lsrc.x >= lsrc.w) {
    lsrc.x = 0;
    fOffsetX = 0.0f;
  }

  /*configure destination clip (surface clip)*/
  ldst.x = 0;
  ldst.y = hSurface - lsrc.h;
  ldst.w = wSurface;  /*don't care if too large: P2D will correct it*/
  ldst.h = lsrc.h;

  /*near background sprite*/
  P2D_Sprite16(&lsrc, &ldst, sp_plane_background2);

  /*if the sprite does not fill the whole surface (lsrc.x too high), continue displaying
   by "looping" the sprite (~circular display of the background)*/
  if(wSprite < lsrc.x + wSurface) {
    ldst.x = wSprite - lsrc.x;
    lsrc.x = 0;
    P2D_Sprite16(&lsrc, &ldst, sp_plane_background2);
  }
}
