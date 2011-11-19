/*
 * Z80SIM  -  a	Z80-CPU	simulator
 *
 * Copyright (C) 2008 by Udo Munk
 *
 * This modul of the simulator contains the I/O simlation
 * for an IMSAI 8080 system
 *
 * History:
 * 20-OCT-08 first version finished
 */

#include <stdio.h>
#include "sim.h"
#include "simglb.h"
#include "../../iodevices/io_config.h"
#include "../../iodevices/imsai-sio2.h"

extern WORD address_switch;

BYTE fp_led_output;

/*
 *	Forward declarations of the I/O functions
 *	for all port addresses.
 */
static BYTE io_trap(void), io_no_card(void);
static BYTE fp_in(void), fp_out(BYTE);

/*
 *	This two dimensional array contains function pointers
 *	for every I/O port (0 - 255), to do the required I/O.
 *	The first entry is for input, the second for output.
 */
static BYTE (*port[256][2]) () = {
	{ io_trap, io_trap },		/* port 0 */
	{ io_trap, io_trap },		/* port	1 */
	{ imsai_sio2_data_in, imsai_sio2_data_out },		/* port 2 */
	{ imsai_sio2_status_in, imsai_sio2_status_out },	/* port 3 */
	{ io_no_card, io_no_card },	/* port	4 */
	{ io_no_card, io_no_card },	/* port	5 */
	{ io_trap, io_trap },		/* port	6 */
	{ io_trap, io_trap },		/* port	7 */
	{ io_trap, io_trap },		/* port	8 */
	{ io_trap, io_trap },		/* port	9 */
	{ io_trap, io_trap },		/* port	10 */
	{ io_trap, io_trap },		/* port	11 */
	{ io_trap, io_trap },		/* port	12 */
	{ io_trap, io_trap },		/* port	13 */
	{ io_trap, io_trap },		/* port	14 */
	{ io_trap, io_trap },		/* port	15 */
	{ io_trap, io_trap },		/* port	16 */
	{ io_trap, io_trap },		/* port	17 */
	{ io_trap, io_trap },		/* port	18 */
	{ io_trap, io_trap },		/* port	19 */
	{ io_trap, io_trap },		/* port	20 */
	{ io_trap, io_trap },		/* port	21 */
	{ io_trap, io_trap },		/* port	22 */
	{ io_trap, io_trap },		/* port	23 */
	{ io_trap, io_trap },		/* port	24 */
	{ io_trap, io_trap },		/* port	25 */
	{ io_trap, io_trap },		/* port	26 */
	{ io_trap, io_trap },		/* port	27 */
	{ io_trap, io_trap },		/* port	28 */
	{ io_trap, io_trap },		/* port	29 */
	{ io_trap, io_trap },		/* port	30 */
	{ io_trap, io_trap },		/* port	31 */
	{ io_trap, io_trap },		/* port	32 */
	{ io_trap, io_trap },		/* port	33 */
	{ io_trap, io_trap },		/* port	34 */
	{ io_trap, io_trap },		/* port	35 */
	{ io_trap, io_trap },		/* port	36 */
	{ io_trap, io_trap },		/* port	37 */
	{ io_trap, io_trap },		/* port	38 */
	{ io_trap, io_trap },		/* port	39 */
	{ io_trap, io_trap },		/* port	40 */
	{ io_trap, io_trap },		/* port	41 */
	{ io_trap, io_trap },		/* port	42 */
	{ io_trap, io_trap },		/* port	43 */
	{ io_trap, io_trap },		/* port	44 */
	{ io_trap, io_trap },		/* port	45 */
	{ io_trap, io_trap },		/* port	46 */
	{ io_trap, io_trap },		/* port	47 */
	{ io_trap, io_trap },		/* port	48 */
	{ io_trap, io_trap },		/* port	49 */
	{ io_trap, io_trap },		/* port	50 */
	{ io_trap, io_trap },		/* port	51 */
	{ io_trap, io_trap },		/* port	52 */
	{ io_trap, io_trap },		/* port	53 */
	{ io_trap, io_trap },		/* port	54 */
	{ io_trap, io_trap },		/* port	55 */
	{ io_trap, io_trap },		/* port	56 */
	{ io_trap, io_trap },		/* port	57 */
	{ io_trap, io_trap },		/* port	58 */
	{ io_trap, io_trap },		/* port	59 */
	{ io_trap, io_trap },		/* port	60 */
	{ io_trap, io_trap },		/* port	61 */
	{ io_trap, io_trap },		/* port	62 */
	{ io_trap, io_trap },		/* port	63 */
	{ io_trap, io_trap },		/* port	64 */
	{ io_trap, io_trap },		/* port	65 */
	{ io_trap, io_trap },		/* port	66 */
	{ io_trap, io_trap },		/* port	67 */
	{ io_trap, io_trap },		/* port	68 */
	{ io_trap, io_trap },		/* port	69 */
	{ io_trap, io_trap },		/* port	70 */
	{ io_trap, io_trap },		/* port	71 */
	{ io_trap, io_trap },		/* port	72 */
	{ io_trap, io_trap },		/* port	73 */
	{ io_trap, io_trap },		/* port	74 */
	{ io_trap, io_trap },		/* port	75 */
	{ io_trap, io_trap },		/* port	76 */
	{ io_trap, io_trap },		/* port	77 */
	{ io_trap, io_trap },		/* port	78 */
	{ io_trap, io_trap },		/* port	79 */
	{ io_trap, io_trap },		/* port	80 */
	{ io_trap, io_trap },		/* port	81 */
	{ io_trap, io_trap },		/* port	82 */
	{ io_trap, io_trap },		/* port	83 */
	{ io_trap, io_trap },		/* port	84 */
	{ io_trap, io_trap },		/* port	85 */
	{ io_trap, io_trap },		/* port	86 */
	{ io_trap, io_trap },		/* port	87 */
	{ io_trap, io_trap },		/* port	88 */
	{ io_trap, io_trap },		/* port	89 */
	{ io_trap, io_trap },		/* port	90 */
	{ io_trap, io_trap },		/* port	91 */
	{ io_trap, io_trap },		/* port	92 */
	{ io_trap, io_trap },		/* port	93 */
	{ io_trap, io_trap },		/* port	94 */
	{ io_trap, io_trap },		/* port	95 */
	{ io_trap, io_trap },		/* port	96 */
	{ io_trap, io_trap },		/* port	97 */
	{ io_trap, io_trap },		/* port	98 */
	{ io_trap, io_trap },		/* port	99 */
	{ io_trap, io_trap },		/* port	100 */
	{ io_trap, io_trap },		/* port 101 */
	{ io_trap, io_trap },		/* port	102 */
	{ io_trap, io_trap },		/* port	103 */
	{ io_trap, io_trap },		/* port	104 */
	{ io_trap, io_trap },		/* port	105 */
	{ io_trap, io_trap },		/* port	106 */
	{ io_trap, io_trap },		/* port	107 */
	{ io_trap, io_trap },		/* port	108 */
	{ io_trap, io_trap },		/* port	109 */
	{ io_trap, io_trap },		/* port	110 */
	{ io_trap, io_trap },		/* port	111 */
	{ io_trap, io_trap },		/* port	112 */
	{ io_trap, io_trap },		/* port	113 */
	{ io_trap, io_trap },		/* port	114 */
	{ io_trap, io_trap },		/* port	115 */
	{ io_trap, io_trap },		/* port	116 */
	{ io_trap, io_trap },		/* port	117 */
	{ io_trap, io_trap },		/* port	118 */
	{ io_trap, io_trap },		/* port	119 */
	{ io_trap, io_trap },		/* port	120 */
	{ io_trap, io_trap },		/* port	121 */
	{ io_trap, io_trap },		/* port	122 */
	{ io_trap, io_trap },		/* port	123 */
	{ io_trap, io_trap },		/* port	124 */
	{ io_trap, io_trap },		/* port	125 */
	{ io_trap, io_trap },		/* port	126 */
	{ io_trap, io_trap },		/* port	127 */
	{ io_trap, io_trap },		/* port	128 */
	{ io_trap, io_trap },		/* port	129 */
	{ io_trap, io_trap },		/* port	130 */
	{ io_trap, io_trap },		/* port	131 */
	{ io_trap, io_trap },		/* port	132 */
	{ io_trap, io_trap },		/* port	133 */
	{ io_trap, io_trap },		/* port	134 */
	{ io_trap, io_trap },		/* port	135 */
	{ io_trap, io_trap },		/* port	136 */
	{ io_trap, io_trap },		/* port	137 */
	{ io_trap, io_trap },		/* port	138 */
	{ io_trap, io_trap },		/* port	139 */
	{ io_trap, io_trap },		/* port	140 */
	{ io_trap, io_trap },		/* port	141 */
	{ io_trap, io_trap },		/* port	142 */
	{ io_trap, io_trap },		/* port	143 */
	{ io_trap, io_trap },		/* port	144 */
	{ io_trap, io_trap },		/* port	145 */
	{ io_trap, io_trap },		/* port	146 */
	{ io_trap, io_trap },		/* port	147 */
	{ io_trap, io_trap },		/* port	148 */
	{ io_trap, io_trap },		/* port	149 */
	{ io_trap, io_trap },		/* port	150 */
	{ io_trap, io_trap },		/* port	151 */
	{ io_trap, io_trap },		/* port	152 */
	{ io_trap, io_trap },		/* port	153 */
	{ io_trap, io_trap },		/* port	154 */
	{ io_trap, io_trap },		/* port	155 */
	{ io_trap, io_trap },		/* port	156 */
	{ io_trap, io_trap },		/* port	157 */
	{ io_trap, io_trap },		/* port	158 */
	{ io_trap, io_trap },		/* port	159 */
	{ io_trap, io_trap },		/* port	160 */
	{ io_trap, io_trap },		/* port	161 */
	{ io_trap, io_trap },		/* port	162 */
	{ io_trap, io_trap },		/* port	163 */
	{ io_trap, io_trap },		/* port	164 */
	{ io_trap, io_trap },		/* port	165 */
	{ io_trap, io_trap },		/* port	166 */
	{ io_trap, io_trap },		/* port	167 */
	{ io_trap, io_trap },		/* port	168 */
	{ io_trap, io_trap },		/* port	169 */
	{ io_trap, io_trap },		/* port	170 */
	{ io_trap, io_trap },		/* port	171 */
	{ io_trap, io_trap },		/* port	172 */
	{ io_trap, io_trap },		/* port	173 */
	{ io_trap, io_trap },		/* port	174 */
	{ io_trap, io_trap },		/* port	175 */
	{ io_trap, io_trap },		/* port	176 */
	{ io_trap, io_trap },		/* port	177 */
	{ io_trap, io_trap },		/* port	178 */
	{ io_trap, io_trap },		/* port	179 */
	{ io_trap, io_trap },		/* port	180 */
	{ io_trap, io_trap },		/* port	181 */
	{ io_trap, io_trap },		/* port	182 */
	{ io_trap, io_trap },		/* port	183 */
	{ io_trap, io_trap },		/* port	184 */
	{ io_trap, io_trap },		/* port	185 */
	{ io_trap, io_trap },		/* port	186 */
	{ io_trap, io_trap },		/* port	187 */
	{ io_trap, io_trap },		/* port	188 */
	{ io_trap, io_trap },		/* port	189 */
	{ io_trap, io_trap },		/* port	190 */
	{ io_trap, io_trap },		/* port	191 */
	{ io_trap, io_trap },		/* port	192 */
	{ io_trap, io_trap },		/* port	193 */
	{ io_trap, io_trap },		/* port	194 */
	{ io_trap, io_trap },		/* port	195 */
	{ io_trap, io_trap },		/* port	196 */
	{ io_trap, io_trap },		/* port	197 */
	{ io_trap, io_trap },		/* port	198 */
	{ io_trap, io_trap },		/* port	199 */
	{ io_trap, io_trap },		/* port	200 */
	{ io_trap, io_trap },		/* port 201 */
	{ io_trap, io_trap },		/* port	202 */
	{ io_trap, io_trap },		/* port	203 */
	{ io_trap, io_trap },		/* port	204 */
	{ io_trap, io_trap },		/* port	205 */
	{ io_trap, io_trap },		/* port	206 */
	{ io_trap, io_trap },		/* port	207 */
	{ io_trap, io_trap },		/* port	208 */
	{ io_trap, io_trap },		/* port	209 */
	{ io_trap, io_trap },		/* port	210 */
	{ io_trap, io_trap },		/* port	211 */
	{ io_trap, io_trap },		/* port	212 */
	{ io_trap, io_trap },		/* port	213 */
	{ io_trap, io_trap },		/* port	214 */
	{ io_trap, io_trap },		/* port	215 */
	{ io_trap, io_trap },		/* port	216 */
	{ io_trap, io_trap },		/* port	217 */
	{ io_trap, io_trap },		/* port	218 */
	{ io_trap, io_trap },		/* port	219 */
	{ io_trap, io_trap },		/* port	220 */
	{ io_trap, io_trap },		/* port	221 */
	{ io_trap, io_trap },		/* port	222 */
	{ io_trap, io_trap },		/* port	223 */
	{ io_trap, io_trap },		/* port	224 */
	{ io_trap, io_trap },		/* port	225 */
	{ io_trap, io_trap },		/* port	226 */
	{ io_trap, io_trap },		/* port	227 */
	{ io_trap, io_trap },		/* port	228 */
	{ io_trap, io_trap },		/* port	229 */
	{ io_trap, io_trap },		/* port	230 */
	{ io_trap, io_trap },		/* port	231 */
	{ io_trap, io_trap },		/* port	232 */
	{ io_trap, io_trap },		/* port	233 */
	{ io_trap, io_trap },		/* port	234 */
	{ io_trap, io_trap },		/* port	235 */
	{ io_trap, io_trap },		/* port	236 */
	{ io_trap, io_trap },		/* port	237 */
	{ io_trap, io_trap },		/* port	238 */
	{ io_trap, io_trap },		/* port	239 */
	{ io_trap, io_trap },		/* port	240 */
	{ io_trap, io_trap },		/* port	241 */
	{ io_trap, io_trap },		/* port	242 */
	{ io_trap, io_trap },		/* port	243 */
	{ io_trap, io_trap },		/* port	244 */
	{ io_trap, io_trap },		/* port	245 */
	{ io_trap, io_trap },		/* port	246 */
	{ io_trap, io_trap },		/* port	247 */
	{ io_trap, io_trap },		/* port	248 */
	{ io_trap, io_trap },		/* port	249 */
	{ io_trap, io_trap },		/* port	250 */
	{ io_trap, io_trap },		/* port	251 */
	{ io_trap, io_trap },		/* port	252 */
	{ io_trap, io_trap },		/* port	253 */
	{ io_trap, io_trap },		/* port	254 */
	{ fp_in, fp_out }		/* port	255 */
};

