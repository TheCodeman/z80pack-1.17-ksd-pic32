/*
 * Z80SIM  -  a Z80-CPU simulator
 *
 * Common I/O devices used by various simulated machines
 *
 * Copyright (C) 2008 by Udo Munk
 *
 * This modul contains initialization and reset functions for
 * the POSIX line discipline, so that stdin/stdout can be used
 * as terminal for ancient machines.
 *
 * History:
 * 24-SEP-08 first version finished
 */

#include <unistd.h>
#include <termios.h>

struct termios old_term, new_term;

static int init_flag;

void set_unix_terminal(void)
{
	if (init_flag)
		return;

	tcgetattr(0, &old_term);
	new_term = old_term;
	new_term.c_lflag &= ~(ICANON | ECHO);
	new_term.c_iflag &= ~(IXON | IXANY | IXOFF);
	new_term.c_iflag &= ~(IGNCR | ICRNL | INLCR);
	new_term.c_oflag &= ~(ONLCR | OCRNL);
	new_term.c_cc[VMIN] = 1;
	new_term.c_cc[VINTR] = 0;
	new_term.c_cc[VSUSP] = 0;
	tcsetattr(0, TCSADRAIN, &new_term);

	init_flag++;
}

void reset_unix_terminal(void)
{
	if (!init_flag)
		return;

	tcsetattr(0, TCSADRAIN, &old_term);

	init_flag--;
}
