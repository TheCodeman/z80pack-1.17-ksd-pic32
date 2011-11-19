/*
 * Z80SIM  -  a Z80-CPU simulator
 *
 * Copyright (C) 1987-2008 by Udo Munk
 *
 * This modul contains a complex I/O-simulation for running
 * CP/M, MP/M, UCSD p-System...
 *
 * Please note this doesn't emulate any hardware which
 * ever existed, we've got all virtual circuits in here!
 *
 * History:
 * 28-SEP-87 Development on TARGON/35 with AT&T Unix System V.3
 * 19-MAY-89 Additions for CP/M 3.0 and MP/M
 * 23-DEC-90 Ported to COHERENT 3.0
 * 10-JUN-92 Some optimization done
 * 25-JUN-92 Flush output of stdout only at every OUT to port 0
 * 25-JUN-92 Comments in english and ported to COHERENT 4.0
 * 05-OCT-06 modified to compile on modern POSIX OS's
 * 18-NOV-06 added a second harddisk
 * 08-DEC-06 modified MMU so that segment size can be configured
 * 10-DEC-06 started adding serial port for a passive TCP/IP socket
 * 14-DEC-06 started adding serial port for a client TCP/IP socket
 * 25-DEC-06 CPU speed option and 100 ticks interrupt
 * 19-FEB-07 improved networking
 * 22-JUL-07 added second FDC sector port for implementing large harddisks
 * 30-OCT-07 printer port returns EOF on input
 * 03-SEP-07 improved the clock chip for support of other OS's
 * 19-SEP-07 delay circuit modified to delay x * 10ms
 * 05-DEC-07 fixed socket shutdown issues for NetBSD
 * 06-DEC-07 added hardware control port to reset I/O, CPU and reboot and such
 * 07-DEC-07 conditional compile pipes for aux device, problems with Cygwin
 * 17-DEC-07 conditional compile async TCP/IP server, problems with Cygwin
 * 03-FEB-08 added hardware control port to reset CPU, MMU and abort sim
 * 07-APR-08 added port to set/get CPU speed
 * 13-AUG-08 work on console I/O busy waiting detection
 * 24-AUG-08 changed terminal line discipline to not add CR if LF send
 * xx-OCT-08 some improvments here and there
 */

/*
 *	This module contains the I/O handlers for a simulation
 *	of the hardware required for a CP/M / MP/M system.
 *
 *	Used I/O ports:
 *
 *	 0 - console status
 *	 1 - console data
 *
 *	 2 - printer status
 *	 3 - printer data
 *
 *	 4 - auxilary status
 *	 5 - auxilary data
 *
 *	10 - FDC drive
 *	11 - FDC track
 *	12 - FDC sector (low)
 *	13 - FDC command
 *	14 - FDC status
 *
 *	15 - DMA destination address low
 *	16 - DMA destination address high
 *
 *	17 - FDC sector high
 *
 *	20 - MMU initialization
 *	21 - MMU bank select
 *	22 - MMU select segment size (in pages a 256 bytes)
 *
 *	25 - clock command
 *	26 - clock data
 *	27 - 10ms timer causing IM 1 INT
 *	28 - x * 10ms delay circuit for busy waiting loops
 *	29 - hardware control
 *	30 - CPU speed low
 *	31 - CPU speed high
 *
 *	40 - passive socket #1 status
 *	41 - passive socket #1 data
 *	42 - passive socket #2 status
 *	43 - passive socket #2 data
 *	44 - passive socket #3 status
 *	45 - passive socket #3 data
 *	46 - passive socket #4 status
 *	47 - passive socket #4 data
 *
 *	50 - client socket #1 status
 *	51 - client socket #1 data
 */

//#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <string.h>
#include <signal.h>
#include <fcntl.h>
#include <time.h>
//#include <netdb.h>
//#include <sys/file.h>
#include <sys/time.h>
#include <sys/types.h>
//#include <sys/socket.h>
//#include <sys/poll.h>
//#include <netinet/in.h>
#include "sim.h"
#include "../z80sim/simglb.h"
#include <p32xxxx.h>								// device specific defines
#include <plib.h>
#include "../uart2.h"
#include "../../HardwareProfile.h"

#define BUFSIZE 256		/* max line lenght of command buffer */
#define MAX_BUSY_COUNT 10	/* max counter to detect I/O busy waiting    on the console status port */

#define INP_QUEUE_SIZE	256
extern volatile unsigned char InpQueue[INP_QUEUE_SIZE];
extern volatile int InpQueueHead, InpQueueTail;				

extern int boot(void);

/*
 *	Structure to describe an emulated disk drive:
 *		pointer to filename
 *		pointer to file descriptor
 *		number of tracks
 *		number of sectors
 */
struct dskdef {
    char *fn;
    int *fd;
    unsigned int tracks;
    unsigned int sectors;
};

static BYTE drive; /* current drive A..P (0..15) */
static BYTE track; /* current track (0..255) */
static int sector; /* current sektor (0..65535) */
static BYTE status; /* status of last I/O operation on FDC */
static BYTE dmadl; /* current DMA address destination low */
static BYTE dmadh; /* current DMA address destination high */
static BYTE clkcmd; /* clock command */
static BYTE clkfmt; /* clock format, 0 = BCD, 1 = decimal */
static BYTE timer; /* 10ms timer */
static int drivea; /* fd for file "drivea.cpm" */
static int driveb; /* fd for file "driveb.cpm" */
static int drivec; /* fd for file "drivec.cpm" */
static int drived; /* fd for file "drived.cpm" */
static int drivee; /* fd for file "drivee.cpm" */
static int drivef; /* fd for file "drivef.cpm" */
static int driveg; /* fd for file "driveg.cpm" */
static int driveh; /* fd for file "driveh.cpm" */
static int drivei; /* fd for file "drivei.cpm" */
static int drivej; /* fd for file "drivej.cpm" */
static int drivek; /* fd for file "drivek.cpm" */
static int drivel; /* fd for file "drivel.cpm" */
static int drivem; /* fd for file "drivem.cpm" */
static int driven; /* fd for file "driven.cpm" */
static int driveo; /* fd for file "driveo.cpm" */
static int drivep; /* fd for file "drivep.cpm" */
static int printer; /* fd for file "printer.cpm" */
static char last_char; /* buffer for 1 character (console status) */
static int speed; /* to reset CPU speed */

volatile BYTE timer10ms=0;

#ifdef PIPES
static int auxin; /* fd for pipe "auxin" */
static int auxout; /* fd for pipe "auxout" */
static int aux_in_eof; /* status of pipe "auxin" (<>0 means EOF) */
static int pid_rec; /* PID of the receiving process for auxiliary */
#else
static int aux_in; /* fd for file "auxiliaryin.cpm" */
static int aux_in_lf; /* linefeed flag for aux_in */
static int aux_out; /* fd for file "auxiliaryout.cpm" */
#endif

#ifdef NETWORKING
static int ss[NUMSOC]; /* server socket descriptors */
static int ssc[NUMSOC]; /* connected server socket descriptors */
static int ss_port[NUMSOC]; /* TCP/IP port for server sockets */
static int ss_telnet[NUMSOC]; /* telnet protocol flag for server sockets */
static char char_mode[3] = {255, 251, 3}; /* telnet negotiation */
static char will_echo[3] = {255, 251, 1}; /* telnet negotiation */
static int cs; /* client socket #1 descriptor */
static int cs_port; /* TCP/IP port for cs */
static char cs_host[BUFSIZE]; /* hostname for cs */

#ifdef CNETDEBUG
static int cdirection = -1; /* protocol direction, 0 = send, 1 = receive */
#endif

#ifdef SNETDEBUG
static int sdirection = -1; /* protocol direction, 0 = send 1 = receive */
#endif

#endif

static struct dskdef disks[16] = {
	{ "drivea.cpm", &drivea, 77, 26 },
	{ "driveb.cpm", &driveb, 77, 26 },
	{ "drivec.cpm", &drivec, 77, 26 },
	{ "drived.cpm", &drived, 77, 26 },
	{ "drivee.cpm", &drivee, 254, 32 },
	{ "drivef.cpm", &drivef, -1, -1 },
	{ "driveg.cpm", &driveg, -1, -1 },
	{ "driveh.cpm", &driveh, -1, -1 },
	{ "drivei.cpm", &drivei, 255, 128 },
	{ "drivej.cpm", &drivej, 255, 128 },
	{ "drivek.cpm", &drivek, -1, -1 },
	{ "drivel.cpm", &drivel, -1, -1 },
	{ "drivem.cpm", &drivem, -1, -1 },
	{ "driven.cpm", &driven, -1, -1 },
	{ "driveo.cpm", &driveo, -1, -1 },
	{ "drivep.cpm", &drivep, 256, 16384 }
};

