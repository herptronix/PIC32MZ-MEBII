/**
 * @file lcc.h
 * @brief LCC driver
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#ifndef _lcc_h_
#define _lcc_h_

#include "main.h"


typedef uint16_t color_t;   /*color is represented by an usigned 16bits word*/
typedef uint16_t length_t;
typedef int16_t  coord_t;   /*lcd coordinates type*/
typedef struct {
  coord_t x, y;
  length_t w, h;
} rect_st;                  /*basic lcd window representation*/


#define DISP_HOR_RESOLUTION 480
#define DISP_VER_RESOLUTION 272

extern  color_t *pscreen;


/**
 * @function LCD_Init
 * @brief turn on & configure the LCD
 * @param none
 * @return none
 */
void LCD_Init(void);

/**
 * @function LCD_GetWidth
 * @brief return the width of the screen
 * @param none
 * @return coord_t: width of the screen
 */
length_t LCD_GetWidth(void);

/**
 * @function LCD_GetHeight
 * @brief return the height of the screen
 * @param none
 * @return coord_t: height of the screen
 */
length_t LCD_GetHeight(void);

color_t *LCD_GetSurfaceAddr(void);

/**
 * @function LCD_SetPos
 * @brief set the cursor position
 * @param x: cursor x
 * @param y: cursor y
 * @return none
 */
void LCD_SetPos(coord_t x, coord_t y);

/**
 * @function LCD_SetWnd
 * @brief set the hardware window
 * @param *rec: pointer to the window clip
 * @return uint32_t: number of pixels contained in the window
 */
void LCD_SetWnd(const rect_st *rec);

/**
 * @function LCD_Put
 * @brief put a pixel on the display, and increment the cursor position
 * @param col: pixel color
 * @return none
 */
void LCD_Put(color_t col);

/**
 * @function LCD_PutAlpha
 * @brief put a alpha pixel on the display, and increment the cursor position
 * @param col: pixel color
 * @param a: alpha value
 * @return none
 */
void LCD_PutAlpha(color_t color, uint8_t a);

uint16_t alphablend( uint16_t fg, uint16_t bg, uint8_t alpha );

#endif
