/**
 * @file plane_game_gui.c
 * @brief GUI display
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-09
 * Licence: MIT
 */

#include "game.h"
#include "plane_game.h"
#include "resources.h"


/**
 * local functions
 */
static void DisplayFps(uint16_t ms);
static void DisplayGameOver(uint16_t ms);
static void DisplayStars(uint16_t ms);


/**
 * @function PlaneGuiProcess
 * @brief plane draw GUI (stars, fps, game over...)
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void PlaneGuiProcess(uint16_t ms) {
  DisplayStars(ms);
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
 * @function DisplayStars
 * @brief display the stars counter
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
static void DisplayStars(uint16_t ms) {

  static char str[10];
  static coord_t xo, yo, tmp;
  static uint16_t nbStar, step, tm;
  rect_st src, dst;
  
  /*t == 0? initialization*/
  if(ms == 0) {
    xo = yo = 0;
    nbStar = step = tm = 0;
    memset(str, '0', 10);
  }
  else {
  
    /*stars increased? update the string & shake the counter*/
    if(nbStar != PlanePlayerGetStar()) {
      nbStar = PlanePlayerGetStar();
      sprintf(str, "%03d", PlanePlayerGetStar());
      step = 1;
      tm = 0;
    }

    tm += ms;
    
    switch(step) {

      case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8: case 9: case 10:
        if(tm > 30) {
          tm = 0;
          tmp = 1+P2D_Rand(1);
          if(P2D_Rand(1) == 1) tmp = -tmp;
          if(xo == tmp) xo = -tmp; else xo = tmp;
          tmp = 1+P2D_Rand(1);
          if(P2D_Rand(1) == 1) tmp = -tmp;
          if(yo == tmp) yo = -tmp; else yo = tmp;
          step++;
        }
        break;
      
      case 0:
      default:
        xo = yo = 0;
        break;
    }
    
    P2D_SetDisplayMode(DISPLAY_TRANSPARENT);
    P2D_SetAlpha(255);
    
    /*ui background*/
    src.x = 0;
    src.y = 0;
    src.w = P2D_SpriteGetWidth(sp_plane_ui_back);
    src.h = P2D_SpriteGetHeight(sp_plane_ui_back);
    dst.x = GetWidth() - src.w - 5 + xo;
    dst.y = GetHeight() - src.h - 2 + yo;
    dst.w = GetWidth();
    dst.h = GetHeight();
    P2D_Sprite16(&src, &dst, sp_plane_ui_back);

    /*stars count*/
    dst.x += 26;
    dst.y += 1;
    src.w = P2D_SpriteGetWidth(sp_plane_font);
    src.h = P2D_SpriteGetHeight(sp_plane_font) / 10;
    src.y = (P2D_SpriteGetHeight(sp_plane_font) / 10) * (str[0] - '0');
    P2D_Sprite16(&src, &dst, sp_plane_font);
    dst.x += src.w;
    src.y = (P2D_SpriteGetHeight(sp_plane_font) / 10) * (str[1] - '0');
    P2D_Sprite16(&src, &dst, sp_plane_font);
    dst.x += src.w;
    src.y = (P2D_SpriteGetHeight(sp_plane_font) / 10) * (str[2] - '0');
    P2D_Sprite16(&src, &dst, sp_plane_font);
  }
}


/**
 * @function DisplayGameOver
 * @brief display the game over overlay
 * @param coord_t x, y: absolute coords
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
static void DisplayGameOver(uint16_t ms) {

  rect_st src, dst;

  if(PlanePlayerIsAlive() == false) {
  
    /*black & alpha fillrect*/
    P2D_SetAlpha(127);
    P2D_SetClip(NULL);
    dst.x = 0;
    dst.y = 0;
    dst.w = GetWidth();
    dst.h = GetHeight();
    P2D_SetColor(COLOR_BLACK);
    P2D_FillRect(&dst);
  
    /*game over sprite*/
    P2D_SetDisplayMode(DISPLAY_TRANSPARENT);
    P2D_SetAlpha(255);
    src.x = 0;
    src.y = 0;
    src.w = P2D_SpriteGetWidth(sp_plane_ui_gameover);
    src.h = P2D_SpriteGetHeight(sp_plane_ui_gameover);
    dst.x = (GetWidth() - src.w) / 2;
    dst.y = (GetHeight() - src.h) / 2;
    dst.w = src.w;
    dst.h = src.h;
    P2D_Sprite16(&src, &dst, sp_plane_ui_gameover);
    
    /*credits*/
    P2D_SetFont(FontFreeSerif_4bpp_n_16);
    P2D_SetColors(0xFFFF, 0);
    P2D_PutText(10, GetHeight() - 60, "Graphics from www.kenney.nl");
    P2D_PutText(10, GetHeight() - 40, "Sources available at herptronix.blogspot.fr");
    P2D_PutText(10, GetHeight() - 20, "Touch screen to exit");
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
    P2D_SetDisplayMode(DISPLAY_SOLID);
    P2D_SetAlpha(255);
    DisplayText(GetWidth() - 120, 0, str);
  }
}
