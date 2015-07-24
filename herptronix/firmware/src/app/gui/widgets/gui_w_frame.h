/**
 * @file gui_w_frame.h
 * @brief frame implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.2b
 * @date (yyyy-mm-dd)
 *  0.1b  2013-07-13  : initial version
 *  0.2b  2013-08-27  : Add alignment
 * Licence: MIT
 */
#ifndef _gui_w_frame_h_
#define _gui_w_frame_h_

#include "gui.h"

/**
 * @function GUI_W_FrameAdd
 * @brief add a frame
 * @param const rect_st *rec: object dimension
 * @param const void *str: text of the frame (will be copied into it)
 * @return g_obj_st *: pointer to the associated generic object if succedeed, NULL if error.
 */
g_obj_st /*@null@*/*GUI_W_FrameAdd(const rect_st *rec, const void /*@null@*/ *str);


#endif
