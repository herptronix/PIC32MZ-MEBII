/**
 * @file tmr.h
 * @brief timer driver
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-09
 * Licence: MIT
 */

#ifndef _tmr_h_
#define _tmr_h_

#include "main.h"


typedef enum {
  TMR_1 = 1,
  TMR_3 = 3,
  TMR_4,
  TMR_5
} tmr_t; /*available hardware timers enumeration*/


/**
 * @function TmrSetFrequency
 * @brief configure a given timer with a desired frequency
 * @param tmr_t tmr_id: timer id
 * @param uint32_t desiredFrequency: desired frequency, in Hz
 * @return int8_t: 0 sucess, otherwise error
 */
int8_t TmrSetFrequency(tmr_t id, uint32_t freq);

/**
 * @function TmrSetCallback
 * @brief associate a callback function to a given timer
 * @param tmr_t tmr_id: timer id
 * @param *ptrCallback: pointer to a void function(void)
 * @return none
 */
void TmrSetCallback(tmr_t id, void (*callback)(void));

/**
 * @function TmrLaunch
 * @brief enable a given timer, if this one is correctly configured
 * @param tmr_t tmr_id: timer id
 * @return none
 */
void TmrLaunch(tmr_t id);

/**
 * @function TmrStop
 * @brief stop a given timer
 * @param tmr_t tmr_id: timer id
 * @return none
 */
void TmrStop(tmr_t id);

#endif
