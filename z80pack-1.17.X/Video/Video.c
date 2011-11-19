/************************************************************************************************************************
Maximite

Video.c

Based on an idea and code by Lucio Di Jasio presented in his excellent book 
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


#include <p32xxxx.h>
#include <plib.h>
#include <string.h>

#include "./Video.h"
/*
#include "../Maximite.h"

#include "./USB/Microchip/Include/USB/usb.h"
#include "./USB/Microchip/Include/USB/usb_function_cdc.h"
#include "./USB/HardwareProfile.h"
*/
// Parameters for VGA video with 31.5KHz horizontal scanning and 60Hz vertical refresh
// Graphics is 480x432 pixels.  This gives us 80 chars per line and 36 lines per screen

#define VGA_VRES	432//192//432											// Vert graphics resolution (pixels)
#define VGA_HRES	480//384//480											// Horiz graphics resolution (pixels)
#define VGA_LINE_N   525//262 //525        // number of lines in VGA frame
#define VGA_LINE_T   2540//2284 //2540       // Tpb clock in a line (31.777us)
#define VGA_VSYNC_N  2//3//2          // V sync lines
#define VGA_VBLANK_N (VGA_LINE_N - VGA_VRES - VGA_VSYNC_N)  // Nbr of blank lines
#define VGA_PREEQ_N   ((VGA_VBLANK_N/2))// - 12)               // Nbr blank lines at the bottom of the screen
#define VGA_POSTEQ_N  VGA_VBLANK_N - VGA_PREEQ_N  	// Nbr blank lines at the top of the screen
#define VGA_PIX_T    4          			// Tpb clock per pixel
#define VGA_HSYNC_T  300//180//300        			// Tpb clock width horizontal pulse
#define VGA_BLANKPAD  5					// number of zero bytes before sending data



// Parameters for trs-80 composite video
// Graphics is 192x384 pixels.  This gives us 64 chars per line and 16 lines per screen
#define C_VRES	     256//192	// Vert graphics resolution (pixels)
#define C_HRES	     224//384	// Horiz graphics resolution (pixels)
#define C_LINE_N     264       	// number of lines in PAL frame
#define C_LINE_T     5200//5120 // Tpb clock in a line (64us)
#define C_VSYNC_N    3          // V sync lines
#define C_VBLANK_N   (C_LINE_N - C_VRES - C_VSYNC_N)  // Nbr of blank lines
#define C_PREEQ_N    ((C_VBLANK_N/2) - 8)             // Nbr blank lines at the bottom of the screen
#define C_POSTEQ_N   (C_VBLANK_N - C_PREEQ_N)  	      // Nbr blank lines at the top of the screen
#define C_PIX_T      9          			// Tpb clock per pixel
#define C_HSYNC_T    454//374        			// Tpb clock width horizontal pulse
#define C_BLANKPAD   12					// number of zero bytes before sending data

// states of the vertical sync state machine
#define SV_PREEQ    0												// generating blank lines before the vert sync
#define SV_SYNC     1												// generating the vert sync
#define SV_POSTEQ   2												// generating blank lines after the vert sync
#define SV_LINE     3												// visible lines, send the video data out

// global variables used in other parts of the Maximite
int VRes, HRes;														// Global vert and horiz resolution
char VMap1[ VBUFSIZE*(HBUFSIZE/8)]; 								// image buffer 
char *VA = VMap1;            										// pointer to the buffer
volatile char *VPtr;												// our current position in the buffer

int vga;															// true if we are using the VGA video

volatile int VCount;												// counter for the number of lines in a frame
volatile int VState;												// the state of the state machine
volatile BOOL VStart=FALSE;
volatile BOOL VEnd=FALSE;

int VS[4] = { SV_SYNC, SV_POSTEQ, SV_LINE, SV_PREEQ};				// the next state table
int VC[4];															// the next counter table (initialise in initVideo() below)

char zero[12]= {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0};  // zero bytes used to add blanks before the data


