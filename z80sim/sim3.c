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
 *	starting with 0xdd
 */

#include "sim.h"
#include "simglb.h"

#ifdef FRONTPANEL
#include "../../frontpanel/frontpanel.h"
#endif

static int trap_dd(void);
static int op_popix(void), op_pusix(void);
static int op_jpix(void);
static int op_exspx(void);
static int op_ldspx(void);
static int op_ldixnn(void), op_ldixinn(void), op_ldinx(void);
static int op_adaxd(void), op_acaxd(void), op_suaxd(void), op_scaxd(void);
static int op_andxd(void), op_xorxd(void), op_orxd(void), op_cpxd(void);
static int op_decxd(void), op_incxd(void);
static int op_addxb(void), op_addxd(void), op_addxs(void), op_addxx(void);
static int op_incix(void), op_decix(void);
static int op_ldaxd(void), op_ldbxd(void), op_ldcxd(void);
static int op_lddxd(void), op_ldexd(void);
static int op_ldhxd(void), op_ldlxd(void);
static int op_ldxda(void), op_ldxdb(void), op_ldxdc(void);
static int op_ldxdd(void), op_ldxde(void);
static int op_ldxdh(void), op_ldxdl(void), op_ldxdn(void);
extern int op_ddcb_handel(void);

#ifdef Z80_UNDOC
static int op_undoc_ldixl(void);
static int op_undoc_cpixl(void);
#endif

