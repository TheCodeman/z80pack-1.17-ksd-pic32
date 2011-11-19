# 1 "../z80sim/sim7.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../z80sim/sim7.c"
# 33 "../z80sim/sim7.c"
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
# 34 "../z80sim/sim7.c" 2
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
# 35 "../z80sim/sim7.c" 2





static int trap_fdcb(void);
static int op_tb0iyd(int), op_tb1iyd(int), op_tb2iyd(int), op_tb3iyd(int);
static int op_tb4iyd(int), op_tb5iyd(int), op_tb6iyd(int), op_tb7iyd(int);
static int op_rb0iyd(int), op_rb1iyd(int), op_rb2iyd(int), op_rb3iyd(int);
static int op_rb4iyd(int), op_rb5iyd(int), op_rb6iyd(int), op_rb7iyd(int);
static int op_sb0iyd(int), op_sb1iyd(int), op_sb2iyd(int), op_sb3iyd(int);
static int op_sb4iyd(int), op_sb5iyd(int), op_sb6iyd(int), op_sb7iyd(int);
static int op_rlciyd(int), op_rrciyd(int), op_rliyd(int), op_rriyd(int);
static int op_slaiyd(int), op_sraiyd(int), op_srliyd(int);

int op_fdcb_handel(void)
{
 static int (*op_fdcb[256]) () = {
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rlciyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rrciyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rliyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rriyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_slaiyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_sraiyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_srliyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_tb0iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_tb1iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_tb2iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_tb3iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_tb4iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_tb5iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_tb6iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_tb7iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rb0iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rb1iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rb2iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rb3iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rb4iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rb5iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rb6iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_rb7iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_sb0iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_sb1iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_sb2iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_sb3iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_sb4iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_sb5iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_sb6iyd,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  trap_fdcb,
  op_sb7iyd,
  trap_fdcb
 };

 register int d;
 register int t;

 d = (signed char) *PC++;


  if (PC > ram + 65535)
   PC = ram;



 t = (*op_fdcb[*PC++]) (d);





  if (PC > ram + 65535)
   PC = ram;


 return(t);
}





static int trap_fdcb(void)
{
 cpu_error = 6;
 cpu_state = 0;
 return(0L);
}

static int op_tb0iyd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IY + data) & 1) ? (F &= ~(64 | 4))
     : (F |= (64 | 4));
 return(20);
}

static int op_tb1iyd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IY + data) & 2) ? (F &= ~(64 | 4))
     : (F |= (64 | 4));
 return(20);
}

static int op_tb2iyd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IY + data) & 4) ? (F &= ~(64 | 4))
     : (F |= (64 | 4));
 return(20);
}

static int op_tb3iyd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IY + data) & 8) ? (F &= ~(64 | 4))
     : (F |= (64 | 4));
 return(20);
}

static int op_tb4iyd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IY + data) & 16) ? (F &= ~(64 | 4))
      : (F |= (64 | 4));
 return(20);
}

static int op_tb5iyd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IY + data) & 32) ? (F &= ~(64 | 4))
      : (F |= (64 | 4));
 return(20);
}

static int op_tb6iyd(int data)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + IY + data) & 64) ? (F &= ~(64 | 4))
      : (F |= (64 | 4));
 return(20);
}

static int op_tb7iyd(int data)
{






 F &= ~2;
 F |= 16;
 if (*(ram + IY + data) & 128) {
  F &= ~(64 | 4);
  F |= 128;
 } else {
  F |= (64 | 4);
  F &= ~128;
 }
 return(20);
}

static int op_rb0iyd(int data)
{
 *(ram + IY + data) &= ~1;
 return(23);
}

static int op_rb1iyd(int data)
{






 *(ram + IY + data) &= ~2;






 return(23);
}

static int op_rb2iyd(int data)
{






 *(ram + IY + data) &= ~4;






 return(23);
}

static int op_rb3iyd(int data)
{






 *(ram + IY + data) &= ~8;






 return(23);
}

static int op_rb4iyd(int data)
{






 *(ram + IY + data) &= ~16;






 return(23);
}

static int op_rb5iyd(int data)
{






 *(ram + IY + data) &= ~32;






 return(23);
}

static int op_rb6iyd(int data)
{






 *(ram + IY + data) &= ~64;






 return(23);
}

static int op_rb7iyd(int data)
{






 *(ram + IY + data) &= ~128;






 return(23);
}

static int op_sb0iyd(int data)
{






 *(ram + IY + data) |= 1;






 return(23);
}

static int op_sb1iyd(int data)
{






 *(ram + IY + data) |= 2;






 return(23);
}

static int op_sb2iyd(int data)
{






 *(ram + IY + data) |= 4;






 return(23);
}

static int op_sb3iyd(int data)
{






 *(ram + IY + data) |= 8;






 return(23);
}

static int op_sb4iyd(int data)
{






 *(ram + IY + data) |= 16;






 return(23);
}

static int op_sb5iyd(int data)
{






 *(ram + IY + data) |= 32;






 return(23);
}

static int op_sb6iyd(int data)
{






 *(ram + IY + data) |= 64;






 return(23);
}

static int op_sb7iyd(int data)
{






 *(ram + IY + data) |= 128;






 return(23);
}

static int op_rlciyd(int data)
{
 register int i;
 register BYTE *p;







 p = ram + IY + data;
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

static int op_rrciyd(int data)
{
 register int i;
 register BYTE *p;







 p = ram + IY + data;
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

static int op_rliyd(int data)
{
 register int old_c_flag;
 register BYTE *p;







 p = ram + IY + data;
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

static int op_rriyd(int data)
{
 register int old_c_flag;
 register BYTE *p;







 old_c_flag = F & 1;
 p = ram + IY + data;
 (*p & 1) ? (F |= 1) : (F &= ~1);
 *p >>= 1;
 if (old_c_flag) *p |= 128;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(23);
}

static int op_slaiyd(int data)
{
 register BYTE *p;







 p = ram + IY + data;
 (*p & 128) ? (F |= 1) : (F &= ~1);
 *p <<= 1;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(23);
}

static int op_sraiyd(int data)
{
 register int i;
 register BYTE *p;







 p = ram + IY + data;
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

static int op_srliyd(int data)
{
 register BYTE *p;







 p = ram + IY + data;
 (*p & 1) ? (F |= 1) : (F &= ~1);
 *p >>= 1;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(23);
}