/**************************************************************************************************
Timer 3 interrupt.
Used to generate the horiz and vert sync pulse under control of the state machine
***************************************************************************************************/
void __ISR(_TIMER_3_VECTOR, ipl7) T3Interrupt(void) {

    switch ( VState) {    											// vertical state machine
        case SV_PREEQ:  // 0
            VPtr = VA;            						// prepare for the new frame
            break;
#ifdef Olimex
        case SV_SYNC:   // 1
            if(!vga) OC5R = C_LINE_T - C_HSYNC_T;			        // start the vertical sync pulse for composite
            LATBbits.LATB12 =0;							// start the vertical sync pulse for vga
            break;
            
        case SV_POSTEQ: // 2
            if(!vga) OC5R = C_HSYNC_T; 			        	// end of the vertical sync pulse for composite
            LATBbits.LATB12 =1;							// end of the vertical sync pulse for vga

            break;
#endif

#ifdef Maximite
        case SV_SYNC:   // 1
            if(!vga) OC3R = C_LINE_T - C_HSYNC_T;			        // start the vertical sync pulse for composite
            _LATF1=0;								// start the vertical sync pulse for vga
            break;

        case SV_POSTEQ: // 2
        	if(!vga) OC3R = C_HSYNC_T; 			        	// end of the vertical sync pulse for composite
            _LATF1=1;								// end of the vertical sync pulse for vga
            break;
#endif
        case SV_LINE:   // 3
            SPI2ABUF = 0;            						// preload the SPI ready for the SS (Synch high)
            DCH0SSA = KVA_TO_PA((void*) (VPtr - 1));            	// update the DMA0 source address ( -1 corrects a bug in the DMA)
            VPtr += HBUFSIZE/8;							// move the pointer to the start of the next line
            DmaChnEnable(1);							// arm the DMA transfer
            // This is a kludge.  For some reason the DMA skips one byte (8 pixels) at startup if the memory bus is very busy.
            // This kludge keeps the cpu in a tight loop until the horizontal sync is finished.  Because the loop is so small there 
            // are no cache misses, the memory bus is idle and there are no glitches on the video.
            // Without kludge MMBasic speed is 22441 lines per sec but we are forced to use optimisation 1.  
            // With this kludge we can now use optimisation level 2 which improves the speed (with kludge) to 23046 which 
            // is even better than before.
            // TODO:  Find a more elegant solution.
            #if OPTIMISATION == 2 ||  OPTIMISATION == s
	            if(!vga) { int i; for(i=0; i<73; i++); }         	// This works for compiler optimisation level 2 or s
	            else 	{ int i; for(i=0; i<94; i++); }
            #else
	            if(!vga) { int i; for(i=0; i<44; i++); }     		// This works for compiler optimisation level 1 or 0
	            else 	{ int i; for(i=0; i<55; i++); }
            #endif
            break;                                               
    }
/*
	ProcessUSB();													// do any USB work
*/
	    if(VState == SV_LINE  ){// check USB status

 	        // This is a kludge.  See above.
	        #if OPTIMISATION == 2 ||  OPTIMISATION == s
	         if(!vga) { int i; for(i=0; i<73; i++); }         		// This works for compiler optimisation level 2 or s
	         else 	{ int i; for(i=0; i<94; i++); }
	        #else
	         if(!vga) { int i; for(i=0; i<44; i++); }     			// This works for compiler optimisation level 1 or 0
	         else 	{ int i; for(i=0; i<55; i++); }
	        #endif
	    }
  
    if (--VCount == 0) {											// count down the number of lines
        VCount = VC[VState&3];										// set the new count
        VState = VS[VState&3];    									// and advance the state machine
    }

    mT3ClearIntFlag();    											// clear the interrupt flag  
}



