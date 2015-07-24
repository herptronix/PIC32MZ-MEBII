/**
 * @file tmr.c
 * @brief timer driver
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-09
 * Licence: MIT
 */

#include "tmr.h"


/**
 * private variables definition
 */
static void (*tmr4PtrCallback) (void) = NULL;
static uint8_t timer4Configured = 0;

/**
 * @function TmrSetFrequency
 * @brief configure a given timer with a desired frequency
 * @param tmr_t tmr_id: timer id
 * @param uint32_t desiredFrequency: desired frequency, in Hz
 * @return int8_t: 0 sucess, otherwise error
 */
int8_t TmrSetFrequency(tmr_t id, uint32_t freq) {
  TMR4 = 0;
  T4CONbits.TCKPS = 3;
  PR4 = 10000;//TICK_PERIOD; 1ms
  IPC4bits.T4IP = 1;
  IFS0bits.T4IF = 0;  						//Clear flag
  IEC0bits.T4IE = 1;  						//Enable interrupt
  timer4Configured = 1;
  return 0;
}


/**
 * @function TmrSetCallback
 * @brief associate a callback function to a given timer
 * @param tmr_t tmr_id: timer id
 * @param *ptrCallback: pointer to a void function(void)
 * @return none
 */
void TmrSetCallback(tmr_t id, void (*callback)(void)) {
  TmrStop(TMR_4);
  tmr4PtrCallback = callback;
}


/**
 * @function TmrLaunch
 * @brief enable a given timer, if this one is correctly configured
 * @param tmr_t tmr_id: timer id
 * @return none
 */
void TmrLaunch(tmr_t id) {
  if(timer4Configured == 1 && tmr4PtrCallback != NULL) {
    IFS0bits.T4IF = 0;
    T4CONbits.TON = 1;
  }
}


/**
 * @function TmrStop
 * @brief stop a given timer
 * @param tmr_t tmr_id: timer id
 * @return none
 */
void TmrStop(tmr_t id) {
  T4CONbits.TON = 0;
}


/**
 * @function Timer4Handler
 * @brief Timer4 interruption handler
 * @param none
 * @return none
 */
void __ISR(_TIMER_4_VECTOR) Timer4Handler(void) {
  tmr4PtrCallback();
  IFS0bits.T4IF = 0;
}
