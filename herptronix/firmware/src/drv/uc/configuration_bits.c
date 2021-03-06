

// DEVCFG2
#pragma config FPLLIDIV = DIV_1,FPLLRNG = RANGE_5_10_MHZ,FPLLICLK = PLL_FRC,FPLLMULT = MUL_50,FPLLODIV = DIV_2
#pragma config UPLLFSEL = FREQ_24MHZ,UPLLEN = OFF

// DEVCFG1
#pragma config FNOSC = SPLL,DMTINTV = WIN_127_128,FSOSCEN = OFF,IESO = OFF,POSCMOD = OFF,OSCIOFNC = ON
#pragma config FCKSM = CSECMD,WDTPS = PS1048576,WDTSPGM = STOP,WINDIS = NORMAL,FWDTEN = OFF,FWDTWINSZ = WINSZ_25
// DMTCNT = No Setting
#pragma config FDMTEN = OFF             // Deadman Timer Enable (Deadman Timer is disabled)

// DEVCFG0
#pragma config EJTAGBEN = NORMAL,DBGPER = ALLOW_PG2,FSLEEP = OFF,FECCCON = OFF_UNLOCKED,BOOTISA = MIPS32,TRCEN = ON,DEBUG = ON
// DEVCP0
#pragma config CP = OFF

#pragma config ICESEL = ICS_PGx2
