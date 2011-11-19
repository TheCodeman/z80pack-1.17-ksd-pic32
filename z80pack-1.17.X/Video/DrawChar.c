/*********************************************************************************************************************************
Maximite

File: DrawChar.c

Implement a graphic font and associated functions for writing to a video device

Copyright 2011 Geoff Graham - http://geoffg.net
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General
Public License as published by the Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the
implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.  You should have received a copy of the GNU General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>. 

*********************************************************************************************************************************/

#include <p32xxxx.h>												// device specific defines
#include <plib.h>													// peripheral libraries

//#include "../Maximite.h"											// helpful defines for the PIC32
#include "Video.h"
#include "../Include/GenericTypeDefs.h"
#include "../VT100.h"

// Dimensions of one char in this font is 5 bits wide and 10 bits high
// Even though this is a 5x10 font we need to leave two blank horizontal rows of pixels below the char.
// We also need to leave one vertical column of blank pixels after the char.  
// This is why the vertical size is 12 and the horizontal is 6.
// if you change VSIZE you chould also change the define in Video.h
#define font_graphic_VSIZE	12
#define font_graphic_HSIZE	6
BOOL fontReverse =0;

const unsigned int TEXT_graphic[96][5] ={
					     0x00, 0x00, 0x00, 0x00, 0x00, // SPACE
                         0x00, 0x00, 0x5F, 0x00, 0x00, // !
                         0x00, 0x03, 0x00, 0x03, 0x00, // "
                         0x14, 0x3E, 0x14, 0x3E, 0x14, // #
                         0x24, 0x2A, 0x7F, 0x2A, 0x12, // $
                         0x43, 0x33, 0x08, 0x66, 0x61, // %
                         0x36, 0x49, 0x55, 0x22, 0x50, // &
                         0x00, 0x05, 0x03, 0x00, 0x00, // '
                         0x00, 0x1C, 0x22, 0x41, 0x00, // (
                         0x00, 0x41, 0x22, 0x1C, 0x00, // )
                         0x14, 0x08, 0x3E, 0x08, 0x14, // *
                         0x08, 0x08, 0x3E, 0x08, 0x08, // +
                         0x00, 0x50, 0x30, 0x00, 0x00, // ,
                         0x08, 0x08, 0x08, 0x08, 0x08, // -
                         0x00, 0x60, 0x60, 0x00, 0x00, // .
                         0x20, 0x10, 0x08, 0x04, 0x02, // /
                         0x3E, 0x51, 0x49, 0x45, 0x3E, // 0
                         0x04, 0x02, 0x7F, 0x00, 0x00, // 1
                         0x42, 0x61, 0x51, 0x49, 0x46, // 2
                         0x22, 0x41, 0x49, 0x49, 0x36, // 3
                         0x18, 0x14, 0x12, 0x7F, 0x10, // 4
                         0x27, 0x45, 0x45, 0x45, 0x39, // 5
                         0x3E, 0x49, 0x49, 0x49, 0x32, // 6
                         0x01, 0x01, 0x71, 0x09, 0x07, // 7
                         0x36, 0x49, 0x49, 0x49, 0x36, // 8
                         0x26, 0x49, 0x49, 0x49, 0x3E, // 9
                         0x00, 0x36, 0x36, 0x00, 0x00, // :
                         0x00, 0x56, 0x36, 0x00, 0x00, // ;
                         0x08, 0x14, 0x22, 0x41, 0x00, // <
                         0x14, 0x14, 0x14, 0x14, 0x14, // =
                         0x00, 0x41, 0x22, 0x14, 0x08, // >
                         0x02, 0x01, 0x51, 0x09, 0x06, // ?
                         0x3E, 0x41, 0x59, 0x55, 0x5E, // @
                         0x7E, 0x09, 0x09, 0x09, 0x7E, // A
                         0x7F, 0x49, 0x49, 0x49, 0x36, // B
                         0x3E, 0x41, 0x41, 0x41, 0x22, // C
                         0x7F, 0x41, 0x41, 0x41, 0x3E, // D
                         0x7F, 0x49, 0x49, 0x49, 0x41, // E
                         0x7F, 0x09, 0x09, 0x09, 0x01, // F
                         0x3E, 0x41, 0x41, 0x49, 0x3A, // G
                         0x7F, 0x08, 0x08, 0x08, 0x7F, // H
                         0x00, 0x41, 0x7F, 0x41, 0x00, // I
                         0x30, 0x40, 0x40, 0x40, 0x3F, // J
                         0x7F, 0x08, 0x14, 0x22, 0x41, // K
                         0x7F, 0x40, 0x40, 0x40, 0x40, // L
                         0x7F, 0x02, 0x0C, 0x02, 0x7F, // M
                         0x7F, 0x02, 0x04, 0x08, 0x7F, // N
                         0x3E, 0x41, 0x41, 0x41, 0x3E, // O
                         0x7F, 0x09, 0x09, 0x09, 0x06, // P
                         0x1E, 0x21, 0x21, 0x21, 0x5E, // Q
                         0x7F, 0x09, 0x09, 0x09, 0x76, // R
						 0x26, 0x49, 0x49, 0x49, 0x32, // S
                         0x01, 0x01, 0x7F, 0x01, 0x01, // T
                         0x3F, 0x40, 0x40, 0x40, 0x3F, // U
                         0x1F, 0x20, 0x40, 0x20, 0x1F, // V
                         0x7F, 0x20, 0x10, 0x20, 0x7F, // W
                         0x41, 0x22, 0x1C, 0x22, 0x41, // X
                         0x07, 0x08, 0x70, 0x08, 0x07, // Y
                         0x61, 0x51, 0x49, 0x45, 0x43, // Z
                         0x00, 0x7F, 0x41, 0x00, 0x00, // [
                         0x02, 0x04, 0x08, 0x10, 0x20, // backslash
                         0x00, 0x00, 0x41, 0x7F, 0x00, // ]
                         0x04, 0x02, 0x01, 0x02, 0x04, // ^
                         0x40, 0x40, 0x40, 0x40, 0x40, // _
                         0x00, 0x01, 0x02, 0x04, 0x00, // `
                         0x20, 0x54, 0x54, 0x54, 0x78, // a
                         0x7F, 0x44, 0x44, 0x44, 0x38, // b
                         0x38, 0x44, 0x44, 0x44, 0x44, // c
                         0x38, 0x44, 0x44, 0x44, 0x7F, // d
                         0x38, 0x54, 0x54, 0x54, 0x18, // e
                         0x04, 0x04, 0x7E, 0x05, 0x05, // f
                         56, 580, 580, 580, 504,  // g
                         0x7F, 0x08, 0x04, 0x04, 0x78, // h
                         0x00, 0x44, 0x7D, 0x40, 0x00, // i
                         256, 512, 516, 509, 0,  // j
                         0x7F, 0x10, 0x28, 0x44, 0x00, // k
                         0x00, 0x41, 0x7F, 0x40, 0x00, // l
                         0x7C, 0x04, 0x78, 0x04, 0x78, // m
                         0x7C, 0x08, 0x04, 0x04, 0x78, // n
                         0x38, 0x44, 0x44, 0x44, 0x38, // o
                         1016, 68, 68, 68, 56,   // p
                         56, 68, 68, 68, 1016,   // q
                         0x00, 0x7C, 0x08, 0x04, 0x04, // r
                         0x48, 0x54, 0x54, 0x54, 0x20, // s
                         0x04, 0x04, 0x3F, 0x44, 0x44, // t
                         0x3C, 0x40, 0x40, 0x20, 0x7C, // u
                         0x1C, 0x20, 0x40, 0x20, 0x1C, // v
                         0x3C, 0x40, 0x30, 0x40, 0x3C, // w
                         0x44, 0x28, 0x10, 0x28, 0x44, // x
                         60, 576, 576, 576, 508,  // y
                         0x44, 0x64, 0x54, 0x4C, 0x44, // z
                         0x00, 0x08, 0x36, 0x41, 0x41, // {
                         0x00, 0x00, 0x7F, 0x00, 0x00, // |
                         0x41, 0x41, 0x36, 0x08, 0x00, // }
                         0x02, 0x01, 0x02, 0x04, 0x02,  // ~
                         0x7F, 0x7F, 0x7F, 0x7F, 0x7F  // cursor
};




