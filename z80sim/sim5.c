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
 *	Like the function "cpu()" this one emulates multi byte opcodes
 *	starting with 0xfd
 */

#include "sim.h"
#include "simglb.h"

#ifdef FRONTPANEL
#include "../../frontpanel/frontpanel.h"
#endif

static int trap_fd(void);
static int op_popiy(void), op_pusiy(void);
static int op_jpiy(void);
static int op_exspy(void);
static int op_ldspy(void);
static int op_ldiynn(void), op_ldiyinn(void), op_ldiny(void);
static int op_adayd(void), op_acayd(void), op_suayd(void), op_scayd(void);
static int op_andyd(void), op_xoryd(void), op_oryd(void), op_cpyd(void);
static int op_decyd(void), op_incyd(void);
static int op_addyb(void), op_addyd(void), op_addys(void), op_addyy(void);
static int op_andyd(void), op_xoryd(void), op_oryd(void), op_cpyd(void);
static int op_decyd(void), op_incyd(void);
static int op_inciy(void), op_deciy(void);
static int op_ldayd(void), op_ldbyd(void), op_ldcyd(void);
static int op_lddyd(void), op_ldeyd(void);
static int op_ldhyd(void), op_ldlyd(void);
static int op_ldyda(void), op_ldydb(void), op_ldydc(void);
static int op_ldydd(void), op_ldyde(void);
static int op_ldydh(void), op_ldydl(void), op_ldydn(void);
extern int op_fdcb_handel(void);

