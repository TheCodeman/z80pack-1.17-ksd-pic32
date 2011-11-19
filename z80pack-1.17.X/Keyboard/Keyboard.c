/***********************************************************************************************************************
Maximite

keyboard.c

Does all the hard work in getting data from the PS2 keyboard
Because this routine uses a 20uS timer it also manages various timers (counting variables), the date/time,
counting inputs and generates the sound.  All this is contained within the timer 4 interrupt.

The keyboard routine is based on a technique and code presented by Lucio Di Jasio in his excellent book 
"Programming 32-bit Microcontrollers in C - Exploring the PIC32".
  
Copyright 2011 Geoff Graham - http://geoffg.net
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General
Public License as published by the Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the
implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.  You should have received a copy of the GNU General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>. 

************************************************************************************************************************/

#define INCLUDE_FUNCTION_DEFINES

#include <p32xxxx.h>
#include <plib.h>
#include "../../HardwareProfile.h"
#include "../../SDCard/Microchip/Include/GenericTypeDefs.h"

#define KBTimeout        500 *(BUSFREQ/1000000)     // 500us timout

// definition of the keyboard PS/2 state machine 
#define PS2START    0
#define PS2BIT      1
#define PS2PARITY   2
#define PS2STOP     3
#define PS2CLK			PORTDbits.RD6			// Pin 54 input  - Keyboard clock
#define PS2DAT			PORTDbits.RD7			// Pin 55 input  - Keyboard data
// PS2 KBD state machine and buffer
int PS2State;
unsigned char KBDBuf;
int KState, KCount, KParity, KTimer;

// timer vatiables
unsigned int SecondsTimer = 0;
unsigned int PauseTimer = 0;
unsigned int IntPauseTimer = 0;
unsigned int TickTimer = 0;


extern volatile unsigned char InpQueue[];					// INP_QUEUE_SIZE is defined in Maximite.h
extern volatile int InpQueueHead, InpQueueTail;
extern volatile int MMAbort ;
extern int FileXfr ;

// sound variables
int SoundPlay;
int SoundCnt;
int SoundPeriod;

int mSecTimer = 0;								// this is used to count mSec
int second = 0;													// date/time counters
int minute = 0;
int hour = 0;
int day = 1;
int month = 1;
int year = 2000;

int SDActivityLED = 0;

const char DaysInMonth[] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

int SDCardRemoved = TRUE;

// special function characters
#define TAB     0x9
#define BKSP    0x8
#define ENTER   0xd
#define ESC     0x1b

#define NUM     0x0
#define L_CTRL  0x14
#define L_SHFT  0x12 
#define CAPS    0x58
#define R_SHFT  0x59
#define F1      0x0e
#define F2      0x0f
#define F3      0x10
#define F4      0x11
#define F5      0x12
#define F6      0x13
#define F7      0x14	// F7 is actually off the scancode map so it returns as F5
#define F8      0x15
#define F9      0x16
#define F10     0x17
#define F11     0x18
#define F12     0x19


// this is a map of the keycode characters and the character to be returned for the keycode
const char keyCodes[128]={    
                0,  F9,   0,  F5,  F3,  F1,  F2, F12,   //00
                0, F10,  F8,  F6,  F4, TAB, '`',   0,   //08
                0,   0,L_SHFT, 0,L_CTRL,'q','1',   0,   //10
                0,   0, 'z', 's', 'a', 'w', '2',   0,   //18
                0, 'c', 'x', 'd', 'e', '4', '3',   0,   //20
                0, ' ', 'v', 'f', 't', 'r', '5',   0,   //28
                0, 'n', 'b', 'h', 'g', 'y', '6',   0,   //30
                0,   0, 'm', 'j', 'u', '7', '8',   0,   //38
                0, ',', 'k', 'i', 'o', '0', '9',   0,   //40
                0, '.', '/', 'l', ';', 'p', '-',   0,   //48
                0,   0,'\'',   0, '[', '=',   0,   0,   //50
          CAPS, R_SHFT,ENTER, ']',  0,0x5c,   0,   0,   //58
                0,   0,   0,   0,   0,   0, BKSP,  0,   //60
                0, '1',   0, '4', '7',   0,   0,   0,   //68
               '0', '.', '2', '5', '6', '8', ESC, NUM,  //70
              F11, '+', '3', '-', '*', '9',   0,   0    //78
            };

