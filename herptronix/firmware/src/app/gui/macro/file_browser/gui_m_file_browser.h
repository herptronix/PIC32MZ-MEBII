/**
 * @file gui_m_file_browser.h
 * @brief file browser macro (select a file of the SD card)
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-10-27
 * Licence: MIT
 */

#ifndef _gui_m_file_browser_h_
#define _gui_m_file_browser_h_

#include "gui.h"

#define FILE_BROWSER_BTN_SELECT   0xF0F1
#define FILE_BROWSER_BTN_CANCEL   0xF0F2

typedef enum {
  FILE_BROWSER_SEL_FILE,
  FILE_BROWSER_SEL_FOLDER,
  _FILE_BROWSER_SEL
} file_browser_mode_e;


/**
 * @function GUI_M_FileBrowser
 * @brief file browser macro
 * @param file_browser_mode_e m: select mode (select file OR folder
 * @param char *path: pointer to an already allocated string (in/out)
 * @param uint16_t len: max path length
 * @return int8_t: 0 success, -1 error
 */
int8_t GUI_M_FileBrowser(file_browser_mode_e m, char *path, uint16_t len);


#endif
