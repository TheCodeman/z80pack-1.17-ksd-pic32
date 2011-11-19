# 1 "../z80sim/sim5.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../z80sim/sim5.c"
# 33 "../z80sim/sim5.c"
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
# 34 "../z80sim/sim5.c" 2
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
# 35 "../z80sim/sim5.c" 2





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
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_addyb,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_addyd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_ldiynn,
  op_ldiny,
  op_inciy,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_addyy,
  op_ldiyinn,
  op_deciy,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_incyd,
  op_decyd,
  op_ldydn,
  trap_fd,
  trap_fd,
  op_addys,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_ldbyd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_ldcyd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_lddyd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_ldeyd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_ldhyd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_ldlyd,
  trap_fd,
  op_ldydb,
  op_ldydc,
  op_ldydd,
  op_ldyde,
  op_ldydh,
  op_ldydl,
  trap_fd,
  op_ldyda,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_ldayd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_adayd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_acayd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_suayd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_scayd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_andyd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_xoryd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_oryd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_cpyd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_fdcb_handel,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_popiy,
  trap_fd,
  op_exspy,
  trap_fd,
  op_pusiy,
  trap_fd,
  trap_fd,
  trap_fd,
  op_jpiy,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  op_ldspy,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd,
  trap_fd
 };


 t = (*op_fd[*PC++]) ();





  if (PC > ram + 65535)
   PC = ram;


 return(t);
}





static int trap_fd(void)
{
 cpu_error = 5;
 cpu_state = 0;
 return(0);
}

static int op_popiy(void)
{







 if (STACK <= ram)
  STACK = ram + 65536L;

 IY = *STACK++;

 if (STACK <= ram)
  STACK = ram + 65536L;

 IY += *STACK++ << 8;
 return(14);
}

static int op_pusiy(void)
{







 if (STACK <= ram)
  STACK = ram + 65536L;

 *--STACK = IY >> 8;

 if (STACK <= ram)
  STACK = ram + 65536L;

 *--STACK = IY;
 return(15);
}

static int op_jpiy(void)
{
 PC = ram + IY;
 return(8);
}

static int op_exspy(void)
{
 register int i;







 i = *STACK + (*(STACK + 1) << 8);
 *STACK = IY;
 *(STACK + 1) = IY >> 8;
 IY = i;






 return(23);
}

static int op_ldspy(void)
{
 STACK = ram + IY;
 return(10);
}

static int op_ldiynn(void)
{






 IY = *PC++;
 IY += *PC++ << 8;
 return(14);
}

static int op_ldiyinn(void)
{
 register BYTE *p;







 p = ram + *PC++;
 p += *PC++ << 8;
 IY = *p++;
 IY += *p << 8;
 return(20);
}

static int op_ldiny(void)
{
 register BYTE *p;







 p = ram + *PC++;
 p += *PC++ << 8;
 *p++ = IY;
 *p = IY >> 8;
 return(20);
}

