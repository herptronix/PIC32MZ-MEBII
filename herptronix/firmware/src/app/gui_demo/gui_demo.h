/**
 * @file gui_demo.h
 * @brief demo menu
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#ifndef _gui_demo_h_
#define _gui_demo_h_

#include "main.h"
#include "gui_w.h"
#include "gui_m.h"
#include "p2d_demo.h"
#include "p2d_demo_alpha.h"
#include "gui_demo_button.h"
//#include "gui_demo_file_browser.h"
#include "gui_demo_graph1.h"
#include "gui_demo_graph2.h"
#include "gui_demo_keyboard.h"
#include "gui_demo_list.h"
#include "gui_demo_popup.h"
#include "gui_demo_rbutton.h"
//#include "gui_demo_sd.h"
#include "gui_demo_text.h"
#include "gui_demo_valuebox.h"


#define SIG_DEMO_MENU 0xF00D  /*random...*/

/**
 * @function Gui_DemoLaunchTask
 * @brief Launch the GUI demo
 * @param none
 * @return none
 */
void Gui_DemoLaunchTask(void);

/**
 * @function Gui_DemoFrame
 * @brief clear the screen, delete obejcts & draw a frame
 * @param const void *str: frame title
 * @return none
 */
void Gui_DemoFrame(const void *str);

/**
 * @function Gui_DemoNewPage
 * @brief erase all, add a frame & and 'menu' button; used by most demo pages
 * @param const void *str: frame title
 * @return none
 */
void Gui_DemoNewPage(const void *str);

/**
 * @function Gui_Demo
 * @brief Main menu of the GUI demo
 * @param signal_t sig: unused
 * @return none
 */
void Gui_Demo(signal_t sig);

#endif
