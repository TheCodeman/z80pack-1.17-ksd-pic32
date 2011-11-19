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
 *	This modul contains the 'main()' function of the simulator,
 *	where the options are checked and variables are initialized.
 *	After initialization of the UNIX interrupts ( int_on() )
 *	and initialization of the I/O simulation ( init_io() )
 *	the user interface ( mon() ) is called.
 */

//#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <fcntl.h>
//#include <memory.h>
#include "sim.h"
#include "simglb.h"

#include <p32xxxx.h>								// device specific defines
#include <plib.h>	
#include "../Include/Compiler.h"// peripheral libraries
#include "../Configuration Bits.h"
#include "../HardwareProfile.h"

#ifdef UseUART1
#include "../uart1.h"
#endif

#ifdef UseUART2
#include "../uart2.h"
#endif

#ifdef UseUART5
#include "../uart5.h"
#endif

#include "../SDCard/SDCard.h"
#include "../SDCard/Microchip/Include/MDD File System/FSDefs.h"
//#include "../SDCard/Microchip/Include/MDD File System/FSIO.h"
#define MDD_MediaDetect         MDD_SDSPI_MediaDetect



volatile unsigned char InpQueue[64];					// INP_QUEUE_SIZE is defined in Maximite.h
volatile int InpQueueHead, InpQueueTail;
volatile int MMAbort = FALSE;
int FileXfr = FALSE;

#define BUFSIZE	256		/* buffer size for file I/O */

int load_core(void);
static void save_core(void);
static int load_mos(int, char *), load_hex(char *), checksum(char *);
extern void int_on(void), int_off(void), mon(void);
extern void init_io(void), exit_io(void);
extern int exatoi(char *);

void _mon_putc(char c);
int _mon_getc(int canblock);


void _mon_putc(char c) {
#ifdef UARTConsole
UARTPutChar( c );
#endif

#ifdef UseVideo
    VideoPutc(c);
#endif

}

int _mon_getc(int canblock) {
    unsigned char c;
    c = -1;
#ifdef UseVideo
MMCursor(1);
    while(InpQueue[InpQueueHead]==0);
        c=InpQueue[InpQueueHead];
        InpQueue[InpQueueHead]=0;
MMCursor(0);
        return c;
#endif
        
#ifdef UARTConsole
    canblock=1;
    if (canblock) {
        while (!UARTIsPressed());
        return UARTGetChar();
    } else {
        if (UARTIsPressed())
            return UARTGetChar();
        else
            return -1;
    }
#endif
}

