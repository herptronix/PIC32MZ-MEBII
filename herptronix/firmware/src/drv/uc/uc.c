/**
 * @file uc.c
 * @brief PIC32 specific functions (init, powermode, ...)
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-09
 * Licence: MIT
 */

#include "uc.h"
#include "peripheral/int/plib_int.h"

/**
 * @function UcInit
 * @brief initialize the uC. This function MUST be called at the very beginning of the program
 * @param none
 * @return none
 */
void UcInit(void) {
  INT_MultiVectorSelect_Default(0);
  PLIB_INT_Enable(0);
}


/**
 * @function UcIdle
 * @brief set uC in sleep mode. It will be waked up on a interruption, or when WDT will overflow (configuration bits)
 * @param none
 * @return none
 */
void UcIdle(void) {

}


unsigned int _INT_PLIB_global_int_state;

void __attribute__((nomips16))  PLIB_INT_Enable_pic32( void )
{

    asm volatile("ei    %0" : "=r"(_INT_PLIB_global_int_state));

}

void __attribute__((nomips16))  PLIB_INT_Disable_pic32( void )
{

    asm volatile("di    %0" : "=r"(_INT_PLIB_global_int_state));

}
