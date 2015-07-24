/**
 * @file p2d_buffer.h
 * @brief p2d double buffering
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#ifndef _p2d_buffer_h_
#define _p2d_buffer_h_

#include "p2d.h"


typedef enum {
  SURFACE_LCD = 0,
  SURFACE_1,
  SURFACE_2,
  SURFACE_3,
  SURFACE_NUMBER
} surfaceId_t;


/**
 * @function P2D_SurfaceInit
 * @brief initialize the surfaces management, set LCD as current surface
 * @param none
 * @return none
 */
void P2D_SurfaceInit(void);

/**
 * @function P2D_SurfaceCreate
 * @brief create an internal surface
 * @param const rect_st *rec: surface dimensions. only w & h are used
 * @return surfaceId_t: surface id if success (range[SURFACE_1-(SURFACE_NUMBER-1)], SURFACE_LCD if error
 */
surfaceId_t P2D_SurfaceCreate(const rect_st *rec);

/**
 * @function P2D_SurfaceDelete
 * @brief delete an internal surface and free the allocated memory
 * @param surfaceId_t id: surface to delete range[SURFACE_1-(SURFACE_NUMBER-1)]
 * @return none
 */
void P2D_SurfaceDelete(surfaceId_t id);

/**
 * @function P2D_SetDest
 * @brief set the current surface; once set, all operations will be performed on his surface
 * @param surfaceId_t id: surface to delete range[SURFACE_1-(SURFACE_NUMBER-1)]
 * @return surfaceId_t: SURFACE_LCD: error (if id was != of SURFACE_LCD), id otherwize
 */
surfaceId_t P2D_SetDest(surfaceId_t id);

/**
 * @function P2D_CopySurface
 * @brief copy a part of a surface to the current one, at specified coordinates
 * @param surfaceId_t from: source surface (shall be != of the current one and != of SURFACE_LCD, for the moment...)
 * @param const rect_st *src: source part
 * @param const rect_st *dst: destination coordinates (only x & y are used)
 * @return none
 */
void P2D_CopySurface(surfaceId_t from, const rect_st *src, const rect_st *dst);

#endif
