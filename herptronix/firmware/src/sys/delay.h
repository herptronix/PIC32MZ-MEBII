/**
 * @file delay.h
 * @brief blocking delay (approximated) implementation
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-04-07
 * Licence: MIT
 */

#ifndef _delay_h_
#define _delay_h_

#include "main.h"


/**
 * @macro Delay100ns
 * @brief bloquing wait of AT LEAST 100 ns
 * @param none
 * @return none
 */
#define Delay100ns()  { __asm("nop");__asm("nop");__asm("nop");__asm("nop");__asm("nop"); \
                        __asm("nop");__asm("nop");__asm("nop");__asm("nop");__asm("nop"); \
                        __asm("nop");__asm("nop");__asm("nop");__asm("nop");__asm("nop"); \
                        __asm("nop");__asm("nop");__asm("nop");__asm("nop");__asm("nop"); }

/**
 * @function DelayUs
 * @brief bloquing wait of AT LEAST u16delayUs microseconds
 * @param uint16_t u16delayUs: desired delay (in us)
 * @return none
 */
void DelayUs(uint16_t u16delayUs);

/**
 * @function DelayMs
 * @brief bloquing wait of AT LEAST u16delayMs milliseconds; during this wait, CPU is idle mode
 * @param uint16_t u16delayMs: desired delay (in ms)
 * @return none
 */
void DelayMs(uint16_t u16delayMs);

/**
 * @function DelayS
 * @brief bloquing wait of AT LEAST u16delayS seconds; during this wait, CPU is idle mode
 * @param uint16_t u16delayS: desired delay (in s)
 * @return none
 */
void DelayS (uint16_t u16delayS);

#endif
