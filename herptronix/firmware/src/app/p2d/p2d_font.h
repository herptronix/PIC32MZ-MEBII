/**
 * @file p2d_font.h
 * @brief p2d font management (limited to 1BPP and 4BPP)
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#ifndef _p2d_font_h_
#define _p2d_font_h_

#include "p2d.h"

/**
 * @function P2D_SetFont
 * @brief Set the current font
 * @param const uint8_t *pFile: pointer to the font file; read-only.
 * @return 0: ok, -1: error
 */
int8_t P2D_SetFont(const uint8_t *pFile);

/**
 * @function P2D_GetTextHeight
 * @brief return the current font height
 * @param none
 * @return length_t: current font height
 */
length_t P2D_GetTextHeight(void);

/**
 * @function P2D_GetTextWidth
 * @brief return the string width, in pixel, according to the current font
 * @param const void *ptr: string
 * @return length_t: string width
 */
length_t P2D_GetTextWidth(const void /*@null@*/ *ptr);

/**
 * @function P2D_GetGlyphWidth
 * @brief return width the width of a given glyph, in pixel, according to the current font
 * @param uint8_t g: glyph
 * @return length_t: glyph's width
 */
length_t P2D_GetGlyphWidth(uint8_t g);

/**
 * @function P2D_PutGlyph
 * @brief Display a glyph at a given position
 * @param coord_t x, y: position to put the text; correspond to the top-left of the first string char
 * @param uint8_t glyph
 * @return none
 */
void P2D_PutGlyph(coord_t x, coord_t y, uint8_t glyph);

/**
 * @function P2D_PutText
 * @brief Display a text at a given position
 * @param coord_t x, y: position to put the text; correspond to the top-left of the first string char
 * @param const void *ptr: string
 * @return none
 */
void P2D_PutText(coord_t x, coord_t y, const void /*@null@*/ *ptr);

#endif