int op_fd_handel(void)
{
	register int t;

	static int (*op_fd[256]) () = {
		trap_fd,			/* 0x00	*/
		trap_fd,			/* 0x01	*/
		trap_fd,			/* 0x02	*/
		trap_fd,			/* 0x03	*/
		trap_fd,			/* 0x04	*/
		trap_fd,			/* 0x05	*/
		trap_fd,			/* 0x06	*/
		trap_fd,			/* 0x07	*/
		trap_fd,			/* 0x08	*/
		op_addyb,			/* 0x09	*/
		trap_fd,			/* 0x0a	*/
		trap_fd,			/* 0x0b	*/
		trap_fd,			/* 0x0c	*/
		trap_fd,			/* 0x0d	*/
		trap_fd,			/* 0x0e	*/
		trap_fd,			/* 0x0f	*/
		trap_fd,			/* 0x10	*/
		trap_fd,			/* 0x11	*/
		trap_fd,			/* 0x12	*/
		trap_fd,			/* 0x13	*/
		trap_fd,			/* 0x14	*/
		trap_fd,			/* 0x15	*/
		trap_fd,			/* 0x16	*/
		trap_fd,			/* 0x17	*/
		trap_fd,			/* 0x18	*/
		op_addyd,			/* 0x19	*/
		trap_fd,			/* 0x1a	*/
		trap_fd,			/* 0x1b	*/
		trap_fd,			/* 0x1c	*/
		trap_fd,			/* 0x1d	*/
		trap_fd,			/* 0x1e	*/
		trap_fd,			/* 0x1f	*/
		trap_fd,			/* 0x20	*/
		op_ldiynn,			/* 0x21	*/
		op_ldiny,			/* 0x22	*/
		op_inciy,			/* 0x23	*/
		trap_fd,			/* 0x24	*/
		trap_fd,			/* 0x25	*/
		trap_fd,			/* 0x26	*/
		trap_fd,			/* 0x27	*/
		trap_fd,			/* 0x28	*/
		op_addyy,			/* 0x29	*/
		op_ldiyinn,			/* 0x2a	*/
		op_deciy,			/* 0x2b	*/
		trap_fd,			/* 0x2c	*/
		trap_fd,			/* 0x2d	*/
		trap_fd,			/* 0x2e	*/
		trap_fd,			/* 0x2f	*/
		trap_fd,			/* 0x30	*/
		trap_fd,			/* 0x31	*/
		trap_fd,			/* 0x32	*/
		trap_fd,			/* 0x33	*/
		op_incyd,			/* 0x34	*/
		op_decyd,			/* 0x35	*/
		op_ldydn,			/* 0x36	*/
		trap_fd,			/* 0x37	*/
		trap_fd,			/* 0x38	*/
		op_addys,			/* 0x39	*/
		trap_fd,			/* 0x3a	*/
		trap_fd,			/* 0x3b	*/
		trap_fd,			/* 0x3c	*/
		trap_fd,			/* 0x3d	*/
		trap_fd,			/* 0x3e	*/
		trap_fd,			/* 0x3f	*/
		trap_fd,			/* 0x40	*/
		trap_fd,			/* 0x41	*/
		trap_fd,			/* 0x42	*/
		trap_fd,			/* 0x43	*/
		trap_fd,			/* 0x44	*/
		trap_fd,			/* 0x45	*/
		op_ldbyd,			/* 0x46	*/
		trap_fd,			/* 0x47	*/
		trap_fd,			/* 0x48	*/
		trap_fd,			/* 0x49	*/
		trap_fd,			/* 0x4a	*/
		trap_fd,			/* 0x4b	*/
		trap_fd,			/* 0x4c	*/
		trap_fd,			/* 0x4d	*/
		op_ldcyd,			/* 0x4e	*/
		trap_fd,			/* 0x4f	*/
		trap_fd,			/* 0x50	*/
		trap_fd,			/* 0x51	*/
		trap_fd,			/* 0x52	*/
		trap_fd,			/* 0x53	*/
		trap_fd,			/* 0x54	*/
		trap_fd,			/* 0x55	*/
		op_lddyd,			/* 0x56	*/
		trap_fd,			/* 0x57	*/
		trap_fd,			/* 0x58	*/
		trap_fd,			/* 0x59	*/
		trap_fd,			/* 0x5a	*/
		trap_fd,			/* 0x5b	*/
		trap_fd,			/* 0x5c	*/
		trap_fd,			/* 0x5d	*/
		op_ldeyd,			/* 0x5e	*/
		trap_fd,			/* 0x5f	*/
		trap_fd,			/* 0x60	*/
		trap_fd,			/* 0x61	*/
		trap_fd,			/* 0x62	*/
		trap_fd,			/* 0x63	*/
		trap_fd,			/* 0x64	*/
		trap_fd,			/* 0x65	*/
		op_ldhyd,			/* 0x66	*/
		trap_fd,			/* 0x67	*/
		trap_fd,			/* 0x68	*/
		trap_fd,			/* 0x69	*/
		trap_fd,			/* 0x6a	*/
		trap_fd,			/* 0x6b	*/
		trap_fd,			/* 0x6c	*/
		trap_fd,			/* 0x6d	*/
		op_ldlyd,			/* 0x6e	*/
		trap_fd,			/* 0x6f	*/
		op_ldydb,			/* 0x70	*/
		op_ldydc,			/* 0x71	*/
		op_ldydd,			/* 0x72	*/
		op_ldyde,			/* 0x73	*/
		op_ldydh,			/* 0x74	*/
		op_ldydl,			/* 0x75	*/
		trap_fd,			/* 0x76	*/
		op_ldyda,			/* 0x77	*/
		trap_fd,			/* 0x78	*/
		trap_fd,			/* 0x79	*/
		trap_fd,			/* 0x7a	*/
		trap_fd,			/* 0x7b	*/
		trap_fd,			/* 0x7c	*/
		trap_fd,			/* 0x7d	*/
		op_ldayd,			/* 0x7e	*/
		trap_fd,			/* 0x7f	*/
		trap_fd,			/* 0x80	*/
		trap_fd,			/* 0x81	*/
		trap_fd,			/* 0x82	*/
		trap_fd,			/* 0x83	*/
		trap_fd,			/* 0x84	*/
		trap_fd,			/* 0x85	*/
		op_adayd,			/* 0x86	*/
		trap_fd,			/* 0x87	*/
		trap_fd,			/* 0x88	*/
		trap_fd,			/* 0x89	*/
		trap_fd,			/* 0x8a	*/
		trap_fd,			/* 0x8b	*/
		trap_fd,			/* 0x8c	*/
		trap_fd,			/* 0x8d	*/
		op_acayd,			/* 0x8e	*/
		trap_fd,			/* 0x8f	*/
		trap_fd,			/* 0x90	*/
		trap_fd,			/* 0x91	*/
		trap_fd,			/* 0x92	*/
		trap_fd,			/* 0x93	*/
		trap_fd,			/* 0x94	*/
		trap_fd,			/* 0x95	*/
		op_suayd,			/* 0x96	*/
		trap_fd,			/* 0x97	*/
		trap_fd,			/* 0x98	*/
		trap_fd,			/* 0x99	*/
		trap_fd,			/* 0x9a	*/
		trap_fd,			/* 0x9b	*/
		trap_fd,			/* 0x9c	*/
		trap_fd,			/* 0x9d	*/
		op_scayd,			/* 0x9e	*/
		trap_fd,			/* 0x9f	*/
		trap_fd,			/* 0xa0	*/
		trap_fd,			/* 0xa1	*/
		trap_fd,			/* 0xa2	*/
		trap_fd,			/* 0xa3	*/
		trap_fd,			/* 0xa4	*/
		trap_fd,			/* 0xa5	*/
		op_andyd,			/* 0xa6	*/
		trap_fd,			/* 0xa7	*/
		trap_fd,			/* 0xa8	*/
		trap_fd,			/* 0xa9	*/
		trap_fd,			/* 0xaa	*/
		trap_fd,			/* 0xab	*/
		trap_fd,			/* 0xac	*/
		trap_fd,			/* 0xad	*/
		op_xoryd,			/* 0xae	*/
		trap_fd,			/* 0xaf	*/
		trap_fd,			/* 0xb0	*/
		trap_fd,			/* 0xb1	*/
		trap_fd,			/* 0xb2	*/
		trap_fd,			/* 0xb3	*/
		trap_fd,			/* 0xb4	*/
		trap_fd,			/* 0xb5	*/
		op_oryd,			/* 0xb6	*/
		trap_fd,			/* 0xb7	*/
		trap_fd,			/* 0xb8	*/
		trap_fd,			/* 0xb9	*/
		trap_fd,			/* 0xba	*/
		trap_fd,			/* 0xbb	*/
		trap_fd,			/* 0xbc	*/
		trap_fd,			/* 0xbd	*/
		op_cpyd,			/* 0xbe	*/
		trap_fd,			/* 0xbf	*/
		trap_fd,			/* 0xc0	*/
		trap_fd,			/* 0xc1	*/
		trap_fd,			/* 0xc2	*/
		trap_fd,			/* 0xc3	*/
		trap_fd,			/* 0xc4	*/
		trap_fd,			/* 0xc5	*/
		trap_fd,			/* 0xc6	*/
		trap_fd,			/* 0xc7	*/
		trap_fd,			/* 0xc8	*/
		trap_fd,			/* 0xc9	*/
		trap_fd,			/* 0xca	*/
		op_fdcb_handel,			/* 0xcb	*/
		trap_fd,			/* 0xcc	*/
		trap_fd,			/* 0xcd	*/
		trap_fd,			/* 0xce	*/
		trap_fd,			/* 0xcf	*/
		trap_fd,			/* 0xd0	*/
		trap_fd,			/* 0xd1	*/
		trap_fd,			/* 0xd2	*/
		trap_fd,			/* 0xd3	*/
		trap_fd,			/* 0xd4	*/
		trap_fd,			/* 0xd5	*/
		trap_fd,			/* 0xd6	*/
		trap_fd,			/* 0xd7	*/
		trap_fd,			/* 0xd8	*/
		trap_fd,			/* 0xd9	*/
		trap_fd,			/* 0xda	*/
		trap_fd,			/* 0xdb	*/
		trap_fd,			/* 0xdc	*/
		trap_fd,			/* 0xdd	*/
		trap_fd,			/* 0xde	*/
		trap_fd,			/* 0xdf	*/
		trap_fd,			/* 0xe0	*/
		op_popiy,			/* 0xe1	*/
		trap_fd,			/* 0xe2	*/
		op_exspy,			/* 0xe3	*/
		trap_fd,			/* 0xe4	*/
		op_pusiy,			/* 0xe5	*/
		trap_fd,			/* 0xe6	*/
		trap_fd,			/* 0xe7	*/
		trap_fd,			/* 0xe8	*/
		op_jpiy,			/* 0xe9	*/
		trap_fd,			/* 0xea	*/
		trap_fd,			/* 0xeb	*/
		trap_fd,			/* 0xec	*/
		trap_fd,			/* 0xed	*/
		trap_fd,			/* 0xee	*/
		trap_fd,			/* 0xef	*/
		trap_fd,			/* 0xf0	*/
		trap_fd,			/* 0xf1	*/
		trap_fd,			/* 0xf2	*/
		trap_fd,			/* 0xf3	*/
		trap_fd,			/* 0xf4	*/
		trap_fd,			/* 0xf5	*/
		trap_fd,			/* 0xf6	*/
		trap_fd,			/* 0xf7	*/
		trap_fd,			/* 0xf8	*/
		op_ldspy,			/* 0xf9	*/
		trap_fd,			/* 0xfa	*/
		trap_fd,			/* 0xfb	*/
		trap_fd,			/* 0xfc	*/
		trap_fd,			/* 0xfd	*/
		trap_fd,			/* 0xfe	*/
		trap_fd				/* 0xff	*/
	};

#ifdef WANT_TIM
	t = (*op_fd[*PC++]) ();		/* execute next opcode */
#else
	(*op_fd[*PC++]) ();
#endif

#ifdef WANT_PCC
		if (PC > ram + 65535)	/* correct PC overrun */
			PC = ram;
#endif

	return(t);
}

