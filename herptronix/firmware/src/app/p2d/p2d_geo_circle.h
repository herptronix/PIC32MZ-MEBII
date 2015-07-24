/**
 * @file p2d_geo_circle.h
 * @brief p2d circle, using mid-point algorithm
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-04-07
 * Licence: MIT
 */
#ifndef _p2d_geo_circle_h_
#define _p2d_geo_circle_h_

#include "p2d.h"

/**
 * @function P2D_Circle
 * @brief draw a circle
 * @param coord_t x0, coord_t y0: center coordinate
 * @param length_t radius: radius
 * @return none
 */
void P2D_Circle(coord_t x0, coord_t y0, length_t radius);

/**
 * @function P2D_FillCircle
 * @brief draw a filled circle
 * @param coord_t x0, coord_t y0: center coordinate
 * @param length_t radius: radius
 * @return none
 */
void P2D_FillCircle(coord_t x0, coord_t y0, length_t radius);

#endif
