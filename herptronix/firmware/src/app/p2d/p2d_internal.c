/**
 * @file p2d_internal.c
 * @brief p2d internal data
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "p2d_internal.h"

/*P2D context*/
context_st context;

/*redirected functions*/
PutFunc_t Put = LCD_Put;
PutAlphaFunc_t PutAlpha = LCD_PutAlpha;
SetWndFunt_t SetWnd = LCD_SetWnd;
SetPosFunc_t SetPos = LCD_SetPos;
GetWidthFunc_t GetWidth = LCD_GetWidth;
GetHeightFunc_t GetHeight = LCD_GetHeight;
GetAddr_t GetSurfaceAddr = LCD_GetSurfaceAddr;
