/*
 * Z80SIM  -  a Z80-CPU simulator
 *
 * Common I/O devices used by various simulated machines
 *
 * Copyright (C) 2008 by Udo Munk
 *
 * Partial emulation of an Altair 88SIO-2 S100 board
 *
 * History:
 * 20-OCT-08 first version finished
 */

#include <unistd.h>
#include <stdio.h>
#include <ctype.h>
#include <errno.h>
#include <sys/poll.h>
#include "sim.h"
#include "simglb.h"

int sio_upper_case;
int sio_strip_parity;

/*
 * read status register
 *
 * bit 0 = 1, character available for input from tty
 * bit 1 = 1, transmitter ready to write character to tty
 */
BYTE altair_sio2_status_in(void)
{
	BYTE status = 0;
	struct pollfd p[1];

	p[0].fd = fileno(stdin);
	p[0].events = POLLIN | POLLOUT;
	p[0].revents = 0;
	poll(p, 1, 0);
	if (p[0].revents & POLLIN)
		status |= 1;
	if (p[0].revents & POLLOUT)
		status |= 2;

	return(status);
}

/*
 * write status register
 */
BYTE altair_sio2_status_out(BYTE data)
{
	data = data;
	return(0);
}

/*
 * read data register
 *
 * translate to upper case, most of the old software written for tty's
 * won't accept lower case characters
 */
BYTE altair_sio2_data_in(void)
{
	BYTE data;

	read(fileno(stdin), &data, 1);
	if (sio_upper_case)
		data = toupper(data);
	return(data);
}

/*
 * write data register
 */
BYTE altair_sio2_data_out(BYTE data)
{
	/* often send after CR/LF to give tty printer some time */
	if ((data == 127) || (data == 255) || (data == 0))
		return(0);

	/* strip parity bit, some old software won't */
	if (sio_strip_parity)
		data &= 0x7f;

again:
	if (write(fileno(stdout), (char *) &data, 1) != 1) {
		if (errno == EINTR) {
			goto again;
		} else {
			perror("write altair sio2 data");
			cpu_error = IOERROR;
			cpu_state = STOPPED;
		}
	}
	fflush(stdout);
	return(0);
}