/**************************************************************************************************
Initialise the video components
***************************************************************************************************/
void initVideo( void)
{
	
#ifdef Olimex
 // setup the I/O pins used by the video
           AD1PCFGSET = 0;   // make all pins digital
 //	CNCONbits.ON = 1; // turn on Change Notification module
 //	CNPUEbits.CNPUE0 = 1;// turn on the pullup for pin C14 also called CN0
    _TRISD4 = 0;  _LATD4 = 1;// Horiz sync output
    _TRISG8 = 0;  _LATG8 = 1;// Video output
    _TRISG9 = 1;		// Framing input used by SPI output
    TRISBbits.TRISB12 = 0;  LATBbits.LATB12 = 1;// Vert sync output used by VGA
    
    TRISBbits.TRISB11=1;														// C14 has a jumper to indicate composite
    vga = PORTBbits.RB11;											// vga will be true if the jumper is NOT there
    vga=1;
#endif

#ifdef Maximite
        AD1PCFGSET = 0;													// make all pins digital
 	CNCONbits.ON = 1;       										// turn on Change Notification module
 	CNPUEbits.CNPUE0 = 1;											// turn on the pullup for pin C14 also called CN0
    _TRISD2 = 0;  _LATD2 = 1;										// Horiz sync output
    _TRISG8 = 0;  _LATG8 = 1;										// Video output
    _TRISG9 = 1;													// Framing input used by SPI output
    _TRISF1 = 0;  _LATF1 = 1;										// Vert sync output used by VGA

    _TRISC14=1;														// C14 has a jumper to indicate composite
    vga = PORTCbits.RC14;											// vga will be true if the jumper is NOT there
    vga=1;
#endif

    if(vga) {
	    VRes = VGA_VRES;
	    HRes = VGA_HRES;
		VC[0] = VGA_VSYNC_N;										// setup the table used to count lines
		VC[1] = VGA_POSTEQ_N;
		VC[2] = VGA_VRES;
		VC[3] = VGA_PREEQ_N;
		// enable the SPI channel which will clock the video data out.  Set master and framing mode.  The last arg sets the speed
	    SpiChnOpen(2, SPICON_ON | SPICON_MSTEN | 0 /* SPICON_MODE8 */| SPICON_FRMEN | SPICON_FRMSYNC | SPICON_FRMPOL, VGA_PIX_T);
	    // enable the output compare which is used to time the width of the horiz sync pulse
#ifdef Olimex
            OpenOC5(OC_ON | OC_TIMER3_SRC | OC_CONTINUE_PULSE, 0, VGA_HSYNC_T);
#endif
#ifdef Maximite
	    OpenOC3(OC_ON | OC_TIMER3_SRC | OC_CONTINUE_PULSE, 0, VGA_HSYNC_T);
#endif
            // enable timer 3 and set to the horizontal scanning frequency
	    OpenTimer3( T3_ON | T3_PS_1_1 | T3_SOURCE_INT, VGA_LINE_T-1);
	} else {	// this is for the composite output and is the same as VGA with timing differences
	    VRes = C_VRES;
	    HRes = C_HRES;
		VC[0] = C_VSYNC_N;
		VC[1] = C_POSTEQ_N;
		VC[2] = C_VRES;
		VC[3] = C_PREEQ_N;
	    SpiChnOpen(2, SPICON_ON | SPICON_MSTEN | 0 /* SPICON_MODE8 */| SPICON_FRMEN | SPICON_FRMSYNC | SPICON_FRMPOL, C_PIX_T);
#ifdef Olimex
            OpenOC5(OC_ON | OC_TIMER3_SRC | OC_CONTINUE_PULSE, 0, C_HSYNC_T);
#endif
#ifdef Maximite
	    OpenOC3(OC_ON | OC_TIMER3_SRC | OC_CONTINUE_PULSE, 0, C_HSYNC_T);            
#endif
            OpenTimer3(T3_ON | T3_PS_1_1 | T3_SOURCE_INT, C_LINE_T-1);
	}	 

	VState = SV_PREEQ;												// initialise the state machine
    VCount = 1;                 									// set the count so that the first interrupt will increment the state

	// setup DMA 1 to send a fixed number of zero bytes (black video) at the start of a line
    DmaChnOpen(1, 1, DMA_OPEN_DEFAULT);    
    DmaChnSetEventControl(1, DMA_EV_START_IRQ_EN | DMA_EV_START_IRQ(_SPI2A_TX_IRQ));
    if(vga)
	    DmaChnSetTxfer(1, (void*)zero, (void *)&SPI2ABUF, VGA_BLANKPAD, 1, 1);
	else
	    DmaChnSetTxfer(1, (void*)zero, (void *)&SPI2ABUF, C_BLANKPAD, 1, 1);
    
	// setup DMA 0 to pump the data from the graphics buffer to the SPI peripheral
    DmaChnOpen( 0, 0, DMA_OPEN_DEFAULT);  
    DmaChnSetEventControl(0, DMA_EV_START_IRQ_EN | DMA_EV_START_IRQ(_SPI2A_TX_IRQ));

    if(vga)
	    DmaChnSetTxfer(0, (void*)VPtr, (void *)&SPI2ABUF, VGA_HRES/8 + 1, 1, 1);
	else
	    DmaChnSetTxfer(0, (void*)VPtr, (void *)&SPI2ABUF, C_HRES/8 + 1, 1, 1);
    
    // chain DMA 0 so that it will start on completion of the DMA 1 transfer
    DmaChnSetControlFlags(0, DMA_CTL_CHAIN_EN | DMA_CTL_CHAIN_DIR);// vga


    mT3SetIntPriority(7);    										// set priority level 7 for the timer 3 interrupt to use shadow register set
    mT3IntEnable(1);												// Enable Timer3 Interrupt
}


