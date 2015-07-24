/**
 * @file ticks.h
 * @brief 1ms absolute time reference
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.2b
 * @date (yyyy-mm-dd)
 *  0.1b  2013-04-07 : initial version
 *  0.2b  2013-09-20 : Add TicksSetExternalCallback() for FatFS support
 * Licence: MIT
 */

#ifndef _ticks_h_
#define _ticks_h_

#include "main.h"

typedef uint64_t ticks_t;

/**
 * @function TicksInit
 * @brief initialize the aboslute 1ms reference clock
 * @param none
 * @return none
 */
void TicksInit(void);

/**
 * @function TicksGet
 * @brief return the number of the ms elapsed since TicksInit() call
 * @param none
 * @return ticks_t: ms
 */
ticks_t TicksGet(void);

/**
 * @function TicksSetWatchdog
 * @brief enable a watchdog function
 * @param void (*function)(void): function to execute when reaching a delay
 * @param ticks_t delay: dela, in ms
 * @return none
 */
void TicksSetWatchdog(void (*function)(void), ticks_t delay);

/**
 * @function TicksSetExternalCallback
 * @brief enable a external function, which will be called every ticks
 * @param void (*function)(void): pointer to the extern function
 * @return none
 */
void TicksSetExternalCallback(void (*function)(void));

#endif
