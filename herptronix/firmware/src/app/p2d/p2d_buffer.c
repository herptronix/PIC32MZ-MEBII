/**
 * @file p2d_buffer.c
 * @brief p2d double buffering
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "p2d_internal.h"
#include "salloc.h"

/*internal surface definition: dimension & pointer to memory*/
typedef struct {
  color_t *raw;
  rect_st dim;
} surface_t;

/**
 * Local functions
 */
static length_t GetWidthBuffer(void);
static length_t GetHeightBuffer(void);
static color_t *GetSurfaceAddrBuffer(void);
static void SetWndBuffer(const rect_st *wnd);
static void SetCursorBuffer(coord_t _x, coord_t _y);
static void PutBuffer(color_t col);
static void PutAlphaBuffer(color_t color, uint8_t a);


/**
 * Static variables
 */
static surface_t arSurface[SURFACE_NUMBER];

/**
* Current surface parameters
* Only for simpler code and faster calculus
*/
static rect_st *dim;      /*surface dimension; only w & h are used*/
static color_t *raw;      /*pointer to raw data*/
static coord_t x, y;      /*surface cursor position*/
static coord_t wx0, wx1, wy0, wy1;  /*surface software window, in abs coordinates*/


/**
 * @function P2D_SurfaceInit
 * @brief initialize the surfaces management, set LCD as current surface
 * @param none
 * @return none
 */
void P2D_SurfaceInit(void) {
  surfaceId_t cnt;

  /*clears all buffers*/
  for(cnt = 0; cnt < SURFACE_NUMBER; cnt++) {
    arSurface[cnt].raw = NULL;
    arSurface[cnt].dim.x = 0;
    arSurface[cnt].dim.y = 0;
    arSurface[cnt].dim.w = 0;
    arSurface[cnt].dim.h = 0;
  }

  /*at startup, LCD is set as default surface*/
  (void) P2D_SetDest(SURFACE_LCD);

  /*saves screen w&h -- for internal usage only*/
  arSurface[SURFACE_LCD].dim.w = GetWidth();
  arSurface[SURFACE_LCD].dim.h = GetHeight();
}


/**
 * @function P2D_SurfaceCreate
 * @brief create an internal surface
 * @param const rect_st *rec: surface dimensions. only w & h are used
 * @return surfaceId_t: surface id if success (range[SURFACE_1-(SURFACE_NUMBER-1)], SURFACE_LCD if error
 */
surfaceId_t P2D_SurfaceCreate(const rect_st *rec) {

  surfaceId_t cnt, id, res;
  uint32_t byteNeeded;
  rect_st lrect;

  id = SURFACE_LCD;
  res = SURFACE_LCD;

  if(rec != NULL) {
    lrect.x = 0;
    lrect.y = 0;
    lrect.w = rec->w;
    lrect.h = rec->h;
    byteNeeded = P2D_GetPixelCnt(&lrect) * sizeof(color_t);

    /*a software surface SHALL have at least 1 pixel*/
    if(byteNeeded > 0) {

      /*find a free surface descriptor*/
      for(cnt = SURFACE_1; cnt < SURFACE_NUMBER; cnt++) {
        if(arSurface[cnt].raw == NULL) {
          id = cnt;
          break;
        }
      }

      /*if a descriptor is available, try to allocate memory*/
      if(id != SURFACE_LCD) {
        arSurface[id].raw = salloc(byteNeeded);
        if(arSurface[id].raw != NULL) {
          arSurface[id].dim = lrect;
          res = id;
        }
      }
    }
  }

  return res;
}


/**
 * @function P2D_SurfaceDelete
 * @brief delete an internal surface and free the allocated memory
 * @param surfaceId_t id: surface to delete range[SURFACE_1-(SURFACE_NUMBER-1)]
 * @return none
 */
void P2D_SurfaceDelete(surfaceId_t id) {

  if(id >= SURFACE_1 && id < SURFACE_NUMBER) {
    if(arSurface[id].raw != NULL) {

      /*if the deleted surface is the current one, set current surface to LCD
       * -> a destination shall always be defined and non-null */
      if(arSurface[id].raw == raw) {
        (void) P2D_SetDest(SURFACE_LCD);
      }

      /*free the surface memory*/
      sfreeFrom(arSurface[id].raw);

      /*reset the surface descriptor*/
      arSurface[id].raw = NULL;
      arSurface[id].dim.w = 0;
      arSurface[id].dim.h = 0;
    }
  }
}


/**
 * @function P2D_SetDest
 * @brief set the current surface; once set, all operations will be performed on his surface
 * @param surfaceId_t id: surface to delete range[SURFACE_1-(SURFACE_NUMBER-1)]
 * @return surfaceId_t: SURFACE_LCD: error (if id was != of SURFACE_LCD), id otherwize
 */
