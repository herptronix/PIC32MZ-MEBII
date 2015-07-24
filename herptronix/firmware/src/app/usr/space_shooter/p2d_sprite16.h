/**
 * @file p2d_sprite16.h
 * @brief specific sprite 16bpp (custom implementation, for q&d games)
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#ifndef _p2d_sprite16_h_
#define _p2d_sprite16_h_

#include "p2d.h"

/**
 * @function P2D_SpriteGetNbAnim
 * @brief return the number of frame contained in a sprite 16 bpp
 * @param const uint8_t *pFile: sprite file
 * @return uint8_t: number of frame; always greater than 0
 */
uint8_t P2D_SpriteGetNbAnim(const uint8_t *pFile);

/**
 * @function P2D_Sprite16GetPixel
 * @brief return the color of a pixel
 * @param const uint8_t *pFile: sprite file
 * @param coord_t x, y: pixel coords
 * @return color_t: color, 0 (black) if error
 */
color_t P2D_Sprite16GetPixel(const uint8_t *ptr, coord_t x, coord_t y);

/**
 * @function P2D_Sprite16
 * @brief put a given sprite (16bpp) part on current surface, at given coordinates
 * @param const rect_st *src: selected part of the sprite to display; if NULL, select the whole sprite
 * @param const rect_st *dst: destination; only x & y are used
 * @param const uint8_t *pFile: 16bpp sprite file
 * @return int8_t: 0 -> something was displayed, -1 -> nothing was displayed
 */
int8_t P2D_Sprite16(const rect_st *src, const rect_st *dst, const uint8_t *pFile);

#endif
