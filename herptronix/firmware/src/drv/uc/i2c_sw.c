

#include "main.h"
#include "framework/peripheral/i2c/plib_i2c.h"


uint8_t I2C_ReadBlock(uint8_t deviceID, uint8_t offset, uint8_t *buffer, uint16_t length);
bool I2CByteWasAcknowledged ( void );
bool I2CReceivedDataIsAvailable ( void );
bool I2CReceiverEnable ( bool enable );
bool I2CSendByte ( uint8_t data );
bool I2CStart( void );
void I2CStop ( void );
bool I2CTransmissionHasCompleted ( void );
bool I2CTransmitterIsReady ( void );


void I2C_Init(void)
{

    TRISEbits.TRISE8 = 1; // Input for INT pin for PCAP

    IEC0bits.INT1IE = 0; // disable INT1
    INTCONbits.INT1EP = 1; // rising edge trigger
    IPC2bits.INT1IP = 5;
    IFS0bits.INT1IF = 0; // clear the interrupt flag
    IEC0bits.INT1IE = 1; // enable INT0

    I2C1CONbits.ON =0;

    I2C1BRG = 50; //50; // 50 kHz Baudrate

    I2C1CONbits.ON =1;

    DelayMs(500);
}


bool StartTransfer( bool restart )
{

    // Wait for the bus to be idle, then start the transfer
    while(PLIB_I2C_BusIsIdle(0) == false);

    PLIB_I2C_MasterStart(0);

    while(PLIB_I2C_StartWasDetected(0) == false);
    
    return true;
}


bool TransmitOneByte( uint8_t data )
{
 
    // Wait for the transmitter to be ready
    if(PLIB_I2C_TransmitterIsReady(0) == true)
    {

    // Transmit the byte
    if(I2CSendByte(data) == false)
    {
        return(false);
    }

    // Wait for the transmission to finish
    while(PLIB_I2C_TransmitterByteHasCompleted(0) == false);

    return true;
    }
    return false;
}


void StopTransfer( void )
{

    PLIB_I2C_MasterStop(0);

    I2C1CONCLR = 0x8000; //Reset Status Registers
    I2C1CONSET = 0x8000;

}



uint8_t I2C_ReadBlock(uint8_t deviceID, uint8_t offset, uint8_t *buffer, uint16_t length)
{
    static uint8_t count =0;

    I2C1CONCLR = 0x20; //I2C1CONbits.ACKDT = 0;

    // Start the transfer to write data to the EEPROM
    while(!StartTransfer(false));

   TransmitOneByte(deviceID|0x01);
   
    // Verify that the byte was acknowledged
    while(!I2CByteWasAcknowledged());

    for(count=0;count<length;count++)
    {
        PLIB_I2C_MasterReceiverClock1Byte(0);
        
        while(PLIB_I2C_ReceivedByteIsAvailable(0) == false);

        *buffer  = PLIB_I2C_ReceivedByteGet(0);
        buffer++;

        if(count == (length-1))
        {
            PLIB_I2C_ReceivedByteAcknowledge(0, false);
        }

        I2C1CONSET = 0x10; //I2C1CONbits.ACKEN = 1;

        while(I2C1CONbits.ACKEN == 1);

    }

    // End the transfer (stop here if an error occured)
    StopTransfer();

    return(0);
}

bool I2CByteWasAcknowledged (void)
{
	return(!I2C1STATbits.ACKSTAT);
}



bool I2CSendByte (uint8_t data )
{
    // Send the byte
    PLIB_I2C_TransmitterByteSend(0,data);
        
    // Check for collisions
    if((I2C1STATbits.BCL == 1) || (I2C1STATbits.IWCOL == 1))
    {
		return(false);
    }
	else
    {
		return(true);
    }
}
