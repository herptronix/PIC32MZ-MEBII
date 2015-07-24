/**
 * @file gui_m_keyboard.h
 * @brief keyboard macro
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd)
 *  0.1b  2013-09-15  : initial version
 * Licence: MIT
 */

#ifndef _gui_m_keyboard_h_
#define _gui_m_keyboard_h_

#include "gui.h"
#include "keymap.h"

#define COPY_PASTE_BUFF_SIZE  200 /*internal copy/paste buffer max size*/

/**
 * @function GUI_M_KeyboardInit
 * @brief initialize the keyboard; shall be called before using other keyboard's functions
 * @param none
 * @return none
 */
void GUI_M_KeyboardInit(void);

/**
 * @function GUI_M_KeyboardFlush
 * @brief clear the internal copy/paste buffer
 * @param none
 * @return none
 */
void GUI_M_KeyboardFlush(void);

/**
 * @function GUI_M_KeyboardCreate
 * @brief open top layer & launch the keyboard
 * @param coord_t x, y: desired coords for window; will be checked/modified
 * @param kbd_type_e _type: keyboard type (KEYBOARD_TYPE_FR_FR, KEYBOARD_TYPE_EN_US...)
 * @param void *kbdBuffer: user entry buffer; used as input/output; will be cast to uint8_t*
 * @param uint16_t bufferSize: size (in bytes) of kbdBuffer
 * @param signal_t _sOk: signal when <ENTER> key
 * @param signal_t _sEsc: signal when <ESC> key
 * @return int8_t: 0 success, -1 error; in case of error, the top layer is automatically closed
 */
int8_t GUI_M_KeyboardCreate(coord_t x, coord_t y, kbd_type_e _type, void *kbdBuffer, uint16_t bufferSize, signal_t _sOk, signal_t _sEsc);


#endif
