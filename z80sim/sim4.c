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
 *	starting with 0xed
 */

#include "sim.h"
#include "simglb.h"

#ifdef FRONTPANEL
#include "../../frontpanel/frontpanel.h"
#endif

static int trap_ed(void);
static int op_im0(void), op_im1(void), op_im2(void);
static int op_reti(void), op_retn(void);
static int op_neg(void);
static int op_inaic(void), op_inbic(void), op_incic(void);
static int op_indic(void), op_ineic(void);
static int op_inhic(void), op_inlic(void);
static int op_outca(void), op_outcb(void), op_outcc(void);
static int op_outcd(void), op_outce(void);
static int op_outch(void), op_outcl(void);
static int op_ini(void), op_inir(void), op_ind(void), op_indr(void);
static int op_outi(void), op_otir(void), op_outd(void), op_otdr(void);
static int op_ldai(void), op_ldar(void), op_ldia(void), op_ldra(void);
static int op_ldbcinn(void), op_lddeinn(void), op_ldspinn(void);
static int op_ldinbc(void), op_ldinde(void), op_ldinsp(void);
static int op_adchb(void), op_adchd(void), op_adchh(void), op_adchs(void);
static int op_sbchb(void), op_sbchd(void), op_sbchh(void), op_sbchs(void);
static int op_ldi(void), op_ldir(void), op_ldd(void), op_lddr(void);
static int op_cpi(void), op_cpir(void), op_cpdop(void), op_cpdr(void);
static int op_oprld(void), op_oprrd(void);

