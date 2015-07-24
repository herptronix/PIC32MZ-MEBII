/**
 * @file delay.c
 * @brief blocking delay (approximated) implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-04-07
 * Licence: MIT
 */

#include "delay.h"
#include "timer.h"
#include "uc.h"


/**
 * @function DelayUs
 * @brief bloquing wait of AT LEAST u16delayUs microseconds
 * @param uint16_t u16delayUs: desired delay (in us)
 * @return none
 */
void DelayUs(uint16_t u16delayUs) {
  uint32_t cnt;
  cnt = (uint32_t)u16delayUs * 10;
  while(cnt-- > 0) {
    Delay100ns();
  }
}


/**
 * @function DelayMs
 * @brief bloquing wait of AT LEAST u16delayMs milliseconds; during this wait, CPU is idle mode
 * @param uint16_t u16delayMs: desired delay (in ms)
 * @return none
 */
void DelayMs(uint16_t u16delayMs) {
  timer_t timer = GetTimeout(u16delayMs);
  while(IsTimerElapsed(timer) == false) {
    UcIdle();
  }
}


/**
 * @function DelayS
 * @brief bloquing wait of AT LEAST u16delayS seconds; during this wait, CPU is idle mode
 * @param uint16_t u16delayS: desired delay (in s)
 * @return none
 */
void DelayS(uint16_t u16delayS) {
  timer_t timer = GetTimeout((uint32_t)u16delayS * 1000);
  while(IsTimerElapsed(timer) == false) {
    UcIdle();
  }
}
