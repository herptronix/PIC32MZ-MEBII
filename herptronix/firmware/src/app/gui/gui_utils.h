/**
 * @file gui_utils.h
 * @brief some utils for GUI
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-07-13
 * Licence: MIT
 */

#ifndef _gui_utils_h
#define _gui_utils_h

#include "gui.h"


/**
 * @function gmemset
 * @brief fill a memory area with a given byte
 * @param void *ptr: memory address to fill
 * @param uint8_t fill: byte to fill with
 * @param uint16_t size: number of bytes to fill
 * @return none
 */
void gmemset(void /*@null@*/ *ptr, uint8_t fill, uint16_t size);

/**
 * @function ismemdiff
 * @brief compare memory areas
 * @param const void *_a: address of the first memory area
 * @param const void *_b: address of the second memory area
 * @param uint16_t size: size of the areas
 * @return true if areas are different, false otherwise
 */
bool ismemdiff(const void /*@null@*/ *_a, const void /*@null@*/ *_b, uint16_t size);

/**
 * @function gstrncpy
 * @brief copy a string into another one (shall be allocated first)
 * @param void *_dst: address of the destination buffer
 * @param const void *_src: address of the source buffer
 * @param uint16_t dstSize: string physical size
 * @return none
 */
void gstrncpy(void /*@null@*/ *_dst, const void /*@null@*/ *_src, uint16_t dstSize);

/**
 * @function gstrlen
 * @brief return the length of a string
 * @param const void *str: address of the string
 * @return uint16_t: string size
 */
uint16_t gstrlen(const void /*@null@*/ *str);

/**
 * @function AllocateAndCopyStr
 * @brief allocate and compy a string
 * @param const void *str: address of the source string; the source string will be copied into the new allocated string
 * @return void *: NULL if error, address to the allocated & copied string otherwise
 */
void /*@null@*/ * AllocateAndCopyStr(const void /*@null@*/ *str);

/**
 * @function GUI_Rect
 * @brief generate a rect_st
 * @param coord_t x, coord_t y, length_t w, length_t h: rect parameters
 * @return rect_st
 */
rect_st GUI_Rect(coord_t x, coord_t y, length_t w, length_t h);

/**
 * @function gmemcpy
 * @brief copy a memory area to another one
 * @param void *dst: where the source area will be copied
 * @param const void *src: the area to copy
 * @param uint16_t size: dst size (in byte)
 * @return none
 */
void gmemcpy(void /*@null@*/ *dst, const void /*@null@*/ *src, uint16_t size);

#endif