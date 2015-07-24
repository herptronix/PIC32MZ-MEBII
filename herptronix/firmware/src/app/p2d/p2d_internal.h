/**
 * @file p2d_internal.h
 * @brief p2d internal data
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#ifndef _p2d_internal_h_
#define _p2d_internal_h_

#include "p2d.h"

typedef struct {
  rect_st clip;
  color_t colFront, colBackgrnd;  /*front color & background color*/
  dmode_t mode;                   /*display mode (SOLID / TRANSPARENT)*/
  uint8_t alpha;                  /*alpha level*/
  line_t lineType;
} context_st;

extern context_st context;


/**
 * PutFunc_t: puts a pixel to the screen and increment the cursor (x=x+1, y unchanged)
 * Candidate prototype: void Function(color_t col)
 */
typedef void (*PutFunc_t) (color_t col);
extern PutFunc_t Put;

/**
 * PutFunc_t: puts a pixel to the screen and increment the cursor (x=x+1, y unchanged)
 * Candidate prototype: void Function(color_t col)
 */
typedef void (*PutAlphaFunc_t) (color_t col, uint8_t alpha);
extern PutAlphaFunc_t PutAlpha;

/**
 * SetWndFunt_t: sets a hardware window, and put the cursor at the begin (top-left)
 * Candidate prototype: void Function(rect_st *rec)
 */
typedef void (*SetWndFunt_t) (const rect_st *rec);
extern SetWndFunt_t SetWnd;

/**
 * SetPosFunc_t: sets the cursor to the wanted position
 * Candidate prototype: void Function(coord_t x, coord_t y)
 */
typedef void (*SetPosFunc_t) (coord_t x, coord_t y);
extern SetPosFunc_t SetPos;

/**
 * GetWidthFunc_t: returns the width of the current surface
 * Candidate prototype: length_t Function(void)
 */
typedef length_t (*GetWidthFunc_t) (void);
extern GetWidthFunc_t GetWidth;

/**
 * GetWidthFunc_t: returns the height of the current surface
 * Candidate prototype: length_t Function(void)
 */
typedef length_t (*GetHeightFunc_t) (void);
extern GetHeightFunc_t  GetHeight;


typedef color_t* (*GetAddr_t) (void);
extern GetAddr_t GetSurfaceAddr;


#endif