long op_dd_handel(void)
{
	register int t;

	static int (*op_dd[256]) (void) = {
		trap_dd,			/* 0x00	*/
		trap_dd,			/* 0x01	*/
		trap_dd,			/* 0x02	*/
		trap_dd,			/* 0x03	*/
		trap_dd,			/* 0x04	*/
		trap_dd,			/* 0x05	*/
		trap_dd,			/* 0x06	*/
		trap_dd,			/* 0x07	*/
		trap_dd,			/* 0x08	*/
		op_addxb,			/* 0x09	*/
		trap_dd,			/* 0x0a	*/
		trap_dd,			/* 0x0b	*/
		trap_dd,			/* 0x0c	*/
		trap_dd,			/* 0x0d	*/
		trap_dd,			/* 0x0e	*/
		trap_dd,			/* 0x0f	*/
		trap_dd,			/* 0x10	*/
		trap_dd,			/* 0x11	*/
		trap_dd,			/* 0x12	*/
		trap_dd,			/* 0x13	*/
		trap_dd,			/* 0x14	*/
		trap_dd,			/* 0x15	*/
		trap_dd,			/* 0x16	*/
		trap_dd,			/* 0x17	*/
		trap_dd,			/* 0x18	*/
		op_addxd,			/* 0x19	*/
		trap_dd,			/* 0x1a	*/
		trap_dd,			/* 0x1b	*/
		trap_dd,			/* 0x1c	*/
		trap_dd,			/* 0x1d	*/
		trap_dd,			/* 0x1e	*/
		trap_dd,			/* 0x1f	*/
		trap_dd,			/* 0x20	*/
		op_ldixnn,			/* 0x21	*/
		op_ldinx,			/* 0x22	*/
		op_incix,			/* 0x23	*/
		trap_dd,			/* 0x24	*/
		trap_dd,			/* 0x25	*/
		trap_dd,			/* 0x26	*/
		trap_dd,			/* 0x27	*/
		trap_dd,			/* 0x28	*/
		op_addxx,			/* 0x29	*/
		op_ldixinn,			/* 0x2a	*/
		op_decix,			/* 0x2b	*/
		trap_dd,			/* 0x2c	*/
		trap_dd,			/* 0x2d	*/
		trap_dd,			/* 0x2e	*/
		trap_dd,			/* 0x2f	*/
		trap_dd,			/* 0x30	*/
		trap_dd,			/* 0x31	*/
		trap_dd,			/* 0x32	*/
		trap_dd,			/* 0x33	*/
		op_incxd,			/* 0x34	*/
		op_decxd,			/* 0x35	*/
		op_ldxdn,			/* 0x36	*/
		trap_dd,			/* 0x37	*/
		trap_dd,			/* 0x38	*/
		op_addxs,			/* 0x39	*/
		trap_dd,			/* 0x3a	*/
		trap_dd,			/* 0x3b	*/
		trap_dd,			/* 0x3c	*/
		trap_dd,			/* 0x3d	*/
		trap_dd,			/* 0x3e	*/
		trap_dd,			/* 0x3f	*/
		trap_dd,			/* 0x40	*/
		trap_dd,			/* 0x41	*/
		trap_dd,			/* 0x42	*/
		trap_dd,			/* 0x43	*/
		trap_dd,			/* 0x44	*/
		trap_dd,			/* 0x45	*/
		op_ldbxd,			/* 0x46	*/
		trap_dd,			/* 0x47	*/
		trap_dd,			/* 0x48	*/
		trap_dd,			/* 0x49	*/
		trap_dd,			/* 0x4a	*/
		trap_dd,			/* 0x4b	*/
		trap_dd,			/* 0x4c	*/
		trap_dd,			/* 0x4d	*/
		op_ldcxd,			/* 0x4e	*/
		trap_dd,			/* 0x4f	*/
		trap_dd,			/* 0x50	*/
		trap_dd,			/* 0x51	*/
		trap_dd,			/* 0x52	*/
		trap_dd,			/* 0x53	*/
		trap_dd,			/* 0x54	*/
		trap_dd,			/* 0x55	*/
		op_lddxd,			/* 0x56	*/
		trap_dd,			/* 0x57	*/
		trap_dd,			/* 0x58	*/
		trap_dd,			/* 0x59	*/
		trap_dd,			/* 0x5a	*/
		trap_dd,			/* 0x5b	*/
		trap_dd,			/* 0x5c	*/
		trap_dd,			/* 0x5d	*/
		op_ldexd,			/* 0x5e	*/
		trap_dd,			/* 0x5f	*/
		trap_dd,			/* 0x60	*/
		trap_dd,			/* 0x61	*/
		trap_dd,			/* 0x62	*/
		trap_dd,			/* 0x63	*/
		trap_dd,			/* 0x64	*/
		trap_dd,			/* 0x65	*/
		op_ldhxd,			/* 0x66	*/
		trap_dd,			/* 0x67	*/
		trap_dd,			/* 0x68	*/
		trap_dd,			/* 0x69	*/
		trap_dd,			/* 0x6a	*/
		trap_dd,			/* 0x6b	*/
		trap_dd,			/* 0x6c	*/
		trap_dd,			/* 0x6d	*/
		op_ldlxd,			/* 0x6e	*/
#ifndef Z80_UNDOC
		trap_dd,			/* 0x6f	*/
#else
		op_undoc_ldixl,
#endif
		op_ldxdb,			/* 0x70	*/
		op_ldxdc,			/* 0x71	*/
		op_ldxdd,			/* 0x72	*/
		op_ldxde,			/* 0x73	*/
		op_ldxdh,			/* 0x74	*/
		op_ldxdl,			/* 0x75	*/
		trap_dd,			/* 0x76	*/
		op_ldxda,			/* 0x77	*/
		trap_dd,			/* 0x78	*/
		trap_dd,			/* 0x79	*/
		trap_dd,			/* 0x7a	*/
		trap_dd,			/* 0x7b	*/
		trap_dd,			/* 0x7c	*/
		trap_dd,			/* 0x7d	*/
		op_ldaxd,			/* 0x7e	*/
		trap_dd,			/* 0x7f	*/
		trap_dd,			/* 0x80	*/
		trap_dd,			/* 0x81	*/
		trap_dd,			/* 0x82	*/
		trap_dd,			/* 0x83	*/
		trap_dd,			/* 0x84	*/
		trap_dd,			/* 0x85	*/
		op_adaxd,			/* 0x86	*/
		trap_dd,			/* 0x87	*/
		trap_dd,			/* 0x88	*/
		trap_dd,			/* 0x89	*/
		trap_dd,			/* 0x8a	*/
		trap_dd,			/* 0x8b	*/
		trap_dd,			/* 0x8c	*/
		trap_dd,			/* 0x8d	*/
		op_acaxd,			/* 0x8e	*/
		trap_dd,			/* 0x8f	*/
		trap_dd,			/* 0x90	*/
		trap_dd,			/* 0x91	*/
		trap_dd,			/* 0x92	*/
		trap_dd,			/* 0x93	*/
		trap_dd,			/* 0x94	*/
		trap_dd,			/* 0x95	*/
		op_suaxd,			/* 0x96	*/
		trap_dd,			/* 0x97	*/
		trap_dd,			/* 0x98	*/
		trap_dd,			/* 0x99	*/
		trap_dd,			/* 0x9a	*/
		trap_dd,			/* 0x9b	*/
		trap_dd,			/* 0x9c	*/
		trap_dd,			/* 0x9d	*/
		op_scaxd,			/* 0x9e	*/
		trap_dd,			/* 0x9f	*/
		trap_dd,			/* 0xa0	*/
		trap_dd,			/* 0xa1	*/
		trap_dd,			/* 0xa2	*/
		trap_dd,			/* 0xa3	*/
		trap_dd,			/* 0xa4	*/
		trap_dd,			/* 0xa5	*/
		op_andxd,			/* 0xa6	*/
		trap_dd,			/* 0xa7	*/
		trap_dd,			/* 0xa8	*/
		trap_dd,			/* 0xa9	*/
		trap_dd,			/* 0xaa	*/
		trap_dd,			/* 0xab	*/
		trap_dd,			/* 0xac	*/
		trap_dd,			/* 0xad	*/
		op_xorxd,			/* 0xae	*/
		trap_dd,			/* 0xaf	*/
		trap_dd,			/* 0xb0	*/
		trap_dd,			/* 0xb1	*/
		trap_dd,			/* 0xb2	*/
		trap_dd,			/* 0xb3	*/
		trap_dd,			/* 0xb4	*/
		trap_dd,			/* 0xb5	*/
		op_orxd,			/* 0xb6	*/
		trap_dd,			/* 0xb7	*/
		trap_dd,			/* 0xb8	*/
		trap_dd,			/* 0xb9	*/
		trap_dd,			/* 0xba	*/
		trap_dd,			/* 0xbb	*/
		trap_dd,			/* 0xbc	*/
#ifndef Z80_UNDOC
		trap_dd,			/* 0xbd	*/
#else
		op_undoc_cpixl,
#endif
		op_cpxd,			/* 0xbe	*/
		trap_dd,			/* 0xbf	*/
		trap_dd,			/* 0xc0	*/
		trap_dd,			/* 0xc1	*/
		trap_dd,			/* 0xc2	*/
		trap_dd,			/* 0xc3	*/
		trap_dd,			/* 0xc4	*/
		trap_dd,			/* 0xc5	*/
		trap_dd,			/* 0xc6	*/
		trap_dd,			/* 0xc7	*/
		trap_dd,			/* 0xc8	*/
		trap_dd,			/* 0xc9	*/
		trap_dd,			/* 0xca	*/
		op_ddcb_handel,			/* 0xcb	*/
		trap_dd,			/* 0xcc	*/
		trap_dd,			/* 0xcd	*/
		trap_dd,			/* 0xce	*/
		trap_dd,			/* 0xcf	*/
		trap_dd,			/* 0xd0	*/
		trap_dd,			/* 0xd1	*/
		trap_dd,			/* 0xd2	*/
		trap_dd,			/* 0xd3	*/
		trap_dd,			/* 0xd4	*/
		trap_dd,			/* 0xd5	*/
		trap_dd,			/* 0xd6	*/
		trap_dd,			/* 0xd7	*/
		trap_dd,			/* 0xd8	*/
		trap_dd,			/* 0xd9	*/
		trap_dd,			/* 0xda	*/
		trap_dd,			/* 0xdb	*/
		trap_dd,			/* 0xdc	*/
		trap_dd,			/* 0xdd	*/
		trap_dd,			/* 0xde	*/
		trap_dd,			/* 0xdf	*/
		trap_dd,			/* 0xe0	*/
		op_popix,			/* 0xe1	*/
		trap_dd,			/* 0xe2	*/
		op_exspx,			/* 0xe3	*/
		trap_dd,			/* 0xe4	*/
		op_pusix,			/* 0xe5	*/
		trap_dd,			/* 0xe6	*/
		trap_dd,			/* 0xe7	*/
		trap_dd,			/* 0xe8	*/
		op_jpix,			/* 0xe9	*/
		trap_dd,			/* 0xea	*/
		trap_dd,			/* 0xeb	*/
		trap_dd,			/* 0xec	*/
		trap_dd,			/* 0xed	*/
		trap_dd,			/* 0xee	*/
		trap_dd,			/* 0xef	*/
		trap_dd,			/* 0xf0	*/
		trap_dd,			/* 0xf1	*/
		trap_dd,			/* 0xf2	*/
		trap_dd,			/* 0xf3	*/
		trap_dd,			/* 0xf4	*/
		trap_dd,			/* 0xf5	*/
		trap_dd,			/* 0xf6	*/
		trap_dd,			/* 0xf7	*/
		trap_dd,			/* 0xf8	*/
		op_ldspx,			/* 0xf9	*/
		trap_dd,			/* 0xfa	*/
		trap_dd,			/* 0xfb	*/
		trap_dd,			/* 0xfc	*/
		trap_dd,			/* 0xfd	*/
		trap_dd,			/* 0xfe	*/
		trap_dd				/* 0xff	*/
	};


#ifdef WANT_TIM
	t = (*op_dd[*PC++]) ();		/* execute next opcode */
#else
	(*op_dd[*PC++]) ();
#endif

#ifdef WANT_PCC
		if (PC > ram + 65535)	/* correct PC overrun */
			PC = ram;
#endif

	return(t);
}

