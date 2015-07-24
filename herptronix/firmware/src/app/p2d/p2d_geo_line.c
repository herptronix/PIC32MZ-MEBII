/**
 * @file p2d_geo_line.c
 * @brief p2d line (continuous & dashed), using Bresenham's line algorithm
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-04-07
 * Licence: MIT
 */

#include "p2d_internal.h"


/**
 * @function P2D_Gline
 * @brief draw a line
 * @param coord_t x0, coord_t y0: point 0
 * @param coord_t x1, coord_t y1: point 1
 * @return none
 */
void P2D_Gline(coord_t x0, coord_t y0, coord_t x1, coord_t y1) {

  coord_t dx, sx, dy, sy, err, e2;
  bool blink;

  dx = P2D_Abs(x1 - x0);
  sx = x0 < x1 ? 1 : -1;
  dy = P2D_Abs(y1 - y0);
  sy = y0 < y1 ? 1 : -1;
  err = (dx > dy ? dx : -dy) / 2;

  /* Same algorithm, but different loops according to line type
   * -> faster processing
   */
  if(context.lineType == LINE_SOLID) {
    while(1) {
      P2D_SetPixel(x0, y0, context.colFront);
      if(x0 == x1 && y0 == y1) break;
      e2 = err;
      if(e2 >-dx) { err -= dy; x0 += sx; }
      if(e2 < dy) { err += dx; y0 += sy; }
    }
  }
  else if(context.lineType == LINE_DOT) {
    blink = 1;
    while(1) {

      if(blink) {
        P2D_SetPixel(x0, y0, context.colFront);
      }
      else if(context.mode == DISPLAY_SOLID) {
        P2D_SetPixel(x0, y0, context.colBackgrnd);
      }
      blink = !blink;

      if(x0 == x1 && y0 == y1) break;
      e2 = err;
      if(e2 >-dx) { err -= dy; x0 += sx; }
      if(e2 < dy) { err += dx; y0 += sy; }
    }
  }
}
