/**
 * @file game_background.c
 * @brief Q&D space shooter 2D game, background management.
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "game.h"


/**
 * @function BackgroundProcess
 * @brief draw & scroll the background
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void BackgroundProcess(uint16_t ms) {

  rect_st lsrc, ldst;
  static length_t wSprite, hSprite, wSurface, hSurface;
  static float fOffsetX, pxPerMs;

  /*background is opaque -> DISPLAY_SOLID (fastest procedure)*/
  P2D_SetDisplayMode(DISPLAY_SOLID);
  P2D_SetAlpha(255);
  
  /*t == 0? initialization*/
  if(ms == 0) {
    wSprite = P2D_SpriteGetWidth(sp_background);
    hSprite = P2D_SpriteGetHeight(sp_background);
    wSurface = GetWidth();
    hSurface = GetHeight();
    fOffsetX = 0.0f;
    pxPerMs = 0.025;
  }
  
  /*actualise the display offset according to the elasped time since last execution*/
  fOffsetX += pxPerMs * ms;

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

  /*first sprite*/
  P2D_Sprite16(&lsrc, &ldst, sp_background);

  /*if the sprite does not fill the whole surface (lsrc.x too high), continue displaying
   by "looping" the sprite (~circular display of the background)*/
  if(wSprite < lsrc.x + wSurface) {
    ldst.x = wSprite - lsrc.x;
    lsrc.x = 0;
    P2D_Sprite16(&lsrc, &ldst, sp_background);
  }
}
