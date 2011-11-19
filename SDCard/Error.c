/***********************************************************************************************************************
MMBasic

Error.c

Provides the reeor handling functionality for the SD card in MMBasic.
  
Copyright 2011 Geoff Graham - http://geoffg.net
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General
Public License as published by the Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the
implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.  You should have received a copy of the GNU General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>. 

************************************************************************************************************************/

#include "../MMBasic/MMBasic.h"
#include "SDCard/SDCard.h"

int OptionErrorAbort = 1;

/*****************************************************************************************
Mapping of errors reported by the Microchip FAT 16/32 file system to MMBasic file errors
*****************************************************************************************/
const int ErrorMap[34] = {			0, 	// 0  =   No error
									11, // 1  =   An erase failed
									1, 	// 2  =   No SD card found
									15, // 3  =   The disk is of an unsupported format
									15, // 4  =   The boot record is bad
									15, // 5  =   The file system type is unsupported
									15, // 6  =   An initialization error has occurred
									15, // 7  =   An operation was performed on an uninitialized device
									10, // 8  =   A bad read of a sector occurred
									11, // 9  =   Could not write to a sector
									15, // 10 =  Invalid cluster value
									6, 	// 11 =  Could not find the file on the device
									7, 	// 12 =  Could not find the directory
									10, // 13 =  File is corrupted
									0, 	// 14 =  No more files in this directory
									15, // 15 =  Could not load/allocate next cluster in file
									5, 	// 16 =  A specified file name is too long to use
									9, 	// 17 =  A specified filename already exists on the device
									5, 	// 18 =  Invalid file name
									12, // 19 =  Attempt to delete a directory with KILL
									4, 	// 20 =  All root directory entries are taken
									3, 	// 21 =  All clusters in partition are taken
									14, // 22 =  This directory is not empty yet, remove files before deleting
									15, // 23 =  The disk is too big to format as FAT16
									2, 	// 24 =  Card is write protected
									11, // 25 =  File not opened for the write
									11, // 26 =  File location could not be changed successfully
									10, // 27 =  Bad cache read
									15, // 28 =  FAT 32 - card not supported
									8, 	// 29 =  The file is read-only
									10, // 30 =  The file is write-only
									15, // 31 =  Invalid argument
									9, 	// 32 =  Too many files are already open
									15, // 33 =  Unsupported sector size
							};									

/******************************************************************************************
Text for the file related error messages reported by MMBasic
******************************************************************************************/
	
const char *FErrorMsg[NBRERRMSG] = {	"No error",									// 0
										"No SD card found",							// 1
										"SD card is write protected",				// 2
										"No space on media",						// 3
										"All root directory entries are taken",		// 4
										"Invalid file or directory name",			// 5
										"Cannot find file",							// 6
										"Cannot find or create directory",			// 7
										"File is read only",						// 8
										"Cannot open file",							// 9
										"Error reading from file",					// 10
										"Error writing to file",					// 11
										"Not a file",								// 12
										"Not a directory",							// 13
										"Directory not empty",						// 14
										"Error accessing the SD card"				// 15
										"Error accessing flash memory"				// 16
									};							


int ErrorThrow(int e) {
	*((float *)findvar("MM.ERRNO", V_FIND | V_NOFIND_ERR)) = e;
	if(e > 0 && e < NBRERRMSG && OptionErrorAbort) error((char *)FErrorMsg[e]);
	return e;
}	


int ErrorCheck(void) {
	int e;
	e = FSerror();
	if(e < 1 || e > 33) return e;
	return ErrorThrow(ErrorMap[e]);
}	

