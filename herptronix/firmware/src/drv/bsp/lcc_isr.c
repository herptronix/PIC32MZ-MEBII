
//from Microchip, with some modification on timings

//#include "driver/gfx/drv_gfx_display.h"
//include "driver/gfx/gfx_lcc/drv_gfx_lcc.h"

//source code is broken, it does not work with gcc optimizations :/


#include <xc.h>
#include <sys/attribs.h>
#include "peripheral/int/plib_int.h"
#include "system/int/sys_int.h"
#include "peripheral/dma/plib_dma.h"
#include "peripheral/pmp/plib_pmp.h"
#include "lcc.h"


#define DISP_HOR_RESOLUTION		480
#define DISP_VER_RESOLUTION		272
#define DISP_HOR_PULSE_WIDTH    41
#define DISP_HOR_BACK_PORCH     2
#define DISP_HOR_FRONT_PORCH    2 //not used !
#define DISP_VER_PULSE_WIDTH    10
#define DISP_VER_BACK_PORCH     2
#define DISP_VER_FRONT_PORCH    2
#define DISP_INV_LSHIFT         0
#define PIXELCLOCK        LATDbits.LATD5
#define PIXELCLOCK_TRIS   TRISDbits.TRISD5

#define DATA_ENABLE      LATBbits.LATB4
#define DATA_ENABLE_TRIS TRISBbits.TRISB4
#define HSYNC            LATBbits.LATB1
#define HSYNC_TRIS       TRISBbits.TRISB1
#define VSYNC            LATAbits.LATA9
#define VSYNC_TRIS       TRISAbits.TRISA9

// *****************************************************************************
/* LCD Display Pin Constants

  Summary:
    Defines the constants which identifies LCD Display pins

  Description:
    These constants identifies LCD Display pins
*/
#define BACKLIGHT      LATFbits.LATF13
#define BACKLIGHT_TRIS TRISFbits.TRISF13
#define LCD_RESET      LATJbits.LATJ3
#define LCD_RESET_TRIS TRISJbits.TRISJ3
#define LCD_CS         LATJbits.LATJ6
#define LCD_CS_TRIS    TRISJbits.TRISJ6

#define BACKLIGHT_ENABLE_LEVEL      1
#define BACKLIGHT_DISABLE_LEVEL     0


#define DMA_CHANNEL               DMA_CHANNEL_1
#define SRAM_ADDR_CS0             0xE0000000


static const uint32_t HBackPorchSize = (( (uint32_t)DISP_HOR_PULSE_WIDTH+DISP_HOR_BACK_PORCH) - 1) * 2 - 2; //-2 added

static const int16_t verticalBlank = (DISP_VER_PULSE_WIDTH+DISP_VER_BACK_PORCH+DISP_VER_FRONT_PORCH-1);
color_t *pscreen;

color_t screen[DISP_VER_RESOLUTION * DISP_HOR_RESOLUTION];

volatile int16_t line = 0;

	typedef    enum
    {
        ACTIVE_PERIOD = 0,
	BLANKING_PERIOD,
        FINISH_LINE,
        OVERFLOW,
        PIP,
	SCROLL,
	} DMA_ISR_TASK;


