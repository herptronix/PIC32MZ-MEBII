/**
 * @file p2d_base.c
 * @brief p2d minimalist functions
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */


#include "p2d_internal.h"


/**
 * @function P2D_Init
 * @brief initializes the 2D primitives library; Shall be called first.
 * @param none
 * @return none
 */
void P2D_Init(void) {

  /*set LCD as current surface*/
  P2D_SurfaceInit();

  /*set context*/
  P2D_SetDisplayMode(DISPLAY_SOLID);
  P2D_SetColors(COLOR_BLACK, COLOR_BLACK);
  P2D_SetAlpha(255);
  P2D_SetLineType(LINE_SOLID);
  P2D_SetFont(NULL);

  /*clear screen*/
  P2D_SetClip(NULL);
  P2D_Clear();
}


/**
 * @function P2D_GetLcdWidth
 * @brief return the width of the physical screen
 * @param none
 * @return length_t: total width (in pixel) of the screen
 */
length_t P2D_GetLcdWidth(void) {
  return LCD_GetWidth();
}


/**
 * @function P2D_GetLcdHeight
 * @brief return the height of the physical screen
 * @param none
 * @return length_t: total height (in pixel) of the screen
 */
length_t P2D_GetLcdHeight(void) {
  return LCD_GetHeight();
}


/**
 * @function P2D_SetColor
 * @brief set the front color for next operations
 * @param color_t front: new color
 * @return none
 */
void P2D_SetColor(color_t front) {
  context.colFront = front;
}


/**
 * @function P2D_SetColors
 * @brief set the front & background colors for next operations
 * @param color_t front, back: new front & background colors
 * @return none
 */
void P2D_SetColors(color_t front, color_t back) {
  context.colFront = front;
  context.colBackgrnd = back;
}


/**
 * @function P2D_SetDisplayMode
 * @brief set the display mode for next operations
 * @param m: new mode (DISPLAY_SOLID / DISPLAY_TRANSPARENT)
 * @return none
 */
void P2D_SetDisplayMode(dmode_t m) {
  context.mode = m;
}


/**
 * @function P2D_SetAlpha
 * @brief set the alpha level for next operations
 * @param a: new alpha (from 0 to 255; 0 = fully transparent, 255 = fully opaque)
 * @return none
 */
void P2D_SetAlpha(uint8_t a) {
  context.alpha = a;
}


/**
 * @function P2D_SetLineType
 * @brief sets the line type (solid line, dotted line)
 * @param line_t: line type
 * @return none
 */
void P2D_SetLineType(line_t type) {
  context.lineType = type;
}


/**
 * @function P2D_SetPixel
 * @brief Put a pixel on current surface
 * @param coord_t x: position x, in pixels
 * @param coord_t y: position y; in pixels
 * @param color_t col: color
 * @return none
 */
void P2D_SetPixel(coord_t x, coord_t y, color_t col) {
  if(P2D_IsCoordInClip(x, y) == true) {
    SetPos(x, y);
    if(context.alpha == 255) Put(col);
    else PutAlpha(col, context.alpha);
  }
}

color_t P2D_GetPixel(coord_t x, coord_t y) {
  color_t res = 0;

  if(x < GetWidth() && y < GetHeight()) {
    res = GetSurfaceAddr()[(uint32_t)y*GetHeight()+x];
  }

  return res;
}


/**
 * @function P2D_Clear
 * @brief clears the current surface within the current clip
 * @param none
 * @return none
 */
void P2D_Clear(void) {
  rect_st lrect;
  lrect.x = 0;
  lrect.y = 0;
  lrect.w = GetWidth();
  lrect.h = GetHeight();
  P2D_FillRect(&lrect);
}


/**
 * @function P2D_Line
 * @brief draw a 2D line
 * @param x0, y0: start point
 * @param x1, y1: end point
 * @return none
 */