static int op_adayd(void)
{
 register int i;
 register BYTE P;







 P = *(ram + IY + (signed char) *PC++);
 ((A & 0xf) + (P & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
 (A + P > 255) ? (F |= 1) : (F &= ~1);
 A = i = (signed char) A + (signed char) P;
 (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
 (i & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 F &= ~2;
 return(19);
}

static int op_acayd(void)
{
 register int i, carry;
 register BYTE P;







 carry = (F & 1) ? 1 : 0;
 P = *(ram + IY + (signed char) *PC++);
 ((A & 0xf) + (P & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
 (A + P + carry > 255) ? (F |= 1) : (F &= ~1);
 A = i = (signed char) A + (signed char) P + carry;
 (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
 (i & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 F &= ~2;
 return(19);
}

static int op_suayd(void)
{
 register int i;
 register BYTE P;







 P = *(ram + IY + (signed char) *PC++);
 ((P & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
 (P > A) ? (F |= 1) : (F &= ~1);
 A = i = (signed char) A - (signed char) P;
 (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
 (i & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 F |= 2;
 return(19);
}

static int op_scayd(void)
{
 register int i, carry;
 register BYTE P;







 carry = (F & 1) ? 1 : 0;
 P = *(ram + IY + (signed char) *PC++);
 ((P & 0xf) + carry > (A & 0xf)) ? (F |= 16) : (F &= ~16);
 (P + carry > A) ? (F |= 1) : (F &= ~1);
 A = i = (signed char) A - (signed char) P - carry;
 (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
 (i & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 F |= 2;
 return(19);
}

static int op_andyd(void)
{






 A &= *(ram + IY + (signed char) *PC++);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 F |= 16;
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 F &= ~(2 | 1);
 return(19);
}

static int op_xoryd(void)
{






 A ^= *(ram + IY + (signed char) *PC++);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 F &= ~(16 | 2 | 1);
 return(19);
}

static int op_oryd(void)
{






 A |= *(ram + IY + (signed char) *PC++);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (A) ? (F &= ~64) : (F |= 64);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 F &= ~(16 | 2 | 1);
 return(19);
}

static int op_cpyd(void)
{
 register int i;
 register BYTE P;







 P = *(ram + IY + (signed char) *PC++);
 ((P & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
 (P > A) ? (F |= 1) : (F &= ~1);
 i = (signed char) A - (signed char) P;
 (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
 (i & 128) ? (F |= 128) : (F &= ~128);
 (i) ? (F &= ~64) : (F |= 64);
 F |= 2;
 return(19);
}

static int op_incyd(void)
{
 register BYTE *p;







 p = ram + IY + (signed char) *PC++;
 ((*p & 0xf) + 1 > 0xf) ? (F |= 16) : (F &= ~16);
 (*p)++;
 (*p == 128) ? (F |= 4) : (F &= ~4);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (*p) ? (F &= ~64) : (F |= 64);
 F &= ~2;






 return(23);
}

static int op_decyd(void)
{
 register BYTE *p;







 p = ram + IY + (signed char) *PC++;
 (((*p - 1) & 0xf) == 0xf) ? (F |= 16) : (F &= ~16);
 (*p)--;
 (*p == 127) ? (F |= 4) : (F &= ~4);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (*p) ? (F &= ~64) : (F |= 64);
 F |= 2;






 return(23);
}

static int op_addyb(void)
{
 register int carry;
 BYTE iyl = IY & 0xff;
 BYTE iyh = IY >> 8;

 carry = (iyl + C > 255) ? 1 : 0;
 iyl += C;
 ((iyh & 0xf) + (B & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
 (iyh + B + carry > 255) ? (F |= 1) : (F &= ~1);
 iyh += B + carry;
 IY = (iyh << 8) + iyl;
 F &= ~2;
 return(15);
}

static int op_addyd(void)
{
 register int carry;
 BYTE iyl = IY & 0xff;
 BYTE iyh = IY >> 8;

 carry = (iyl + E > 255) ? 1 : 0;
 iyl += E;
 ((iyh & 0xf) + (D & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
 (iyh + D + carry > 255) ? (F |= 1) : (F &= ~1);
 iyh += D + carry;
 IY = (iyh << 8) + iyl;
 F &= ~2;
 return(15);
}

static int op_addys(void)
{
 register int carry;
 BYTE iyl = IY & 0xff;
 BYTE iyh = IY >> 8;
 BYTE spl = (STACK - ram) & 0xff;
 BYTE sph = (STACK - ram) >> 8;

 carry = (iyl + spl > 255) ? 1 : 0;
 iyl += spl;
 ((iyh & 0xf) + (sph & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
 (iyh + sph + carry > 255) ? (F |= 1) : (F &= ~1);
 iyh += sph + carry;
 IY = (iyh << 8) + iyl;
 F &= ~2;
 return(15);
}

static int op_addyy(void)
{
 register int carry;
 BYTE iyl = IY & 0xff;
 BYTE iyh = IY >> 8;

 carry = (iyl << 1 > 255) ? 1 : 0;
 iyl <<= 1;
 ((iyh & 0xf) + (iyh & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
 (iyh + iyh + carry > 255) ? (F |= 1) : (F &= ~1);
 iyh += iyh + carry;
 IY = (iyh << 8) + iyl;
 F &= ~2;
 return(15);
}

static int op_inciy(void)
{
 IY++;
 return(10);
}

static int op_deciy(void)
{
 IY--;
 return(10);
}

static int op_ldayd(void)
{






 A = *(IY + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldbyd(void)
{






 B = *(IY + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldcyd(void)
{






 C = *(IY + (signed char) *PC++ + ram);
 return(19);
}

static int op_lddyd(void)
{






 D = *(IY + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldeyd(void)
{






 E = *(IY + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldhyd(void)
{






 H = *(IY + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldlyd(void)
{






 L = *(IY + (signed char) *PC++ + ram);
 return(19);
}

static int op_ldyda(void)
{






 *(IY + (signed char) *PC++ + ram) = A;






 return(19);
}

static int op_ldydb(void)
{






 *(IY + (signed char) *PC++ + ram) = B;






 return(19);
}

static int op_ldydc(void)
{






 *(IY + (signed char) *PC++ + ram) = C;






 return(19);
}

static int op_ldydd(void)
{






 *(IY + (signed char) *PC++ + ram) = D;






 return(19);
}

static int op_ldyde(void)
{






 *(IY + (signed char) *PC++ + ram) = E;






 return(19);
}

static int op_ldydh(void)
{






 *(IY + (signed char) *PC++ + ram) = H;






 return(19);
}

static int op_ldydl(void)
{






 *(IY + (signed char) *PC++ + ram) = L;






 return(19);
}

static int op_ldydn(void)
{
 register int d;







 d = (signed char) *PC++;
 *(IY + d + ram) = *PC++;






 return(19);
}
