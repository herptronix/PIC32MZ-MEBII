/**
 * @file lcc_io.c
 * @brief LCC driver, pixel operations
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "lcc.h"

static coord_t x, y;
static coord_t xMin, xMax, yMin, yMax;


length_t LCD_GetWidth(void) {
  return (length_t) DISP_HOR_RESOLUTION;
}

length_t LCD_GetHeight(void) {
  return (length_t) DISP_VER_RESOLUTION;
}

color_t *LCD_GetSurfaceAddr(void) {
  return pscreen;
}


void LCD_SetPos(coord_t _x, coord_t _y) {

  if(_x >= xMin && _x <= xMax &&
      _y >= yMin && _y <= yMax) {

    x = _x;
    y = _y;
  }
  else {
    x = xMin;
    y = yMin;
  }
}


void LCD_SetWnd(const rect_st *rec) {

  /*invalid rec? expand window to screen dimension*/
  if(rec == NULL || rec->w == 0 || rec->h == 0) {
    xMin = 0;
    yMin = 0;
    xMax = LCD_GetWidth() - 1;
    yMax = LCD_GetHeight() - 1;
  }
  /*oterwise set the rec as the new window*/
  else {
    xMin = rec->x;
    yMin = rec->y;
    xMax = rec->x + rec->w - 1;
    yMax = rec->y + rec->h - 1;
  }

  /*reset cursor position*/
  LCD_SetPos(xMin, yMin);
}



void LCD_Put(color_t color) {

  /*set pixel*/
  pscreen[(uint32_t) DISP_HOR_RESOLUTION * y + x] = color;

  /*cursor increment*/
  x++;
  if(x > xMax) {
    x = xMin;
    y++;
    if(y > yMax) {
      y = yMin;
    }
  }
}

/**
 * fast alpha from
 * http://stackoverflow.com/questions/18937701/combining-two-16-bits-rgb-colors-with-alpha-blending
 **/
#define mask_rb       63519 // 0b1111100000011111
#define mask_g         2016 // 0b0000011111100000
#define mask_mul_rb 4065216 // 0b1111100000011111000000
#define mask_mul_g   129024 // 0b0000011111100000000000
#define max_a            64 // 6bits+1 with rounding
uint16_t alphablend( uint16_t fg, uint16_t bg, uint8_t alpha ){

  // alpha for foreground multiplication
  // convert from 8bit to (6bit+1) with rounding
  // will be in [0..64] inclusive
  alpha = ( alpha + 2 ) >> 2;
  // "beta" for background multiplication; (6bit+1);
  // will be in [0..64] inclusive
  uint8_t beta = max_a - alpha;
  // so (0..64)*a + (0..64)*beta always in 0..64

  return (uint16_t)((
            (  ( alpha * (uint32_t)(fg & mask_rb)
                + beta * (uint32_t)(bg & mask_rb)
            ) & mask_mul_rb )
          |
            (  ( alpha * (fg & mask_g )
                + beta * (bg & mask_g )
            ) & mask_mul_g )
         ) >> 6 );
}

void LCD_PutAlpha(color_t color, uint8_t a) {

  /*set pixel*/
  color_t *pixel = &pscreen[(uint32_t) DISP_HOR_RESOLUTION * y + x];
  //*pixel = P2D_Alpha_a_on_b(color, *pixel, a);
  *pixel = alphablend(color, *pixel, a);

  /*cursor increment*/
  x++;
  if(x > xMax) {
    x = xMin;
    y++;
    if(y > yMax) {
      y = yMin;
    }
  }
}
