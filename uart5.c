/*

UART Driver File for PIC24.

********************************************************************************
 FileName:        UART.c
 Dependencies:    HardwareProfile.h
 Processor:       PIC24
 Compiler:        MPLAB C30
 Linker:          MPLAB LINK30
 Company:         Microchip Technology Incorporated

Author                Date      Comment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
KO                 12-Feb-2008  Modified to use HardwareProfile.h
KO                 11-Oct-2006  v1.0
Anton Alkhimenok   18-Oct-2005
Anton Alkhimenok   17-Feb-2009  Added UARTChar2Hex(), UARTHex2Char(),
									  UARTClearError(), UARTDataReceived()
PAT				   27-Jan-2010  Added UARTGetBaudError() for dynamic checking
								of baud rate percentage error.

********************************************************************************
Software License Agreement

Microchip Technology Inc. ("Microchip") licenses to you the right to use, copy,
modify and distribute the software - including source code - only for use with
Microchip microcontrollers or Microchip digital signal controllers; provided
that no open source or free software is incorporated into the Source Code
without Microchip?s prior written consent in each instance.

The software is owned by Microchip and its licensors, and is protected under
applicable copyright laws.  All rights reserved.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, ANY CLAIMS BY THIRD PARTIES (INCLUDING
BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

********************************************************************************
*/

#include "Compiler.h"
#include "HardwareProfile.h"
#include "UART5.h"
#ifdef UseUART5
//******************************************************************************
// Constants
//******************************************************************************




/*******************************************************************************
Function: UARTGetChar()

Precondition:
    UARTInit must be called prior to calling this routine.

Overview:
    This routine waits for a byte to be received.  It then returns that byte.

Input: None.

Output: Byte received.

*******************************************************************************/
char UARTGetChar()
{
    char Temp;
    while(IFS2bits.U5RXIF == 0);
    Temp = U5RXREG;
    IFS2bits.U5RXIF = 0;
    return Temp;
}