/*
 *      MMU:
 *      ===
 *
 *      +--------+
 * 16KB | common |
 *      +--------+
 *      +--------+  +--------+  ..........  +--------+
 *      |        |  |        |              |        |
 * 48KB |        |  |        |  ..........  |        |
 *      | bank 0 |  | bank 1 |              | bank n |
 *      +--------+  +--------+  ..........  +--------+
 *
 * This is an example for 48KB segements as it was implemented originaly.
 * The segment size now can be configured via port 22.
 * If the segment size isn't configured the default is 48KB as it was
 * before, to maintain compatibility.
 */
#define MAXSEG 2		/* max. number of memory banks */
#define SEGSIZ 16384		/* default size of one bank = 48KBytes */
static char *mmu[MAXSEG]; /* MMU with pointers to the banks */
static int selbnk; /* current bank */
static int maxbnk; /* number of initialized banks */
static int segsize; /* segment size of one bank, default 48KB */

/*
 *	Forward declaration of the I/O handlers for all used ports
 */
static BYTE io_trap(void);
static BYTE cond_in(void), cond_out(BYTE), cons_in(void), cons_out(BYTE);
static BYTE prtd_in(void), prtd_out(BYTE), prts_in(void), prts_out(BYTE);
static BYTE auxd_in(void), auxd_out(BYTE), auxs_in(void), auxs_out(BYTE);
static BYTE fdcd_in(void), fdcd_out(BYTE);
static BYTE fdct_in(void), fdct_out(BYTE);
static BYTE fdcs_in(void), fdcs_out(BYTE);
static BYTE fdcsh_in(void), fdcsh_out(BYTE);
static BYTE fdco_in(void), fdco_out(BYTE);
static BYTE fdcx_in(void), fdcx_out(BYTE);
static BYTE dmal_in(void), dmal_out(BYTE);
static BYTE dmah_in(void), dmah_out(BYTE);
static BYTE mmui_in(void), mmui_out(BYTE), mmus_in(void), mmus_out(BYTE);
static BYTE mmuc_in(void), mmuc_out(BYTE);
static BYTE clkc_in(void), clkc_out(BYTE), clkd_in(void), clkd_out(BYTE);
static BYTE time_in(void), time_out(BYTE);
static BYTE delay_in(void), delay_out(BYTE);
static BYTE hwctl_in(void), hwctl_out(BYTE);
static BYTE speedl_in(void), speedl_out(BYTE);
static BYTE speedh_in(void), speedh_out(BYTE);
static BYTE cond1_in(void), cond1_out(BYTE), cons1_in(void), cons1_out(BYTE);
static BYTE cond2_in(void), cond2_out(BYTE), cons2_in(void), cons2_out(BYTE);
static BYTE cond3_in(void), cond3_out(BYTE), cons3_in(void), cons3_out(BYTE);
static BYTE cond4_in(void), cond4_out(BYTE), cons4_in(void), cons4_out(BYTE);
static BYTE netd1_in(void), netd1_out(BYTE), nets1_in(void), nets1_out(BYTE);

/*
 *	Forward declaration of support functions
 */
static int to_bcd(int), get_date(struct tm *);
static void int_timer(int);
#ifdef NETWORKING
static void net_server_config(void), net_client_config(void);
static void init_server_socket(int);
#ifdef TCPASYNC
static void int_io(int);
#endif
#endif

/*
 *	This array contains two function pointers for every
 *	active port, one for input and one for output.
 */