int op_ed_handel(void)
{
	register int t;

	static int (*op_ed[256]) (void) = {
		trap_ed,			/* 0x00	*/
		trap_ed,			/* 0x01	*/
		trap_ed,			/* 0x02	*/
		trap_ed,			/* 0x03	*/
		trap_ed,			/* 0x04	*/
		trap_ed,			/* 0x05	*/
		trap_ed,			/* 0x06	*/
		trap_ed,			/* 0x07	*/
		trap_ed,			/* 0x08	*/
		trap_ed,			/* 0x09	*/
		trap_ed,			/* 0x0a	*/
		trap_ed,			/* 0x0b	*/
		trap_ed,			/* 0x0c	*/
		trap_ed,			/* 0x0d	*/
		trap_ed,			/* 0x0e	*/
		trap_ed,			/* 0x0f	*/
		trap_ed,			/* 0x10	*/
		trap_ed,			/* 0x11	*/
		trap_ed,			/* 0x12	*/
		trap_ed,			/* 0x13	*/
		trap_ed,			/* 0x14	*/
		trap_ed,			/* 0x15	*/
		trap_ed,			/* 0x16	*/
		trap_ed,			/* 0x17	*/
		trap_ed,			/* 0x18	*/
		trap_ed,			/* 0x19	*/
		trap_ed,			/* 0x1a	*/
		trap_ed,			/* 0x1b	*/
		trap_ed,			/* 0x1c	*/
		trap_ed,			/* 0x1d	*/
		trap_ed,			/* 0x1e	*/
		trap_ed,			/* 0x1f	*/
		trap_ed,			/* 0x20	*/
		trap_ed,			/* 0x21	*/
		trap_ed,			/* 0x22	*/
		trap_ed,			/* 0x23	*/
		trap_ed,			/* 0x24	*/
		trap_ed,			/* 0x25	*/
		trap_ed,			/* 0x26	*/
		trap_ed,			/* 0x27	*/
		trap_ed,			/* 0x28	*/
		trap_ed,			/* 0x29	*/
		trap_ed,			/* 0x2a	*/
		trap_ed,			/* 0x2b	*/
		trap_ed,			/* 0x2c	*/
		trap_ed,			/* 0x2d	*/
		trap_ed,			/* 0x2e	*/
		trap_ed,			/* 0x2f	*/
		trap_ed,			/* 0x30	*/
		trap_ed,			/* 0x31	*/
		trap_ed,			/* 0x32	*/
		trap_ed,			/* 0x33	*/
		trap_ed,			/* 0x34	*/
		trap_ed,			/* 0x35	*/
		trap_ed,			/* 0x36	*/
		trap_ed,			/* 0x37	*/
		trap_ed,			/* 0x38	*/
		trap_ed,			/* 0x39	*/
		trap_ed,			/* 0x3a	*/
		trap_ed,			/* 0x3b	*/
		trap_ed,			/* 0x3c	*/
		trap_ed,			/* 0x3d	*/
		trap_ed,			/* 0x3e	*/
		trap_ed,			/* 0x3f	*/
		op_inbic,			/* 0x40	*/
		op_outcb,			/* 0x41	*/
		op_sbchb,			/* 0x42	*/
		op_ldinbc,			/* 0x43	*/
		op_neg,				/* 0x44	*/
		op_retn,			/* 0x45	*/
		op_im0,				/* 0x46	*/
		op_ldia,			/* 0x47	*/
		op_incic,			/* 0x48	*/
		op_outcc,			/* 0x49	*/
		op_adchb,			/* 0x4a	*/
		op_ldbcinn,			/* 0x4b	*/
		trap_ed,			/* 0x4c	*/
		op_reti,			/* 0x4d	*/
		trap_ed,			/* 0x4e	*/
		op_ldra,			/* 0x4f	*/
		op_indic,			/* 0x50	*/
		op_outcd,			/* 0x51	*/
		op_sbchd,			/* 0x52	*/
		op_ldinde,			/* 0x53	*/
		trap_ed,			/* 0x54	*/
		trap_ed,			/* 0x55	*/
		op_im1,				/* 0x56	*/
		op_ldai,			/* 0x57	*/
		op_ineic,			/* 0x58	*/
		op_outce,			/* 0x59	*/
		op_adchd,			/* 0x5a	*/
		op_lddeinn,			/* 0x5b	*/
		trap_ed,			/* 0x5c	*/
		trap_ed,			/* 0x5d	*/
		op_im2,				/* 0x5e	*/
		op_ldar,			/* 0x5f	*/
		op_inhic,			/* 0x60	*/
		op_outch,			/* 0x61	*/
		op_sbchh,			/* 0x62	*/
		trap_ed,			/* 0x63	*/
		trap_ed,			/* 0x64	*/
		trap_ed,			/* 0x65	*/
		trap_ed,			/* 0x66	*/
		op_oprrd,			/* 0x67	*/
		op_inlic,			/* 0x68	*/
		op_outcl,			/* 0x69	*/
		op_adchh,			/* 0x6a	*/
		trap_ed,			/* 0x6b	*/
		trap_ed,			/* 0x6c	*/
		trap_ed,			/* 0x6d	*/
		trap_ed,			/* 0x6e	*/
		op_oprld,			/* 0x6f	*/
		trap_ed,			/* 0x70	*/
		trap_ed,			/* 0x71	*/
		op_sbchs,			/* 0x72	*/
		op_ldinsp,			/* 0x73	*/
		trap_ed,			/* 0x74	*/
		trap_ed,			/* 0x75	*/
		trap_ed,			/* 0x76	*/
		trap_ed,			/* 0x77	*/
		op_inaic,			/* 0x78	*/
		op_outca,			/* 0x79	*/
		op_adchs,			/* 0x7a	*/
		op_ldspinn,			/* 0x7b	*/
		trap_ed,			/* 0x7c	*/
		trap_ed,			/* 0x7d	*/
		trap_ed,			/* 0x7e	*/
		trap_ed,			/* 0x7f	*/
		trap_ed,			/* 0x80	*/
		trap_ed,			/* 0x81	*/
		trap_ed,			/* 0x82	*/
		trap_ed,			/* 0x83	*/
		trap_ed,			/* 0x84	*/
		trap_ed,			/* 0x85	*/
		trap_ed,			/* 0x86	*/
		trap_ed,			/* 0x87	*/
		trap_ed,			/* 0x88	*/
		trap_ed,			/* 0x89	*/
		trap_ed,			/* 0x8a	*/
		trap_ed,			/* 0x8b	*/
		trap_ed,			/* 0x8c	*/
		trap_ed,			/* 0x8d	*/
		trap_ed,			/* 0x8e	*/
		trap_ed,			/* 0x8f	*/
		trap_ed,			/* 0x90	*/
		trap_ed,			/* 0x91	*/
		trap_ed,			/* 0x92	*/
		trap_ed,			/* 0x93	*/
		trap_ed,			/* 0x94	*/
		trap_ed,			/* 0x95	*/
		trap_ed,			/* 0x96	*/
		trap_ed,			/* 0x97	*/
		trap_ed,			/* 0x98	*/
		trap_ed,			/* 0x99	*/
		trap_ed,			/* 0x9a	*/
		trap_ed,			/* 0x9b	*/
		trap_ed,			/* 0x9c	*/
		trap_ed,			/* 0x9d	*/
		trap_ed,			/* 0x9e	*/
		trap_ed,			/* 0x9f	*/
		op_ldi,				/* 0xa0	*/
		op_cpi,				/* 0xa1	*/
		op_ini,				/* 0xa2	*/
		op_outi,			/* 0xa3	*/
		trap_ed,			/* 0xa4	*/
		trap_ed,			/* 0xa5	*/
		trap_ed,			/* 0xa6	*/
		trap_ed,			/* 0xa7	*/
		op_ldd,				/* 0xa8	*/
		op_cpdop,			/* 0xa9	*/
		op_ind,				/* 0xaa	*/
		op_outd,			/* 0xab	*/
		trap_ed,			/* 0xac	*/
		trap_ed,			/* 0xad	*/
		trap_ed,			/* 0xae	*/
		trap_ed,			/* 0xaf	*/
		op_ldir,			/* 0xb0	*/
		op_cpir,			/* 0xb1	*/
		op_inir,			/* 0xb2	*/
		op_otir,			/* 0xb3	*/
		trap_ed,			/* 0xb4	*/
		trap_ed,			/* 0xb5	*/
		trap_ed,			/* 0xb6	*/
		trap_ed,			/* 0xb7	*/
		op_lddr,			/* 0xb8	*/
		op_cpdr,			/* 0xb9	*/
		op_indr,			/* 0xba	*/
		op_otdr,			/* 0xbb	*/
		trap_ed,			/* 0xbc	*/
		trap_ed,			/* 0xbd	*/
		trap_ed,			/* 0xbe	*/
		trap_ed,			/* 0xbf	*/
		trap_ed,			/* 0xc0	*/
		trap_ed,			/* 0xc1	*/
		trap_ed,			/* 0xc2	*/
		trap_ed,			/* 0xc3	*/
		trap_ed,			/* 0xc4	*/
		trap_ed,			/* 0xc5	*/
		trap_ed,			/* 0xc6	*/
		trap_ed,			/* 0xc7	*/
		trap_ed,			/* 0xc8	*/
		trap_ed,			/* 0xc9	*/
		trap_ed,			/* 0xca	*/
		trap_ed,			/* 0xcb	*/
		trap_ed,			/* 0xcc	*/
		trap_ed,			/* 0xcd	*/
		trap_ed,			/* 0xce	*/
		trap_ed,			/* 0xcf	*/
		trap_ed,			/* 0xd0	*/
		trap_ed,			/* 0xd1	*/
		trap_ed,			/* 0xd2	*/
		trap_ed,			/* 0xd3	*/
		trap_ed,			/* 0xd4	*/
		trap_ed,			/* 0xd5	*/
		trap_ed,			/* 0xd6	*/
		trap_ed,			/* 0xd7	*/
		trap_ed,			/* 0xd8	*/
		trap_ed,			/* 0xd9	*/
		trap_ed,			/* 0xda	*/
		trap_ed,			/* 0xdb	*/
		trap_ed,			/* 0xdc	*/
		trap_ed,			/* 0xdd	*/
		trap_ed,			/* 0xde	*/
		trap_ed,			/* 0xdf	*/
		trap_ed,			/* 0xe0	*/
		trap_ed,			/* 0xe1	*/
		trap_ed,			/* 0xe2	*/
		trap_ed,			/* 0xe3	*/
		trap_ed,			/* 0xe4	*/
		trap_ed,			/* 0xe5	*/
		trap_ed,			/* 0xe6	*/
		trap_ed,			/* 0xe7	*/
		trap_ed,			/* 0xe8	*/
		trap_ed,			/* 0xe9	*/
		trap_ed,			/* 0xea	*/
		trap_ed,			/* 0xeb	*/
		trap_ed,			/* 0xec	*/
		trap_ed,			/* 0xed	*/
		trap_ed,			/* 0xee	*/
		trap_ed,			/* 0xef	*/
		trap_ed,			/* 0xf0	*/
		trap_ed,			/* 0xf1	*/
		trap_ed,			/* 0xf2	*/
		trap_ed,			/* 0xf3	*/
		trap_ed,			/* 0xf4	*/
		trap_ed,			/* 0xf5	*/
		trap_ed,			/* 0xf6	*/
		trap_ed,			/* 0xf7	*/
		trap_ed,			/* 0xf8	*/
		trap_ed,			/* 0xf9	*/
		trap_ed,			/* 0xfa	*/
		trap_ed,			/* 0xfb	*/
		trap_ed,			/* 0xfc	*/
		trap_ed,			/* 0xfd	*/
		trap_ed,			/* 0xfe	*/
		trap_ed				/* 0xff	*/
	};

#ifdef WANT_TIM
	t = (*op_ed[*PC++]) ();		/* execute next opcode */
#else
	(*op_ed[*PC++]) ();
#endif

#ifdef WANT_PCC
		if (PC > ram + 65535)	/* correct PC overrun */
			PC = ram;
#endif

	return(t);
}

