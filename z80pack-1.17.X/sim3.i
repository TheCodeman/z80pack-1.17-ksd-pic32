# 1 "../z80sim/sim3.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../z80sim/sim3.c"
# 33 "../z80sim/sim3.c"
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
# 34 "../z80sim/sim3.c" 2
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
# 35 "../z80sim/sim3.c" 2





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






long op_dd_handel(void)
{
 register int t;

 static int (*op_dd[256]) (void) = {
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_addxb,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_addxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_ldixnn,
  op_ldinx,
  op_incix,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_addxx,
  op_ldixinn,
  op_decix,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_incxd,
  op_decxd,
  op_ldxdn,
  trap_dd,
  trap_dd,
  op_addxs,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_ldbxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_ldcxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_lddxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_ldexd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_ldhxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_ldlxd,

  trap_dd,



  op_ldxdb,
  op_ldxdc,
  op_ldxdd,
  op_ldxde,
  op_ldxdh,
  op_ldxdl,
  trap_dd,
  op_ldxda,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_ldaxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_adaxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_acaxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_suaxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_scaxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_andxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_xorxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_orxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,

  trap_dd,



  op_cpxd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_ddcb_handel,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_popix,
  trap_dd,
  op_exspx,
  trap_dd,
  op_pusix,
  trap_dd,
  trap_dd,
  trap_dd,
  op_jpix,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  op_ldspx,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd,
  trap_dd
 };



 t = (*op_dd[*PC++]) ();





  if (PC > ram + 65535)
   PC = ram;


 return(t);
}





static int trap_dd(void)
{
 cpu_error = 5;
 cpu_state = 0;
 return(0);
}

static int op_popix(void)
{







 if (STACK <= ram)
  STACK = ram + 65536L;

 IX = *STACK++;

 if (STACK <= ram)
  STACK = ram + 65536L;

 IX += *STACK++ << 8;
 return(14);
}

static int op_pusix(void)
{







 if (STACK <= ram)
  STACK = ram + 65536L;

 *--STACK = IX >> 8;

 if (STACK <= ram)
  STACK = ram + 65536L;

 *--STACK = IX;
 return(15);
}

static int op_jpix(void)
{
 PC = ram + IX;
 return(8);
}

static int op_exspx(void)
{
 register int i;







 i = *STACK + (*(STACK + 1) << 8);
 *STACK = IX;
 *(STACK + 1) = IX >> 8;
 IX = i;






 return(23);
}

static int op_ldspx(void)
{
 STACK = ram + IX;
 return(10);
}

static int op_ldixnn(void)
{






 IX = *PC++;
 IX += *PC++ << 8;
 return(14);
}

static int op_ldixinn(void)
{
 register BYTE *p;







 p = ram + *PC++;
 p += *PC++ << 8;
 IX = *p++;
 IX += *p << 8;
 return(20);
}

static int op_ldinx(void)
{
 register BYTE *p;







 p = ram + *PC++;
 p += *PC++ << 8;
 *p++ = IX;
 *p = IX >> 8;
 return(20);
}