/*
 *	This function traps all illegal opcodes following the
 *	initial 0xdd of a multi byte opcode.
 */
static int trap_dd(void)
{
	cpu_error = OPTRAP2;
	cpu_state = STOPPED;
	return(0);
}

static int op_popix(void)		/* POP IX */
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
	IX = *STACK++;
#ifdef WANT_SPC
	if (STACK <= ram)
		STACK =	ram + 65536L;
#endif
	IX += *STACK++ << 8;
	return(14);
}

static int op_pusix(void)		/* PUSH IX */
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
	*--STACK = IX >> 8;
#ifdef WANT_SPC
	if (STACK <= ram)
		STACK =	ram + 65536L;
#endif
	*--STACK = IX;
	return(15);
}

static int op_jpix(void)		/* JP (IX)	*/
{
	PC = ram + IX;
	return(8);
}

static int op_exspx(void)		/* EX (SP),IX */
{
	register int i;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_STACK | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	i = *STACK + (*(STACK +	1) << 8);
	*STACK = IX;
	*(STACK	+ 1) = IX >> 8;
	IX = i;
#ifdef BUS_8080
	cpu_bus = CPU_STACK;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(23);
}

static int op_ldspx(void)		/* LD SP,IX */
{
	STACK =	ram + IX;
	return(10);
}

