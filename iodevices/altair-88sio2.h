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

extern BYTE altair_sio2_status_in(void);
extern BYTE altair_sio2_status_out(BYTE);
extern BYTE altair_sio2_data_in(void);
extern BYTE altair_sio2_data_out(BYTE);