/*
 *	This function traps all illegal opcodes following the
 *	initial 0xfd of a multi byte opcode.
 */
static int trap_fd(void)
{
	cpu_error = OPTRAP2;
	cpu_state = STOPPED;
	return(0);
}

static int op_popiy(void)		/* POP IY */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_STACK | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
#ifdef WANT_SPC
	if (STACK <= ram)
		STACK =	ram + 65536L;
#endif
	IY = *STACK++;
#ifdef WANT_SPC
	if (STACK <= ram)
		STACK =	ram + 65536L;
#endif
	IY += *STACK++ << 8;
	return(14);
}

static int op_pusiy(void)		/* PUSH IY */
{
#ifdef BUS_8080
	cpu_bus = CPU_STACK;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
#ifdef WANT_SPC
	if (STACK <= ram)
		STACK =	ram + 65536L;
#endif
	*--STACK = IY >> 8;
#ifdef WANT_SPC
	if (STACK <= ram)
		STACK =	ram + 65536L;
#endif
	*--STACK = IY;
	return(15);
}

static int op_jpiy(void)		/* JP (IY) */
{
	PC = ram + IY;
	return(8);
}

static int op_exspy(void)		/* EX (SP),IY */
{
	register int i;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_STACK | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	i = *STACK + (*(STACK +	1) << 8);
	*STACK = IY;
	*(STACK	+ 1) = IY >> 8;
	IY = i;
#ifdef BUS_8080
	cpu_bus = CPU_STACK;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(23);
}