/*******************************************************************************
Function: UARTInit()

Precondition: None.

Overview:
    This routine sets up the UART module.

Input: None.

Output: None.

Notes:
    Allow the peripheral to set the I/O pin directions.  If we set the TRIS
    bits manually, then when we disable the UART, the shape of the stop bit
    changes, and some terminal programs have problems.
*******************************************************************************/
void UARTInit()
{
    UARTConfigure(UART5, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetLineControl(UART5, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
    UARTSetDataRate(UART5, 80000000ul, BaudRate);
    UARTEnable(UART5, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));
}

/*******************************************************************************
Function: UARTIsPressed()

Precondition:
    UARTInit must be called prior to calling this routine.

Overview:
    This routine checks to see if there is a new byte in UART reception buffer.

Input: None.

Output:
    0 : No new data received.
    1 : Data is in the receive buffer

*******************************************************************************/
char UARTIsPressed()
{
    if(IFS2bits.U5RXIF == 1)
        return 1;
    return 0;
}

/*******************************************************************************
Function: UARTPrintString( char *str )

Precondition:
    UARTInit must be called prior to calling this routine.

Overview:
    This function prints a string of characters to the UART.

Input: Pointer to a null terminated character string.

Output: None.

*******************************************************************************/
void UARTPrintString( char *str )
{
    unsigned char c;

    while( (c = *str++) )
        UARTPutChar(c);
}

/*******************************************************************************
Function: UARTPutChar( char ch )

Precondition:
    UARTInit must be called prior to calling this routine.

Overview:
    This routine writes a character to the transmit FIFO, and then waits for the
    transmit FIFO to be empty.

Input: Byte to be sent.

Output: None.

*******************************************************************************/
void UARTPutChar( char ch )
{

    U5TXREG = ch;
    #if !defined(__PIC32MX__)
        Nop();
    #endif
    while(U5STAbits.TRMT == 0);

}

/*******************************************************************************
Function: UARTPutDec(unsigned char dec)

Precondition:
    UARTInit must be called prior to calling this routine.

Overview:
    This function converts decimal data into a string and outputs it to UART.

Input: Binary data.

Output: None.

*******************************************************************************/
void  UARTPutDec(unsigned char dec)
{
    unsigned char res;
    unsigned char printed_already = 0;

    res = dec;

    if (res/100)
    {
        UARTPutChar( res/100 + '0' );
        printed_already = 1;
    }
    res = res - (res/100)*100;

    if ((res/10) || (printed_already == 1))
    {
        UARTPutChar( res/10 + '0' );
    }
    res = res - (res/10)*10;

    UARTPutChar( res + '0' );
}

/*******************************************************************************
Function: UARTPutHex

Precondition:
    UARTInit must be called prior to calling this routine.

Overview:
    This function converts hex data into a string and outputs it to UART.

Input: Binary data.

Output: None.

*******************************************************************************/

const unsigned char CharacterArray[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

void UARTPutHex( int toPrint )
{
    int printVar;

    printVar = toPrint;
    toPrint = (toPrint>>4) & 0x0F;
    UARTPutChar( CharacterArray[toPrint] );

    toPrint = printVar & 0x0F;
    UARTPutChar( CharacterArray[toPrint] );

    return;
}

/*******************************************************************************
Function: UARTPutHexWord(unsigned int toPrint)

Precondition:
    UARTInit must be called prior to calling this routine.

Overview:
    This function converts hex data into a string and outputs it to UART.

Input: Binary data.

Output: None.

*******************************************************************************/
#if defined( __C30__ ) || defined( __PIC32MX__ )
void UARTPutHexWord( unsigned int toPrint )
{
    unsigned int printVar;

    printVar = (toPrint>>12) & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    printVar = (toPrint>>8) & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    printVar = (toPrint>>4) & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    printVar = toPrint & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    return;
}

void UARTPutHexDWord( unsigned long toPrint )
{
    unsigned long printVar;

    printVar = (toPrint>>28) & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    printVar = (toPrint>>24) & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    printVar = (toPrint>>20) & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    printVar = (toPrint>>16) & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    printVar = (toPrint>>12) & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    printVar = (toPrint>>8) & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    printVar = (toPrint>>4) & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    printVar = toPrint & 0x0F;
    UARTPutChar( CharacterArray[printVar] );

    return;
}

#endif

/*********************************************************************
Function: char UARTChar2Hex(char ch)

PreCondition: none

Input: ASCII to be converted

Output: number

Side Effects: none

Overview: converts ASCII coded digit into number

Note: none

********************************************************************/
char UARTChar2Hex(char ch){
  // Wrong char
  if(ch > 102)
    return 0;  
  
  // From a to f     
  if(ch > 96)
    return (ch-87);
    
  // Wrong char    
  if(ch > 70)
    return 0;
  
  // From A to F    
  if(ch > 64)
    return (ch-55);

  // Wrong char  
  if(ch > 57)
    return 0;
  
  // From 0 - 9
  if(ch > 47)
    return(ch-48);
  else
  // Wrong char
    return 0;
}

/*********************************************************************
Function: char UARTHex2Char(char hex)

PreCondition: none

Input: number

Output: ASCII code

Side Effects: none

Overview: converts low nibble into ASCII coded digit

Note: none

********************************************************************/
char UARTHex2Char(char hex){
char h;
  h = hex&0x0f;
  // From 0xa to 0xf
  if(h>9)
    return (h+55);
  else
    return (h+48);
}

/*********************************************************************
Function: void UARTClrError(void)

PreCondition: none

Input: none

Output: character received

Side Effects: none

Overview: wait for character

Note: none

********************************************************************/
void UARTClrError(void){
    // Clear error flag
    if(U5STAbits.OERR)
		U5STAbits.OERR = 0;
}

#endif
