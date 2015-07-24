/**
 * @file salloc.h
 * @brief quick & dirty memory allocator
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-04-07
 * Licence: MIT
 */

#ifndef _salloc_h_
#define _salloc_h_

#include "main.h"

/**
 * 15-20ko (min) should be given to the allocator for using GUI
 * here, 100ko is given to the allocator
 */
#define SALLOC_SIZE 240000

/**
 * @function salloc
 * @brief allocate memory
 * @param uint32_t byteNeeded: contiguous memory to allocate, in bytes
 * @return void *: pointer to allocated memory if success, NULL if error
 */
void *salloc(uint32_t byteNeeded);

/**
 * @function sfree
 * @brief free memory, from a physical address to the end
 * @param void *ptr: physical address
 * @return none
 */
void sfreeFrom(void *ptr);

/**
 * @function sfreeAll
 * @brief free all the memory allocated by salloc()
 * @param none
 * @return none
 */
void sfreeAll(void);

/**
 * @function sallocGetUsed
 * @brief return the bytes allocated
 * @param none
 * @return uint32_t: bytes allocated
 */
uint32_t sallocGetUsed(void);

/**
 * @function sallocGetTotal
 * @brief return the bytes allocated + bytes allocatable
 * @param none
 * @return uint32_t: SALLOC_SIZE
 */
uint32_t sallocGetTotal(void);

#endif
