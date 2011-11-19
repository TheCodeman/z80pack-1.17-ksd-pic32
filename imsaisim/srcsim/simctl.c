/*
 * Z80SIM  -  a Z80-CPU simulator
 *
 * This module allows operation of the system from an IMSAI 8080 front panel
 *
 * Copyright (C) 2008 by Udo Munk
 *
 * History:
 * 20-OCT-08 first version finished
 */

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <termios.h>
#include <fcntl.h>
#include <time.h>
#include "sim.h"
#include "simglb.h"
#include "../../iodevices/unix_terminal.h"
#include "../../frontpanel/frontpanel.h"

extern int load_file(char *);
extern int load_core(void);
extern void cpu(void);

BYTE fp_led_output = 0xff;
WORD address_switch;

static BYTE fp_led_wait;
static int cpu_switch;
static int power;

static int load(void);
static void run_cpu(void), step_cpu(void);
static void run_clicked(int, int), step_clicked(int, int);
static void reset_clicked(int, int);
static void examine_clicked(int, int), deposit_clicked(int, int);
static void power_clicked(int, int);
static void quit_callback(void);

/*
 *	This function initializes the frontpanel and terminal.
 *	Boot code gets loaded if provided and then the machine
 *	waits to be operated from the frontpanel, until power
 *	switched OFF again.
 */
void mon(void)
{
	struct timespec timer;

	/* initialize frontpanel */
	if (!fp_init("conf/panel.conf")) {
		puts("frontpanel error");
		exit(1);
	}
	fp_addQuitCallback(quit_callback);
	fp_framerate(30.0);
	fp_bindSimclock(&fp_clock);
	fp_bindRunFlag(&cpu_state);

	/* bind frontpanel LED's to variables */
	fp_bindLight16("LED_ADDR_{00-15}", &fp_led_address, 1);
	fp_bindLight8("LED_DATA_{00-07}", &fp_led_data, 1);
	fp_bindLight8("LED_STATUS_{00-07}", &cpu_bus, 1);
	fp_bindLight8invert("LED_DATOUT_{00-07}", &fp_led_output, 1, 255);
	fp_bindLight8("LED_RUN", &cpu_state, 1);
	fp_bindLight8("LED_WAIT", &fp_led_wait, 1);
	fp_bindLight8("LED_INTEN", &IFF, 1);

	/* bind frontpanel switches to variables */
	fp_bindSwitch16("SW_{00-15}", &address_switch, &address_switch, 1);

	/* add callbacks for frontpanel switches */
	fp_addSwitchCallback("SW_RUN", run_clicked, 0);
	fp_addSwitchCallback("SW_STEP", step_clicked, 0);
	fp_addSwitchCallback("SW_RESET", reset_clicked, 0);
	fp_addSwitchCallback("SW_EXAMINE", examine_clicked, 0);
	fp_addSwitchCallback("SW_DEPOSIT", deposit_clicked, 0);
	fp_addSwitchCallback("SW_PWR", power_clicked, 0);

	/* load memory from file */
	load();

	/* initialize terminal */
	set_unix_terminal();

	/* operate machine from frontpanel */
	while (cpu_error == NONE) {
		fp_sampleData();

		switch (cpu_switch) {
		case 1:
			run_cpu();
			cpu_switch = 0;
			break;
		case 2:
			step_cpu();
			cpu_switch = 0;
			break;
		default:
			break;
		}

		timer.tv_sec = 0;
		timer.tv_nsec = 1000000L;
		nanosleep(&timer, NULL);
	}

	/* reset terminal */
	reset_unix_terminal();
	putchar('\n');

	/* all LED's off and update frontpanel */
	cpu_bus = 0;
	fp_led_wait = 0;
	fp_led_output = 0xff;
	fp_led_address = 0;
	fp_led_data = 0;
	fp_sampleData();

	/* wait a bit before termination */
	sleep(1);
	fp_quit();
}

/*
 *	Load code into memory from file, if provided
 */
int load(void)
{
	if (l_flag) {
		return(load_core());
	}

	if (x_flag) {
		return(load_file(xfn));
	}

	return(0);
}

/*
 *	Run CPU
 */
void run_cpu(void)
{
	cpu_state = CONTIN_RUN;
	cpu_error = NONE;
	cpu();

	switch (cpu_error) {
	case NONE:
		break;
	case OPHALT:
		printf("\r\nHALT Op-Code reached at %04x\r\n",
		       (unsigned int)(PC - ram - 1));
		break;
	case IOTRAP:
		printf("\r\nI/O Trap at %04x\r\n", (unsigned int)(PC - ram));
		break;
	case IOERROR:
		printf("\r\nFatal I/O Error at %04x\r\n",
		       (unsigned int)(PC - ram));
		break;
	case OPTRAP1:
		printf("\r\nOp-code trap at %04x %02x\r\n",
		       (unsigned int)(PC - 1 - ram), *(PC - 1));
		break;
	case OPTRAP2:
		printf("\r\nOp-code trap at %04x %02x %02x\r\n",
		       (unsigned int)(PC - 2 - ram), *(PC - 2), *(PC - 1));
		break;
	case OPTRAP4:
		printf("\r\nOp-code trap at %04x %02x %02x %02x %02x\r\n",
		       (unsigned int)(PC - 4 - ram), *(PC - 4), *(PC - 3),
		       *(PC - 2), *(PC - 1));
		break;
	case USERINT:
		printf("\r\nUser Interrupt at %04x\r\n",
		       (unsigned int)(PC - ram));
		break;
	case POWEROFF:
		break;
	default:
		printf("\r\nUnknown error %d\r\n", cpu_error);
		break;
	}
}

