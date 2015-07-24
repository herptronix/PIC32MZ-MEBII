/**
 * @file p2d_geo_line.h
 * @brief p2d line (continuous & dashed), using Bresenham's line algorithm
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-04-07
 * Licence: MIT
 */

#ifndef _p2d_geo_line_h_
#define _p2d_geo_line_h_

#include "p2d.h"

/**
 * @function P2D_Gline
 * @brief draw a line
 * @param coord_t x0, coord_t y0: point 0
 * @param coord_t x1, coord_t y1: point 1
 * @return none
 */
void P2D_Gline(coord_t x0, coord_t y0, coord_t x1, coord_t y1);

#endif
