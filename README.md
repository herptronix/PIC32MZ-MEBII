PIC32MZ-MEBII
================

Open source GUI for PIC32MZ / MEBII board  
Licence: MIT

1/ Install MPLAB X v3.05  
2/ Install XC32 compiler v1.40  
3/ Install Harmony framework v1.05  
4/ Clone the project to desktop; copy the <herptronix> folder into <C:\microchip\harmony\v1_05\apps\gfx>  
5/ Open the project with MPLAB X; it's ready to compile

Small video: https://www.youtube.com/watch?v=9qaacDHO87Y  
Some explanations (french only): http://herptronix.blogspot.fr/2014/03/pic32mz-meb2-lcc-solution-custom.html

Thanks to Rafael Gebert (Brazil) for this clean adaptation of the original project to Harmony framework.  
Thanks to Patrick T. (France) from Microchip for providing me the MEBII board.

Known issues
================
The touchscreen management is buggy (maybe it is the I2C driver, maybe my MEBII is faulty, I don't know)  
Initially, the GUI was designed for a resistive touchscreen + a stylus; small widgets are hard to select with this issue.

Status
================
24/07/2015: no longer maintained