void LCD_Init(void) {

  /*Suspend DMA Module*/
  PLIB_DMA_SuspendEnable(0);

  pscreen = (color_t *) ( (uint32_t) screen | 0x20000000);


  HSYNC_TRIS =0;
  LCD_CS_TRIS =0;
  VSYNC_TRIS =0;
  LCD_RESET_TRIS =0;
  BACKLIGHT_TRIS = 0;
  DATA_ENABLE_TRIS = 0;
  LCD_RESET = 1;
  LCD_CS    = 1;
  PIXELCLOCK_TRIS = 0;
  PIXELCLOCK = DISP_INV_LSHIFT;



  CFGEBIA = 0;                //Address Lines of EBI are not
  CFGEBIC = 0x00003313;       //External Bus Interface Control Pin Configuration Register
  EBICS0  = 0x20000000;       //External Bus Interface Chip Select Register
  EBIMSK0 = 0x00000026;       //External Bus Interface Address Mask Register ->0x00000015 ? (SRAM au lieu de NOR)0x00000026
 // EBISMT0 = 0x00001010;       //External Bus Interface Static Memory Timing Register -> 0x00008020? 0x00008160?
  EBISMT0 = 0;

  EBISMT0bits.PAGEMODE = 0;
  EBISMT0bits.PAGESIZE = 0;

  EBISMT0bits.TAS = 0b01;     //Write Address Setup Time bits
  //EBISMT0bits.TWR = 0b00;     //Write Address/Data Hold Time bits


  //EBISMT0bits.TBTA = 0b00;    //Data Bus Turnaround Time bits
  //EBISMT0bits.TPRC = 0b0000;  //Page Mode Read Cycle Time bits


  EBISMT0bits.TWP = 0b000100; //Write Pulse Width bits
  //EBISMT0bits.TRC = 0b000000; //Read Cycle Time bits
  EBISMCON = 0x00000000;      //SFR control for Static Memory

  DCH1DSA = 0x20000000; /*DMA destination address*/


  PLIB_DMA_Enable(0);

  BACKLIGHT =1;

  PLIB_DMA_ChannelXTriggerEnable(0, DMA_CHANNEL, DMA_CHANNEL_TRIGGER_TRANSFER_START);
  PLIB_DMA_ChannelXSourceStartAddressSet(0,DMA_CHANNEL, (uint32_t)&screen[0]);
  PLIB_DMA_ChannelXDestinationSizeSet(0,DMA_CHANNEL, sizeof(color_t));
  PLIB_DMA_ChannelXSourceSizeSet(0,DMA_CHANNEL, HBackPorchSize);
  PLIB_DMA_ChannelXCellSizeSet(0,DMA_CHANNEL, HBackPorchSize);
  PLIB_DMA_ChannelXINTSourceEnable(0, DMA_CHANNEL, DMA_INT_BLOCK_TRANSFER_COMPLETE);
  SYS_INT_VectorPrioritySet(INT_VECTOR_DMA1, INT_PRIORITY_LEVEL6);
  SYS_INT_SourceEnable(INT_SOURCE_DMA_1);
  PLIB_DMA_ChannelXEnable(0,DMA_CHANNEL);

  PLIB_DMA_SuspendDisable(0);

  PLIB_DMA_StartTransferSet(0, DMA_CHANNEL);

  LCD_SetWnd(NULL);
}


void __ISR( _DMA1_VECTOR) DmaHandler1(void)
{

  static uint8_t GraphicsState = ACTIVE_PERIOD;
  const uint32_t remaining = ((uint32_t)DISP_HOR_RESOLUTION) * 2;
  //static int16_t line = 0;
  static uint32_t* EBIStart = (uint32_t*)(SRAM_ADDR_CS0+4);


  switch(GraphicsState)
  {
    case ACTIVE_PERIOD:
      GraphicsState = BLANKING_PERIOD;

      if(line >= 0) {
        PLIB_DMA_ChannelXSourceStartAddressSet(0,DMA_CHANNEL, ((uint32_t)&screen[line*480]) | 0x20000000);

        if(line == (DISP_VER_RESOLUTION)) {
          VSYNC = 0;
          line = -verticalBlank;
        }
        else {
          VSYNC = 1;
          DATA_ENABLE = 1;
        }
      }

      PLIB_DMA_ChannelXSourceSizeSet(0,DMA_CHANNEL,remaining);
      DCH1CSIZ = remaining;
      PLIB_DMA_ChannelXINTSourceFlagClear(0, DMA_CHANNEL, DMA_INT_BLOCK_TRANSFER_COMPLETE);
      SYS_INT_SourceStatusClear(INT_SOURCE_DMA_1);
      DCH1CONbits.CHEN = 1;
      DCH1ECONbits.CFORCE = 1;          /* force DMA transfer 7*/

      break;

    case BLANKING_PERIOD:

      HSYNC = 0;
      DATA_ENABLE = 0;

      *EBIStart = 2;

      HSYNC = 1;
      DCH1SSIZ = HBackPorchSize;
      GraphicsState = ACTIVE_PERIOD;
      line++;
      PLIB_DMA_ChannelXINTSourceFlagClear(0, DMA_CHANNEL, DMA_INT_BLOCK_TRANSFER_COMPLETE);
      SYS_INT_SourceStatusClear(INT_SOURCE_DMA_1);

      DCH1CONbits.CHEN = 1;
      DCH1ECONbits.CFORCE = 1;

      return;
  }
}

