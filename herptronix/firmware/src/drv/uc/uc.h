/**
 * @file uc.h
 * @brief PIC32 specific functions (init, powermode, ...)
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-09
 * Licence: MIT
 */

#ifndef _uc_h_
#define _uc_h_

#include "main.h"

/**
 * @function UcInit
 * @brief initialize the uC. This function MUST be called at the very beginning of the program
 * @param none
 * @return none
 */
void UcInit(void);

/**
 * @function UcIdle
 * @brief set uC in sleep mode. It will be waked up on a interruption, or when WDT will overflow (configuration bits)
 * @param none
 * @return none
 */
void UcIdle(void);

#endif