surfaceId_t P2D_SetDest(surfaceId_t id) {

  surfaceId_t res = SURFACE_LCD;

  /*check if surface is valid*/
  if(id >= SURFACE_1 && id < SURFACE_NUMBER) {
    if(arSurface[id].raw != NULL && P2D_GetPixelCnt(&arSurface[id].dim) > 0) {
      res = id;
      dim = &arSurface[id].dim;
      raw = arSurface[id].raw;
    }
  }
  else {
    raw = NULL;
  }

  /*assign new function pointers*/
  if(res == SURFACE_LCD) {
    Put = LCD_Put;
    PutAlpha = LCD_PutAlpha;
    SetWnd = LCD_SetWnd;
    SetPos = LCD_SetPos;
    GetWidth = LCD_GetWidth;
    GetHeight = LCD_GetHeight;
    GetSurfaceAddr = LCD_GetSurfaceAddr;
  }
  else {
    Put = PutBuffer;
    PutAlpha = PutAlphaBuffer;
    SetWnd = SetWndBuffer;
    SetPos = SetCursorBuffer;
    GetWidth = GetWidthBuffer;
    GetHeight = GetHeightBuffer;
    GetSurfaceAddr = GetSurfaceAddrBuffer;
  }

  /*reset surface clip & window*/
  P2D_SetClip(NULL);
  SetWnd(NULL);

  return res;
}



/**
 * @function P2D_CopySurface
 * @brief copy a part of a surface to the current one, at specified coordinates
 * @param surfaceId_t from: source surface (shall be != of the current one and != of SURFACE_LCD, for the moment...)
 * @param const rect_st *src: source part
 * @param const rect_st *dst: destination coordinates (only x & y are used)
 * @return none
 */

#include "lcc.h"

void P2D_CopySurface(surfaceId_t from, const rect_st *src, const rect_st *dst) {

  rect_st lsrc, ldst;
  uint32_t px;

  const surface_t *pSurface;

  coord_t ySrc, yDst;

  color_t *pDest, *pPixelDst, *pPixelSrc;
  uint32_t wDest;
  coord_t xMin, yMin, xMax, yMax;


  if(from >= SURFACE_1 && from < SURFACE_NUMBER && src != NULL && dst != NULL) {

    pSurface = &arSurface[from];

    /*check if the surface is allocated & is not the current one*/
    if(pSurface->raw != NULL && pSurface->raw != raw) {

      /*apply clipping between src & dst surfaces (bitblt type)*/
      px = P2D_ClipBitBlt(&pSurface->dim, src, dst, &lsrc, &ldst);

      /*copy, if remaining pixels after previous clipping*/
      if(px > 0) {

        pDest = GetSurfaceAddr();
        wDest = GetWidth();

        P2D_RectToCoord(&ldst, &xMin, &yMin, &xMax, &yMax);
        ySrc = lsrc.y;

        for(yDst = yMin; yDst <= yMax; yDst++) {

          pPixelDst = &pDest[wDest * yDst + xMin];
          pPixelSrc = &(pSurface->raw[(uint32_t)ySrc * pSurface->dim.w + lsrc.x]);

          memcpy(pPixelDst, pPixelSrc, ldst.w * sizeof(color_t));

          ySrc++;
        }


      }
    }
  }
}


/**
 * @function GetWidthBuffer
 * @brief return the absolute width of the current surface
 * @param none
 * @return length_t: width
 */
static length_t GetWidthBuffer(void) {
  return dim->w;
}


/**
 * @function GetHeightBuffer
 * @brief return the absolute height of the current surface
 * @param none
 * @return length_t: height
 */
static length_t GetHeightBuffer(void) {
  return dim->h;
}


static color_t *GetSurfaceAddrBuffer(void) {
  return raw;
}


/**
 * @function SetWndBuffer
 * @brief set a window on the current surface
 * @param const rect_st *wnd: window; will be internally checked
 * @return none
 */
static void SetWndBuffer(const rect_st *wnd) {

  rect_st lrect;

  if(wnd != NULL && wnd->w > 0 && wnd->h > 0) {
    lrect = *wnd;
    P2D_ClipFit(&lrect);
  }
  else {
    lrect = *dim;
  }

  /*convert to absolute values, for faster execution of PutBuffer()*/
  (void) P2D_RectToCoord(&lrect, &wx0, &wy0, &wx1, &wy1);
  SetCursorBuffer(wx0, wy0);
}


/**
 * @function SetCursorBuffer
 * @brief set the cursor position
 * @param coord_t _x, coord_t _y: nex cursor coordinates
 * @return none
 */
static void SetCursorBuffer(coord_t _x, coord_t _y) {
  if(P2D_IsCoordInClip(_x, _y)) {
    x = _x;
    y = _y;
  }
  else {
    /*UB: what do? leave it to the current value? */
  }
}


/**
 * @function PutBuffer
 * @brief put a pixel on the current surface and increase the cursor
 * @param color_t col: pixel color
 * @return none
 */
static void PutBuffer(color_t col) {

  raw[(uint32_t)dim->w * y + x] = col;

  /*cursor increment*/
  x++;

  /*window check*/
  if(x > wx1) {
    x = wx0;
    y++;
    if(y > wy1) {
      y = wy0;
    }
  }
}


/**
 * @function PutAlphaBuffer
 * @brief put a alpha pixel on the current surface and increase the cursor
 * @param color_t col: pixel color
 * @param uint8_t a: alpha value
 * @return none
 */
static void PutAlphaBuffer(color_t color, uint8_t a) {

  /*set pixel*/
  color_t *pixel = &raw[(uint32_t)dim->w * y + x];
  *pixel = P2D_Alpha_a_on_b(color, *pixel, a);

  /*cursor increment*/
  x++;

  /*window check*/
  if(x > wx1) {
    x = wx0;
    y++;
    if(y > wy1) {
      y = wy0;
    }
  }
}