static int op_adaxd(void)
{
 register int i;
 register BYTE P;







 P = *(ram + IX + (signed char) *PC++);
 ((A & 0xf) + (P & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
 (A + P > 255) ? (F |= 1) : (F &= ~1);
 A = i = (signed char) A + (signed char) P;
 (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
 (i & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 F &= ~2;
 return(19);
}

static int op_acaxd(void)
{
 register int i, carry;
 register BYTE P;







 carry = (F & 1) ? 1 : 0;
 P = *(ram + IX + (signed char) *PC++);
 ((A & 0xf) + (P & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
 (A + P + carry > 255) ? (F |= 1) : (F &= ~1);
 A = i = (signed char) A + (signed char) P + carry;
 (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
 (i & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 F &= ~2;
 return(19);
}

static int op_suaxd(void)
{
 register int i;
 register BYTE P;







 P = *(ram + IX + (signed char) *PC++);
 ((P & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
 (P > A) ? (F |= 1) : (F &= ~1);
 A = i = (signed char) A - (signed char) P;
 (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
 (i & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 F |= 2;
 return(19);
}

static int op_scaxd(void)
{
 register int i, carry;
 register BYTE P;







 carry = (F & 1) ? 1 : 0;
 P = *(ram + IX + (signed char) *PC++);
 ((P & 0xf) + carry > (A & 0xf)) ? (F |= 16) : (F &= ~16);
 (P + carry > A) ? (F |= 1) : (F &= ~1);
 A = i = (signed char) A - (signed char) P - carry;
 (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
 (i & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 F |= 2;
 return(19);
}

static int op_andxd(void)
{






 A &= *(ram + IX + (signed char) *PC++);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 F |= 16;
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 F &= ~(2 | 1);
 return(19);
}

static int op_xorxd(void)
{






 A ^= *(ram + IX + (signed char) *PC++);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 F &= ~(16 | 2 | 1);
 return(19);
}

static int op_orxd(void)
{






 A |= *(ram + IX + (signed char) *PC++);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 F &= ~(16 | 2 | 1);
 return(19);
}

static int op_cpxd(void)
{
 register int i;
 register BYTE P;







 P = *(ram + IX + (signed char) *PC++);
 ((P & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
 (P > A) ? (F |= 1) : (F &= ~1);
 i = (signed char) A - (signed char) P;
 (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
 (i & 128) ? (F |= 128) : (F &= ~128);
 (i) ? (F &= ~64) : (F |= 64);
 F |= 2;
 return(19);
}

static int op_incxd(void)
{
 register BYTE *p;







 p = ram + IX + (signed char) *PC++;
 ((*p & 0xf) + 1 > 0xf) ? (F |= 16) : (F &= ~16);
 (*p)++;
 (*p == 128) ? (F |= 4) : (F &= ~4);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (*p) ? (F &= ~64) : (F |= 64);
 F &= ~2;






 return(23);
}

static int op_decxd(void)
{
 register BYTE *p;







 p = ram + IX + (signed char) *PC++;
 (((*p - 1) & 0xf) == 0xf) ? (F |= 16) : (F &= ~16);
 (*p)--;
 (*p == 127) ? (F |= 4) : (F &= ~4);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (*p) ? (F &= ~64) : (F |= 64);
 F |= 2;






 return(23);
}

static int op_addxb(void)
{
 register int carry;
 BYTE ixl = IX & 0xff;
 BYTE ixh = IX >> 8;

 carry = (ixl + C > 255) ? 1 : 0;
 ixl += C;
 ((ixh & 0xf) + (B & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
 (ixh + B + carry > 255) ? (F |= 1) : (F &= ~1);
 ixh += B + carry;
 IX = (ixh << 8) + ixl;
 F &= ~2;
 return(15);
}

static int op_addxd(void)
{
 register int carry;
 BYTE ixl = IX & 0xff;
 BYTE ixh = IX >> 8;

 carry = (ixl + E > 255) ? 1 : 0;
 ixl += E;
 ((ixh & 0xf) + (D & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
 (ixh + D + carry > 255) ? (F |= 1) : (F &= ~1);
 ixh += D + carry;
 IX = (ixh << 8) + ixl;
 F &= ~2;
 return(15);
}

static int op_addxs(void)
{
 register int carry;
 BYTE ixl = IX & 0xff;
 BYTE ixh = IX >> 8;
 BYTE spl = (STACK - ram) & 0xff;
 BYTE sph = (STACK - ram) >> 8;

 carry = (ixl + spl > 255) ? 1 : 0;
 ixl += spl;
 ((ixh & 0xf) + (sph & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
 (ixh + sph + carry > 255) ? (F |= 1) : (F &= ~1);
 ixh += sph + carry;
 IX = (ixh << 8) + ixl;
 F &= ~2;
 return(15);
}

static int op_addxx(void)
{
 register int carry;
 BYTE ixl = IX & 0xff;
 BYTE ixh = IX >> 8;

 carry = (ixl << 1 > 255) ? 1 : 0;
 ixl <<= 1;
 ((ixh & 0xf) + (ixh & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
 (ixh + ixh + carry > 255) ? (F |= 1) : (F &= ~1);
 ixh += ixh + carry;
 IX = (ixh << 8) + ixl;
 F &= ~2;
 return(15);
}

static int op_incix(void)
{
 IX++;
 return(10);
}

static int op_decix(void)
{
 IX--;
 return(10);
}

static int op_ldaxd(void)
{






 A = *(IX + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldbxd(void)
{






 B = *(IX + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldcxd(void)
{






 C = *(IX + (signed char) *PC++ + ram);
 return(19);
}

static int op_lddxd(void)
{






 D = *(IX + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldexd(void)
{






 E = *(IX + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldhxd(void)
{






 H = *(IX + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldlxd(void)
{






 L = *(IX + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldxda(void)
{






 *(IX + (signed char) *PC++ + ram) = A;






 return(19);
}

static int op_ldxdb(void)
{






 *(IX + (signed char) *PC++ + ram) = B;






 return(19);
}

static int op_ldxdc(void)
{






 *(IX + (signed char) *PC++ + ram) = C;






 return(19);
}

static int op_ldxdd(void)
{






 *(IX + (signed char) *PC++ + ram) = D;






 return(19);
}

static int op_ldxde(void)
{






 *(IX + (signed char) *PC++ + ram) = E;






 return(19);
}

static int op_ldxdh(void)
{






 *(IX + (signed char) *PC++ + ram) = H;






 return(19);
}

static int op_ldxdl(void)
{






 *(IX + (signed char) *PC++ + ram) = L;






 return(19);
}

static int op_ldxdn(void)
{
 register int d;







 d = (signed char) *PC++;
 *(IX + d + ram) = *PC++;






 return(19);
}
