/*
 * Z80SIM  -  a	Z80-CPU	simulator
 *
 * Copyright (C) 1987-2008 by Udo Munk
 *
 * History:
 * 28-SEP-87 Development on TARGON/35 with AT&T Unix System V.3
 * 11-JAN-89 Release 1.1
 * 08-FEB-89 Release 1.2
 * 13-MAR-89 Release 1.3
 * 09-FEB-90 Release 1.4  Ported to TARGON/31 M10/30
 * 20-DEC-90 Release 1.5  Ported to COHERENT 3.0
 * 10-JUN-92 Release 1.6  long casting problem solved with COHERENT 3.2
 *			  and some optimization
 * 25-JUN-92 Release 1.7  comments in english and ported to COHERENT 4.0
 * 02-OCT-06 Release 1.8  modified to compile on modern POSIX OS's
 * 18-NOV-06 Release 1.9  modified to work with CP/M sources
 * 08-DEC-06 Release 1.10 modified MMU for working with CP/NET
 * 17-DEC-06 Release 1.11 TCP/IP sockets for CP/NET
 * 25-DEC-06 Release 1.12 CPU speed option
 * 19-FEB-07 Release 1.13 various improvements
 * 06-OCT-07 Release 1.14 bug fixes and improvements
 * 06-AUG-08 Release 1.15 many improvements and Windows support via Cygwin
 * 25-AUG-08 Release 1.16 console status I/O loop detection and line discipline
 * 20-OCT-08 Release 1.17 frontpanel integrated and Altair/IMSAI emulations
 */

/*
 *	This modul contains some commonly used functions
 */

//#include <unistd.h>
#include <stdio.h>
#include <ctype.h>
//#include <termios.h>
#include "sim.h"

/*
 *	atoi for hexadecimal numbers
 */
int exatoi(char *str)
{
	register int num = 0;

	while (isxdigit((int)*str)) {
		num *= 16;
		if (*str <= '9')
			num += *str - '0';
		else
			num += toupper((int)*str) - '7';
		str++;
	}
	return(num);
}

/*
 *	Wait for a single keystroke without echo
 */
int getkey(void)
{
	register int c;
/*
        struct termios old_term, new_term;

	tcgetattr(0, &old_term);
	new_term = old_term;
	new_term.c_lflag &= ~(ICANON | ECHO);
	new_term.c_cc[VMIN] = 1;
	tcsetattr(0, TCSADRAIN, &new_term);
*/
  	c = _mon_getc(1);
//	tcsetattr(0, TCSADRAIN, &old_term);
	return(c);
}
