/**
 * @file p2d_sprite.c
 * @brief p2d sprite functions (limited to 8BPP)
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "p2d_internal.h"


/**
 * Private defines
 */
typedef struct {
  const uint8_t *raw;
  rect_st dim;
  uint8_t bpp;
} sprite_st;

enum {
  SP_OFFSET_BPP,
  SP_OFFSET_W_MSB,
  SP_OFFSET_W_LSB,
  SP_OFFSET_H_MSB,
  SP_OFFSET_H_LSB,
  SP_OFFSET_RAW
};


/**
 * private variables
 */
static /*@null@*/ const lut8bpp_st *pLut8 = NULL;


/**
 * Local functions prototypes
 */
static int8_t SpriteOpen(/*@out@*/sprite_st *ptr, const uint8_t *pFile);
static void PutSlow_8BPP(const rect_st *dst, const rect_st *src, const color_t *lut, const sprite_st *sprite);


/**
 * @function P2D_SpriteGetWidth
 * @brief return the width of a sprite
 * @param const uint8_t *pFile: pointer to the sprite file
 * @return length_t: width of the sprite
 */
length_t P2D_SpriteGetWidth(const uint8_t *pFile) {
  length_t res = 0;
  if(pFile != NULL) res = (((length_t) pFile[SP_OFFSET_W_MSB]) << 8) + pFile[SP_OFFSET_W_LSB];
  return res;
}


/**
 * @function P2D_SpriteGetHeight
 * @brief return the height of a sprite
 * @param const uint8_t *pFile: pointer to the sprite file
 * @return length_t: height of the sprite
 */
length_t P2D_SpriteGetHeight(const uint8_t *pFile) {
  length_t res = 0;
  if(pFile != NULL) res = (((uint16_t) pFile[SP_OFFSET_H_MSB]) << 8) + pFile[SP_OFFSET_H_LSB];
  return res;
}


/**
 * @function P2D_SpriteSetLut8BPP
 * @brief define a lut to use for 8BPP sprites
 * @param const lut8bpp_st *lut: lut to use
 * @return none
 */
void P2D_SpriteSetLut8BPP(const lut8bpp_st *lut) {
  pLut8 = lut;
}


/**
 * @function P2D_Sprite
 * @brief put a given sprite part on current surface, at given coordinates
 * @param const rect_st *src: selected part of the sprite to display; if NULL, select the whole sprite
 * @param const rect_st *dst: destination; only x & y are used
 * @param const uint8_t *pFile: sprite file
 * @return none
 */
void P2D_Sprite(const rect_st *src, const rect_st *dst, const uint8_t *pFile) {

  rect_st lsrc, ldst;
  sprite_st sprite;
  const uint8_t *raw;
  uint32_t px;

  color_t *pDest, *pPixel, *pEnd;
  uint32_t wDest;

  coord_t y;

  if(pFile != NULL && dst != NULL && SpriteOpen(&sprite, pFile) == 0 && sprite.bpp == 8 && pLut8 != NULL) {

    /*apply clipping*/
    px = P2D_ClipBitBlt(&sprite.dim, src, dst, &lsrc, &ldst);

    /*if some pixels remain after clipping*/
    if(px > 0) {

      pDest = GetSurfaceAddr();
      wDest = GetWidth();

      /*if source & destination have the same width & DISPLAY_SOLID -> optimized procedure*/
      if(ldst.w == sprite.dim.w && context.mode == DISPLAY_SOLID) {

        raw = &(sprite.raw[lsrc.x + lsrc.y * sprite.dim.w]);

        if(context.alpha == 255) {
          for(y = ldst.y; y < ldst.y + ldst.h; y++) {
            pPixel = &pDest[wDest * y + ldst.x];
            pEnd = pPixel + ldst.w;
            while(pPixel < pEnd) {
              *pPixel = pLut8->lut[*raw];
              raw++;
              pPixel++;
            }
          }
        }
        else {
          for(y = ldst.y; y < ldst.y + ldst.h; y++) {
            pPixel = &pDest[wDest * y + ldst.x];
            pEnd = pPixel + ldst.w;
            while(pPixel < pEnd) {
              *pPixel = alphablend(pLut8->lut[*raw], *pPixel, context.alpha);
              raw++;
              pPixel++;
            }
          }
        }
      }
      /*else, pixel per pixel... much slower!*/
      else {
        if(sprite.bpp == 8 && pLut8 != NULL) {
          PutSlow_8BPP(&ldst, &lsrc, pLut8->lut, &sprite);
        }
      }
    }
  }
}


/**
 * @function SpriteOpen
 * @brief retrieve sprite info from a file
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
  ptr->raw   = &pFile[SP_OFFSET_RAW];

  /*check coherence: known bpp and valid dimension*/
  if(P2D_GetPixelCnt(&ptr->dim) > 0 && ptr->bpp == 8) {
    res = 0;
  }

  return res;
}




/**
 * @function PutSlow_8BPP
 * @brief sprite copy, slow procedure
 * @param const rect_st *dst: destination window
 * @param const rect_st *src: source window
 * @param const color_t *lut: lut to use
 * @param const const sprite_st *sprite: pointer to sprite structure
 * @return none
 */
static void PutSlow_8BPP(const rect_st *dst, const rect_st *src, const color_t *lut, const sprite_st *sprite) {

  coord_t sx, sy, dx, dy;
  const uint8_t *raw;

  dx = dst->x;
  dy = dst->y;

  for(sy = src->y; sy < src->y + dst->h; sy++) {

    raw = &(sprite->raw[src->x + sy * sprite->dim.w]);
    SetPos(dx, dy);

    if(context.mode == DISPLAY_SOLID) {
      if(context.alpha == 255) {
        for(sx = 0; sx < dst->w; sx++) {  /*SOLID & opaque*/
          Put(lut[*raw]);
          raw++;
        }
      }
      else {
        for(sx = 0; sx < dst->w; sx++) {  /*SOLID & alpha*/
          PutAlpha(lut[*raw], context.alpha);
          raw++;
        }
      }
    }
    else {
      if(context.alpha == 255) {
        for(sx = 0; sx < dst->w; sx++) {  /*TRANSPARENT & opaque*/
          if(*raw != 0) Put(lut[*raw]);
          raw++;
        }
      }
      else {
        for(sx = 0; sx < dst->w; sx++) {  /*TRANSPARENT & alpha*/
          if(*raw != 0) PutAlpha(lut[*raw], context.alpha);
          raw++;
        }
      }
    }

    dy++;
    dx = dst->x;
  }
}