static int op_ldspy(void)		/* LD SP,IY */
{
	STACK =	ram + IY;
	return(10);
}

static int op_ldiynn(void)		/* LD IY,nn */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	IY = *PC++;
	IY += *PC++ << 8;
	return(14);
}

static int op_ldiyinn(void)		/* LD IY,(nn) */
{
	register BYTE *p;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	p = ram	+ *PC++;
	p += *PC++ << 8;
	IY = *p++;
	IY += *p << 8;
	return(20);
}

static int op_ldiny(void)		/* LD (nn),IY */
{
	register BYTE *p;

#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	p = ram	+ *PC++;
	p += *PC++ << 8;
	*p++ = IY;
	*p = IY	>> 8;
	return(20);
}

static int op_adayd(void)		/* ADD A,(IY+d) */
{
	register int i;
	register BYTE P;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	P = *(ram + IY + (signed char)	*PC++);
	((A & 0xf) + (P	& 0xf) > 0xf) ?	(F |= H_FLAG) :	(F &= ~H_FLAG);
	(A + P > 255) ?	(F |= C_FLAG) :	(F &= ~C_FLAG);
	A = i =	(signed char) A + (signed char) P;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F &= ~N_FLAG;
	return(19);
}

static int op_acayd(void)		/* ADC A,(IY+d) */
{
	register int i,	carry;
	register BYTE P;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	carry =	(F & C_FLAG) ? 1 : 0;
	P = *(ram + IY + (signed char)	*PC++);
	((A & 0xf) + (P	& 0xf) + carry > 0xf) ?	(F |= H_FLAG) :	(F &= ~H_FLAG);
	(A + P + carry > 255) ?	(F |= C_FLAG) :	(F &= ~C_FLAG);
	A = i =	(signed char) A + (signed char) P + carry;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F &= ~N_FLAG;
	return(19);
}

