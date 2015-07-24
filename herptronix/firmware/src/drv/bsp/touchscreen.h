/**
 * @file touchscreen.h
 * @brief resistive touchscreen driver
 * @author Duboisset Philippe
 * @version N/A; draft / experimental
 */

#ifndef _touchscreen_h_
#define _touchscreen_h_

#include "main.h"
#include "lcc.h"


#define ADC_RAW_ERR   1023

typedef struct {
  float xd1, xd2, yd1, yd2;
  float xt1, xt2, yt1, yt2;
} touch_calib_st;


void TouchInit(void);

/**
 * @function TouchScreenEnable
 * @brief turn ON the touchscreen; overwrite ADC & TMR3 configuration
 * @param none
 * @return none
 */
void TouchScreenEnable(void);

/**
 * @function TouchScreenDisable
 * @brief turn OFF the touchscreen
 * @param none
 * @return none
 */
void TouchScreenDisable(void);

/**
 * @function TouchScreenIsPressed
 * @brief return the touch screen state
 * @param none
 * @return bool: true if touched, false otherwise
 */
bool TouchScreenIsPressed(void);

/**
 * @function TouchScreenReadRaw
 * @brief read the touchscreen filtered raw data
 * @param uint16_t *x, *y: x & y coordinate, in range[0 - (ADC_MAX_VALUE-1)]; ADC_RAW_ERR if touchscreen released
 * @return none
 */
void TouchScreenReadRaw(uint16_t *x, uint16_t *y);

/**
 * @function TouchScreenRead
 * @brief read the touchscreen filtered coordinate (relative to screen dimension)
 * @param coord_t *x: range[0 - LCD_GetWidth()-1]; -1 if touchscreen released
 * @param coord_t *y: range[0 - LCD_GetHeight()-1]; -1 if touchscreen released
 * @return none
 */
void TouchScreenRead(coord_t *x, coord_t *y);

/**
 * @function TouchScreenCalib
 * @brief set calibration parameters, based on 2 points
 * @param const touch_calib_st *cal: calibration points (touchscreen data & relative coordinates)
 * @return int8_t: 0=success, -1=error (invalid parameters leading to /0 )
 */
int8_t TouchScreenCalib(const touch_calib_st *cal);

#endif
