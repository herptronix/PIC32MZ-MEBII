/**
 * @file timer.h
 * @brief software timer implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-04-07
 * Licence: MIT
 */

#ifndef _timer_h_
#define _timer_h_

#include "main.h"
#include "ticks.h"

typedef ticks_t timer_t;

/**
 * @function GetTimeout
 * @brief return the ticks value which correspond to actual ticks + desired delay
 * @param uint32_t u32delayMs: desired delay (in ms)
 * @return timer_t: ticks value
 */
timer_t GetTimeout(uint32_t u32delayMs);

/**
 * @function GetPeriodicTimeout
 * @brief return the periodic ticks value which correspond to actual ticks + desired delay, and round the value to
 * a multiple of u32delayMs
 * @param uint32_t u32delayMs: periodic desired delay (in ms)
 * @return timer_t: ticks value
 */
timer_t GetPeriodicTimeout(uint32_t u32delayMs);

/**
 * @function IsTimerElapsed
 * @brief checks if the timer is elapsed
 * @param timer_t timer: ticks delay
 * @return BOOL: TRUE if delay is finished, FALSE otherwise
 */
bool IsTimerElapsed(timer_t timer);

#endif
