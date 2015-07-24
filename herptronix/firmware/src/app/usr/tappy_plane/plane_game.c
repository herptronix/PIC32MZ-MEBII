/**
 * @file plane_game.c
 * @brief tappy plane, another quick & dirty game (flappy bird like)
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-09
 * Licence: MIT
 */

#include "plane_game.h"
#include "timer.h"
#include "touchscreen.h"
#include "gui_demo.h"
#include "delay.h"


/**
 * @function Game
 * @brief Q&D flappy bird like
 * @param signal_t sig: unused
 * @return none
 */
void PlaneGame(signal_t sig) {

  rect_st dim, dst, src;
  surfaceId_t surface;
  bool bDone = false;
  timer_t t;
  uint16_t ms;

  /*clear the whole screen*/
  P2D_SetClip(NULL);
  P2D_SetColor(0);
  P2D_Clear();

  /*buffer creation*/
  dim.w = 460;
  dim.h = 240;
  surface = P2D_SurfaceCreate(&dim);
  if(surface != SURFACE_LCD) {  /*success*/

    /*source rect (from buffer...); here, the whole buffer is selected*/
    src.x = 0;
    src.y = 0;
    src.w = dim.w;
    src.h = dim.h;

    /*destination rect (...to screen); centered*/
    dst.x = ((coord_t) P2D_GetLcdWidth() - dim.w) / 2;
    dst.y = ((coord_t) P2D_GetLcdHeight() - dim.h) / 2;
    dst.w = dim.w;
    dst.h = dim.h;

    /*set ms to 0; will initialize all layers during the first iteration*/
    ms = 0;
    
    /*main loop*/
    while(bDone == false) {

      /*new frame*/
      t = TicksGet();
      P2D_SetDest(surface);
      
      /*process all layers*/
      PlaneBackground1Process(ms);
      PlaneObjProcess(ms);
      PlanePlayerProcess(ms);
      PlaneBackground2Process(ms);
      PlaneGuiProcess(ms);

      /*copy buffer to screen*/
      P2D_SetDest(SURFACE_LCD);
      P2D_CopySurface(surface, &src, &dst);

      /*update the ms counter*/
      ms = TicksGet() - t;
      t = TicksGet();
      
      /*quit the loop?*/
      if(PlanePlayerIsAlive() == false) bDone = true;
    }
    
    /*debouncing & exit*/
    DelayMs(2000);
    while(TouchScreenIsPressed() == false);
  
    P2D_SurfaceDelete(surface);
    GUI_SetUserTask(Gui_Demo);
  }
}
