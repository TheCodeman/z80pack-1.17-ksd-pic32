/******************************************************************************
 *
 *                Microchip Memory Disk Drive File System
 *
 ******************************************************************************
 * FileName:        HardwareProfile.h
 * Dependencies:    None
 * Processor:       PIC18/PIC24/dsPIC30/dsPIC33/PIC32
 * Compiler:        C18/C30/C32
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the “Company”) for its PICmicro® Microcontroller is intended and
 * supplied to you, the Company’s customer, for use solely and
 * exclusively on Microchip PICmicro Microcontroller products. The
 * software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
*****************************************************************************/


#ifndef _HARDWAREPROFILE_H_
#define _HARDWAREPROFILE_H_

// Define your clock speed here
// Sample clock speed for a 32-bit processor
/*
#define SPI3CON 0x5800
#define SPI3STAT 0x5810
#define SPI3BUF 0x5820
#define SPI3BRG 0x5830
*/
    // Indicates that the PIC32 clock is running at 48 MHz
    //#define RUN_AT_48MHZ
    // Indicates that the PIC32 clock is running at 24 MHz
    //#define RUN_AT_24MHZ
    // Indicates that the PIC32 clock is running at 80 MHz
    #define RUN_AT_80MHZ
        #define GetSystemClock()            (80000000ul)
//        #define GetPeripheralClock()        (GetSystemClock()/2)
        #define GetPeripheralClock()        (GetSystemClock()/1) 		// GRG modified
        #define GetInstructionClock()       (GetSystemClock())
    // Various clock values

    // Clock values
    #define	CLOCKFREQ		(80000000L)
    #define BUSFREQ			(CLOCKFREQ/1)
    #define MILLISECONDS_PER_TICK       10                  // Definition for use with a tick timer
    #define TIMER_PRESCALER             TIMER_PRESCALER_8   // Definition for use with a tick timer
    #define TIMER_PERIOD                37500               // Definition for use with a tick timer

    




// Select your interface type
// This library currently only supports a single physical interface layer at a time


// Description: Macro used to enable the SD-SPI physical layer (SD-SPI.c and .h)
#define USE_SD_INTERFACE_WITH_SPI

/*********************************************************************/
/******************* Pin and Register Definitions ********************/
/*********************************************************************/

/* SD Card definitions: Change these to fit your application when using
   an SD-card-based physical layer                                   */


  
#ifdef Olimex

		//SPI Configuration
	#define SPI_START_CFG_1     (PRI_PRESCAL_64_1 | SEC_PRESCAL_8_1 | MASTER_ENABLE_ON | SPI_CKE_ON | SPI_SMP_ON)
        #define SPI_START_CFG_2     (SPI_ENABLE)

        // Define the SPI frequency
        #define SPI_FREQUENCY			(20000000)
    

            // Description: SD-SPI Chip Select Output bit
            #define SD_CS               LATDbits.LATD5
            // Description: SD-SPI Chip Select TRIS bit
            #define SD_CS_TRIS          TRISDbits.TRISD5
            
            // Description: SD-SPI Card Detect Input bit
            #define SD_CD               0 //PORTGbits.RG0
            // Description: SD-SPI Card Detect TRIS bit
      //      #define SD_CD_TRIS        0//  TRISGbits.TRISG0

            // Description: SD-SPI Write Protect Check Input bit
            #define SD_WE               0   //PORTGbits.
            // Description: SD-SPI Write Protect Check TRIS bit
      //      #define SD_WE_TRIS          0 //TRISGbits.TRISG1
//            
            // Description: The main SPI control register
            #define SPICON1             SPI3CON
            // Description: The SPI status register
            #define SPISTAT             SPI3STAT
            // Description: The SPI Buffer
            #define SPIBUF              SPI3BUF
            // Description: The receive buffer full bit in the SPI status register
            #define SPISTAT_RBF         SPI3STATbits.SPIRBF
            // Description: The bitwise define for the SPI control register (i.e. _____bits)
            #define SPICON1bits         SPI3CONbits
            // Description: The bitwise define for the SPI status register (i.e. _____bits)
            #define SPISTATbits         SPI3STATbits
            // Description: The enable bit for the SPI module
            #define SPIENABLE           SPI3CONbits.ON
            // Description: The definition for the SPI baud rate generator register (PIC32)
            #define SPIBRG		SPI3BRG

            // Tris pins for SCK/SDI/SDO lines

            // Description: The TRIS bit for the SCK pin
            #define SPICLOCK            TRISDbits.TRISD1
            // Description: The TRIS bit for the SDI pin
            #define SPIIN               TRISDbits.TRISD2
            // Description: The TRIS bit for the SDO pin
            #define SPIOUT              TRISDbits.TRISD3
            //SPI library functions
           //SPI library functions
            #define putcSPI(spichar)     SpiChnPutC(3, spichar)
            #define getcSPI()            SpiChnGetC(3)
            #define OpenSPI(config1, config2)   SpiChnOpen(3, config1, config2)
#endif

#ifdef Maximite

		//SPI Configuration
		#define SPI_START_CFG_1     (PRI_PRESCAL_64_1 | SEC_PRESCAL_8_1 | MASTER_ENABLE_ON | SPI_CKE_ON | SPI_SMP_ON)
        #define SPI_START_CFG_2     (SPI_ENABLE)

        // Define the SPI frequency
        #define SPI_FREQUENCY			(20000000)
    

            // Description: SD-SPI Chip Select Output bit
            #define SD_CS               LATEbits.LATE0
        	// Description: SD-SPI Chip Select TRIS bit
            #define SD_CS_TRIS          TRISEbits.TRISE0
            
            // Description: SD-SPI Card Detect Input bit
            #define SD_CD               PORTDbits.RD4
            // Description: SD-SPI Card Detect TRIS bit
            #define SD_CD_TRIS          TRISDbits.TRISD4

            // Description: SD-SPI Write Protect Check Input bit
            #define SD_WE               PORTDbits.RD5
            // Description: SD-SPI Write Protect Check TRIS bit
            #define SD_WE_TRIS          TRISDbits.TRISD5
                   
            // Description: The main SPI control register
            #define SPICON1             SPI3ACON
            // Description: The SPI status register
            #define SPISTAT             SPI3ASTAT
            // Description: The SPI Buffer
            #define SPIBUF              SPI3ABUF
            // Description: The receive buffer full bit in the SPI status register
            #define SPISTAT_RBF         SPI3ASTATbits.SPIRBF
            // Description: The bitwise define for the SPI control register (i.e. _____bits)
            #define SPICON1bits         SPI3ACONbits
            // Description: The bitwise define for the SPI status register (i.e. _____bits)
            #define SPISTATbits         SPI3ASTATbits
            // Description: The enable bit for the SPI module
            #define SPIENABLE           SPI3ACONbits.ON
            // Description: The definition for the SPI baud rate generator register (PIC32)
            #define SPIBRG			    SPI3ABRG

            // Tris pins for SCK/SDI/SDO lines

            // Description: The TRIS bit for the SCK pin
            #define SPICLOCK            TRISBbits.TRISB14
            // Description: The TRIS bit for the SDI pin
            #define SPIIN               TRISFbits.TRISF4
            // Description: The TRIS bit for the SDO pin
            #define SPIOUT              TRISFbits.TRISF5
            //SPI library functions
            #define putcSPI(spichar)     SpiChnPutC(SPI_CHANNEL3A, spichar)
            #define getcSPI()            SpiChnGetC(SPI_CHANNEL3A)
            #define OpenSPI(config1, config2)   SpiChnOpen(SPI_CHANNEL3A, config1, config2)
#endif

   
#endif