static int op_suayd(void)		/* SUB A,(IY+d) */
{
	register int i;
	register BYTE P;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	P = *(ram + IY + (signed char)	*PC++);
	((P & 0xf) > (A	& 0xf))	? (F |=	H_FLAG)	: (F &=	~H_FLAG);
	(P > A)	? (F |=	C_FLAG)	: (F &=	~C_FLAG);
	A = i =	(signed char) A - (signed char) P;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F |= N_FLAG;
	return(19);
}

static int op_scayd(void)		/* SBC A,(IY+d) */
{
	register int i,	carry;
	register BYTE P;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	carry =	(F & C_FLAG) ? 1 : 0;
	P = *(ram + IY + (signed char)	*PC++);
	((P & 0xf) + carry > (A	& 0xf))	? (F |=	H_FLAG)	: (F &=	~H_FLAG);
	(P + carry > A)	? (F |=	C_FLAG)	: (F &=	~C_FLAG);
	A = i =	(signed char) A - (signed char) P - carry;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F |= N_FLAG;
	return(19);
}

static int op_andyd(void)		/* AND (IY+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	A &= *(ram + IY	+ (signed char) *PC++);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F |= H_FLAG;
	(parrity[A]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	F &= ~(N_FLAG |	C_FLAG);
	return(19);
}

static int op_xoryd(void)		/* XOR (IY+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	A ^= *(ram + IY	+ (signed char) *PC++);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(parrity[A]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	F &= ~(H_FLAG |	N_FLAG | C_FLAG);
	return(19);
}

static int op_oryd(void)		/* OR (IY+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	A |= *(ram + IY	+ (signed char) *PC++);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(parrity[A]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	F &= ~(H_FLAG |	N_FLAG | C_FLAG);
	return(19);
}

static int op_cpyd(void)		/* CP (IY+d) */
{
	register int i;
	register BYTE P;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	P = *(ram + IY + (signed char)	*PC++);
	((P & 0xf) > (A	& 0xf))	? (F |=	H_FLAG)	: (F &=	~H_FLAG);
	(P > A)	? (F |=	C_FLAG)	: (F &=	~C_FLAG);
	i = (signed char) A - (signed char) P;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(i) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F |= N_FLAG;
	return(19);
}

static int op_incyd(void)		/* INC (IY+d) */
{
	register BYTE *p;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	p = ram	+ IY + (signed char) *PC++;
	((*p & 0xf) + 1	> 0xf) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	(*p)++;
	(*p == 128) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(*p & 128) ? (F	|= S_FLAG) : (F	&= ~S_FLAG);
	(*p) ? (F &= ~Z_FLAG) :	(F |= Z_FLAG);
	F &= ~N_FLAG;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(23);
}