static BYTE(*port[256][2]) () = {
    { cons_in, cons_out}, /* port 0 */
    { cond_in, cond_out}, /* port 1 */
    { prts_in, prts_out}, /* port 2 */
    { prtd_in, prtd_out}, /* port 3 */
    { auxs_in, auxs_out}, /* port 4 */
    { auxd_in, auxd_out}, /* port 5 */
    { io_trap, io_trap}, /* port 6 */
    { io_trap, io_trap}, /* port 7 */
    { io_trap, io_trap}, /* port 8 */
    { io_trap, io_trap}, /* port 9 */
    { fdcd_in, fdcd_out}, /* port 10 */
    { fdct_in, fdct_out}, /* port 11 */
    { fdcs_in, fdcs_out}, /* port 12 */
    { fdco_in, fdco_out}, /* port 13 */
    { fdcx_in, fdcx_out}, /* port 14 */
    { dmal_in, dmal_out}, /* port 15 */
    { dmah_in, dmah_out}, /* port 16 */
    { fdcsh_in, fdcsh_out}, /* port 17 */
    { io_trap, io_trap}, /* port 18 */
    { io_trap, io_trap}, /* port 19 */
    { mmui_in, mmui_out}, /* port 20 */
    { mmus_in, mmus_out}, /* port 21 */
    { mmuc_in, mmuc_out}, /* port 22 */
    { io_trap, io_trap}, /* port 23 */
    { io_trap, io_trap}, /* port 24 */
    { clkc_in, clkc_out}, /* port 25 */
    { clkd_in, clkd_out}, /* port 26 */
    { time_in, time_out}, /* port 27 */
    { delay_in, delay_out}, /* port 28 */
    { hwctl_in, hwctl_out}, /* port 29 */
    { speedl_in, speedl_out}, /* port 30 */
    { speedh_in, speedh_out}, /* port 31 */
    { io_trap, io_trap}, /* port 32 */
    { io_trap, io_trap}, /* port 33 */
    { io_trap, io_trap}, /* port 34 */
    { io_trap, io_trap}, /* port 35 */
    { io_trap, io_trap}, /* port 36 */
    { io_trap, io_trap}, /* port 37 */
    { io_trap, io_trap}, /* port 38 */
    { io_trap, io_trap}, /* port 39 */
    { cons1_in, cons1_out}, /* port 40 */
    { cond1_in, cond1_out}, /* port 41 */
    { cons2_in, cons2_out}, /* port 42 */
    { cond2_in, cond2_out}, /* port 43 */
    { cons3_in, cons3_out}, /* port 44 */
    { cond3_in, cond3_out}, /* port 45 */
    { cons4_in, cons4_out}, /* port 46 */
    { cond4_in, cond4_out}, /* port 47 */
    { io_trap, io_trap}, /* port 48 */
    { io_trap, io_trap}, /* port 49 */
    { nets1_in, nets1_out}, /* port 50 */
    { netd1_in, netd1_out}, /* port 51 */
    { io_trap, io_trap}, /* port 52 */
    { io_trap, io_trap}, /* port 53 */
    { io_trap, io_trap}, /* port 54 */
    { io_trap, io_trap}, /* port	55 */
    { io_trap, io_trap}, /* port	56 */
    { io_trap, io_trap}, /* port	57 */
    { io_trap, io_trap}, /* port	58 */
    { io_trap, io_trap}, /* port	59 */
    { io_trap, io_trap}, /* port	60 */
    { io_trap, io_trap}, /* port	61 */
    { io_trap, io_trap}, /* port	62 */
    { io_trap, io_trap}, /* port	63 */
    { io_trap, io_trap}, /* port	64 */
    { io_trap, io_trap}, /* port	65 */
    { io_trap, io_trap}, /* port	66 */
    { io_trap, io_trap}, /* port	67 */
    { io_trap, io_trap}, /* port	68 */
    { io_trap, io_trap}, /* port	69 */
    { io_trap, io_trap}, /* port	70 */
    { io_trap, io_trap}, /* port	71 */
    { io_trap, io_trap}, /* port	72 */
    { io_trap, io_trap}, /* port	73 */
    { io_trap, io_trap}, /* port	74 */
    { io_trap, io_trap}, /* port	75 */
    { io_trap, io_trap}, /* port	76 */
    { io_trap, io_trap}, /* port	77 */
    { io_trap, io_trap}, /* port	78 */
    { io_trap, io_trap}, /* port	79 */
    { io_trap, io_trap}, /* port	80 */
    { io_trap, io_trap}, /* port	81 */
    { io_trap, io_trap}, /* port	82 */
    { io_trap, io_trap}, /* port	83 */
    { io_trap, io_trap}, /* port	84 */
    { io_trap, io_trap}, /* port	85 */
    { io_trap, io_trap}, /* port	86 */
    { io_trap, io_trap}, /* port	87 */
    { io_trap, io_trap}, /* port	88 */
    { io_trap, io_trap}, /* port	89 */
    { io_trap, io_trap}, /* port	90 */
    { io_trap, io_trap}, /* port	91 */
    { io_trap, io_trap}, /* port	92 */
    { io_trap, io_trap}, /* port	93 */
    { io_trap, io_trap}, /* port	94 */
    { io_trap, io_trap}, /* port	95 */
    { io_trap, io_trap}, /* port	96 */
    { io_trap, io_trap}, /* port	97 */
    { io_trap, io_trap}, /* port	98 */
    { io_trap, io_trap}, /* port	99 */
    { io_trap, io_trap}, /* port	100 */
    { io_trap, io_trap}, /* port 101 */
    { io_trap, io_trap}, /* port	102 */
    { io_trap, io_trap}, /* port	103 */
    { io_trap, io_trap}, /* port	104 */
    { io_trap, io_trap}, /* port	105 */
    { io_trap, io_trap}, /* port	106 */
    { io_trap, io_trap}, /* port	107 */
    { io_trap, io_trap}, /* port	108 */
    { io_trap, io_trap}, /* port	109 */
    { io_trap, io_trap}, /* port	110 */
    { io_trap, io_trap}, /* port	111 */
    { io_trap, io_trap}, /* port	112 */
    { io_trap, io_trap}, /* port	113 */
    { io_trap, io_trap}, /* port	114 */
    { io_trap, io_trap}, /* port	115 */
    { io_trap, io_trap}, /* port	116 */
    { io_trap, io_trap}, /* port	117 */
    { io_trap, io_trap}, /* port	118 */
    { io_trap, io_trap}, /* port	119 */
    { io_trap, io_trap}, /* port	120 */
    { io_trap, io_trap}, /* port	121 */
    { io_trap, io_trap}, /* port	122 */
    { io_trap, io_trap}, /* port	123 */
    { io_trap, io_trap}, /* port	124 */
    { io_trap, io_trap}, /* port	125 */
    { io_trap, io_trap}, /* port	126 */
    { io_trap, io_trap}, /* port	127 */
    { io_trap, io_trap}, /* port	128 */
    { io_trap, io_trap}, /* port	129 */
    { io_trap, io_trap}, /* port	130 */
    { io_trap, io_trap}, /* port	131 */
    { io_trap, io_trap}, /* port	132 */
    { io_trap, io_trap}, /* port	133 */
    { io_trap, io_trap}, /* port	134 */
    { io_trap, io_trap}, /* port	135 */
    { io_trap, io_trap}, /* port	136 */
    { io_trap, io_trap}, /* port	137 */
    { io_trap, io_trap}, /* port	138 */
    { io_trap, io_trap}, /* port	139 */
    { io_trap, io_trap}, /* port	140 */
    { io_trap, io_trap}, /* port	141 */
    { io_trap, io_trap}, /* port	142 */
    { io_trap, io_trap}, /* port	143 */
    { io_trap, io_trap}, /* port	144 */
    { io_trap, io_trap}, /* port	145 */
    { io_trap, io_trap}, /* port	146 */
    { io_trap, io_trap}, /* port	147 */
    { io_trap, io_trap}, /* port	148 */
    { io_trap, io_trap}, /* port	149 */
    { io_trap, io_trap}, /* port	150 */
    { io_trap, io_trap}, /* port	151 */
    { io_trap, io_trap}, /* port	152 */
    { io_trap, io_trap}, /* port	153 */
    { io_trap, io_trap}, /* port	154 */
    { io_trap, io_trap}, /* port	155 */
    { io_trap, io_trap}, /* port	156 */
    { io_trap, io_trap}, /* port	157 */
    { io_trap, io_trap}, /* port	158 */
    { io_trap, io_trap}, /* port	159 */
    { io_trap, io_trap}, /* port	160 */
    { io_trap, io_trap}, /* port	161 */
    { io_trap, io_trap}, /* port	162 */
    { io_trap, io_trap}, /* port	163 */
    { io_trap, io_trap}, /* port	164 */
    { io_trap, io_trap}, /* port	165 */
    { io_trap, io_trap}, /* port	166 */
    { io_trap, io_trap}, /* port	167 */
    { io_trap, io_trap}, /* port	168 */
    { io_trap, io_trap}, /* port	169 */
    { io_trap, io_trap}, /* port	170 */
    { io_trap, io_trap}, /* port	171 */
    { io_trap, io_trap}, /* port	172 */
    { io_trap, io_trap}, /* port	173 */
    { io_trap, io_trap}, /* port	174 */
    { io_trap, io_trap}, /* port	175 */
    { io_trap, io_trap}, /* port	176 */
    { io_trap, io_trap}, /* port	177 */
    { io_trap, io_trap}, /* port	178 */
    { io_trap, io_trap}, /* port	179 */
    { io_trap, io_trap}, /* port	180 */
    { io_trap, io_trap}, /* port	181 */
    { io_trap, io_trap}, /* port	182 */
    { io_trap, io_trap}, /* port	183 */
    { io_trap, io_trap}, /* port	184 */
    { io_trap, io_trap}, /* port	185 */
    { io_trap, io_trap}, /* port	186 */
    { io_trap, io_trap}, /* port	187 */
    { io_trap, io_trap}, /* port	188 */
    { io_trap, io_trap}, /* port	189 */
    { io_trap, io_trap}, /* port	190 */
    { io_trap, io_trap}, /* port	191 */
    { io_trap, io_trap}, /* port	192 */
    { io_trap, io_trap}, /* port	193 */
    { io_trap, io_trap}, /* port	194 */
    { io_trap, io_trap}, /* port	195 */
    { io_trap, io_trap}, /* port	196 */
    { io_trap, io_trap}, /* port	197 */
    { io_trap, io_trap}, /* port	198 */
    { io_trap, io_trap}, /* port	199 */
    { io_trap, io_trap}, /* port	200 */
    { io_trap, io_trap}, /* port 201 */
    { io_trap, io_trap}, /* port	202 */
    { io_trap, io_trap}, /* port	203 */
    { io_trap, io_trap}, /* port	204 */
    { io_trap, io_trap}, /* port	205 */
    { io_trap, io_trap}, /* port	206 */
    { io_trap, io_trap}, /* port	207 */
    { io_trap, io_trap}, /* port	208 */
    { io_trap, io_trap}, /* port	209 */
    { io_trap, io_trap}, /* port	210 */
    { io_trap, io_trap}, /* port	211 */
    { io_trap, io_trap}, /* port	212 */
    { io_trap, io_trap}, /* port	213 */
    { io_trap, io_trap}, /* port	214 */
    { io_trap, io_trap}, /* port	215 */
    { io_trap, io_trap}, /* port	216 */
    { io_trap, io_trap}, /* port	217 */
    { io_trap, io_trap}, /* port	218 */
    { io_trap, io_trap}, /* port	219 */
    { io_trap, io_trap}, /* port	220 */
    { io_trap, io_trap}, /* port	221 */
    { io_trap, io_trap}, /* port	222 */
    { io_trap, io_trap}, /* port	223 */
    { io_trap, io_trap}, /* port	224 */
    { io_trap, io_trap}, /* port	225 */
    { io_trap, io_trap}, /* port	226 */
    { io_trap, io_trap}, /* port	227 */
    { io_trap, io_trap}, /* port	228 */
    { io_trap, io_trap}, /* port	229 */
    { io_trap, io_trap}, /* port	230 */
    { io_trap, io_trap}, /* port	231 */
    { io_trap, io_trap}, /* port	232 */
    { io_trap, io_trap}, /* port	233 */
    { io_trap, io_trap}, /* port	234 */
    { io_trap, io_trap}, /* port	235 */
    { io_trap, io_trap}, /* port	236 */
    { io_trap, io_trap}, /* port	237 */
    { io_trap, io_trap}, /* port	238 */
    { io_trap, io_trap}, /* port	239 */
    { io_trap, io_trap}, /* port	240 */
    { io_trap, io_trap}, /* port	241 */
    { io_trap, io_trap}, /* port	242 */
    { io_trap, io_trap}, /* port	243 */
    { io_trap, io_trap}, /* port	244 */
    { io_trap, io_trap}, /* port	245 */
    { io_trap, io_trap}, /* port	246 */
    { io_trap, io_trap}, /* port	247 */
    { io_trap, io_trap}, /* port	248 */
    { io_trap, io_trap}, /* port	249 */
    { io_trap, io_trap}, /* port	250 */
    { io_trap, io_trap}, /* port	251 */
    { io_trap, io_trap}, /* port	252 */
    { io_trap, io_trap}, /* port	253 */
    { io_trap, io_trap}, /* port	254 */
    { io_trap, io_trap} /* port	255 */
};

