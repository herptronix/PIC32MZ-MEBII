/**
 * @file salloc.c
 * @brief quick & dirty memory allocator
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-04-07
 * Licence: MIT
 */

#include "salloc.h"


/**
 * local variables
 */
static uint8_t __attribute__ ((aligned(4)))allocArray[SALLOC_SIZE];
static uint32_t offset = 0;


/**
 * @function salloc
 * @brief allocate memory
 * @param uint32_t byteNeeded: contiguous memory to allocate, in bytes
 * @return void *: pointer to allocated memory if success, NULL if error
 */
void *salloc(uint32_t byteNeeded) {

  void *res = NULL;

  /*check remaining space (and offset + byteNeeded overflow) */
  if(byteNeeded < SALLOC_SIZE && offset + byteNeeded < SALLOC_SIZE) {

    /*return the physical address*/
    res = &allocArray[offset];

    /*update offset*/
    offset += byteNeeded;

    /*align offset @4 for next allocation*/
    while( (offset & 0x3) != 0) offset++;
  }

  return res;
}


/**
 * @function sfree
 * @brief free memory, from a physical address to the end
 * @param void *ptr: physical address
 * @return none
 */
void sfreeFrom(void *ptr) {

  uint32_t addrIn, addrBase, tmpOffset;

  if(ptr != NULL) {
    addrIn = (uint32_t) ptr;
    addrBase = (uint32_t) &allocArray[0];

    /*check if the given address is inside the allocatable memory*/
    if(addrIn > addrBase) {
      tmpOffset = addrIn - addrBase;
      if(tmpOffset < SALLOC_SIZE) {

        /*update the offset to the given address*/
        offset = tmpOffset;

        /*align offset @4 for next allocation*/
        while( (offset & 0x3) != 0) offset++;
      }
    }
  }
}


/**
 * @function sfreeAll
 * @brief free all the memory allocated by salloc()
 * @param none
 * @return none
 */
void sfreeAll(void) {
  offset = 0;
}


/**
 * @function sallocGetUsed
 * @brief return the bytes allocated
 * @param none
 * @return uint32_t: bytes allocated
 */
uint32_t sallocGetUsed(void) {
  return offset;
}


/**
 * @function sallocGetTotal
 * @brief return the bytes allocated + bytes allocatable
 * @param none
 * @return uint32_t: SALLOC_SIZE
 */
uint32_t sallocGetTotal(void) {
  return (uint32_t) SALLOC_SIZE;
}
