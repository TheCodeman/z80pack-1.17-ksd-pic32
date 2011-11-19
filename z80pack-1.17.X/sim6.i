# 1 "../z80sim/sim6.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../z80sim/sim6.c"
# 33 "../z80sim/sim6.c"
# 1 "../z80sim/sim.h" 1
# 104 "../z80sim/sim.h"
typedef unsigned short WORD;
typedef unsigned char BYTE;


struct history {
 WORD h_adr;
 WORD h_af;
 WORD h_bc;
 WORD h_de;
 WORD h_hl;
 WORD h_ix;
 WORD h_iy;
 WORD h_sp;
};



struct softbreak {
 WORD sb_adr;
 BYTE sb_oldopc;
 int sb_passcount;
 int sb_pass;
};
# 34 "../z80sim/sim6.c" 2
# 1 "../z80sim/simglb.h" 1
# 32 "../z80sim/simglb.h"
extern BYTE A, B, C, D, E, H, L, A_, B_, C_, D_, E_, H_, L_,
  *PC, *STACK, I, IFF;
extern WORD IX, IY;
extern int F, F_;
extern long R;
extern BYTE mem_wp;





extern BYTE ram[],*wrk_ram, cpu_state;

extern int s_flag, l_flag, m_flag, x_flag, break_flag, i_flag, f_flag,
  cpu_error, int_type, int_mode, cntl_c, cntl_bs,
  parrity[], sb_next;





extern int tmax;
extern int busy_loop_cnt[];

extern char xfn[];


extern struct history his[];
extern int h_next, h_flag;



extern struct softbreak soft[];



extern long t_states;
extern int t_flag;
extern BYTE *t_start, *t_end;
# 35 "../z80sim/sim6.c" 2





static int trap_ddcb(void);
static int op_tb0ixd(int), op_tb1ixd(int), op_tb2ixd(int), op_tb3ixd(int);
static int op_tb4ixd(int), op_tb5ixd(int), op_tb6ixd(int), op_tb7ixd(int);
static int op_rb0ixd(int), op_rb1ixd(int), op_rb2ixd(int), op_rb3ixd(int);
static int op_rb4ixd(int), op_rb5ixd(int), op_rb6ixd(int), op_rb7ixd(int);
static int op_sb0ixd(int), op_sb1ixd(int), op_sb2ixd(int), op_sb3ixd(int);
static int op_sb4ixd(int), op_sb5ixd(int), op_sb6ixd(int), op_sb7ixd(int);
static int op_rlcixd(int), op_rrcixd(int), op_rlixd(int), op_rrixd(int);
static int op_slaixd(int), op_sraixd(int), op_srlixd(int);

int op_ddcb_handel(void)
{
 static int (*op_ddcb[256]) () = {
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rlcixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rrcixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rlixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rrixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_slaixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_sraixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_srlixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_tb0ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_tb1ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_tb2ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_tb3ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_tb4ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_tb5ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_tb6ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_tb7ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rb0ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rb1ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rb2ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rb3ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rb4ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rb5ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rb6ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_rb7ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_sb0ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_sb1ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_sb2ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_sb3ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_sb4ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_sb5ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_sb6ixd,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  trap_ddcb,
  op_sb7ixd,
  trap_ddcb
 };

 register int d;
 register int t;

 d = (signed char) *PC++;


  if (PC > ram + 65535)
   PC = ram;



 t = (*op_ddcb[*PC++]) (d);





  if (PC > ram + 65535)
   PC = ram;


 return(t);
}





static int trap_ddcb(void)
{
 cpu_error = 6;
 cpu_state = 0;
 return(0);
}

static int op_tb0ixd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IX + data) & 1) ? (F &= ~(64 | 4))
     : (F |= (64 | 4));
 return(20);
}

static int op_tb1ixd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IX + data) & 2) ? (F &= ~(64 | 4))
     : (F |= (64 | 4));
 return(20);
}

static int op_tb2ixd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IX + data) & 4) ? (F &= ~(64 | 4))
     : (F |= (64 | 4));
 return(20);
}

static int op_tb3ixd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IX + data) & 8) ? (F &= ~(64 | 4))
     : (F |= (64 | 4));
 return(20);
}