/*
 *	This function initializes the I/O handlers:
 *	1. Initialize the MMU with NULL pointers and defaults.
 *	2. Open the files which emulate the disk drives.
 *	   Errors for opening one of the drives results
 *	   in a NULL pointer for fd in the dskdef structure,
 *	   so that this drive can't be used.
 *	3. Create and open the file "printer.cpm" for emulation
 *	   of a printer.
 *	4. Fork the process for receiving from the auxiliary serial port.
 *	5. Open the named pipes "auxin" and "auxout" for simulation
 *	   of the auxiliary serial port.
 *	6. Prepare TCP/IP sockets for serial port simulation
 */
void init_io(void) {
    register int i;
#if defined(NETWORKING) && defined(TCPASYNC)
    static struct sigaction newact;
#endif

    for (i = 0; i < MAXSEG; i++)
        mmu[i] = NULL;
    selbnk = 0;
    segsize = SEGSIZ;
    FSInit();
    for (i = 0; i <= 15; i++) {
        if ((*disks[i].fd = FSfopen(disks[i].fn, "R+")) == NULL)
            disks[i].fd = NULL;
    }

    OpenTimer2(T2_ON |  T2_PS_1_64, (156*(BUSFREQ/1000000) - 1));       //10 ms interrupt
    mT2SetIntPriority( 1);
    TRISBbits.TRISB15=0;
    LATBbits.LATB15=1;
    mT2IntEnable( 1);
    /*
        if ((printer = creat("printer.cpm", 0644)) == -1) {
            perror("file printer.cpm");
            exit(1);
        }
     */
#ifdef PIPES
    pid_rec = fork();
    switch (pid_rec) {
        case -1:
            puts("can't fork");
            exit(1);
        case 0:
            execlp("./receive", "receive", "auxiliaryout.cpm",
                    (char *) NULL);
            puts("can't exec receive process");
            exit(1);
    }
    if ((auxin = open("auxin", O_RDONLY | O_NDELAY)) == -1) {
        perror("pipe auxin");
        exit(1);
    }
    if ((auxout = open("auxout", O_WRONLY)) == -1) {
        perror("pipe auxout");
        exit(1);
    }
#endif

#ifdef NETWORKING
    net_server_config();
    net_client_config();

#ifdef TCPASYNC
    newact.sa_handler = int_io;
    bzero((char *) &newact.sa_mask, sizeof (newact.sa_mask));
    newact.sa_flags = 0;
    sigaction(SIGIO, &newact, NULL);
#endif

    for (i = 0; i < NUMSOC; i++)
        init_server_socket(i);
#endif
}

#ifdef NETWORKING

/*
 * initialize a server socket
 */
static void init_server_socket(int n) {
    struct sockaddr_in sin;
    int on = 1;
#ifdef TCPASYNC
    int i;
#endif

    if (ss_port[n] == 0)
        return;
    if ((ss[n] = socket(PF_INET, SOCK_STREAM, 0)) == -1) {
        perror("create server socket");
        exit(1);
    }
    if (setsockopt(ss[n], SOL_SOCKET, SO_REUSEADDR, (void *) &on,
            sizeof (on)) == -1) {
        perror("server socket options");
        exit(1);
    }
#ifdef TCPASYNC
    fcntl(ss[n], F_SETOWN, getpid());
    i = fcntl(ss[n], F_GETFL, 0);
    if (fcntl(ss[n], F_SETFL, i | FASYNC) == -1) {
        perror("fcntl FASYNC server socket");
        exit(1);
    }
#endif
    bzero((char *) &sin, sizeof (sin));
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = INADDR_ANY;
    sin.sin_port = htons(ss_port[n]);
    if (bind(ss[n], (struct sockaddr *) &sin, sizeof (sin)) == -1) {
        perror("bind server socket");
        exit(1);
    }
    if (listen(ss[n], 0) == -1) {
        perror("listen on server socket");
        exit(1);
    }
}

/*
 * Read and process network server configuration file
 */
static void net_server_config(void) {
    register int i;
    FILE *fp;
    char buf[BUFSIZE];
    char *s;

    if ((fp = fopen("net_server.conf", "r")) != NULL) {
        printf("Server network configuration:\n");
        s = &buf[0];
        while (fgets(s, BUFSIZE, fp) != NULL) {
            if ((*s == '\n') || (*s == '#'))
                continue;
            i = atoi(s);
            if ((i < 1) || (i > 4)) {
                printf("console %d not supported\n", i);
                continue;
            }
            while ((*s != ' ') && (*s != '\t'))
                s++;
            while ((*s == ' ') || (*s == '\t'))
                s++;
            ss_telnet[i - 1] = atoi(s);
            while ((*s != ' ') && (*s != '\t'))
                s++;
            while ((*s == ' ') || (*s == '\t'))
                s++;
            ss_port[i - 1] = atoi(s);
            printf("console %d listening on port %d, telnet = %s\n", i, ss_port[i - 1],
                    ((ss_telnet[i - 1] > 0) ? "on" : "off"));
        }
        fclose(fp);
    }
}

/*
 * Read and process network client configuration file
 */
static void net_client_config(void) {
    FILE *fp;
    char buf[BUFSIZE];
    char *s, *d;

    if ((fp = fopen("net_client.conf", "r")) != NULL) {
        printf("Client network configuration:\n");
        s = &buf[0];
        while (fgets(s, BUFSIZE, fp) != NULL) {
            if ((*s == '\n') || (*s == '#'))
                continue;
            while ((*s != ' ') && (*s != '\t'))
                s++;
            while ((*s == ' ') || (*s == '\t'))
                s++;
            d = &cs_host[0];
            while ((*s != ' ') && (*s != '\t'))
                *d++ = *s++;
            *d = '\0';
            while ((*s == ' ') || (*s == '\t'))
                s++;
            cs_port = atoi(s);
            printf("Connecting to %s at port %d\n", cs_host,
                    cs_port);
        }
        fclose(fp);
    }
}
#endif

/*
 *	This function stops the I/O handlers:
 *
 *	1. The files emulating the disk drives are closed.
 *	2. The file "printer.com" emulating a printer is closed.
 *	3. The named pipes "auxin" and "auxout" are closed.
 *	4. All connected sockets are closed
 *	5. The receiving process for the aux serial port is stopped.
 */
void exit_io(void) {
    register int i;

    for (i = 0; i <= 15; i++)
        if (disks[i].fd != NULL)
            FSfclose(*disks[i].fd);
    close(printer);

#ifdef PIPES
    close(auxin);
    close(auxout);
    kill(pid_rec, SIGHUP);
#endif

#ifdef NETWORKING
    for (i = 0; i < NUMSOC; i++)
        if (ssc[i])
            close(ssc[i]);
    if (cs)
        close(cs);
#endif
}

/*
 *	reset the CPU and I/O system
 */
void reset_system(void) {
    register int i;

    /* reset hardware */
    time_out(0); /* stop timer */
    for (i = 0; i < MAXSEG; i++) { /* reset MMU */
        if (mmu[i] != NULL) {
            free(mmu[i]);
            mmu[i] = NULL;
        }
    }
    selbnk = 0;
    segsize = SEGSIZ;

    /* reset CPU */
    IFF = 0; /* disable interrupts */
    int_mode = 0; /* reset interrupt mode */
    wrk_ram = PC = ram; /* PC = 0 */
    STACK = ram +0xffff; /* SP = FFFF */

    /* reboot */
    boot();
}

/*
 *	This function is called for every IN opcode from the
 *	CPU emulation. It calls the handler for the port,
 *	from which input is wanted.
 */
BYTE io_in(BYTE adr) {

        return ((*port[adr][0]) ());
}

/*
 *	This function is called for every OUT opcode from the
 *	CPU emulation. It calls the handler for the port,
 *	to which output is wanted.
 */
BYTE io_out(BYTE adr, BYTE data) {
    busy_loop_cnt[0] = 0;
         (*port[adr][1]) (data);
    return ((BYTE) 0);
}

/*
 *	I/O trap handler
 */
static BYTE io_trap(void) {
    if (i_flag) {
        cpu_error = IOTRAP;
        cpu_state = STOPPED;
    }
    return ((BYTE) 0xff);
}

/*
 *	I/O handler for read console 0 status:
 *	0xff : input available
 *	0x00 : no input available
 */
static BYTE cons_in(void) {
    register int flags, readed;
#ifndef UARTConsole
    if(InpQueue[InpQueueHead]!=0) return ((BYTE) 0xff);
#endif
#ifdef UARTConsole
    if (UARTReceivedDataIsAvailable(UART2))  return ((BYTE) 0xff);
#endif
    /*
    if (last_char)
        return ((BYTE) 0xff);
    if (cntl_c)
        return ((BYTE) 0xff);
    if (cntl_bs)
        return ((BYTE) 0xff);
    else {
        if (++busy_loop_cnt[0] >= MAX_BUSY_COUNT) {
            //            struct timespec timer;

            //            timer.tv_sec = 0;
            //            timer.tv_nsec = 1000000L;
            //			nanosleep(&timer, NULL);
            busy_loop_cnt[0] = 0;
            //putchar('~'); fflush(stdout);
        }
        //        flags = fcntl(0, F_GETFL, 0);
        //        fcntl(0, F_SETFL, flags | O_NDELAY);
        //        readed = read(0, &last_char, 1);
        //        fcntl(0, F_SETFL, flags);
        if (readed == 1)
            return ((BYTE) 0xff);
    }
*/
      return ((BYTE) 0x00);
}