void P2D_Line(coord_t x0, coord_t y0, coord_t x1, coord_t y1) {

  rect_st lrect;

  /*optimized procedure for horizontal line*/
  if(context.lineType == LINE_SOLID && y0 == y1) {
    lrect.x = P2D_CoordGetMin(x0, x1);
    lrect.y = P2D_CoordGetMin(y0, y1);
    lrect.w = P2D_GetLengthBtwnCoord(x0, x1);
    lrect.h = 1;
    P2D_FillRect(&lrect);
  }
  /*optimized procedure for vertical line*/
  else if(context.lineType == LINE_SOLID && x0 == x1) {
    lrect.x = P2D_CoordGetMin(x0, x1);
    lrect.y = P2D_CoordGetMin(y0, y1);
    lrect.w = 1;
    lrect.h = P2D_GetLengthBtwnCoord(y0, y1);
    P2D_FillRect(&lrect);
  }
  /*else (dashed vertical line, random line, ...), put pixel per pixel -> slower*/
  else {
    P2D_Gline(x0, y0, x1, y1);
  }
}


/**
 * @function P2D_Rect
 * @brief draw a rectangle
 * @param const rect_st *rec: rectangle parameters
 * @return none
 */
void P2D_Rect(const rect_st *rec) {
  coord_t x0, y0, x1, y1;
  if(P2D_RectToCoord(rec, &x0, &y0, &x1, &y1) == 0) {
    P2D_Line(x0, y0, x1, y0);
    P2D_Line(x0, y0, x0, y1);
    P2D_Line(x0, y1, x1, y1);
    P2D_Line(x1, y0, x1, y1);
  }
}


/**
 * @function P2D_FillRect
 * @brief draw a filled rectangle
 * @param const rect_st *rec: rectangle parameters
 * @return none
 */
#include "lcc.h"
extern uint16_t alphablend( uint16_t fg, uint16_t bg, uint8_t alpha );


void P2D_FillRect(const rect_st *rec) {
  
  rect_st lrect;
  color_t *pDest, *pPixel, *pEnd;
  uint32_t doublePx, pxCnt, wDest;
  coord_t xMin, yMin, xMax, yMax, x, y;

  if(rec != NULL) {

    lrect = *rec;
    P2D_ClipFit(&lrect);
    pxCnt = P2D_GetPixelCnt(&lrect);

    if(pxCnt > 0) {

      pDest = GetSurfaceAddr();
      wDest = GetWidth();

      /** Opaque output **/
      if(context.alpha == 255) {

        /** Special case: horizontal line **/
        if(lrect.w == 1) {

          pPixel = &pDest[wDest * lrect.y + lrect.x];

          while(pxCnt--) {
            *pPixel = context.colFront;
            pPixel += wDest;
          }
        }

        /** regular rectangle **/
        else {

          /*converts to standart coordinates (makes loop execution faster)*/
          P2D_RectToCoord(&lrect, &xMin, &yMin, &xMax, &yMax);
          xMax++;
          yMax++;

          /*combine 2 pixels on a 32 bits word; will fill 2 pixels in 1 cycle*/
          doublePx = ((uint32_t)context.colFront) << 16 | context.colFront;

          for(y = yMin; y < yMax; y++) {

            pPixel = &pDest[wDest * y + xMin];
            pEnd = &pDest[wDest * y + xMax];

            /*if the first pixel is not aligned @4 but @2, put 1 pixel manually*/
            if((uint32_t)pPixel & 0x02) {
              *pPixel = context.colFront;
              pPixel++;
            }

            /*once aligned, write 2 pixel each cycle*/
            while(pPixel < pEnd - 1) {
              * ((uint32_t *) pPixel) = doublePx;
              pPixel += 2;
            }

            /*...maybe the last pixel wasn't aligned @4; put it manually*/
            while(pPixel < pEnd) {
              *pPixel = context.colFront;
              pPixel++;
            }
          }
        }
      }

      /** Alpha output **/
      else {

        P2D_RectToCoord(&lrect, &xMin, &yMin, &xMax, &yMax);
        for(y = yMin; y <= yMax; y++) {
          pPixel = &pDest[wDest * y + xMin];
          for(x = xMin; x <= xMax; x++) {
            *pPixel = alphablend(context.colFront, *pPixel, context.alpha);
            pPixel++;
          }
        }
      }
    }
  }
}
