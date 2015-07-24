/**
 * @file rtc.h
 * @brief quick & dirty software rtcc, needed for FAT-Fs
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-09-20
 * Licence: MIT
 */

#ifndef _rtc_h_
#define _rtc_h_

#include "main.h"

/**
 * @function RtcTask
 * @brief Software RTC task; shall be called in main loop
 * @param none
 * @return none
 */
void RtcTask(void);

/**
 * @function RtcGetTimeStamp
 * @brief return timestamp (current time)
 * @param none
 * @return uint32_t: std timestamp
 */
uint32_t RtcGetTimeStamp(void);

#endif