static int op_ldixnn(void)		/* LD IX,nn */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	IX = *PC++;
	IX += *PC++ << 8;
	return(14);
}

static int op_ldixinn(void)		/* LD IX,(nn) */
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
	IX = *p++;
	IX += *p << 8;
	return(20);
}

static int op_ldinx(void)		/* LD (nn),IX */
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
	*p++ = IX;
	*p = IX	>> 8;
	return(20);
}

static int op_adaxd(void)		/* ADD A,(IX+d) */
{
	register int i;
	register BYTE P;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	P = *(ram + IX + (signed char)	*PC++);
	((A & 0xf) + (P	& 0xf) > 0xf) ?	(F |= H_FLAG) :	(F &= ~H_FLAG);
	(A + P > 255) ?	(F |= C_FLAG) :	(F &= ~C_FLAG);
	A = i =	(signed char) A + (signed char) P;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F &= ~N_FLAG;
	return(19);
}

static int op_acaxd(void)		/* ADC A,(IX+d) */
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
	P = *(ram + IX + (signed char)	*PC++);
	((A & 0xf) + (P	& 0xf) + carry > 0xf) ?	(F |= H_FLAG) :	(F &= ~H_FLAG);
	(A + P + carry > 255) ?	(F |= C_FLAG) :	(F &= ~C_FLAG);
	A = i =	(signed char) A + (signed char) P + carry;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F &= ~N_FLAG;
	return(19);
}

