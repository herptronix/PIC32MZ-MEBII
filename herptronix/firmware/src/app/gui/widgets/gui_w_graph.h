/**
 * @file gui_w_graph.h
 * @brief graph implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.2b
 * @date (yyyy-mm-dd)
 *  0.1b  2013-07-13  : initial version
 *  0.2b  2013-08-27  : Add grid
 * Licence: MIT
 */
#ifndef _gui_w_graph_h_
#define _gui_w_graph_h_

#include "gui.h"

/**
 * e_grid_type
 */
typedef enum {
  GRAPH_GRID_DISABLED,
  GRAPH_GRID_DOT_H,
  GRAPH_GRID_DOT_V,
  GRAPH_GRID_DOT_HV,
  _GRAPH_GRID_CNT
} e_grid_type;


/**
 * @function GUI_W_GraphSetGridSpacing
 * @brief set the grid spacing
 * @param length_t h: horizontal spacing, in pixel (min = 2px)
 * @param length_t v: vertical spacing, in pixel (min = 2px)
 * @return none
 */
void GUI_W_GraphSetGridSpacing(length_t h, length_t v);

/**
 * @function GUI_W_GraphAdd
 * @brief add graph container
 * @param const rect_st *rec: graph dimension
 * @param e_grid_type grid: grid type. See e_grid_type enumeration
 * @param uint16_t refreshTime: refresh period, in ms
 * @return g_obj_st *: pointer to the associated generic object if succedeed, NULL if error.
 */
g_obj_st /*@null@*/ *GUI_W_GraphAdd(const rect_st *rec, e_grid_type grid, uint16_t refreshTime);

/**
 * @function GUI_W_GraphAddCurveToGraph
 * @brief add a curve into a graph container; number of curve not limited
 * @param g_obj_st *obj: pointer to the graph container
 * @param uint8_t *data: pointer to the curve data
 * @param color_t color: color of the curve
 * @return int8_t: 0 ok, -1 error
 */
int8_t GUI_W_GraphAddCurveToGraph(g_obj_st *obj, uint8_t *data, color_t color);

/**
 * @function GUI_W_GraphAddSampleToCurve
 * @brief add a sample to the curve; by using this function, corresponding curve will be considered as a circular buffer
 * @param g_obj_st *obj: pointer to the graph container
 * @param uint8_t curveId: curve ID
 * @param uint8_t sample: new sample
 * @return none
 */
void GUI_W_GraphAddSampleToCurve(g_obj_st *obj, uint8_t curveId, uint8_t sample);

#endif