/**************************************************************************************************
Turn on or off a single pixel in the graphics buffer
***************************************************************************************************/
void plot(int x, int y, char b) 
{
    if(x >= 0 && x < HRes && y >= 0 && y < VRes) {
      	if(b)
		        VA[((y)*(HBUFSIZE/8))+(x>>3)] |= (0x80>>(x & 0x7));	// turn on the pixel
       	else
	        VA[((y)*(HBUFSIZE/8))+(x>>3)] &= ~(0x80>>(x & 0x7));    // turn off the pixel
    }    
}





/**************************************************************************************************
Get the value of a single pixel in the graphics buffer
***************************************************************************************************/
int pixel(int x, int y) 
{
    if(x >= 0 && x < HRes && y >= 0 && y < VRes)
		if((VA[((y)*(HBUFSIZE/8))+(x>>3)]) & (0x80>>(x & 0x7)))
			return 1;
       	else
	        return 0;
   	else
    	return 0;
}





/**************************************************************************************************
clear the screen
***************************************************************************************************/
void MMcls(void) {
	MMPosX = MMPosY = MMCharPos = 0;
	memset( VA, 0, VBUFSIZE*( HBUFSIZE/8));
}	




/**************************************************************************************************
Draw a line on a the video output
	(x1, y1) - the start coordinate
	(x2, y2) - the end coordinate
	colour - zero for erase, non zero to draw
***************************************************************************************************/
#define abs( a)     (((a)> 0) ? (a) : -(a))

void MMline(int x1, int y1, int x2, int y2, int colour) {
   int  x, y, addx, addy, dx, dy;
   int P;
   int i;
   
   dx = abs(x2 - x1);
   dy = abs(y2 - y1);
   x = x1;
   y = y1;

   if(x1 > x2)
      addx = -1;
   else
      addx = 1;
      
   if(y1 > y2)
      addy = -1;
   else
      addy = 1;

   if(dx >= dy) {
      P = 2*dy - dx;
      for(i=0; i<=dx; ++i) {
         plot(x, y, colour);
         if(P < 0) {
            P += 2*dy;
            x += addx;
         } else {
            P += 2*dy - 2*dx;
            x += addx;
            y += addy;
         }
      }
   } else {
      P = 2*dx - dy;
      for(i=0; i<=dy; ++i) {
         plot(x, y, colour);
         if(P < 0) {
            P += 2*dx;
            y += addy;
         } else {
            P += 2*dx - 2*dy;
            x += addx;
            y += addy;
         }
      }
   }
}




/**********************************************************************************************
Draw a box on the video output
     (x1, y1) - the start coordinate
     (x2, y2) - the end coordinate
     fill  - 0 or 1
     colour - 0 or 1
***********************************************************************************************/
void MMbox(int x1, int y1, int x2, int y2, int fill, int colour) {
   if(fill) {
      int y, ymax;                          // Find the y min and max
      if(y1 < y2) {
         y = y1;
         ymax = y2;
      } else {
         y = y2;
         ymax = y1;
      }

      for(; y<=ymax; ++y)                    // Draw lines to fill the rectangle
         MMline(x1, y, x2, y, colour);
   } else {
      MMline(x1, y1, x2, y1, colour);      	// Draw the 4 sides
      MMline(x1, y2, x2, y2, colour);
      MMline(x1, y1, x1, y2, colour);
      MMline(x2, y1, x2, y2, colour);
   }
}





/***********************************************************************************************
Draw a circle on the video output
	(x,y) - the center of the circle
	radius - the radius of the circle
	fill - non zero
	colour - zero for erase, non zero to draw
***********************************************************************************************/
void MMCircle(int x, int y, int radius, int fill, int colour) {
   int a, b, P;
   
   a = 0;
   b = radius;
   P = 1 - radius;

   do {
      if(fill) {
         MMline(x-a, y+b, x+a, y+b, colour);
         MMline(x-a, y-b, x+a, y-b, colour);
         MMline(x-b, y+a, x+b, y+a, colour);
         MMline(x-b, y-a, x+b, y-a, colour);
      } else {
         plot(a+x, b+y, colour);
         plot(b+x, a+y, colour);
         plot(x-a, b+y, colour);
         plot(x-b, a+y, colour);
         plot(b+x, y-a, colour);
         plot(a+x, y-b, colour);
         plot(x-a, y-b, colour);
         plot(x-b, y-a, colour);
      }

      if(P < 0)
         P+= 3 + 2*a++;
      else
         P+= 5 + 2*(a++ - b--);
    } while(a <= b);
}