int main(int argc, char *argv[]) {
    register char *s, *p;
    register char *pn = argv[0];

    // configure the I/O ports
    AD1PCFG = 0xFFFF; // Default all pins to digital
    mJTAGPortEnable(0); // turn off jtag

    // setup the CPU
    SYSTEMConfigPerformance(CLOCKFREQ); // System config performance
    mOSCSetPBDIV(OSC_PB_DIV_1); // fix the peripheral bus to half main clock speed
    INTEnableSystemMultiVectoredInt();

    TRISBbits.TRISB15 = 0;
 //   TRISDbits.TRISD11 = 0;
 //   ODCDbits.ODCD11 = 1;
 //   LATDbits.LATD11=0;

    TRISBbits.TRISB13 = 0;
    ODCBbits.ODCB13 = 1;
    PORTBbits.RB13=0;
#ifdef UARTConsole
    UARTInit();
#endif
    initKeyboard();

#ifdef UseVideo
    initVideo();
#endif



#ifdef CPU_SPEED
    f_flag = CPU_SPEED;
    tmax = CPU_SPEED * 10000;
#endif
    argc = 0;
    while (--argc > 0 && (*++argv)[0] == '-')
        for (s = argv[0] + 1; *s != '\0'; s++)
            switch (*s) {
                case 's': /* save core and CPU on exit */
                    s_flag = 1;
                    break;
                case 'l': /* load core and CPU from file */
                    l_flag = 1;
                    break;
#ifdef Z80_UNDOC
                case 'z': /* trap undocumented Z80 ops */
                    z_flag = 1;
                    break;
#endif
                case 'i': /* trap I/O on unused ports */
                    i_flag = 1;
                    break;
                case 'm': /* initialize Z80 memory */
                    m_flag = exatoi(s + 1);
                    s += strlen(s + 1);
                    break;
                case 'f': /* set emulation speed */
                    f_flag = atoi(s + 1);
                    s += strlen(s + 1);
                    tmax = f_flag * 10000;
                    break;
                case 'x': /* get filename with Z80 executable */
                    x_flag = 1;
                    s++;
                    p = xfn;
                    while (*s)
                        *p++ = *s++;
                    *p = '\0';
                    s--;
                    break;
                case '?':
                    goto usage;
                default:
                    printf("illegal option %c\n", *s);
#ifndef Z80_UNDOC
usage:
                    printf("usage:\t%s -s -l -i -mn -fn -xfilename\n", pn);
#else
usage:
                    printf("usage:\t%s -s -l -i -z -mn -fn -xfilename\n", pn);
#endif
                    puts("\ts = save core and cpu");
                    puts("\tl = load core and cpu");
                    puts("\ti = trap on I/O to unused ports");
#ifdef Z80_UNDOC
                    puts("\tz = trap on undocumented Z80 ops");
#endif
                    puts("\tm = init memory with n");
                    puts("\tf = CPU frequenzy n in MHz");
                    puts("\tx = load and execute filename");
                    exit(1);
            }

    putchar('\n');
    puts("#######  #####    ###            #####    ###   #     #");
    puts("     #  #     #  #   #          #     #    #    ##   ##");
    puts("    #   #     # #     #         #          #    # # # #");
    puts("   #     #####  #     #  #####   #####     #    #  #  #");
    puts("  #     #     # #     #               #    #    #     #");
    puts(" #      #     #  #   #          #     #    #    #     #");
    puts("#######  #####    ###            #####    ###   #     #");
    printf("\nRelease %s, %s\n", RELEASE, COPYR);
    printf("\nPort to PIC32 By kenseglerdesigns.com\n");
    if (f_flag > 0)
        printf("\nCPU speed is %d MHz\n", f_flag);
    else
        printf("\nCPU speed is unlimited\n");
#ifdef	USR_COM
    printf("\n%s Release %s, %s\n", USR_COM, USR_REL, USR_CPR);
#endif
    fflush(stdout);

    wrk_ram = PC = ram;
    STACK = ram +0xffff;
    memset((char *) ram, m_flag, 65536);
    if (l_flag)
        if (load_core())
            return (1);
    int_on();
    init_io();
    mon();
    if (s_flag)
        save_core();
    exit_io();
    int_off();
    return (0);
}

/*
 *	This function saves the CPU and the memory into the file core.z80
 *
 */
static void save_core(void) {
    int fd;
    /*
            if ((fd	= open("core.z80", O_WRONLY | O_CREAT, 0600)) == -1) {
                    puts("can't open file core.z80");
                    return;
            }
            write(fd, (char	*) &A, sizeof(A));
            write(fd, (char	*) &F, sizeof(F));
            write(fd, (char	*) &B, sizeof(B));
            write(fd, (char	*) &C, sizeof(C));
            write(fd, (char	*) &D, sizeof(D));
            write(fd, (char	*) &E, sizeof(E));
            write(fd, (char	*) &H, sizeof(H));
            write(fd, (char	*) &L, sizeof(L));
            write(fd, (char	*) &A_,	sizeof(A_));
            write(fd, (char	*) &F_,	sizeof(F_));
            write(fd, (char	*) &B_,	sizeof(B_));
            write(fd, (char	*) &C_,	sizeof(C_));
            write(fd, (char	*) &D_,	sizeof(D_));
            write(fd, (char	*) &E_,	sizeof(E_));
            write(fd, (char	*) &H_,	sizeof(H_));
            write(fd, (char	*) &L_,	sizeof(L_));
            write(fd, (char	*) &I, sizeof(I));
            write(fd, (char	*) &IFF, sizeof(IFF));
            write(fd, (char	*) &R, sizeof(R));
            write(fd, (char	*) &PC,	sizeof(PC));
            write(fd, (char	*) &STACK, sizeof(STACK));
            write(fd, (char	*) &IX,	sizeof(IX));
            write(fd, (char	*) &IY,	sizeof(IY));
            write(fd, (char	*) ram,	65536);
            close(fd);
     */
}

