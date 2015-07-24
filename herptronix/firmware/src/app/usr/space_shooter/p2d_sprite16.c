/**
 * @file p2d_sprite16.c
 * @brief specific sprite 16bpp (custom implementation, for q&d games)
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "p2d_internal.h"
#include "p2d_sprite.h"


/**
 * Private defines
 */
typedef struct {
  const color_t *raw;
  rect_st dim;
  uint8_t bpp;
} sprite_st;

enum {
  SP_OFFSET_BPP,        /*same than a 8BPP sprite file*/
  SP_OFFSET_W_MSB,      /*same than a 8BPP sprite file*/
  SP_OFFSET_W_LSB,      /*same than a 8BPP sprite file*/
  SP_OFFSET_H_MSB,      /*same than a 8BPP sprite file*/
  SP_OFFSET_H_LSB,      /*same than a 8BPP sprite file*/
  SP_OFFSET_NB_ANIM,    /*number of frame*/
  _PAD2, _PAD3,         /* -> pad until SP_OFFSET_RAW is @4 aligned*/
  SP_OFFSET_RAW         /*first pixel (type color_t, @4)*/
};


/**
 * Local functions prototypes
 */
static int8_t SpriteOpen(/*@out@*/sprite_st *ptr, const uint8_t *pFile);


/**
 * @function P2D_SpriteGetNbAnim
 * @brief return the number of frame contained in a sprite 16 bpp
 * @param const uint8_t *pFile: sprite file
 * @return uint8_t: number of frame; always greater than 0
 */
uint8_t P2D_SpriteGetNbAnim(const uint8_t *pFile) {
  uint8_t res = 1;
  if(pFile != NULL) res = pFile[SP_OFFSET_NB_ANIM];
  if(res == 0) res = 1;
  return res;
}


/**
 * @function P2D_Sprite16GetPixel
 * @brief return the color of a pixel
 * @param const uint8_t *pFile: sprite file
 * @param coord_t x, y: pixel coords
 * @return color_t: color, 0 (black) if error
 */
color_t P2D_Sprite16GetPixel(const uint8_t *ptr, coord_t x, coord_t y) {

  sprite_st sprite;
  color_t res = 0;

  if(SpriteOpen(&sprite, ptr) == 0) {
    if(x >= 0 && y >= 0 && x < sprite.dim.w && y < sprite.dim.h) {
      res = sprite.raw[(uint32_t)sprite.dim.w * y + x];
    }
  }
  return res;
}


/**
 * @function P2D_Sprite16
 * @brief put a given sprite (16bpp) part on current surface, at given coordinates
 * @param const rect_st *src: selected part of the sprite to display; if NULL, select the whole sprite
 * @param const rect_st *dst: destination; only x & y are used
 * @param const uint8_t *pFile: sprite file
 * @return int8_t: 0 -> something was displayed, -1 -> nothing was displayed
 */
int8_t P2D_Sprite16(const rect_st *src, const rect_st *dst, const uint8_t *pFile) {

  int8_t res = -1;
  rect_st lsrc, ldst;
  sprite_st sprite;
  uint32_t px, nbByte, wDest;
  color_t *pSurface, *pDest, *pDestEnd;
  const color_t *pSrc;
  coord_t y;

  if(pFile != NULL && dst != NULL && SpriteOpen(&sprite, pFile) == 0) {

    /*apply clipping*/
    px = P2D_ClipBitBlt(&sprite.dim, src, dst, &lsrc, &ldst);

    /*if some pixels remain after clipping*/
    if(px > 0) {

      res = 0;

      pSurface = GetSurfaceAddr();
      wDest = GetWidth();

      if(context.alpha == 255) {
        /*copy / paste; very fast*/
        if(context.mode == DISPLAY_SOLID) {
          nbByte = ldst.w * sizeof(color_t);
          for(y = 0; y < ldst.h; y++) {
            pSrc = &(sprite.raw[((uint32_t)lsrc.y + y) * sprite.dim.w + lsrc.x]);
            pDest = &pSurface[wDest * (ldst.y + y) + ldst.x];
            memcpy(pDest, pSrc, nbByte);
          }
        }
        /*copy only if != 0; less fast*/
        else {
          for(y = 0; y < ldst.h; y++) {
            pSrc = &(sprite.raw[((uint32_t)lsrc.y + y) * sprite.dim.w + lsrc.x]);
            pDest = &pSurface[wDest * (ldst.y + y) + ldst.x];
            pDestEnd = pDest + ldst.w;
            while(pDest < pDestEnd) {
              if(*pSrc) *pDest = *pSrc;
              pDest++;
              pSrc++;
            }
          }
        }
      }
      /*alpha enabled; slow*/
      else {
        if(context.mode == DISPLAY_SOLID) {
          for(y = 0; y < ldst.h; y++) {
            pSrc = &(sprite.raw[((uint32_t)lsrc.y + y) * sprite.dim.w + lsrc.x]);
            pDest = &pSurface[wDest * (ldst.y + y) + ldst.x];
            pDestEnd = pDest + ldst.w;
            while(pDest < pDestEnd) {
              *pDest = alphablend(*pSrc, *pDest, context.alpha);
              pDest++;
              pSrc++;
            }
          }
        }
        /* alpha & transparent; slow*/
        else {
          for(y = 0; y < ldst.h; y++) {
            pSrc = &(sprite.raw[((uint32_t)lsrc.y + y) * sprite.dim.w + lsrc.x]);
            pDest = &pSurface[wDest * (ldst.y + y) + ldst.x];
            pDestEnd = pDest + ldst.w;
            while(pDest < pDestEnd) {
              if(*pSrc) *pDest = alphablend(*pSrc, *pDest, context.alpha);
              pDest++;
              pSrc++;
            }
          }
        }
      }
    }
  }

  return res;
}


/**
 * @function SpriteOpen
 * @brief retrieve sprite info from a file (assumed to be a 16bpp sprite)
 * @param sprite_st *ptr: pointer to the struct to fill
 * @param const uint8_t *pFile: sprite file
 * @return 0 success, -1 error
 */
static int8_t SpriteOpen(sprite_st *ptr, const uint8_t *pFile) {

  int8_t res = -1;

  /*retrieve sprite info*/
  ptr->dim.x = 0;
  ptr->dim.y = 0;
  ptr->dim.w = P2D_SpriteGetWidth(pFile);
  ptr->dim.h = P2D_SpriteGetHeight(pFile);
  ptr->bpp   = pFile[SP_OFFSET_BPP];
  ptr->raw   = (const color_t *)&pFile[SP_OFFSET_RAW];

  /*check coherence: known bpp and valid dimension*/
  if(P2D_GetPixelCnt(&ptr->dim) > 0 && ptr->bpp == 16 && ((uint32_t)ptr->raw & 0x03) == 0) {
    res = 0;
  }

  return res;
}