/*
 *	I/O handler for read console 1 status:
 *	bit 0 = 1: input available
 *	bit 1 = 1: output writable
 */
static BYTE cons1_in(void) {
    BYTE status = 0;
#ifdef NETWORKING
    struct pollfd p[1];

#ifndef TCPASYNC
    socklen_t alen;
    struct sockaddr_in fsin;
    int go_away;

    p[0].fd = ss[0];
    p[0].events = POLLIN;
    p[0].revents = 0;
    poll(p, 1, 0);

    if (p[0].revents) {

        alen = sizeof (fsin);

        if (ssc[0] != 0) {
            go_away = accept(ss[0],
                    (struct sockaddr *) &fsin, &alen);
            close(go_away);
            goto ss0_done;
        }

        if ((ssc[0] = accept(ss[0], (struct sockaddr *) &fsin,
                &alen)) == -1) {
            perror("accept server socket");
            ssc[0] = 0;
        }

        if (ss_telnet[0]) {
            write(ssc[0], &char_mode, 3);
            write(ssc[0], &will_echo, 3);
        }

    }
ss0_done:
#endif

    if (ssc[0] != 0) {
        p[0].fd = ssc[0];
        p[0].events = POLLIN | POLLOUT;
        p[0].revents = 0;
        poll(p, 1, 0);
        if (p[0].revents & POLLHUP) {
            close(ssc[0]);
            ssc[0] = 0;
            return (0);
        }
        if (p[0].revents & POLLIN)
            status |= 1;
        if (p[0].revents & POLLOUT)
            status |= 2;
    }
#endif
    return (status);
}

/*
 *	I/O handler for read console 2 status:
 *	bit 0 = 1: input available
 *	bit 1 = 1: output writable
 */
static BYTE cons2_in(void) {
    BYTE status = 0;
#ifdef NETWORKING
    struct pollfd p[1];

#ifndef TCPASYNC
    socklen_t alen;
    struct sockaddr_in fsin;
    int go_away;

    p[0].fd = ss[1];
    p[0].events = POLLIN;
    p[0].revents = 0;
    poll(p, 1, 0);

    if (p[0].revents) {

        alen = sizeof (fsin);

        if (ssc[1] != 0) {
            go_away = accept(ss[1],
                    (struct sockaddr *) &fsin, &alen);
            close(go_away);
            goto ss1_done;
        }

        if ((ssc[1] = accept(ss[1], (struct sockaddr *) &fsin,
                &alen)) == -1) {
            perror("accept server socket");
            ssc[1] = 0;
        }

        if (ss_telnet[1]) {
            write(ssc[1], &char_mode, 3);
            write(ssc[1], &will_echo, 3);
        }

    }
ss1_done:
#endif

    if (ssc[1] != 0) {
        p[0].fd = ssc[1];
        p[0].events = POLLIN | POLLOUT;
        p[0].revents = 0;
        poll(p, 1, 0);
        if (p[0].revents & POLLHUP) {
            close(ssc[1]);
            ssc[1] = 0;
            return (0);
        }
        if (p[0].revents & POLLIN)
            status |= 1;
        if (p[0].revents & POLLOUT)
            status |= 2;
    }
#endif
    return (status);
}

/*
 *	I/O handler for read console 3 status:
 *	bit 0 = 1: input available
 *	bit 1 = 1: output writable
 */
static BYTE cons3_in(void) {
    BYTE status = 0;
#ifdef NETWORKING
    struct pollfd p[1];

#ifndef TCPASYNC
    socklen_t alen;
    struct sockaddr_in fsin;
    int go_away;

    p[0].fd = ss[2];
    p[0].events = POLLIN;
    p[0].revents = 0;
    poll(p, 1, 0);

    if (p[0].revents) {

        alen = sizeof (fsin);

        if (ssc[2] != 0) {
            go_away = accept(ss[2],
                    (struct sockaddr *) &fsin, &alen);
            close(go_away);
            goto ss2_done;
        }

        if ((ssc[2] = accept(ss[2], (struct sockaddr *) &fsin,
                &alen)) == -1) {
            perror("accept server socket");
            ssc[2] = 0;
        }

        if (ss_telnet[2]) {
            write(ssc[2], &char_mode, 3);
            write(ssc[2], &will_echo, 3);
        }

    }
ss2_done:
#endif

    if (ssc[2] != 0) {
        p[0].fd = ssc[2];
        p[0].events = POLLIN | POLLOUT;
        p[0].revents = 0;
        poll(p, 1, 0);
        if (p[0].revents & POLLHUP) {
            close(ssc[2]);
            ssc[2] = 0;
            return (0);
        }
        if (p[0].revents & POLLIN)
            status |= 1;
        if (p[0].revents & POLLOUT)
            status |= 2;
    }
#endif
    return (status);
}

/*
 *	I/O handler for read console 4 status:
 *	bit 0 = 1: input available
 *	bit 1 = 1: output writable
 */
static BYTE cons4_in(void) {
    BYTE status = 0;
#ifdef NETWORKING
    struct pollfd p[1];

#ifndef TCPASYNC
    socklen_t alen;
    struct sockaddr_in fsin;
    int go_away;

    p[0].fd = ss[3];
    p[0].events = POLLIN;
    p[0].revents = 0;
    poll(p, 1, 0);

    if (p[0].revents) {

        alen = sizeof (fsin);

        if (ssc[3] != 0) {
            go_away = accept(ss[3],
                    (struct sockaddr *) &fsin, &alen);
            close(go_away);
            goto ss3_done;
        }

        if ((ssc[3] = accept(ss[3], (struct sockaddr *) &fsin,
                &alen)) == -1) {
            perror("accept server socket");
            ssc[3] = 0;
        }

        if (ss_telnet[3]) {
            write(ssc[3], &char_mode, 3);
            write(ssc[3], &will_echo, 3);
        }

    }
ss3_done:
#endif

    if (ssc[3] != 0) {
        p[0].fd = ssc[3];
        p[0].events = POLLIN | POLLOUT;
        p[0].revents = 0;
        poll(p, 1, 0);
        if (p[0].revents & POLLHUP) {
            close(ssc[3]);
            ssc[3] = 0;
            return (0);
        }
        if (p[0].revents & POLLIN)
            status |= 1;
        if (p[0].revents & POLLOUT)
            status |= 2;
    }
#endif
    return (status);
}

/*
 *	I/O handler for read client socket 1 status:
 *	bit 0 = 1: input available
 *	bit 1 = 1: output writable
 */
static BYTE nets1_in(void) {
    BYTE status = 0;
#ifdef NETWORKING
    struct sockaddr_in sin;
    struct hostent *host;
    struct pollfd p[1];

    if ((cs == 0) && (cs_port != 0)) {
        host = gethostbyname(&cs_host[0]);
        if ((cs = socket(PF_INET, SOCK_STREAM, 0)) == -1) {
            perror("create client socket");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
            return ((BYTE) 0);
        }
        bzero((char *) &sin, sizeof (sin));
        bcopy(host->h_addr, (char *) &sin.sin_addr, host->h_length);
        sin.sin_family = AF_INET;
        sin.sin_port = htons(cs_port);
        if (connect(cs, (struct sockaddr *) &sin, sizeof (sin)) == -1) {
            perror("connect client socket");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
            return ((BYTE) 0);
        }
    }

    if (cs != 0) {
        p[0].fd = cs;
        p[0].events = POLLIN | POLLOUT;
        p[0].revents = 0;
        poll(p, 1, 0);
        if (p[0].revents & POLLHUP) {
            close(cs);
            cs = 0;
            return ((BYTE) 0);
        }
        if (p[0].revents & POLLIN)
            status |= 1;
        if (p[0].revents & POLLOUT)
            status |= 2;
    }
#endif
    return (status);
}

/*
 *	I/O handler for write console 0 status:
 *	no reaction
 */
