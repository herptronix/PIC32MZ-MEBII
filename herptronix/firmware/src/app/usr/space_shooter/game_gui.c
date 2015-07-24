/**
 * @file game_gui.c
 * @brief Q&D space shooter 2D game, gui layout.
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "game.h"
#include "resources.h"

/**
 * local functions
 */
static void DisplayFps(uint16_t ms);
static void DisplayBar(uint16_t ms);
static void DisplayGameOver(uint16_t ms);


/**
 * @function GuiProcess
 * @brief draw GUI (life bar, fps, game over...)
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void GuiProcess(uint16_t ms) {
  DisplayBar(ms);
  DisplayGameOver(ms);
  DisplayFps(ms);
}


/**
 * @function DisplayText
 * @brief display strings
 * @param coord_t x, y: absolute coords
 * @param const char *str: string
 * @return none
 */
static void DisplayText(coord_t x, coord_t y, const char *str) {
  P2D_SetClip(NULL);
  P2D_SetFont(FontFreeSerif_4bpp_n_16);
  P2D_SetDisplayMode(DISPLAY_SOLID);
  P2D_SetColors(0xFFFF, 0);
  P2D_PutText(x, y, str);
}


/**
 * @function DisplayGameOver
 * @brief display the game over overlay
 * @param coord_t x, y: absolute coords
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
static void DisplayGameOver(uint16_t ms) {

  static uint16_t tm;
  static uint16_t alpha;
  rect_st rec, src, dst;

  /*t == 0? initialization*/
  if(ms == 0) {
    tm = 0;
    alpha = 0;
  }
  else {
    if(PlayerGetLife() <= 0.0001f) {

      tm += ms;
      if(tm > 60) {
        tm = 0;
        alpha += 5;
        if(alpha > 127) alpha = 127;
      }
      
      P2D_SetDisplayMode(DISPLAY_TRANSPARENT);
      P2D_SetAlpha(alpha);

      /*black & alpha fillrect*/
      P2D_SetClip(NULL);
      rec.x = 0;
      rec.y = 0;
      rec.w = GetWidth();
      rec.h = GetHeight();
      P2D_SetColor(COLOR_BLACK);
      P2D_FillRect(&rec);

      /*game over sprite*/
      src.x = 0;
      src.y = 0;
      src.w = P2D_SpriteGetWidth(sp_gui_gameover);
      src.h = P2D_SpriteGetHeight(sp_gui_gameover);
      dst.x = (GetWidth() - src.w) / 2;
      dst.y = (GetHeight() - src.h) / 2;
      dst.w = src.w;
      dst.h = src.h;
      P2D_Sprite16(&src, &dst, sp_gui_gameover);
      
      /*credits*/
      P2D_SetAlpha(alpha * 2);
      P2D_SetFont(FontFreeSerif_4bpp_n_16);
      P2D_SetColors(0xFFFF, 0);
      P2D_PutText(10, GetHeight() - 60, "Graphics from Iron Plague, a Sinistar Clone game");
      P2D_PutText(10, GetHeight() - 40, "Sources available at herptronix.blogspot.fr");
      P2D_PutText(10, GetHeight() - 20, "Touch screen to exit");

      /*restore alpha*/
      P2D_SetAlpha(255);
    }
  }
}


/**
 * @function DisplayFps
 * @brief display the average fps
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
static void DisplayFps(uint16_t ms) {

  static char str[50];
  static uint16_t frame, fps, tm;
  
  /*t == 0? initialization*/
  if(ms == 0) {
    memset(str, 0, 50);
    frame = 0;
    fps = 0;
    tm = 0;
  }
  else {
  
    tm += ms;
    frame++;
    
    /*compute fps every seconds*/
    if(tm > 1000) {
      fps = frame * 1000 / tm;
      sprintf(str, "%dx%d @ %d FPS", GetWidth(), GetHeight(), fps);
      tm = frame = 0;
    }
    
    /*display FPS string*/
    P2D_SetDisplayMode(DISPLAY_TRANSPARENT);
    P2D_SetAlpha(255);
    DisplayText(GetWidth() - 120, 0, str);
  }
}


/**
 * @function DisplayBar
 * @brief display the UI bar (life & shield)
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
static void DisplayBar(uint16_t ms) {

  static rect_st recSrcBackground, recDstBackground;
  rect_st recSrcBar, recDstBar;
  
  /*t == 0? initialization*/
  if(ms == 0) {
    recSrcBackground.w = P2D_SpriteGetWidth(sp_gui_background);
    recSrcBackground.h = P2D_SpriteGetHeight(sp_gui_background);
    recSrcBackground.x = 0;
    recSrcBackground.y = 0;
    recDstBackground.w = recSrcBackground.w;
    recDstBackground.h = recSrcBackground.h;
    recDstBackground.x = ((coord_t)GetWidth() - recSrcBackground.w) / 2;
    recDstBackground.y = GetHeight() - recSrcBackground.h;
  }


  P2D_SetDisplayMode(DISPLAY_SOLID);
  P2D_SetAlpha(255);
  
  /*display the UI background*/
  P2D_Sprite16(&recSrcBackground, &recDstBackground, sp_gui_background);

  /*display the life bar*/
  recSrcBar.x = 0;
  recSrcBar.y = 0;
  recSrcBar.w = PlayerGetLife() * P2D_SpriteGetWidth(sp_gui_bar);
  recSrcBar.h = P2D_SpriteGetHeight(sp_gui_bar);
  recDstBar.x = recDstBackground.x + 21;
  recDstBar.y = recDstBackground.y;
  recDstBar.w = recSrcBar.w;
  recDstBar.h = recSrcBar.h;
  P2D_Sprite16(&recSrcBar, &recDstBar, sp_gui_bar);

  /*display the shield bar*/
  recSrcBar.x = 0;
  recSrcBar.y = 0;
  recSrcBar.w = PlayerGetShield() * P2D_SpriteGetWidth(sp_gui_bar);
  recSrcBar.h = P2D_SpriteGetHeight(sp_gui_bar);
  recDstBar.x = recDstBackground.x + 117; //117,214
  recDstBar.y = recDstBackground.y;
  recDstBar.w = recSrcBar.w;
  recDstBar.h = recSrcBar.h;
  P2D_Sprite16(&recSrcBar, &recDstBar, sp_gui_bar);
}
