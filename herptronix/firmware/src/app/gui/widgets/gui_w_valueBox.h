/**
 * @file gui_w_valueBox.h
 * @brief value box implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-07-13
 * Licence: MIT
 */

#ifndef _gui_w_valueBox_h_
#define _gui_w_valueBox_h_

#include "gui.h"

/**
 * supported variable type
 */
typedef enum {
  BOX_T_INT8,
  BOX_T_INT16,
  BOX_T_INT32,
  BOX_T_UINT8,
  BOX_T_UINT16,
  BOX_T_UINT32,
  BOX_T_FLOAT
} valueBoxType_e;


/**
 * @function GUI_W_ValueBoxAdd
 * @brief add a value box
 * @param const rect_st *rec: object dimension
 * @param const void *pVar: pointer to the variable to associate to the valueBox
 * @param valueBoxType_e type: type (uint8_t, int16_t, ...) of the variable
 * @param const char *format: string format, will be used by snprintf()
 * @return g_obj_st *: pointer to the associated generic object if succedeed, NULL if error.
 */
g_obj_st /*@null@*/ *GUI_W_ValueBoxAdd(const rect_st *rec, const void *pVar, valueBoxType_e type, const char *format);


#endif