static int op_decyd(void)		/* DEC (IY+d) */
{
	register BYTE *p;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	p = ram	+ IY + (signed char) *PC++;
	(((*p - 1) & 0xf) == 0xf) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	(*p)--;
	(*p == 127) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(*p & 128) ? (F	|= S_FLAG) : (F	&= ~S_FLAG);
	(*p) ? (F &= ~Z_FLAG) :	(F |= Z_FLAG);
	F |= N_FLAG;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(23);
}

static int op_addyb(void)		/* ADD IY,BC */
{
	register int carry;
	BYTE iyl = IY & 0xff;
	BYTE iyh = IY >> 8;
	
	carry = (iyl + C > 255) ? 1 : 0;
	iyl += C;
	((iyh & 0xf) + (B & 0xf) + carry > 0xf) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	(iyh + B + carry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	iyh += B + carry;
	IY = (iyh << 8) + iyl;
	F &= ~N_FLAG;
	return(15);
}

static int op_addyd(void)		/* ADD IY,DE */
{
	register int carry;
	BYTE iyl = IY & 0xff;
	BYTE iyh = IY >> 8;
	
	carry = (iyl + E > 255) ? 1 : 0;
	iyl += E;
	((iyh & 0xf) + (D & 0xf) + carry > 0xf) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	(iyh + D + carry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	iyh += D + carry;
	IY = (iyh << 8) + iyl;
	F &= ~N_FLAG;
	return(15);
}

static int op_addys(void)		/* ADD IY,SP */
{
	register int carry;
	BYTE iyl = IY & 0xff;
	BYTE iyh = IY >> 8;
	BYTE spl = (STACK - ram) & 0xff;
	BYTE sph = (STACK - ram) >> 8;
	
	carry = (iyl + spl > 255) ? 1 : 0;
	iyl += spl;
	((iyh & 0xf) + (sph & 0xf) + carry > 0xf) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	(iyh + sph + carry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	iyh += sph + carry;
	IY = (iyh << 8) + iyl;
	F &= ~N_FLAG;
	return(15);
}

static int op_addyy(void)		/* ADD IY,IY */
{
	register int carry;
	BYTE iyl = IY & 0xff;
	BYTE iyh = IY >> 8;
	
	carry = (iyl << 1 > 255) ? 1 : 0;
	iyl <<= 1;
	((iyh & 0xf) + (iyh & 0xf) + carry > 0xf) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	(iyh + iyh + carry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	iyh += iyh + carry;
	IY = (iyh << 8) + iyl;
	F &= ~N_FLAG;
	return(15);
}

static int op_inciy(void)		/* INC IY */
{
	IY++;
	return(10);
}

static int op_deciy(void)		/* DEC IY */
{
	IY--;
	return(10);
}

static int op_ldayd(void)		/* LD A,(IY+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	A = *(IY + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldbyd(void)		/* LD B,(IY+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	B = *(IY + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldcyd(void)		/* LD C,(IY+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	C = *(IY + (signed char) *PC++	+ ram);
	return(19);
}

static int op_lddyd(void)		/* LD D,(IY+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	D = *(IY + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldeyd(void)		/* LD E,(IY+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	E = *(IY + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldhyd(void)		/* LD H,(IY+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	H = *(IY + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldlyd(void)		/* LD L,(IY+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	L = *(IY + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldyda(void)		/* LD (IY+d),A */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IY + (signed char) *PC++ + ram) = A;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldydb(void)		/* LD (IY+d),B */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IY + (signed char) *PC++ + ram) = B;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldydc(void)		/* LD (IY+d),C */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IY + (signed char) *PC++ + ram) = C;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldydd(void)		/* LD (IY+d),D */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IY + (signed char) *PC++ + ram) = D;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldyde(void)		/* LD (IY+d),E */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IY + (signed char) *PC++ + ram) = E;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldydh(void)		/* LD (IY+d),H */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IY + (signed char) *PC++ + ram) = H;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldydl(void)		/* LD (IY+d),L */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IY + (signed char) *PC++ + ram) = L;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldydn(void)		/* LD (IY+d),n */
{
	register int d;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	d = (signed char) *PC++;
	*(IY + d + ram)	= *PC++;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}