static int op_suaxd(void)		/* SUB A,(IX+d) */
{
	register int i;
	register BYTE P;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	P = *(ram + IX + (signed char)	*PC++);
	((P & 0xf) > (A	& 0xf))	? (F |=	H_FLAG)	: (F &=	~H_FLAG);
	(P > A)	? (F |=	C_FLAG)	: (F &=	~C_FLAG);
	A = i =	(signed char) A - (signed char) P;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F |= N_FLAG;
	return(19);
}

static int op_scaxd(void)		/* SBC A,(IX+d) */
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
	P = *(ram + IX + (signed char)	*PC++);
	((P & 0xf) + carry > (A	& 0xf))	? (F |=	H_FLAG)	: (F &=	~H_FLAG);
	(P + carry > A)	? (F |=	C_FLAG)	: (F &=	~C_FLAG);
	A = i =	(signed char) A - (signed char) P - carry;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F |= N_FLAG;
	return(19);
}

static int op_andxd(void)		/* AND (IX+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	A &= *(ram + IX	+ (signed char) *PC++);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F |= H_FLAG;
	(parrity[A]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	F &= ~(N_FLAG |	C_FLAG);
	return(19);
}

static int op_xorxd(void)		/* XOR (IX+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	A ^= *(ram + IX	+ (signed char) *PC++);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(parrity[A]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	F &= ~(H_FLAG |	N_FLAG | C_FLAG);
	return(19);
}

static int op_orxd(void)		/* OR (IX+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	A |= *(ram + IX	+ (signed char) *PC++);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(parrity[A]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	F &= ~(H_FLAG |	N_FLAG | C_FLAG);
	return(19);
}

static int op_cpxd(void)		/* CP (IX+d) */
{
	register int i;
	register BYTE P;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	P = *(ram + IX + (signed char)	*PC++);
	((P & 0xf) > (A	& 0xf))	? (F |=	H_FLAG)	: (F &=	~H_FLAG);
	(P > A)	? (F |=	C_FLAG)	: (F &=	~C_FLAG);
	i = (signed char) A - (signed char) P;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(i) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F |= N_FLAG;
	return(19);
}

