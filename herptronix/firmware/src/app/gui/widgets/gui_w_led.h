/**
 * @file gui_w_led.h
 * @brief led implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-07-13
 * Licence: MIT
 */
#ifndef _gui_w_led_h_
#define _gui_w_led_h_

#include "gui.h"

/**
 * @function GUI_W_LedAdd
 * @brief add a led
 * @param const rect_st *rec: object dimension
 * @param const void *str: text of the led (will be copied into it)
 * @param const uint8_t *pState: pointer to the state of the led (*p == 0: red, green otherwise)
 * @return g_obj_st *: pointer to the associated generic object if succedeed, NULL if error.
 */
g_obj_st /*@null@*/ *GUI_W_LedAdd(const rect_st *rec, const void /*@null@*/ *str, const uint8_t *pState);


#endif
