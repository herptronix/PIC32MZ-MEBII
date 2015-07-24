/**
 * @file gui_m_popup.h
 * @brief some popup messages
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-10-10
 * Licence: MIT
 */

#ifndef _gui_m_popup_h_
#define _gui_m_popup_h_

#include "gui.h"


typedef enum {
  POPUP_BTN_NONE,
  POPUP_BTN_OK,
  POPUP_BTN_YES,
  POPUP_BTN_NO,
  POPUP_BTN_CANCEL,
  POPUP_BTN_SAVE,
  POPUP_BTN_DISCARD,
  _POPUP_BTN_CNT
} gui_m_popup_e;

#define POPUP_SIG_BTN_OK      0xF001
#define POPUP_SIG_BTN_YES     0xF002
#define POPUP_SIG_BTN_NO      0xF003
#define POPUP_SIG_BTN_CANCEL  0xF004
#define POPUP_SIG_BTN_SAVE    0xF005
#define POPUP_SIG_BTN_DISCARD 0xF006


/**
 * @function GUI_M_Popup
 * @brief open top layer & launch a popup
 * @param gui_m_popup_e btn xxx: left/middle/right buttons
 * @param gui_img_t img: image of the popup
 * @param const void *usrStr: user message
 * @return int8_t: 0 success, -1 error; in case of error, the top layer is automatically closed
 */
int8_t GUI_M_Popup(gui_m_popup_e btnLeft, gui_m_popup_e btnMiddle, gui_m_popup_e btnRight, gui_img_t img, const void *usrStr);


#endif
