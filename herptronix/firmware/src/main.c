/**
 * @file main.c
 * @brief SMART TFT software entry point
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "uc.h"
#include "ticks.h"
#include "p2d.h"
#include "gui.h"
#include "gui_demo.h"
#include "rtc.h"

int main (void) {

  UcInit();
  TicksInit();
  LCD_Init();
  P2D_Init();
  GUI_Init();
  TouchInit();

  Gui_DemoLaunchTask();

  while(1) {
    GUI_DrawObjects();
    RtcTask();
    UcIdle();
  }

  return -1;
}