static BYTE cons_out(BYTE data) {
    data = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for write console 1 status:
 *	no reaction
 */
static BYTE cons1_out(BYTE data) {
    data = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for write console 2 status:
 *	no reaction
 */
static BYTE cons2_out(BYTE data) {
    data = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for write console 3 status:
 *	no reaction
 */
static BYTE cons3_out(BYTE data) {
    data = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for write console 4 status:
 *	no reaction
 */
static BYTE cons4_out(BYTE data) {
    data = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for write client socket 1 status:
 *	no reaction
 */
static BYTE nets1_out(BYTE data) {
    data = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read console 0 data:
 *	read one character from the terminal without echo
 *	and character transformations
 */
static BYTE cond_in(void) {
    char c;

    busy_loop_cnt[0] = 0;
    /*
    aborted:
        if (last_char) {
            c = last_char;
            last_char = '\0';
        } else if (cntl_c) {
            cntl_c--;
            c = 0x03;
        } else if (cntl_bs) {
            cntl_bs--;
            c = 0x1c;
        } else if (read(0, &c, 1) != 1) {
            goto aborted;
        }
     */
//       if(InpQueueHead != InpQueueTail){
//                c = InpQueue[InpQueueTail];
//		InpQueueTail = (InpQueueTail + 1) % INP_QUEUE_SIZE;
                return ((BYTE) _mon_getc(0));
  //     }
  //     else return -1;
    //    return ((BYTE) UART2GetChar()); //    return ((BYTE) c);
}

/*
 *	I/O handler for read console 1 data:
 */
static BYTE cond1_in(void) {
    char c;
#ifdef NETWORKING
    char x;

    if (read(ssc[0], &c, 1) != 1) {
        if ((errno == EAGAIN) || (errno == EINTR)) {
            close(ssc[0]);
            ssc[0] = 0;
        } else {
            perror("read console 1");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
            return ((BYTE) 0);
        }
    }
    if (ss_telnet[0] && (c == '\r'))
        read(ssc[0], &x, 1);
    if (ss_telnet[0] && ((BYTE) c == 0xff)) {
        read(ssc[0], &x, 1);
        read(ssc[0], &x, 1);
    }
#ifdef SNETDEBUG
    if (sdirection != 1) {
        printf("\n<- ");
        sdirection = 1;
    }
    printf("%02x ", (BYTE) c);
#endif
#else
    c = 0;
#endif
    return ((BYTE) c);
}

/*
 *	I/O handler for read console 2 data:
 */
static BYTE cond2_in(void) {
    char c;
#ifdef NETWORKING
    char x;

    if (read(ssc[1], &c, 1) != 1) {
        if ((errno == EAGAIN) || (errno == EINTR)) {
            close(ssc[1]);
            ssc[1] = 0;
        } else {
            perror("read console 2");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
            return ((BYTE) 0);
        }
    }
    if (ss_telnet[1] && (c == '\r'))
        read(ssc[1], &x, 1);
    if (ss_telnet[1] && ((BYTE) c == 0xff)) {
        read(ssc[1], &x, 1);
        read(ssc[1], &x, 1);
    }
#ifdef SNETDEBUG
    if (sdirection != 1) {
        printf("\n<- ");
        sdirection = 1;
    }
    printf("%02x ", (BYTE) c);
#endif
#else
    c = 0;
#endif
    return ((BYTE) c);
}

/*
 *	I/O handler for read console 3 data:
 */
static BYTE cond3_in(void) {
    char c;
#ifdef NETWORKING
    char x;

    if (read(ssc[2], &c, 1) != 1) {
        if ((errno == EAGAIN) || (errno == EINTR)) {
            close(ssc[2]);
            ssc[2] = 0;
        } else {
            perror("read console 3");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
            return ((BYTE) 0);
        }
    }
    if (ss_telnet[2] && (c == '\r'))
        read(ssc[2], &x, 1);
    if (ss_telnet[2] && ((BYTE) c == 0xff)) {
        read(ssc[2], &x, 1);
        read(ssc[2], &x, 1);
    }
#ifdef SNETDEBUG
    if (sdirection != 1) {
        printf("\n<- ");
        sdirection = 1;
    }
    printf("%02x ", (BYTE) c);
#endif
#else
    c = 0;
#endif
    return ((BYTE) c);
}

/*
 *	I/O handler for read console 4 data:
 */
static BYTE cond4_in(void) {
    char c;
#ifdef NETWORKING
    char x;

    if (read(ssc[3], &c, 1) != 1) {
        if ((errno == EAGAIN) || (errno == EINTR)) {
            close(ssc[3]);
            ssc[3] = 0;
        } else {
            perror("read console 4");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
            return ((BYTE) 0);
        }
    }
    if (ss_telnet[3] && (c == '\r'))
        read(ssc[3], &x, 1);
    if (ss_telnet[3] && ((BYTE) c == 0xff)) {
        read(ssc[3], &x, 1);
        read(ssc[3], &x, 1);
    }
#ifdef SNETDEBUG
    if (sdirection != 1) {
        printf("\n<- ");
        sdirection = 1;
    }
    printf("%02x ", (BYTE) c);
#endif
#else
    c = 0;
#endif
    return ((BYTE) c);
}

/*
 *	I/O handler for read client socket 1 data:
 */
static BYTE netd1_in(void) {
    char c;

#ifdef NETWORKING
    if (read(cs, &c, 1) != 1) {
        perror("read client socket");
        cpu_error = IOERROR;
        cpu_state = STOPPED;
        return ((BYTE) 0);
    }
#ifdef CNETDEBUG
    if (cdirection != 1) {
        printf("\n<- ");
        cdirection = 1;
    }
    printf("%02x ", (BYTE) c);
#endif
#else
    c = 0;
#endif
    return ((BYTE) c);
}

/*
 *	I/O handler for write console 0 data:
 *	the output is written to the terminal
 */
static BYTE cond_out(BYTE data) {
    /*
        again:
        if (write(fileno(stdout), (char *) &data, 1) != 1) {
            if (errno == EINTR) {
                goto again;
            } else {
                perror("write console 0");
                cpu_error = IOERROR;
                cpu_state = STOPPED;
            }
        }
     */

        putchar((BYTE) data);
    fflush(stdout);
    return ((BYTE) 0);
}

/*
 *	I/O handler for write console 1 data:
 *	the output is written to the socket
 */
static BYTE cond1_out(BYTE data) {
#ifdef NETWORKING
#ifdef SNETDEBUG
    if (sdirection != 0) {
        printf("\n-> ");
        sdirection = 0;
    }
    printf("%02x ", (BYTE) data);
#endif
again:
    if (write(ssc[0], (char *) &data, 1) != 1) {
        if (errno == EINTR) {
            goto again;
        } else {
            perror("write console 1");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
        }
    }
#endif
    return ((BYTE) 0);
}

/*
 *	I/O handler for write console 2 data:
 *	the output is written to the socket
 */
static BYTE cond2_out(BYTE data) {
#ifdef NETWORKING
#ifdef SNETDEBUG
    if (sdirection != 0) {
        printf("\n-> ");
        sdirection = 0;
    }
    printf("%02x ", (BYTE) data);
#endif
again:
    if (write(ssc[1], (char *) &data, 1) != 1) {
        if (errno == EINTR) {
            goto again;
        } else {
            perror("write console 2");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
        }
    }
#endif
    return ((BYTE) 0);
}

/*
 *	I/O handler for write console 3 data:
 *	the output is written to the socket
 */
static BYTE cond3_out(BYTE data) {
#ifdef NETWORKING
#ifdef SNETDEBUG
    if (sdirection != 0) {
        printf("\n-> ");
        sdirection = 0;
    }
    printf("%02x ", (BYTE) data);
#endif
again:
    if (write(ssc[2], (char *) &data, 1) != 1) {
        if (errno == EINTR) {
            goto again;
        } else {
            perror("write console 3");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
        }
    }
#endif
    return ((BYTE) 0);
}

/*
 *	I/O handler for write console 4 data:
 *	the output is written to the socket
 */
static BYTE cond4_out(BYTE data) {
#ifdef NETWORKING
#ifdef SNETDEBUG
    if (sdirection != 0) {
        printf("\n-> ");
        sdirection = 0;
    }
    printf("%02x ", (BYTE) data);
#endif
again:
    if (write(ssc[3], (char *) &data, 1) != 1) {
        if (errno == EINTR) {
            goto again;
        } else {
            perror("write console 4");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
        }
    }
#endif
    return ((BYTE) 0);
}

/*
 *	I/O handler for write client socket 1 data:
 *	the output is written to the socket
 */
static BYTE netd1_out(BYTE data) {
#ifdef NETWORKING
#ifdef CNETDEBUG
    if (cdirection != 0) {
        printf("\n-> ");
        cdirection = 0;
    }
    printf("%02x ", (BYTE) data);
#endif
again:
    if (write(cs, (char *) &data, 1) != 1) {
        if (errno == EINTR) {
            goto again;
        } else {
            perror("write client socket");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
        }
    }
#endif
    return ((BYTE) 0);
}

/*
 *	I/O handler for read printer status:
 *	the printer is ready all the time
 */
static BYTE prts_in(void) {
    return ((BYTE) 0xff);
}

/*
 *	I/O handler for write printer status:
 *	no reaction
 */
static BYTE prts_out(BYTE data) {
    data = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read printer data:
 *	always read an EOF from the printer
 */
static BYTE prtd_in(void) {
    return ((BYTE) 0x1a); /* CP/M EOF */
}

/*
 *	I/O handler for write printer data:
 *	the output is written to file "printer.cpm"
 */
static BYTE prtd_out(BYTE data) {
    if (data != '\r') {
again:
        if (write(printer, (char *) &data, 1) != 1) {
            if (errno == EINTR) {
                goto again;
            } else {
                perror("write printer");
                cpu_error = IOERROR;
                cpu_state = STOPPED;
            }
        }
    }
    return ((BYTE) 0);
}

/*
 *	I/O handler for read aux status:
 *	return EOF status of the aux device
 */
static BYTE auxs_in(void) {
#ifdef PIPES
    return ((BYTE) aux_in_eof);
#else
    return ((BYTE) 0xff);
#endif
}

/*
 *	I/O handler for write aux status:
 *	change EOF status of the aux device
 */
static BYTE auxs_out(BYTE data) {
#ifdef PIPES
    aux_in_eof = data;
#endif
    return ((BYTE) 0);
}

/*
 *	I/O handler for read aux data:
 *	read next byte from pipe "auxin" or from file "auxiliaryin.cpm"
 */
static BYTE auxd_in(void) {
    char c;

#ifdef PIPES
    if (read(auxin, &c, 1) == 1)
        return ((BYTE) c);
    else {
        aux_in_eof = 0xff;
        return ((BYTE) 0x1a); /* CP/M EOF */
    }
#else
    if (aux_in == 0) {
        if ((aux_in = FSfopen("auxiliaryin.cpm", "R")) == -1) {
            perror("open auxiliaryin.cpm");
            cpu_error = IOERROR;
            cpu_state = STOPPED;
            return ((BYTE) 0);
        }
    }

    if (aux_in_lf) {
        aux_in_lf = 0;
        return ((BYTE) '\n');
    }

    if (read(aux_in, &c, 1) != 1) {
        FSfclose(aux_in);
        aux_in = 0;
        return ((BYTE) 0x1a);
    }

    if (c == '\n') {
        aux_in_lf = 1;
        return ((BYTE) '\r');
    }

    return ((BYTE) c);
#endif
}

/*
 *	I/O handler for write aux data:
 *	write output to pipe "auxout" or to file "auxiliaryout.cpm"
 */
static BYTE auxd_out(BYTE data) {
#ifdef PIPES
    if ((data == 0) || (data == 0x1a))
        return ((BYTE) 0);

    if (data != '\r')
        write(auxout, (char *) &data, 1);
#else
    if (data == 0)
        return ((BYTE) 0);
    /*
        if (aux_out == 0) {
            if ((aux_out = creat("auxiliaryout.cpm", 0644)) == -1) {
                perror("open auxiliaryout.cpm");
                cpu_error = IOERROR;
                cpu_state = STOPPED;
                return ((BYTE) 0);
            }
        }
     */
    if (data == 0x1a) {
        close(aux_out);
        aux_out = 0;
        return ((BYTE) 0);
    }

    if (data != '\r')
        write(aux_out, (char *) &data, 1);
#endif

    return ((BYTE) 0);
}

/*
 *	I/O handler for read FDC drive:
 *	return the current drive
 */
static BYTE fdcd_in(void) {
    return ((BYTE) drive);
}

/*
 *	I/O handler for write FDC drive:
 *	set the current drive
 */
static BYTE fdcd_out(BYTE data) {
    drive = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read FDC track:
 *	return the current track
 */
static BYTE fdct_in(void) {
    return ((BYTE) track);
}

/*
 *	I/O handler for write FDC track:
 *	set the current track
 */
static BYTE fdct_out(BYTE data) {
    track = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read FDC sector low
 *	return low byte of the current sector
 */
static BYTE fdcs_in(void) {
    return ((BYTE) sector & 0xff);
}

/*
 *	I/O handler for write FDC sector low
 *	set low byte of the current sector
 */
static BYTE fdcs_out(BYTE data) {
    sector = (sector & 0xff00) + data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read FDC sector high
 *	return high byte of the current sector
 */
static BYTE fdcsh_in(void) {
    return ((BYTE) sector >> 8);
}

/*
 *	I/O handler for write FDC sector high
 *	set high byte of the current sector
 */
static BYTE fdcsh_out(BYTE data) {
    sector = (sector & 0xff) + (data << 8);
    return ((BYTE) 0);
}

/*
 *	I/O handler for read FDC command:
 *	always returns 0
 */
static BYTE fdco_in(void) {
    return ((BYTE) 0);
}

/*
 *	I/O handler for write FDC command:
 *	transfer one sector in the wanted direction,
 *	0 = read, 1 = write
 *
 *	The status byte of the FDC is set as follows:
 *	  0 - ok
 *	  1 - illegal drive
 *	  2 - illegal track
 *	  3 - illegal sector
 *	  4 - seek error
 *	  5 - read error
 *	  6 - write error
 *	  7 - illegal command to FDC
 */
static BYTE fdco_out(BYTE data) {
    register unsigned long pos;

    if (disks[drive].fd == NULL) {
        status = 1;
        return ((BYTE) 0);
    }
    if (track > disks[drive].tracks) {
        status = 2;
        return ((BYTE) 0);
    }
    if (sector > disks[drive].sectors) {
        status = 3;
        return ((BYTE) 0);
    }
    pos = (((long) track) * ((long) disks[drive].sectors) + sector - 1) << 7;
    if (FSfseek(*disks[drive].fd, pos, 0) == -1L) {
        status = 4;
        return ((BYTE) 0);
    }
    switch (data) {
        case 0: /* read */
            if (FSfread((char *) ram +(dmadh << 8) + dmadl, 1, 128, *disks[drive].fd) != 128)
                status = 5;
            else
                status = 0;
            break;
        case 1: /* write */
            if (FSfwrite((char *) ram +(dmadh << 8) + dmadl, 1, 128, *disks[drive].fd) != 128)
                status = 6;
            else
                status = 0;
            break;
        default: /* illegal command */
            status = 7;
            break;
    }
    return ((BYTE) 0);
}

/*
 *	I/O handler for read FDC status:
 *	returns status of last FDC operation,
 *	0 = ok, else some error
 */
static BYTE fdcx_in(void) {
    return ((BYTE) status);
}

/*
 *	I/O handler for write FDC status:
 *	no reaction
 */
static BYTE fdcx_out(BYTE data) {
    data = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read lower byte of DMA address:
 *	return lower byte of current DMA address
 */
static BYTE dmal_in(void) {
    return ((BYTE) dmadl);
}

/*
 *	I/O handler for write lower byte of DMA address:
 *	set lower byte of DMA address
 */
static BYTE dmal_out(BYTE data) {
    dmadl = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read higher byte of DMA address:
 *	return higher byte of current DMA address
 */
static BYTE dmah_in(void) {
    return ((BYTE) dmadh);
}

/*
 *	I/O handler for write higher byte of DMA address:
 *	set higher byte of the DMA address
 */
static BYTE dmah_out(BYTE data) {
    dmadh = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read MMU initialization:
 *	return number of initialized MMU banks
 */
static BYTE mmui_in(void) {
    return ((BYTE) maxbnk);
}

/*
 *	I/O handler for write MMU initialization:
 *	for the FIRST call the memory for the wanted number of banks
 *	is allocated and pointers to the memory is stored in the MMU array
 */
static BYTE mmui_out(BYTE data) {
    register int i;

    if (mmu[0] != NULL)
        return ((BYTE) 0);
    if (data > MAXSEG) {
        printf("Try to init %d banks, available %d banks\r\n",
                data, MAXSEG);
        exit(1);
    }
    for (i = 0; i < data; i++) {
        if ((mmu[i] = malloc(segsize)) == NULL) {
            printf("can't allocate memory for bank %d\r\n", i + 1);
            exit(1);
        }
    }
    maxbnk = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read MMU bank select:
 *	return current selected MMU bank
 */
static BYTE mmus_in(void) {
    return ((BYTE) selbnk);
}

/*
 *	I/O handler for write MMU bank select:
 *	if the current selected bank is not equal the wanted bank,
 *	the current bank is saved. Then the memory of the wanted
 *	bank is copied into the CPU address space and this bank is
 *	set to be the current one now.
 */
static BYTE mmus_out(BYTE data) {
    if (data == selbnk)
        return ((BYTE) 0);
    if (data > maxbnk) {
        printf("Try to select unallocated bank %d\r\n", data);
        exit(1);
    }
    //printf("SIM: memory select bank %d from %d\r\n", data, PC-ram);
    memcpy(mmu[selbnk], (char *) ram, segsize);
    memcpy((char *) ram, mmu[data], segsize);
    selbnk = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read MMU segment size configuration:
 *	returns size of the bank segments in pages a 256 bytes
 */
static BYTE mmuc_in(void) {
    return ((BYTE) (segsize >> 8));
}

/*
 *	I/O handler for write MMU segment size configuration:
 *	set the size of the bank segements in pages a 256 bytes
 *	must be done before any banks are allocated
 */
static BYTE mmuc_out(BYTE data) {
    if (mmu[0] != NULL) {
        printf("Not possible to resize already allocated segments\r\n");
        exit(1);
    }
    segsize = data << 8;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read clock command:
 *	return last clock command
 */
static BYTE clkc_in(void) {
    return (clkcmd);
}

/*
 *	I/O handler for write clock command:
 *	set the wanted clock command
 *	toggle BCD/decimal format if toggle command (255)
 */
static BYTE clkc_out(BYTE data) {
    clkcmd = data;
    if (data == 255)
        clkfmt = clkfmt ^ 1;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read clock data:
 *	dependent on the last clock command the following
 *	informations are returned from the system clock:
 *		0 - seconds in BCD or decimal
 *		1 - minutes in BCD or decimal
 *		2 - hours in BCD or decimal
 *		3 - low byte number of days since 1.1.1978
 *		4 - high byte number of days since 1.1.1978
 *		5 - day of month in BCD or decimal
 *		6 - month in BCD or decimal
 *		7 - year in BCD or decomal
 *	for every other clock command a 0 is returned
 */
static BYTE clkd_in(void) {
    register struct tm *t;
    register int val;
    time_t Time;

    time(&Time);
    t = localtime(&Time);
    switch (clkcmd) {
        case 0: /* seconds */
            if (clkfmt)
                val = t->tm_sec;
            else
                val = to_bcd(t->tm_sec);
            break;
        case 1: /* minutes */
            if (clkfmt)
                val = t->tm_min;
            else
                val = to_bcd(t->tm_min);
            break;
        case 2: /* hours */
            if (clkfmt)
                val = t->tm_hour;
            else
                val = to_bcd(t->tm_hour);
            break;
        case 3: /* low byte days */
            val = get_date(t) & 255;
            break;
        case 4: /* high byte days */
            val = get_date(t) >> 8;
            break;
        case 5: /* day of month */
            if (clkfmt)
                val = t->tm_mday;
            else
                val = to_bcd(t->tm_mday);
            break;
        case 6: /* month */
            if (clkfmt)
                val = t->tm_mon;
            else
                val = to_bcd(t->tm_mon);
            break;
        case 7: /* year */
            if (clkfmt)
                val = t->tm_year;
            else
                val = to_bcd(t->tm_year);
            break;
        default:
            val = 0;
            break;
    }
    return ((BYTE) val);
}

/*
 *	I/O handler for write clock data:
 *	under UNIX the system clock only can be set by the
 *	super user, so we do nothing here
 */
static BYTE clkd_out(BYTE data) {
    data = data;
    return ((BYTE) 0);
}

/*
 *	Convert an integer to BCD
 */
static int to_bcd(int val) {
    register int i = 0;

    while (val >= 10) {
        i += val / 10;
        i <<= 4;
        val %= 10;
    }
    i += val;
    return (i);
}

/*
 *	Calculate number of days since 1.1.1978
 *	CP/M 3 and MP/M 2 are Y2K bug fixed and can handle the date
 */
static int get_date(struct tm *t) {
    register int i;
    register int val = 0;

    for (i = 1978; i < 1900 + t->tm_year; i++) {
        val += 365;
        if (i % 4 == 0)
            val++;
    }
    val += t->tm_yday + 1;
    return (val);
}

/*
 *	I/O handler for write timer
 *	start or stop the 10ms interrupt timer
 */
static BYTE time_out(BYTE data) {
    //static struct itimerval tim;
    //	static struct sigaction newact;
     if (data == 1) {
        timer = 1;
 
        //		newact.sa_handler = int_timer;
        //		sigaction(SIGALRM, &newact, NULL);
        //tim.it_value.tv_sec = 0;
        //tim.it_value.tv_usec = 10000;
        //tim.it_interval.tv_sec = 0;
        //tim.it_interval.tv_usec = 10000;
        //      setitimer(ITIMER_REAL, &tim, NULL);
    } else {
        timer = 0;
         //		newact.sa_handler = SIG_IGN;
        //		sigaction(SIGALRM, &newact, NULL);
        //tim.it_value.tv_sec = 0;
        //tim.it_value.tv_usec = 0;
        //        setitimer(ITIMER_REAL, &tim, NULL);
    }
    return ((BYTE) 0);
}

/*
 *	I/O handler for read timer
 *	return current status of 10ms interrupt timer,
 *	1 = enabled, 0 = disabled
 */
static BYTE time_in(void) {
    return (timer);
}

/*
 *	I/O handler for write delay
 *	delay CPU for data * 10ms
 */
static BYTE delay_out(BYTE data) {
    //    struct timespec timer;
    timer10ms=0;
    while(timer10ms<data);
    //    timer.tv_sec = 0;
    //    timer.tv_nsec = (long) (10000000L * data);
    //	nanosleep(&timer, NULL);

#ifdef CNETDEBUG
    printf(". ");
#endif

    return ((BYTE) 0);
}

/*
 *	I/O handler for read delay
 *	returns 0
 */
static BYTE delay_in(void) {
    return ((BYTE) 0);
}

/*
 *	I/O handler for write hardware control:
 *	bit 0 = 1	reset CPU, MMU and reboot
 *	bit 7 = 1	abort emulation with I/O trap
 */
static BYTE hwctl_out(BYTE data) {
    if (data & 128) {
        cpu_error = IOTRAP;
        cpu_state = STOPPED;
        return ((BYTE) 0);
    }

    if (data & 1) {
        reset_system();
        return ((BYTE) 0);
    }

    return ((BYTE) 0);
}

/*
 *	I/O handler for read hardware control
 *	returns 0
 */
static BYTE hwctl_in(void) {
    return ((BYTE) 0);
}

/*
 *	I/O handler for write CPU speed low
 */
static BYTE speedl_out(BYTE data) {
    speed = data;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read CPU speed low
 */
static BYTE speedl_in(void) {
    return (f_flag & 0xff);
}

/*
 *	I/O handler for write CPU speed high
 */
static BYTE speedh_out(BYTE data) {
    speed += data << 8;
    tmax = speed * 10000;
    f_flag = speed;
    return ((BYTE) 0);
}

/*
 *	I/O handler for read CPU speed high
 */
static BYTE speedh_in(void) {
    return (f_flag >> 8);
}

void __ISR( _TIMER_2_VECTOR, ipl1) T2Interrupt( void) {
    if(timer)   int_type = INT_INT;
    timer10ms ++;
    LATBbits.LATB15 ^= 1;
    mT2ClearIntFlag();
}
/*
 *	timer interrupt causes maskerable CPU interrupt
 */
static void int_timer(int sig) {

    int_type = INT_INT;
    
}

#if defined(NETWORKING) && defined(TCPASYNC)

/*
 *	SIGIO interrupt handler
 */
static void int_io(int sig) {
    register int i;
    struct sockaddr_in fsin;
    socklen_t alen;
    struct pollfd p[NUMSOC];
    int go_away;

    for (i = 0; i < NUMSOC; i++) {
        p[i].fd = ss[i];
        p[i].events = POLLIN;
        p[i].revents = 0;
    }

    poll(p, NUMSOC, 0);

    for (i = 0; i < NUMSOC; i++) {
        if ((ss[i] != 0) && (p[i].revents)) {

            alen = sizeof (fsin);

            if (ssc[i] != 0) {
                go_away = accept(ss[i],
                        (struct sockaddr *) &fsin,
                        &alen);
                close(go_away);
                return;
            }

            if ((ssc[i] = accept(ss[i], (struct sockaddr *) &fsin,
                    &alen)) == -1) {
                perror("accept server socket");
                ssc[i] = 0;
            }

            if (ss_telnet[i]) {
                write(ssc[i], &char_mode, 3);
                write(ssc[i], &will_echo, 3);
            }

        }
    }
}
#endif