static int op_incxd(void)		/* INC (IX+d) */
{
	register BYTE *p;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	p = ram	+ IX + (signed char) *PC++;
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

static int op_decxd(void)		/* DEC (IX+d) */
{
	register BYTE *p;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	p = ram	+ IX + (signed char) *PC++;
	(((*p - 1) & 0xf)	== 0xf)	? (F |=	H_FLAG)	: (F &=	~H_FLAG);
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

static int op_addxb(void)		/* ADD IX,BC */
{
	register int carry;
	BYTE ixl = IX & 0xff;
	BYTE ixh = IX >> 8;
	
	carry = (ixl + C > 255) ? 1 : 0;
	ixl += C;
	((ixh & 0xf) + (B & 0xf) + carry > 0xf) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	(ixh + B + carry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	ixh += B + carry;
	IX = (ixh << 8) + ixl;
	F &= ~N_FLAG;
	return(15);
}

static int op_addxd(void)		/* ADD IX,DE */
{
	register int carry;
	BYTE ixl = IX & 0xff;
	BYTE ixh = IX >> 8;
	
	carry = (ixl + E > 255) ? 1 : 0;
	ixl += E;
	((ixh & 0xf) + (D & 0xf) + carry > 0xf) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	(ixh + D + carry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	ixh += D + carry;
	IX = (ixh << 8) + ixl;
	F &= ~N_FLAG;
	return(15);
}

static int op_addxs(void)		/* ADD IX,SP */
{
	register int carry;
	BYTE ixl = IX & 0xff;
	BYTE ixh = IX >> 8;
	BYTE spl = (STACK - ram) & 0xff;
	BYTE sph = (STACK - ram) >> 8;
	
	carry = (ixl + spl > 255) ? 1 : 0;
	ixl += spl;
	((ixh & 0xf) + (sph & 0xf) + carry > 0xf) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	(ixh + sph + carry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	ixh += sph + carry;
	IX = (ixh << 8) + ixl;
	F &= ~N_FLAG;
	return(15);
}

static int op_addxx(void)		/* ADD IX,IX */
{
	register int carry;
	BYTE ixl = IX & 0xff;
	BYTE ixh = IX >> 8;
	
	carry = (ixl << 1 > 255) ? 1 : 0;
	ixl <<= 1;
	((ixh & 0xf) + (ixh & 0xf) + carry > 0xf) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	(ixh + ixh + carry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	ixh += ixh + carry;
	IX = (ixh << 8) + ixl;
	F &= ~N_FLAG;
	return(15);
}

static int op_incix(void)		/* INC IX */
{
	IX++;
	return(10);
}

static int op_decix(void)		/* DEC IX */
{
	IX--;
	return(10);
}

static int op_ldaxd(void)		/* LD A,(IX+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	A = *(IX + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldbxd(void)		/* LD B,(IX+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	B = *(IX + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldcxd(void)		/* LD C,(IX+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	C = *(IX + (signed char) *PC++	+ ram);
	return(19);
}

static int op_lddxd(void)		/* LD D,(IX+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	D = *(IX + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldexd(void)		/* LD E,(IX+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	E = *(IX + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldhxd(void)		/* LD H,(IX+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	H = *(IX + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldlxd(void)		/* LD L,(IX+d) */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	L = *(IX + (signed char) *PC++	+ ram);
	return(19);
}

static int op_ldxda(void)		/* LD (IX+d),A */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IX + (signed char) *PC++ + ram) = A;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldxdb(void)		/* LD (IX+d),B */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IX + (signed char) *PC++ + ram) = B;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldxdc(void)		/* LD (IX+d),C */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IX + (signed char) *PC++ + ram) = C;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldxdd(void)		/* LD (IX+d),D */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IX + (signed char) *PC++ + ram) = D;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldxde(void)		/* LD (IX+d),E */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IX + (signed char) *PC++ + ram) = E;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldxdh(void)		/* LD (IX+d),H */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IX + (signed char) *PC++ + ram) = H;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldxdl(void)		/* LD (IX+d),L */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(IX + (signed char) *PC++ + ram) = L;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

static int op_ldxdn(void)		/* LD (IX+d),n */
{
	register int d;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	d = (signed char) *PC++;
	*(IX + d + ram)	= *PC++;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	return(19);
}

/**********************************************************************/
/**********************************************************************/
/*********       UNDOCUMENTED Z80 INSTRUCTIONS, BEWARE!      **********/
/**********************************************************************/
/**********************************************************************/

#ifdef Z80_UNDOC

static int op_undoc_ldixl(void)		/* LD IXL,A */
{
	if (z_flag)
		trap_dd();

	IX = (IX & 0xff00) | A;
	return(9);
}

static int op_undoc_cpixl(void)		/* CP IXL */
{
	register int i;
	register BYTE P;

	if (z_flag)
		trap_dd();

	P = IX & 0xff;
	((P & 0xf) > (A	& 0xf))	? (F |=	H_FLAG)	: (F &=	~H_FLAG);
	(P > A)	? (F |=	C_FLAG)	: (F &=	~C_FLAG);
	i = (signed char) A - (signed char) P;
	(i < -128 || i > 127) ?	(F |= P_FLAG) :	(F &= ~P_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(i) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	F |= N_FLAG;
	return(9);
}

#endif