static int op_tb4ixd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IX + data) & 16) ? (F &= ~(64 | 4))
      : (F |= (64 | 4));
 return(20);
}

static int op_tb5ixd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IX + data) & 32) ? (F &= ~(64 | 4))
      : (F |= (64 | 4));
 return(20);
}

static int op_tb6ixd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IX + data) & 64) ? (F &= ~(64 | 4))
      : (F |= (64 | 4));
 return(20);
}

static int op_tb7ixd(int data)
{






 F &= ~2;
 F |= 16;
 if (*(ram + IX + data) & 128) {
  F &= ~(64 | 4);
  F |= 128;
 } else {
  F |= (64 | 4);
  F &= ~128;
 }
 return(20);
}

static int op_rb0ixd(int data)
{






 *(ram + IX + data) &= ~1;






 return(23);
}

static int op_rb1ixd(int data)
{






 *(ram + IX + data) &= ~2;






 return(23);
}

static int op_rb2ixd(int data)
{






 *(ram + IX + data) &= ~4;






 return(23);
}

static int op_rb3ixd(int data)
{






 *(ram + IX + data) &= ~8;






 return(23);
}

static int op_rb4ixd(int data)
{






 *(ram + IX + data) &= ~16;






 return(23);
}

static int op_rb5ixd(int data)
{






 *(ram + IX + data) &= ~32;






 return(23);
}

static int op_rb6ixd(int data)
{






 *(ram + IX + data) &= ~64;






 return(23);
}

static int op_rb7ixd(int data)
{






 *(ram + IX + data) &= ~128;






 return(23);
}

static int op_sb0ixd(int data)
{






 *(ram + IX + data) |= 1;






 return(23);
}

static int op_sb1ixd(int data)
{






 *(ram + IX + data) |= 2;






 return(23);
}

static int op_sb2ixd(int data)
{






 *(ram + IX + data) |= 4;






 return(23);
}

static int op_sb3ixd(int data)
{






 *(ram + IX + data) |= 8;






 return(23);
}

static int op_sb4ixd(int data)
{






 *(ram + IX + data) |= 16;






 return(23);
}

static int op_sb5ixd(int data)
{






 *(ram + IX + data) |= 32;






 return(23);
}

static int op_sb6ixd(int data)
{






 *(ram + IX + data) |= 64;






 return(23);
}

static int op_sb7ixd(int data)
{






 *(ram + IX + data) |= 128;






 return(23);
}

static int op_rlcixd(int data)
{
 register int i;
 register BYTE *p;







 p = ram + IX + data;
 i = *p & 128;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 *p <<= 1;
 if (i) *p |= 1;
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(23);
}

static int op_rrcixd(int data)
{
 register int i;
 register BYTE *p;







 p = ram + IX + data;
 i = *p & 1;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 *p >>= 1;
 if (i) *p |= 128;
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(23);
}

static int op_rlixd(int data)
{
 register int old_c_flag;
 register BYTE *p;







 p = ram + IX + data;
 old_c_flag = F & 1;
 (*p & 128) ? (F |= 1) : (F &= ~1);
 *p <<= 1;
 if (old_c_flag) *p |= 1;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(23);
}

static int op_rrixd(int data)
{
 register int old_c_flag;
 register BYTE *p;







 old_c_flag = F & 1;
 p = ram + IX + data;
 (*p & 1) ? (F |= 1) : (F &= ~1);
 *p >>= 1;
 if (old_c_flag) *p |= 128;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(23);
}

static int op_slaixd(int data)
{
 register BYTE *p;







 p = ram + IX + data;
 (*p & 128) ? (F |= 1) : (F &= ~1);
 *p <<= 1;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(23);
}

static int op_sraixd(int data)
{
 register int i;
 register BYTE *p;







 p = ram + IX + data;
 i = *p & 128;
 (*p & 1) ? (F |= 1) : (F &= ~1);
 *p >>= 1;
 *p |= i;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(23);
}

static int op_srlixd(int data)
{
 register BYTE *p;







 p = ram + IX + data;
 (*p & 1) ? (F |= 1) : (F &= ~1);
 *p >>= 1;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(23);
}