// Write a char on the  video using the graphic bit font
void DrawChar(int x, int y, char c) {								// x and y are in pixels
    int j, k;                     									// Loop counters, j for horizontal, y for vertical

	for(j = 0; j < font_graphic_HSIZE - 1; ++j)         			// Loop through each word (ie, horizontal scan line)
		for(k = 0; k < font_graphic_VSIZE; ++k)         			// Loop through the bits in the word (ie, vertical pixels)
			plot(x + j, y + k, (TEXT_graphic[c - ' '][j] & (1<< k)) != fontReverse);	// Draw the pixel
	for(k = 0; k < font_graphic_VSIZE; ++k) plot(x + j, y + k, fontReverse);	// Draw a blank column of vertical pixels after the character
}




/*********************************************************************************************************************************
 The following variables and functions are the only interface to the MMBasic engine
 They are defined in Video.h as extern
 *********************************************************************************************************************************/

// these keep track of where the next char will be written
int MMPosX, MMPosY;													// position in pixels
int MMCharPos;														// position in lines and characters


// Put a char onto the video screen
void VideoPutc(char c) {
    c=VT100Filter(c);
    if(c == '\r') MMPosX = 0; 										// for a return set the horizontal position to zero
	if(c == '\n') MMPosY += font_graphic_VSIZE; 					// for a line feed add the char height to the vert position
	if(c == '\t')  													// for a tab move the horiz position to the next tab spot
		MMPosX = ((MMPosX + (font_graphic_HSIZE << 3)) >> 3) << 3;
	if(c == '\b') {													// for a backspace move the horiz position back by a char width
		MMPosX -= font_graphic_HSIZE;
		if(MMPosX <0) MMPosX = 0;
	}
	
	if(c >= ' ' && c <= '~') {										// printable chars only
		if(MMPosX + font_graphic_HSIZE > HRes) {					// if we are at the end of a line
			MMPosX = 0;												// wrap to the next
			MMPosY += font_graphic_VSIZE;
		}
	}	
		
	if(MMPosY + font_graphic_VSIZE > VRes + 1) {					// if we are beyond the bottom of the screen scroll up the previous lines
	int *pd = VA;
       	int *ps = pd + (HBUFSIZE/32)*font_graphic_VSIZE;
       	int i;
       	for(i=0; i<(HBUFSIZE/32) * (VRes-font_graphic_VSIZE); i++) *pd++ = *ps++;	// scroll up
       	for(i=0; i<(HBUFSIZE/32) * font_graphic_VSIZE; i++) *pd++ = 0;	// clear the new line
		MMPosY -= font_graphic_VSIZE;
	}
		
	if(c >= ' ' && c <= '~') {										// printable chars only
		DrawChar(MMPosX, MMPosY, c);								// draw the char
		MMPosX += font_graphic_HSIZE;								// and update our position
	}
	
	MMCharPos = MMPosX/font_graphic_HSIZE + 1;						// update the horizontal character position
    }
   



// draw/erase the cursor on the video screen
// if b is true draw the cursor else erase it
void MMCursor(char b) {
	if(b)
		DrawChar(MMPosX, MMPosY, '~' + 1);
	else
		DrawChar(MMPosX, MMPosY, ' ');
}	


