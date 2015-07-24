/*****************************************************************************
 * File Name:       TouchScreenCapacitive.c
 * Processor:       PIC24, PIC32, dsPIC, PIC24H
 * Compiler:        MPLAB C30, MPLAB C32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2011 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 */


#include "main.h"
#include "touchscreen.h"


volatile int16_t PCapX[5]= {-1,-1,-1,-1,-1};
volatile int16_t PCapY[5]= {-1,-1,-1,-1,-1};





void TouchInit(void)
{

   unsigned int val;

    //Change the cache mode for I2C PCAP Touch
    asm volatile("mfc0   %0,$16" : "=r"(val));
    val |= 0x07;
    val ^= 0x07;
    val |= 0x01;
    asm volatile("mtc0   %0,$16" : "+r"(val));


    SYSKEY = 0x00000000;
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;
    CFGCONbits.DMAPRI = 1;
    INT1Rbits.INT1R = 0x0d;  //Enable INT1 on PPS
    SYSKEY = 0x33333333;
    ANSELA, ANSELB, ANSELC, ANSELD, ANSELE = 0;
    ANSELF, ANSELG, ANSELH, ANSELJ, ANSELK = 0;

    I2C_Init();
}






/**
 * @function TouchScreenEnable
 * @brief turn ON the touchscreen; overwrite ADC & TMR3 configuration
 * @param none
 * @return none
 */
void TouchScreenEnable(void) {

}


/**
 * @function TouchScreenDisable
 * @brief turn OFF the touchscreen
 * @param none
 * @return none
 */
void TouchScreenDisable(void) {

}


/**
 * @function TouchScreenIsPressed
 * @brief return the touch screen state
 * @param none
 * @return bool: true if touched, false otherwise
 */
bool TouchScreenIsPressed(void) {
  if(PCapX[0] < 0) return false;
  else return true;
}


/**
 * @function TouchScreenReadRaw
 * @brief read the touchscreen filtered raw data
 * @param uint16_t *x, *y: x & y coordinate, in range[0 - (ADC_MAX_VALUE-1)]; ADC_RAW_ERR if touchscreen released
 * @return none
 */
void TouchScreenReadRaw(uint16_t *x, uint16_t *y) {

}


/**
 * @function TouchScreenRead
 * @brief read the touchscreen filtered coordinate (relative to screen dimension)
 * @param coord_t *x: range[0 - LCD_GetWidth()-1]; -1 if touchscreen released
 * @param coord_t *y: range[0 - LCD_GetHeight()-1]; -1 if touchscreen released
 * @return none
 */
void TouchScreenRead(coord_t *x, coord_t *y) {
 *x = PCapX[0];
 *y = PCapY[0];
}

/**
 * @function TouchScreenCalib
 * @brief set calibration parameters, based on 2 points
 * @param const touch_calib_st *z: calibration points (touchscreen data & relative coordinates)
 * @return int8_t: 0=success, -1=error (invalid parameters leading to /0 )
 */
int8_t TouchScreenCalib(const touch_calib_st *z) {


  return 0;
}



void __ISR( _EXTERNAL_1_VECTOR )_PCAPHandler(void)
{
     static uint8_t data[6] = {0,0,0,0,0,0};
     static uint8_t touchpoint;
     static uint8_t penstatus;
     static short lastX;
     static short lastY;

     I2C1CONCLR = 0x8000; //Reset Status Registers
     I2C1CONSET = 0x8000;

     if(!I2C_ReadBlock(0x4a,0x55, &data[0], 6))
     {

        penstatus = (data[1] & 0x01);
        touchpoint = (data[1]&0x78)>>3;

        if(penstatus == 1)
        {

            lastX = data[2];
            lastX |= (uint16_t)(data[3]<<7);

            lastY = data[4];
            lastY |= (uint16_t)(data[5]<<7);

            PCapX[touchpoint] = ((lastX * (480))>>10);
            PCapY[touchpoint] = ((lastY * (272))>>10);
        }
        else if(penstatus == 0)
        {
            PCapX[touchpoint] = -1;
            PCapY[touchpoint] = -1;
        }
    }

    IFS0CLR = 0x100;
}