// this map is with the shift key depressed (or caps lock)
const char keySCodes[128] = {
                0,  F9,   0,  F5,  F3,  F1,  F2, F12,   //00
                0, F10,  F8,  F6,  F4, TAB, '~',   0,   //08
                0,   0,L_SHFT, 0,L_CTRL,'Q','!',   0,   //10
                0,   0, 'Z', 'S', 'A', 'W', '@',   0,   //18
                0, 'C', 'X', 'D', 'E', '$', '#',   0,   //20
                0, ' ', 'V', 'F', 'T', 'R', '%',   0,   //28
                0, 'N', 'B', 'H', 'G', 'Y', '^',   0,   //30
                0,   0, 'M', 'J', 'U', '&', '*',   0,   //38
                0, '<', 'K', 'I', 'O', ')', '(',   0,   //40
                0, '>', '?', 'L', ':', 'P', '_',   0,   //48
                0,   0,'\"',   0, '{', '+',   0,   0,   //50
          CAPS, R_SHFT,ENTER, '}',  0, '|',   0,   0,   //58
                0,   0,   0,   0,   0,   0, BKSP,  0,   //60
                0, '1',   0, '4', '7',   0,   0,   0,   //68
               '0', '.', '2', '5', '6', '8', ESC, NUM,  //70
              F11, '+', '3', '-', '*', '9',   0,   0    //78
            };




/***************************************************************************************************
InitKBD
Initialise the keyboard and sound routines.
****************************************************************************************************/
void initKeyboard(void) {
	// enable pullups on the clock and data lines.  
	// This stops them from floating and generating random chars when no keyboard is attached
 	CNCONbits.ON = 1;       										// turn on Change Notification module
 	CNPUEbits.CNPUE15 = 1;												// turn on the pullup for pin D6 also called CN15
 	CNPUEbits.CNPUE16 = 1;												// turn on the pullup for pin D7 also called CN16
 	
 	//SoundCnt = SoundPlay = 0;										// start by not playing anything
 	//TRISDbits.TRISD1 = 0;											// set the sound pin as an output
 	
 	// setup timer 4
    PR4 = 20 * (BUSFREQ/1000000) - 1;       						// 20 us
    T4CON = 0x8000;         										// T4 on, prescaler 1:1
    mT4SetIntPriority(1);  											// lower priority
    mT4ClearIntFlag();      										// clear interrupt flag
    mT4IntEnable(1);       											// enable interrupt 
}





