/*
 * Receive a file out of the named pipe "auxout" from CP/M simulation
 *
 * Copyright (C) 1988-2006 by Udo Munk
 *
 * History:
 * 05-OKT-88 Development on TARGON/35 with AT&T Unix System V.3
 * 11-MAR-93 comments in english and ported to COHERENT 4.0
 * 01-OCT-06 modified to compile on modern POSIX OS's
 */

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <signal.h>
#include <fcntl.h>

int fdin, fdout;

int main(int argc, char *argv[])
{
	char c;
	void int_handler(int);

	if (argc != 2) {
		puts("usage: receive filname &");
		exit(1);
	}
	if ((fdin = open("auxout", O_RDONLY)) == -1) {
		perror("pipe auxout");
		exit(1);
	}
	if ((fdout = creat(argv[1], 0644)) == -1) {
		perror(argv[1]);
		exit(1);
	}

	signal(SIGINT, SIG_IGN);
	signal(SIGQUIT, SIG_IGN);
	signal(SIGHUP, int_handler);

	for (;;) {
		if (read(fdin, &c, 1) == 1) {
			if (c != '\r')
				write(fdout, &c, 1);
		} else {
			close(fdout);
			return(0);
		}
	}

	return(0);
}

void int_handler(int sig)
{
	close(fdin);
	close(fdout);
	exit(0);
}
