/**
 * @file p2d_clip.h
 * @brief p2d clip managemet
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-04-07
 * Licence: MIT
 */


#ifndef _p2d_clip_h_
#define _p2d_clip_h_

#include "p2d.h"


/**
 * @function P2D_ClipFit
 * @brief modify a given clip in order to fit it in the global clip
 * @param rect_st *toClip
 * @return none
 */
void P2D_ClipFit(/*@out@*/rect_st *toClip);

/**
 * @function P2D_IsCoordInClip
 * @brief check if a given point is within the global clip
 * @param coord_t x, coord_t y: point coordinate
 * @return bool: true -> the point is within the global clip, false otherwise
 */
bool P2D_IsCoordInClip(coord_t x, coord_t y);

/**
 * @function P2D_SetClip
 * @brief define the global clip
 * @param const rect_st *rec: new global clip; clip is checked to ensure that it fits in the physical surface dimension
 * @return none
 */
void P2D_SetClip(/*@null@*/const rect_st *rec);

/**
 * @function P2D_Clip
 * @brief modify a given clip (src) in order to fit it in another given clip (dst)
 * @param rect_st *src: clip to fit
 * @param const rect_st *dst: reference
 * @return none
 */
void P2D_Clip(rect_st *src, const rect_st *dst);

/**
 * @function P2D_ClipBitBlt
 * @brief compute a bitblt clip on 2 given clip (*src & *dst), save results into *lsrc & *ldst
 * @param const rect_st *srcDim: source dimension (absolute)
 * @param const rect_st *src: desired source clip
 * @param const rect_st *dst: desired destination clip
 * @param rect_st *lsrc: output source clip
 * @param rect_st *ldst: output destination clip
 * @return uint32_t: number of pixel composing clipped destination
 */
uint32_t P2D_ClipBitBlt(const rect_st *srcDim, const rect_st *src, const rect_st *dst, rect_st *lsrc, rect_st *ldst);

#endif