/*
 *	This function traps all illegal opcodes following the
 *	initial 0xed of a multi byte opcode.
 */
static int trap_ed(void)
{
	cpu_error = OPTRAP2;
	cpu_state = STOPPED;
	return(0);
}

static int op_im0(void)			/* IM 0 */
{
	int_mode = 0;
	return(8);
}

static int op_im1(void)			/* IM 1 */
{
	int_mode = 1;
	return(8);
}

static int op_im2(void)			/* IM 2 */
{
	int_mode = 2;
	return(8);
}

static int op_reti(void)		/* RETI */
{
	register unsigned i;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_STACK | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	i = *STACK++;
#ifdef WANT_SPC
	if (STACK >= ram + 65536L)
		STACK =	ram;
#endif
	i += *STACK++ << 8;
#ifdef WANT_SPC
	if (STACK >= ram + 65536L)
		STACK =	ram;
#endif
	PC = ram + i;
	return(14);
}

static int op_retn(void)		/* RETN */
{
	register unsigned i;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_STACK | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	i = *STACK++;
#ifdef WANT_SPC
	if (STACK >= ram + 65536L)
		STACK =	ram;
#endif
	i += *STACK++ << 8;
#ifdef WANT_SPC
	if (STACK >= ram + 65536L)
		STACK =	ram;
#endif
	PC = ram + i;
	if (IFF & 2)
		IFF |= 1;
	return(14);
}