/*
 *	This function loads the CPU and memory from the file core.z80
 *
 */
int load_core(void) {
    int fd;
    /*
            if ((fd	= open("core.z80", O_RDONLY)) == -1) {
                    puts("can't open file core.z80");
                    return(1);
            }
            read(fd, (char *) &A, sizeof(A));
            read(fd, (char *) &F, sizeof(F));
            read(fd, (char *) &B, sizeof(B));
            read(fd, (char *) &C, sizeof(C));
            read(fd, (char *) &D, sizeof(D));
            read(fd, (char *) &E, sizeof(E));
            read(fd, (char *) &H, sizeof(H));
            read(fd, (char *) &L, sizeof(L));
            read(fd, (char *) &A_, sizeof(A_));
            read(fd, (char *) &F_, sizeof(F_));
            read(fd, (char *) &B_, sizeof(B_));
            read(fd, (char *) &C_, sizeof(C_));
            read(fd, (char *) &D_, sizeof(D_));
            read(fd, (char *) &E_, sizeof(E_));
            read(fd, (char *) &H_, sizeof(H_));
            read(fd, (char *) &L_, sizeof(L_));
            read(fd, (char *) &I, sizeof(I));
            read(fd, (char *) &IFF,	sizeof(IFF));
            read(fd, (char *) &R, sizeof(R));
            read(fd, (char *) &PC, sizeof(PC));
            read(fd, (char *) &STACK, sizeof(STACK));
            read(fd, (char *) &IX, sizeof(IX));
            read(fd, (char *) &IY, sizeof(IY));
            read(fd, (char *) ram, 65536);
            close(fd);
     */
    return (0);
}

/*
 *	Read a file into the memory of the emulated CPU.
 *	The following file formats are supported:
 *
 *		binary images with Mostek header
 *		Intel hex
 */
int load_file(char *s) {
    char fn[LENCMD];
    BYTE fileb[5];
    register char *pfn = fn;
    //	int fd;
    FSFILE *fd;
    if (!FSInit()) printf("Can't Init FS\n\r");
    while (isspace((int) *s))
        s++;
    while (*s != ',' && *s != '\n' && *s != '\0' && *s != '\r')
        *pfn++ = *s++;
    *pfn = '\0';
    if (strlen(fn) == 0) {
        puts("no input file given");
        return (1);
    }
    if ((fd = FSfopen(fn, "R")) == NULL) {
        printf("can't open file %s\n", fn);
        return (1);
    }
    if (*s == ',')
        wrk_ram = ram +exatoi(++s);
    else
        wrk_ram = NULL;
    FSfread((char *) fileb, 5, 1, fd); /*	read first 5 bytes of file */

    if (*fileb == (BYTE) 0xff) { /* Mostek header ? */
        FSfseek(fd, 0l, 0);
        return (load_mos(fd, fn));
    } else {
        close(fd);
        return (load_hex(fn));
    }

}

/*
 *	Loader for binary images with Mostek header.
 *	Format of the first 3 bytes:
 *
 *	0xff ll	lh
 *
 *	ll = load address low
 *	lh = load address high
 */
