/**
 * @file main.h
 * @brief SMART TFT software entry point
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#ifndef _main_h_
#define _main_h_

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>
#include <xc.h>
#include <sys/attribs.h>

#define INCLUDE_GUI_DEMO

extern void (*pCurrentTask) (void);

#endif
