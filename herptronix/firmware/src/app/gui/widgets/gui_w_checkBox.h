/**
 * @file gui_w_checkBox.h
 * @brief basic checkBox implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-07-13
 * Licence: MIT
 */
#ifndef _gui_w_checkBox_h_
#define _gui_w_checkBox_h_

#include "gui.h"

/**
 * @function GUI_W_CheckBoxAdd
 * @brief add a basic check box
 * @param const rect_st *rec: object dimension
 * @param const void *str: text of the checkbox (will be copied into it)
 * @param const uint8_t *pState: pointer to the state of the checkbox (*p == 0: untick, tick otherwise)
 * @return g_obj_st *: pointer to the associated generic object if succedeed, NULL if error.
 */
g_obj_st /*@null@*/ *GUI_W_CheckBoxAdd(const rect_st *rec, const void /*@null@*/ *str, const uint8_t *pState);


#endif
