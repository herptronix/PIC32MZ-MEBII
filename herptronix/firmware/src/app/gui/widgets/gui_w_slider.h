/**
 * @file gui_w_slider.h
 * @brief slider implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.2b
 * @date (yyyy-mm-dd)
 *  0.1b  2013-07-13  : initial version
 *  0.2b  2013-08-27  : Add orientation (vertical / horizontal)
 * Licence: MIT
 */
#ifndef _gui_w_slider_h_
#define _gui_w_slider_h_

#include "gui.h"

/**
 * @function GUI_W_SliderAdd
 * @brief add a slider
 * @param const rect_st *rec: object dimension
 * @param uint8_t *pValue: pointer to the value of the slider (range[0-255])
 * @return g_obj_st *: pointer to the associated generic object if succedeed, NULL if error.
 */
g_obj_st /*@null@*/ *GUI_W_SliderAdd(const rect_st *rec, uint8_t *pValue);


#endif