/*
 *	Step CPU
 */
void step_cpu(void)
{
	cpu_state = SINGLE_STEP;
	cpu_error = NONE;
	cpu();
	cpu_state = STOPPED;
	fp_led_wait = 1;

	switch (cpu_error) {
	case NONE:
		break;
	case OPHALT:
		printf("\r\nHALT Op-Code reached at %04x\r\n",
		       (unsigned int)(PC - ram - 1));
		break;
	case IOTRAP:
		printf("\r\nI/O Trap at %04x\r\n", (unsigned int)(PC - ram));
		break;
	case IOERROR:
		printf("\r\nFatal I/O Error at %04x\r\n",
		       (unsigned int)(PC - ram));
		break;
	case OPTRAP1:
		printf("\r\nOp-code trap at %04x %02x\r\n",
		       (unsigned int)(PC - 1 - ram), *(PC - 1));
		break;
	case OPTRAP2:
		printf("\r\nOp-code trap at %04x %02x %02x\r\n",
		       (unsigned int)(PC - 2 - ram), *(PC - 2), *(PC - 1));
		break;
	case OPTRAP4:
		printf("\r\nOp-code trap at %04x %02x %02x %02x %02x\r\n",
		       (unsigned int)(PC - 4 - ram), *(PC - 4), *(PC - 3),
		       *(PC - 2), *(PC - 1));
		break;
	case USERINT:
		printf("\r\nUser Interrupt at %04x\r\n",
		       (unsigned int)(PC - ram));
		break;
	case POWEROFF:
		break;
	default:
		printf("\r\nUnknown error %d\r\n", cpu_error);
		break;
	}
}

/*
 *	Callback for RUN/STOP switch
 */
void run_clicked(int state, int val)
{
	if (!power)
		return;

	if (cpu_bus & CPU_HLTA)
		return;

	switch (state) {
	case FP_SW_UP:
		fp_led_wait = 0;
		cpu_switch = 1;
		break;
	case FP_SW_DOWN:
		cpu_state = STOPPED;
		fp_led_wait = 1;
		cpu_switch = 0;
		break;
	default:
		break;
	}
}

/*
 *	Callback for STEP switch
 */
void step_clicked(int state, int val)
{
	if (!power)
		return;

	if (cpu_state == CONTIN_RUN)
		return;

	switch (state) {
	case FP_SW_UP:
	case FP_SW_DOWN:
		fp_led_wait = 0;
		cpu_switch = 2;
		break;
	default:
		break;
	}
}

/*
 *	Callback for RESET switch
 */
void reset_clicked(int state, int val)
{
	if (!power)
		return;

	switch (state) {
	case FP_SW_UP:
		cpu_state = STOPPED;
		PC = ram;
		STACK = ram + 0xffff;
		IFF = 0;
		int_mode = 0;
		fp_led_wait = 1;
		fp_led_address = 0;
		fp_led_data = *ram;
		fp_led_output = 0;
		break;
	case FP_SW_DOWN:
		break;
	default:
		break;
	}
}

/*
 *	Callback for EXAMINE/EXAMINE NEXT switch
 */
void examine_clicked(int state, int val)
{
	if (!power)
		return;

	if (cpu_state == CONTIN_RUN)
		return;

	switch (state) {
	case FP_SW_UP:
		fp_led_address = address_switch;
		fp_led_data = *(ram + address_switch);
		PC = ram + address_switch;
		break;
	case FP_SW_DOWN:
		fp_led_address++;
		fp_led_data = *(ram + fp_led_address);
		PC = ram + fp_led_address;
		break;
	default:
		break;
	}
}

/*
 *	Callback for DEPOSIT/DEPOSIT NEXT switch
 */
void deposit_clicked(int state, int val)
{
	if (!power)
		return;

	if (cpu_state == CONTIN_RUN)
		return;

	switch (state) {
	case FP_SW_UP:
		fp_led_data = *PC = address_switch & 0xff;
		break;
	case FP_SW_DOWN:
		PC++;
		fp_led_address++;
		fp_led_data = *PC = address_switch & 0xff;
		break;
	default:
		break;
	}
}

/*
 *	Callback for POWER switch
 */
void power_clicked(int state, int val)
{
	switch (state) {
	case FP_SW_UP:
		if (power)
			break;
		power++;
		cpu_bus = CPU_WO | CPU_M1 | CPU_MEMR;
		fp_led_wait = 1;
		fp_led_output = 0;
		break;
	case FP_SW_DOWN:
		if (!power)
			break;
		power--;
		cpu_state = STOPPED;
		cpu_error = POWEROFF;
		break;
	default:
		break;
	}
}

/*
 * Callback for quit (graphics window closed)
 */
void quit_callback(void)
{
	power--;
	cpu_state = STOPPED;
	cpu_error = POWEROFF;
}
