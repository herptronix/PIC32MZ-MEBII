/**
 * @file gui_debug.h
 * @brief some debug tools for GUI
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-10-16
 * Licence: MIT
 */

#ifndef _gui_debug_h
#define _gui_debug_h

#include "gui.h"

/**
 * @function GUI_DBG_DispMemUsage
 * @brief enable/disable the debug display
 * @param bool bDisp: true/false <-> display/hide
 * @return none
 */
void GUI_DBG_DispMemUsage(bool bDisp);

/**
 * @function GUI_DBG_Task
 * @brief debug display task
 * @param none
 * @return none
 */
void GUI_DBG_Task(void);

#endif