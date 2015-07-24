/**
 * @file gui_w_text.h
 * @brief text area implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.2b
 * @date (yyyy-mm-dd)
 *  0.1b  2013-07-13 : initial version
 *  0.2b  2013-09-07 : Add alignment & word wrap
 * Licence: MIT
 */
#ifndef _gui_w_text_h_
#define _gui_w_text_h_

#include "gui.h"

/**
 * @function GUI_W_TextAdd
 * @brief add a text area
 * @param const rect_st *rec: object dimension
 * @param const void *str: text of the text area (will be copied into it)
 * @return g_obj_st *: pointer to the associated generic object if succedeed, NULL if error.
 */
g_obj_st /*@null@*/ *GUI_W_TextAdd(const rect_st *rec, const void /*@null@*/ *str);


#endif
