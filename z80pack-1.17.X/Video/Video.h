/************************************************************************************************************************
Maximite

Video.h

Copyright 2011 Geoff Graham - http://geoffg.net
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General
Public License as published by the Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the
implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.  You should have received a copy of the GNU General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>. 

************************************************************************************************************************/

#define VBUFSIZE     432 //192    // video buffer vert size
#define HBUFSIZE     480//384   // video buffer horiz size


// Global variables provided by Video.c and DrawChar.c
extern int VRes, HRes;
extern int MMPosX, MMPosY;
extern int MMCharPos;
extern char* VA;		// vga
extern unsigned int TickTimer;
#define font_graphic_VSIZE	12

// Facilities provided by Video.c and DrawChar.c
extern void MMCursor(char b);
extern void MMcls(void);
void initVideo(void);
void haltVideo(void);
void plot(int x, int y, char b); 
int pixel(int x, int y);
void MMline(int x1, int y1, int x2, int y2, int colour) ;
void MMCircle(int x, int y, int radius, int fill, int colour) ;
void MMbox(int x1, int y1, int x2, int y2, int fill, int colour);
void VideoPrintString( char *str );
void VideoPutc(char c);
