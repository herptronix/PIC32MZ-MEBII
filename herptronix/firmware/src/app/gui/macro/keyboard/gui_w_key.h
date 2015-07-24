/**
 * @file gui_w_key.h
 * @brief specific widget for the keyboard
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd)
 *  0.1b  2013-09-15  : initial version
 * Licence: MIT
 */

#ifndef _gui_w_key_h_
#define _gui_w_key_h_

#include "gui.h"
#include "keymap.h"

/**
 * @function GUI_KeySetConf
 * @brief configure the keys; shall be called before other key's functions
 * @param gui_font_t _keyFont: font to use for regular glyph (from 32 to 255)
 * @param gui_font_t _keySymbFont: font to use for special glyph (< 32, e.g. ENTER, COPY, CAPS...)
 * @return none
 */
void GUI_KeySetConf(gui_font_t _keyFont, gui_font_t _keySymbFont, kbd_map_e *_pMapId);

/**
 * @function GUI_AddKey
 * @brief ... add a key. Not safe outside the keyboard macro; that's why the file is not in the GUI folder
 * @param const rect_st *rec: key dimension
 * @param const uint8_t *glyph: glyph array (size KBD_MAP_COUNT). One glyph per map
 * @return g_obj_st: NULL if error, pointer to the generic object otherwise
 */
g_obj_st /*@null@*/ *GUI_AddKey(const rect_st *rec, const uint8_t *glyph);

#endif