static int load_mos(int fd, char *fn) {
    BYTE fileb[3];
    unsigned count, readed;
    int rc = 0;

    read(fd, (char *) fileb, 3); /* read load address */
    if (wrk_ram == NULL) /* and set if not given */
        wrk_ram = ram +(fileb[2] * 256 + fileb[1]);
    count = ram +65535 - wrk_ram;
    if ((readed = read(fd, (char *) wrk_ram, count)) == count) {
        puts("Too much to load, stopped at 0xffff");
        rc = 1;
    }
    close(fd);
    printf("\nLoader statistics for file %s:\n", fn);
    printf("START : %04x\n", (unsigned int) (wrk_ram - ram));
    printf("END   : %04x\n", (unsigned int) (wrk_ram - ram +readed - 1));
    printf("LOADED: %04x\n\n", readed);
    PC = wrk_ram;
    return (rc);
}

/*
 *	Loader for Intel hex
 */
static int load_hex(char *fn) {
    register int i;
    FSFILE * fd;
    char buf[BUFSIZE];
    char *s;
    int count = 0;
    int addr = 0;
    int saddr = 0xffff;
    int eaddr = 0;
    int data;
    int temp;
    char tempBuf[BUFSIZE];
    if ((fd = FSfopen(fn, "R")) == NULL) {
        printf("can't open file hex %s\n", fn);
        return (1);
    }
    //:20100000F33100412100420EFFAF77230DC20A10219B2C1100420159007E1223130B78B13A
    while (FSfeof(fd) == 0x00) {
        temp = 0;
        tempBuf[0] = 0;
        while (tempBuf[0] != 0x0a) {
            FSfread(tempBuf, 1, 1, fd);
            if (tempBuf[0] != 0x0d) buf[temp++] = tempBuf[0];
        }
        //	while (fgets(&buf[0], BUFSIZE, fd) != NULL) {
        s = &buf[0];
        while (isspace(*s))
            s++;
        if (*s != ':')
            continue;
        if (checksum(s + 1) != 0) {
            printf("invalid checksum in hex record: %s\n", s);
            return (1);
        }
        s++;
        count = (*s <= '9') ? (*s - '0') << 4 :
                (*s - 'A' + 10) << 4;
        s++;
        count += (*s <= '9') ? (*s - '0') :
                (*s - 'A' + 10);
        s++;
        if (count == 0)
            break;
        addr = (*s <= '9') ? (*s - '0') << 4 :
                (*s - 'A' + 10) << 4;
        s++;
        addr += (*s <= '9') ? (*s - '0') :
                (*s - 'A' + 10);
        s++;
        addr *= 256;
        addr += (*s <= '9') ? (*s - '0') << 4 :
                (*s - 'A' + 10) << 4;
        s++;
        addr += (*s <= '9') ? (*s - '0') :
                (*s - 'A' + 10);
        s++;
        if (addr < saddr)
            saddr = addr;
        eaddr = addr + count - 1;
        s += 2;
        for (i = 0; i < count; i++) {
            data = (*s <= '9') ? (*s - '0') << 4 :
                    (*s - 'A' + 10) << 4;
            s++;
            data += (*s <= '9') ? (*s - '0') :
                    (*s - 'A' + 10);
            s++;
            *(ram +addr + i) = data;
        }
    }

    FSfclose(fd);
    printf("\nLoader statistics for file %s:\n", fn);
    printf("START : %04x\n", saddr);
    printf("END   : %04x\n", eaddr);
    printf("LOADED: %04x\n\n", eaddr - saddr + 1);
    PC = wrk_ram = ram +saddr;

    return (0);
}

/*
 *	Verify checksum of Intel hex records
 */
static int checksum(char *s) {
    int chk = 0;

    while (*s != '\n') {
        chk += (*s <= '9') ?
                (*s - '0') << 4 :
                (*s - 'A' + 10) << 4;
        s++;
        chk += (*s <= '9') ?
                (*s - '0') :
                (*s - 'A' + 10);
        s++;
    }

    if ((chk & 255) == 0)
        return (0);
    else
        return (1);
}