/***************************************************************************************************
Timer 4 interrupt processor
This fires every 20uS and is responsible for finding the leading edge of the clock pulse and clocking
in the scan code.
This timer also is used to track the time and counts a number of timing variables
****************************************************************************************************/
void __ISR( _TIMER_4_VECTOR, ipl1) T4Interrupt( void) {

    int d, k;
	static char KeyUpCode = FALSE;
	static unsigned char Code = 0;

    // Sample both the input clock and data at the same time
    d = PS2DAT;
    k = PS2CLK;

    // Keyboard state machine
    if (KState) {   												// previous time clock was high KState 1
        if (!k) {                        							// PS2CLK == 0, falling edge detected
            KState = 0;                 							// transition to State0
            KTimer = KBTimeout;              						// restart the counter
        
            switch(PS2State){
            default:
            case PS2START:   
                if(!d) {                							// PS2DAT == 0
                    KCount = 8;         							// init bit counter
                    KParity = 0;        							// init parity check
                    Code = 0;
                    PS2State = PS2BIT;
                }
                break;

            case PS2BIT:      
                Code >>= 1;            								// shift in data bit
                if(d) Code |= 0x80;                					// PS2DAT == 1
                KParity ^= Code;      								// calculate parity
                if (--KCount == 0) PS2State = PS2PARITY;   			// all bit read
                break;

            case PS2PARITY:         
                if(d) KParity ^= 0x80;                 				// PS2DAT == 1
                if (KParity & 0x80)    								// parity odd, continue
                    PS2State = PS2STOP;
                else 
                    PS2State = PS2START;   
                break;

            case PS2STOP:    
                if(d) {                 							// PS2DAT == 1
	                if(Code  == 0xf0)
	                	 KeyUpCode = TRUE;
	                else {
		                /////////////////////////////////////////////////////////////////////////////////////////////////////
		                // this is a self contained lump of code which is responsible for processing a scan code
						// from the keyboard into an ASCII character.  It then inserts it into the keyboard queue.
						// it was originally a function but it is not a good idea to call a function from within an interrupt
						char c;
						
						static char LShift = 0;
						static char RShift = 0;
						static char LCtrl = 0;
						static char CapsLock = 0;
					
						if(KeyUpCode) {
						    if(Code == L_SHFT) LShift = 0;								// left shift button is released
						    if(Code == R_SHFT) RShift = 0;								// right shift button is released
						    if(Code == L_CTRL) LCtrl = 0;								// control button is released
						    goto SkipOut;
						}
						
					    if(Code == L_SHFT) { LShift = 1; goto SkipOut; }				// left shift button is pressed
					    if(Code == R_SHFT) { RShift = 1; goto SkipOut; }				// right shift button is pressed
					    if(Code == L_CTRL) { LCtrl = 1; goto SkipOut; }					// control button is pressed
						if(Code == CAPS) { CapsLock = !CapsLock; goto SkipOut; }		// caps lock pressed
					
					    if(LShift || RShift)
					        c = keySCodes[Code%128];									// translate into an ASCII code
					    else
					        c = keyCodes[Code%128];
						
						if(!c) goto SkipOut;
						
						if(CapsLock && c >= 'a' && c <= 'z') c -= 32;					// adj for caps lock
						if(LCtrl) c &= 0x1F;											// adj for control
						
						InpQueue[InpQueueHead] = c;										// place into the queue
						//InpQueueHead = (InpQueueHead + 1) % 64;				// increment the head index
						if(c == 3) {													// check for CTRL-C
							MMAbort = TRUE;
							InpQueueHead = InpQueueTail = 0;							// flush the input buffer
						}	
				
						SkipOut:
						// end lump of self contained code
						//////////////////////////////////////////////////////////////////////////////////////////////////////////
	                	KeyUpCode = FALSE;
	                }	
	            Code = 0;
                }    
                PS2State = PS2START;
                break;

            }
        } 
        else { 														// clock still high, remain in State1
            if (--KTimer == 0) PS2State = PS2START;    				// timeout, reset data SM
        }
    }
    else { 															// Kstate 0
        if(k) {                         							// PS2CLK == 1, rising edge, transition to State1
            KState = 1;
        }
        else { 														// clocl still low, remain in State0
            if (--KTimer == 0) PS2State = PS2START;           		// timeout, reset data SM
        }
    }
	
	///////////////// count up timers and keep track of the date and time /////////////////////////////////////
    SecondsTimer++;													// this is used to count the time/date
	if((SecondsTimer % 50) == 0) {

		mSecTimer++;												// used by the TIMER function
		TickTimer++;												// used in the interrupt tick
		PauseTimer++;												// used by the PAUSE command
		IntPauseTimer++;											// used by the PAUSE command inside an interrupt
//		if(SDActivityLED) {
//			SD_ACTIVITY = 1;
//			if(--SDActivityLED == 0) SD_ACTIVITY = 0;
//		}
		//if(CARD_DETECT) SDCardRemoved = TRUE;
		if(SecondsTimer >= 50000) {
			SecondsTimer = 0;										// reset every second
			if(++second >= 60) {									// keep track of the time and date
				second = 0 ;
				if(++minute >= 60) {
					minute = 0;
					if(++hour >= 24) {
						hour = 0;
						if(++day > DaysInMonth[month + ((month == 2 && (year % 4) == 0)?1:0)]) {
							day = 1;
							if(++month > 12) {
								month = 1;
								year++;
							}
						}
					}
				}
			}
		}
	}
	
	////////////////// implement the sound function /////////////////////////////////////////////////////////////
    // Clear the interrupt flag
    mT4ClearIntFlag();
    return;
}