static int op_neg(void)			/* NEG */
{
	(A) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	(A == 0x80) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(0 - ((signed char) A & 0xf) <	0) ? (F	|= H_FLAG) : (F	&= ~H_FLAG);
	A = 0 -	A;
	F |= N_FLAG;
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(8);
}

static int op_inaic(void)		/* IN A,(C) */
{
	BYTE io_in();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	A = io_in(C);
	F &= ~(N_FLAG |	H_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(parrity[A]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	return(12);
}

static int op_inbic(void)		/* IN B,(C) */
{
	BYTE io_in();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	B = io_in(C);
	F &= ~(N_FLAG |	H_FLAG);
	(B) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(B & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(parrity[B]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	return(12);
}

static int op_incic(void)		/* IN C,(C) */
{
	BYTE io_in();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	C = io_in(C);
	F &= ~(N_FLAG |	H_FLAG);
	(C) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(C & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(parrity[C]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	return(12);
}

static int op_indic(void)		/* IN D,(C) */
{
	BYTE io_in();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	D = io_in(C);
	F &= ~(N_FLAG |	H_FLAG);
	(D) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(D & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(parrity[D]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	return(12);
}

static int op_ineic(void)		/* IN E,(C) */
{
	BYTE io_in();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	E = io_in(C);
	F &= ~(N_FLAG |	H_FLAG);
	(E) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(E & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(parrity[E]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	return(12);
}

static int op_inhic(void)		/* IN H,(C) */
{
	BYTE io_in();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	H = io_in(C);
	F &= ~(N_FLAG |	H_FLAG);
	(H) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(H & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(parrity[H]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	return(12);
}

static int op_inlic(void)		/* IN L,(C) */
{
	BYTE io_in();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	L = io_in(C);
	F &= ~(N_FLAG |	H_FLAG);
	(L) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(L & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(parrity[L]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	return(12);
}

static int op_outca(void)		/* OUT (C),A */
{
	BYTE io_out();

#ifdef BUS_8080
	cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	io_out(C, A);
	return(12);
}

static int op_outcb(void)		/* OUT (C),B */
{
	BYTE io_out();

#ifdef BUS_8080
	cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	io_out(C, B);
	return(12);
}

static int op_outcc(void)		/* OUT (C),C */
{
	BYTE io_out();

#ifdef BUS_8080
	cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	io_out(C, C);
	return(12);
}

static int op_outcd(void)		/* OUT (C),D */
{
	BYTE io_out();

#ifdef BUS_8080
	cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	io_out(C, D);
	return(12);
}

static int op_outce(void)		/* OUT (C),E */
{
	BYTE io_out();

#ifdef BUS_8080
	cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	io_out(C, E);
	return(12);
}

static int op_outch(void)		/* OUT (C),H */
{
	BYTE io_out();

#ifdef BUS_8080
	cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	io_out(C, H);
	return(12);
}

static int op_outcl(void)		/* OUT (C),L */
{
	BYTE io_out();

#ifdef BUS_8080
	cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	io_out(C, L);
	return(12);
}

static int op_ini(void)			/* INI */
{
	BYTE io_in();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(ram +	(H << 8) + L) =	io_in(C);
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	L++;
	if (!L)
		H++;
	B--;
	F |= N_FLAG;
	(B) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	return(16);
}

static int op_inir(void)		/* INIR */
{
	register int t	= -21;
	register BYTE *d;
	BYTE io_in();

	d = ram	+ (H <<	8) + L;
	do {
#ifdef BUS_8080
		cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		*d++ = io_in(C);
#ifdef BUS_8080
		cpu_bus = 0;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		B--;
		t += 21;
	} while	(B);
	H = (d - ram) >> 8;
	L = d -	ram;
	F |= N_FLAG | Z_FLAG;
	return(t + 16);
}

static int op_ind(void)			/* IND */
{
	BYTE io_in();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(ram +	(H << 8) + L) =	io_in(C);
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	L--;
	if (L == 0xff)
		H--;
	B--;
	F |= N_FLAG;
	(B) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	return(16);
}

static int op_indr(void)		/* INDR */
{
	register int t	= -21;
	register BYTE *d;
	BYTE io_in();

	d = ram	+ (H <<	8) + L;
	do {
#ifdef BUS_8080
		cpu_bus = CPU_WO | CPU_INP;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		*d-- = io_in(C);
#ifdef BUS_8080
		cpu_bus = 0;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		B--;
		t += 21;
	} while	(B);
	H = (d - ram) >> 8;
	L = d -	ram;
	F |= N_FLAG | Z_FLAG;
	return(t + 16);
}

static int op_outi(void)		/* OUTI */
{
	BYTE io_out();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	io_out(C, *(ram	+ (H <<	8) * L));
#ifdef BUS_8080
	cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	L++;
	if (!L)
		H++;
	B--;
	F |= N_FLAG;
	(B) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	return(16);
}

static int op_otir(void)		/* OTIR */
{
	register int t	= -21;
	register BYTE *d;
	BYTE io_out();

	d = ram	+ (H <<	8) + L;
	do {
#ifdef BUS_8080
		cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		io_out(C, *d++);
#ifdef BUS_8080
		cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		B--;
		t += 21;
	} while	(B);
	H = (d - ram) >> 8;
	L = d -	ram;
	F |= N_FLAG | Z_FLAG;
	return(t + 16);
}

static int op_outd(void)		/* OUTD */
{
	BYTE io_out();

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	io_out(C, *(ram	+ (H <<	8) * L));
#ifdef BUS_8080
	cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	L--;
	if (L == 0xff)
		H--;
	B--;
	F |= N_FLAG;
	(B) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	return(16);
}

static int op_otdr(void)		/* OTDR */
{
	register int t	= -21;
	register BYTE *d;
	BYTE io_out();

	d = ram	+ (H <<	8) + L;
	do {
#ifdef BUS_8080
		cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		io_out(C, *d--);
#ifdef BUS_8080
		cpu_bus = CPU_OUT;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		B--;
		t += 21;
	} while	(B);
	H = (d - ram) >> 8;
	L = d -	ram;
	F |= N_FLAG | Z_FLAG;
	return(t + 16);
}

static int op_ldai(void)		/* LD A,I */
{
	A = I;
	F &= ~(N_FLAG |	H_FLAG);
	(IFF & 2) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(9);
}

static int op_ldar(void)		/* LD A,R */
{
	A = (BYTE) R;
	F &= ~(N_FLAG |	H_FLAG);
	(IFF & 2) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(9);
}

static int op_ldia(void)		/* LD I,A */
{
	I = A;
	return(9);
}

static int op_ldra(void)		/* LD R,A */
{
	R = A;
	return(9);
}

static int op_ldbcinn(void)		/* LD BC,(nn) */
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
	C = *p++;
	B = *p;
	return(20);
}

static int op_lddeinn(void)		/* LD DE,(nn) */
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
	E = *p++;
	D = *p;
	return(20);
}

static int op_ldspinn(void)		/* LD SP,(nn) */
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
	STACK =	ram + *p++;
	STACK += *p << 8;
	return(20);
}

static int op_ldinbc(void)		/* LD (nn),BC */
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
	*p++ = C;
	*p = B;
	return(20);
}

static int op_ldinde(void)		/* LD (nn),DE */
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
	*p++ = E;
	*p = D;
	return(20);
}

static int op_ldinsp(void)		/* LD (nn),SP */
{
	register BYTE *p;
	register int i;

#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	p = ram	+ *PC++;
	p += *PC++ << 8;
	i = STACK - ram;
	*p++ = i;
	*p = i >> 8;
	return(20);
}

static int op_adchb(void)		/* ADC HL,BC */
{
	int carry, lcarry;
	register short hl, bc;
	int i;

	carry =	(F & C_FLAG) ? 1 : 0;
	lcarry = (L + C + carry > 255) ? 1 : 0;
	((H & 0xf) + (B & 0xf) + lcarry > 0xf) ? (F |= H_FLAG)
					       : (F &= ~H_FLAG);
	hl = (H	<< 8) +	L;
	bc = (B	<< 8) +	C;
	i = hl + bc + carry;
	((i > 32767) || (i < -32768)) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(H + B + lcarry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	(i & 0xffff) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	H = i >> 8;
	L = i;
	F &= ~N_FLAG;
	(H & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(15);
}

static int op_adchd(void)		/* ADC HL,DE */
{
	int carry, lcarry;
	register short hl, de;
	int i;

	carry =	(F & C_FLAG) ? 1 : 0;
	lcarry = (L + E + carry > 255) ? 1 : 0;
	((H & 0xf) + (D & 0xf) + lcarry > 0xf) ? (F |= H_FLAG)
					       : (F &= ~H_FLAG);
	hl = (H	<< 8) +	L;
	de = (D	<< 8) +	E;
	i = hl + de + carry;
	((i > 32767) || (i < -32768)) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(H + D + lcarry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	(i & 0xffff) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	H = i >> 8;
	L = i;
	F &= ~N_FLAG;
	(H & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(15);
}

static int op_adchh(void)		/* ADC HL,HL */
{
	int carry, lcarry;
	register short hl;
	int i;

	carry =	(F & C_FLAG) ? 1 : 0;
	lcarry = (L + L + carry > 255) ? 1 : 0;
	((H & 0xf) + (H & 0xf) + lcarry > 0xf) ? (F |= H_FLAG)
					       : (F &= ~H_FLAG);
	hl = (H	<< 8) +	L;
	i = (hl << 1) + carry;
	((i > 32767) || (i < -32768)) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(H + H + lcarry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	(i & 0xffff) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	H = i >> 8;
	L = i;
	F &= ~N_FLAG;
	(H & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(15);
}

static int op_adchs(void)		/* ADC HL,SP */
{
	int carry, lcarry;
	register short hl, sp;
	int i;

	carry =	(F & C_FLAG) ? 1 : 0;
	hl = (H	<< 8) +	L;
	sp = STACK - ram;
	lcarry = (L + (sp & 0xff) + carry > 255) ? 1 : 0;
	((H & 0xf) + ((sp >> 8) & 0xf) + lcarry > 0xf) ? (F |= H_FLAG)
						       : (F &= ~H_FLAG);
	i = hl + sp + carry;
	((i > 32767) || (i < -32768)) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(H + (sp >> 8) + lcarry > 255) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	(i & 0xffff) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	H = i >> 8;
	L = i;
	F &= ~N_FLAG;
	(H & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(15);
}

static int op_sbchb(void)		/* SBC HL,BC */
{
	int carry, lcarry;
	register short hl, bc;
	int i;

	carry =	(F & C_FLAG) ? 1 : 0;
	lcarry = (C + carry > L) ? 1 : 0;
	((B & 0xf) + lcarry > (H & 0xf)) ? (F |= H_FLAG)
					 : (F &= ~H_FLAG);
	hl = (H	<< 8) +	L;
	bc = (B	<< 8) +	C;
	i = hl - bc - carry;
	((i > 32767) || (i < -32768)) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	((WORD)bc + carry > (WORD)hl) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	(i & 0xffff) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	H = i >> 8;
	L = i;
	F |= N_FLAG;
	(H & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(15);
}

static int op_sbchd(void)		/* SBC HL,DE */
{
	int carry, lcarry;
	register short hl, de;
	int i;

	carry =	(F & C_FLAG) ? 1 : 0;
	lcarry = (E + carry > L) ? 1 : 0;
	((D & 0xf) + lcarry > (H & 0xf)) ? (F |= H_FLAG)
					 : (F &= ~H_FLAG);
	hl = (H	<< 8) +	L;
	de = (D	<< 8) +	E;
	i = hl - de - carry;
	((i > 32767) || (i < -32768)) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	((WORD)de + carry > (WORD)hl) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	(i & 0xffff) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	H = i >> 8;
	L = i;
	F |= N_FLAG;
	(H & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(15);
}

static int op_sbchh(void)		/* SBC HL,HL */
{
	int carry, lcarry;
	register short hl;
	int i;

	carry =	(F & C_FLAG) ? 1 : 0;
	lcarry = (L + carry > L) ? 1 : 0;
	((H & 0xf) + lcarry > (H & 0xf)) ? (F |= H_FLAG)
					 : (F &= ~H_FLAG);
	hl = (H	<< 8) +	L;
	i = hl - hl - carry;
	((i > 32767) || (i < -32768)) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	((WORD)hl + carry > (WORD)hl) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	(i & 0xffff) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	H = i >> 8;
	L = i;
	F |= N_FLAG;
	(H & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(15);
}

static int op_sbchs(void)		/* SBC HL,SP */
{
	int carry, lcarry;
	register short hl, sp;
	int i;

	carry =	(F & C_FLAG) ? 1 : 0;
	hl = (H	<< 8) +	L;
	sp = STACK - ram;
	lcarry = ((sp & 0xff) + carry > L) ? 1 : 0;
	(((sp >> 8) & 0xf) + lcarry > (H & 0xf)) ? (F |= H_FLAG)
						 : (F &= ~H_FLAG);
	i = hl - sp - carry;
	((i > 32767) || (i < -32768)) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	((WORD)sp + carry > (WORD)hl) ? (F |= C_FLAG) : (F &= ~C_FLAG);
	(i & 0xffff) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	H = i >> 8;
	L = i;
	F |= N_FLAG;
	(H & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(15);
}

static int op_ldi(void)			/* LDI */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(ram +	(D << 8) + E) =	*(ram +	(H << 8) + L);
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	E++;
	if (!E)
		D++;
	L++;
	if (!L)
		H++;
	C--;
	if (C == 0xff)
		B--;
	(B | C)	? (F |=	P_FLAG)	: (F &=	~P_FLAG);
	F &= ~(N_FLAG |	H_FLAG);
	return(16);
}

static int op_ldir(void)		/* LDIR */
{
	register int t	= -21;
	register WORD i;
	register BYTE *s, *d;

	i = (B << 8) + C;
	d = ram	+ (D <<	8) + E;
	s = ram	+ (H <<	8) + L;
	do {
#ifdef BUS_8080
		cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		*d++ = *s++;
#ifdef BUS_8080
		cpu_bus = 0;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		t += 21;
	} while	(--i);
	B = C =	0;
	D = (d - ram) >> 8;
	E = d -	ram;
	H = (s - ram) >> 8;
	L = s -	ram;
	F &= ~(N_FLAG |	P_FLAG | H_FLAG);
	return(t + 16);
}

static int op_ldd(void)			/* LDD */
{
#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	*(ram +	(D << 8) + E) =	*(ram +	(H << 8) + L);
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	E--;
	if (E == 0xff)
		D--;
	L--;
	if (L == 0xff)
		H--;
	C--;
	if (C == 0xff)
		B--;
	(B | C)	? (F |=	P_FLAG)	: (F &=	~P_FLAG);
	F &= ~(N_FLAG |	H_FLAG);
	return(16);
}

static int op_lddr(void)		/* LDDR */
{
	register int t	= -21;
	register WORD i;
	register BYTE *s, *d;

	i = (B << 8) + C;
	d = ram	+ (D <<	8) + E;
	s = ram	+ (H <<	8) + L;
	do {
#ifdef BUS_8080
		cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		*d-- = *s--;
#ifdef BUS_8080
		cpu_bus = 0;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		t += 21;
	} while	(--i);
	B = C =	0;
	D = (d - ram) >> 8;
	E = d -	ram;
	H = (s - ram) >> 8;
	L = s -	ram;
	F &= ~(N_FLAG |	P_FLAG | H_FLAG);
	return(t + 16);
}

static int op_cpi(void)		/* CPI */
{
	register BYTE i;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	i = *(ram + ((H << 8) + L));
	((i & 0xf) > (A & 0xF)) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	i = A -	i;
	L++;
	if (!L)
		H++;
	C--;
	if (C == 0xff)
		B--;
	F |= N_FLAG;
	(B | C)	? (F |=	P_FLAG)	: (F &=	~P_FLAG);
	(i) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(16);
}

static int op_cpir(void)	/* CPIR */
				/* H Flag not set!!! */
{
	register int t	= -21;
	register BYTE *s;
	register BYTE d;
	register WORD i;

	i = (B << 8) + C;
	s = ram	+ (H <<	8) + L;
	do {
#ifdef BUS_8080
		cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		d = A -	*s++;
		t += 21;
	} while	(--i &&	d);
	F |= N_FLAG;
	B = i >> 8;
	C = i;
	H = (s - ram) >> 8;
	L = s -	ram;
	(i) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(d) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(d & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(t + 16);
}

static int op_cpdop(void)	/* CPD */
{
	register BYTE i;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	i = *(ram + ((H << 8) + L));
	((i & 0xf) > (A & 0xF)) ? (F |= H_FLAG) : (F &= ~H_FLAG);
	i = A -	i;
	L--;
	if (L == 0xff)
		H--;
	C--;
	if (C == 0xff)
		B--;
	F |= N_FLAG;
	(B | C)	? (F |=	P_FLAG)	: (F &=	~P_FLAG);
	(i) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(i & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(16);
}

static int op_cpdr(void)	/* CPDR */
				/* H Flag not set!!! */
{
	register int t	= -21;
	register BYTE *s;
	register BYTE d;
	register WORD i;

	i = (B << 8) + C;
	s = ram	+ (H <<	8) + L;
	do {
#ifdef BUS_8080
		cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
		fp_sampleLightGroup(0, 0);
#endif
		d = A -	*s--;
		t += 21;
	} while	(--i &&	d);
	F |= N_FLAG;
	B = i >> 8;
	C = i;
	H = (s - ram) >> 8;
	L = s -	ram;
	(i) ? (F |= P_FLAG) : (F &= ~P_FLAG);
	(d) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(d & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	return(t + 16);
}

static int op_oprld(void)	/* RLD (HL) */
{
	register int i,	j;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	i = *(ram + (H << 8) + L);
	j = A &	0x0f;
	A = (A & 0xf0) | (i >> 4);
	i = (i << 4) | j;
	*(ram +	(H << 8) + L) =	i;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	F &= ~(H_FLAG |	N_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(parrity[A]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	return(18);
}

static int op_oprrd(void)	/* RRD (HL) */
{
	register int i,	j;

#ifdef BUS_8080
	cpu_bus = CPU_WO | CPU_MEMR;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	i = *(ram + (H << 8) + L);
	j = A &	0x0f;
	A = (A & 0xf0) | (i & 0x0f);
	i = (i >> 4) | (j << 4);
	*(ram +	(H << 8) + L) =	i;
#ifdef BUS_8080
	cpu_bus = 0;
#endif
#ifdef FRONTPANEL
	fp_sampleLightGroup(0, 0);
#endif
	F &= ~(H_FLAG |	N_FLAG);
	(A) ? (F &= ~Z_FLAG) : (F |= Z_FLAG);
	(A & 128) ? (F |= S_FLAG) : (F &= ~S_FLAG);
	(parrity[A]) ? (F &= ~P_FLAG) :	(F |= P_FLAG);
	return(18);
}
