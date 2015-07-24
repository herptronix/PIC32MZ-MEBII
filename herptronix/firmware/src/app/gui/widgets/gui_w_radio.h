/**
 * @file gui_w_radio.h
 * @brief radio implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-07-13
 * Licence: MIT
 */
#ifndef _gui_w_radio_h_
#define _gui_w_radio_h_

#include "gui.h"


/**
 * @function GUI_W_RadioAdd
 * @brief add a radio
 * @param const rect_st *rec: object dimension
 * @param const void *str: text of the checkbox (will be copied into it)
 * @param const uint8_t *pCurrentId: pointer to current id of the selected radio
 * @param uint8_t id: id of the radio
 * @return g_obj_st *: pointer to the associated generic object if succedeed, NULL if error.
 */
g_obj_st /*@null@*/ *GUI_W_RadioAdd(const rect_st *rec, const void /*@null@*/ *str, const uint8_t *pCurrentId, uint8_t id);


#endif