/*
 *	This function is to initiate the I/O devices.
 *	It will be called from the CPU simulation before
 *	any operation with the CPU is possible.
 */
void init_io(void)
{
	io_config();
}

/*
 *	This function is to stop the I/O devices. It is
 *	called from the CPU simulation on exit.
 *
 *	Nothing to do here.
 */
void exit_io(void)
{
}

/*
 *	This is the main handler for all IN op-codes,
 *	called by the simulator. It calls the input
 *	function for port adr.
 */
BYTE io_in(BYTE adr)
{
	return((*port[adr][0]) ());
}

/*
 *	This is the main handler for all OUT op-codes,
 *	called by the simulator. It calls the output
 *	function for port adr.
 */
void io_out(BYTE adr, BYTE data)
{
	(*port[adr][1])	(data);
}

/*
 *	I/O trap function
 *	This function should be added into all unused
 *	entrys of the port array. It stops the emulation
 *	with an I/O error.
 */
static BYTE io_trap(void)
{
	if (i_flag) {
		cpu_error = IOTRAP;
		cpu_state = STOPPED;
	}
	return((BYTE) 0xff);
}

/*
 *	Same as above, but don't trap as I/O error.
 *	Used for ports where I/O cards might be installed, but haven't.
 */
static BYTE io_no_card(void)
{
	return((BYTE) 0xff);
}

/*
 *	Read input from front panel switches
 */
static BYTE fp_in(void)
{
	return(address_switch >> 8);
}

/*
 *	Write output to front panel lights
 */
static BYTE fp_out(BYTE data)
{
	fp_led_output = data;
	return(0);
}
