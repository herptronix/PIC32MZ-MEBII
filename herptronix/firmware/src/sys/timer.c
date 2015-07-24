/**
 * @file timer.c
 * @brief software timer implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-04-07
 * Licence: MIT
 */

#include "timer.h"
#include "ticks.h"


/**
 * @function GetTimeout
 * @brief return the ticks value which correspond to actual ticks + desired delay
 * @param uint32_t u32delayMs: desired delay (in ms)
 * @return timer_t: ticks value
 */
timer_t GetTimeout(uint32_t u32delayMs) {
  timer_t delay = TicksGet() + u32delayMs;
  return delay;
}


/**
 * @function GetPeriodicTimeout
 * @brief return the periodic ticks value which correspond to actual ticks + desired delay, and round the value to
 * a multiple of u32delayMs
 * @param uint32_t u32delayMs: periodic desired delay (in ms)
 * @return timer_t: ticks value
 */
timer_t GetPeriodicTimeout(uint32_t u32delayMs) {
  timer_t delay = TicksGet();
  if(u32delayMs != 0) {
    delay += u32delayMs;
    delay /= u32delayMs;
    delay *= u32delayMs;
  }
  return delay;
}


/**
 * @function IsTimerElapsed
 * @brief checks if the timer is elapsed
 * @param timer_t timer: ticks delay
 * @return BOOL: TRUE if delay is finished, FALSE otherwise
 */
bool IsTimerElapsed(timer_t timer) {
  bool res = false;
  if(timer < TicksGet()) res = true;
  return res;
}
