# 1 "../z80sim/sim2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../z80sim/sim2.c"
# 33 "../z80sim/sim2.c"
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
# 34 "../z80sim/sim2.c" 2
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
# 35 "../z80sim/sim2.c" 2





static int trap_cb(void);
static int op_srla(void), op_srlb(void), op_srlc(void);
static int op_srld(void), op_srle(void);
static int op_srlh(void), op_srll(void), op_srlhl(void);
static int op_slaa(void), op_slab(void), op_slac(void);
static int op_slad(void), op_slae(void);
static int op_slah(void), op_slal(void), op_slahl(void);
static int op_rlra(void), op_rlb(void), op_rlc(void);
static int op_rld(void), op_rle(void);
static int op_rlh(void), op_rll(void), op_rlhl(void);
static int op_rrra(void), op_rrb(void), op_rrc(void);
static int op_rrd(void), op_rre(void);
static int op_rrh(void), op_rrl(void), op_rrhl(void);
static int op_rrcra(void), op_rrcb(void), op_rrcc(void);
static int op_rrcd(void), op_rrce(void);
static int op_rrch(void), op_rrcl(void), op_rrchl(void);
static int op_rlcra(void), op_rlcb(void), op_rlcc(void);
static int op_rlcd(void), op_rlce(void);
static int op_rlch(void), op_rlcl(void), op_rlchl(void);
static int op_sraa(void), op_srab(void), op_srac(void);
static int op_srad(void), op_srae(void);
static int op_srah(void), op_sral(void), op_srahl(void);
static int op_sb0a(void), op_sb1a(void), op_sb2a(void), op_sb3a(void);
static int op_sb4a(void), op_sb5a(void), op_sb6a(void), op_sb7a(void);
static int op_sb0b(void), op_sb1b(void), op_sb2b(void), op_sb3b(void);
static int op_sb4b(void), op_sb5b(void), op_sb6b(void), op_sb7b(void);
static int op_sb0c(void), op_sb1c(void), op_sb2c(void), op_sb3c(void);
static int op_sb4c(void), op_sb5c(void), op_sb6c(void), op_sb7c(void);
static int op_sb0d(void), op_sb1d(void), op_sb2d(void), op_sb3d(void);
static int op_sb4d(void), op_sb5d(void), op_sb6d(void), op_sb7d(void);
static int op_sb0e(void), op_sb1e(void), op_sb2e(void), op_sb3e(void);
static int op_sb4e(void), op_sb5e(void), op_sb6e(void), op_sb7e(void);
static int op_sb0h(void), op_sb1h(void), op_sb2h(void), op_sb3h(void);
static int op_sb4h(void), op_sb5h(void), op_sb6h(void), op_sb7h(void);
static int op_sb0l(void), op_sb1l(void), op_sb2l(void), op_sb3l(void);
static int op_sb4l(void), op_sb5l(void), op_sb6l(void), op_sb7l(void);
static int op_sb0hl(void), op_sb1hl(void), op_sb2hl(void), op_sb3hl(void);
static int op_sb4hl(void), op_sb5hl(void), op_sb6hl(void), op_sb7hl(void);
static int op_rb0a(void), op_rb1a(void), op_rb2a(void), op_rb3a(void);
static int op_rb4a(void), op_rb5a(void), op_rb6a(void), op_rb7a(void);
static int op_rb0b(void), op_rb1b(void), op_rb2b(void), op_rb3b(void);
static int op_rb4b(void), op_rb5b(void), op_rb6b(void), op_rb7b(void);
static int op_rb0c(void), op_rb1c(void), op_rb2c(void), op_rb3c(void);
static int op_rb4c(void), op_rb5c(void), op_rb6c(void), op_rb7c(void);
static int op_rb0d(void), op_rb1d(void), op_rb2d(void), op_rb3d(void);
static int op_rb4d(void), op_rb5d(void), op_rb6d(void), op_rb7d(void);
static int op_rb0e(void), op_rb1e(void), op_rb2e(void), op_rb3e(void);
static int op_rb4e(void), op_rb5e(void), op_rb6e(void), op_rb7e(void);
static int op_rb0h(void), op_rb1h(void), op_rb2h(void), op_rb3h(void);
static int op_rb4h(void), op_rb5h(void), op_rb6h(void), op_rb7h(void);
static int op_rb0l(void), op_rb1l(void), op_rb2l(void), op_rb3l(void);
static int op_rb4l(void), op_rb5l(void), op_rb6l(void), op_rb7l(void);
static int op_rb0hl(void), op_rb1hl(void), op_rb2hl(void), op_rb3hl(void);
static int op_rb4hl(void), op_rb5hl(void), op_rb6hl(void), op_rb7hl(void);
static int op_tb0a(void), op_tb1a(void), op_tb2a(void), op_tb3a(void);
static int op_tb4a(void), op_tb5a(void), op_tb6a(void), op_tb7a(void);
static int op_tb0b(void), op_tb1b(void), op_tb2b(void), op_tb3b(void);
static int op_tb4b(void), op_tb5b(void), op_tb6b(void), op_tb7b(void);
static int op_tb0c(void), op_tb1c(void), op_tb2c(void), op_tb3c(void);
static int op_tb4c(void), op_tb5c(void), op_tb6c(void), op_tb7c(void);
static int op_tb0d(void), op_tb1d(void), op_tb2d(void), op_tb3d(void);
static int op_tb4d(void), op_tb5d(void), op_tb6d(void), op_tb7d(void);
static int op_tb0e(void), op_tb1e(void), op_tb2e(void), op_tb3e(void);
static int op_tb4e(void), op_tb5e(void), op_tb6e(void), op_tb7e(void);
static int op_tb0h(void), op_tb1h(void), op_tb2h(void), op_tb3h(void);
static int op_tb4h(void), op_tb5h(void), op_tb6h(void), op_tb7h(void);
static int op_tb0l(void), op_tb1l(void), op_tb2l(void), op_tb3l(void);
static int op_tb4l(void), op_tb5l(void), op_tb6l(void), op_tb7l(void);
static int op_tb0hl(void), op_tb1hl(void), op_tb2hl(void), op_tb3hl(void);
static int op_tb4hl(void), op_tb5hl(void), op_tb6hl(void), op_tb7hl(void);

int op_cb_handel(void)
{
 register int t;

 static int (*op_cb[256]) (void) = {
  op_rlcb,
  op_rlcc,
  op_rlcd,
  op_rlce,
  op_rlch,
  op_rlcl,
  op_rlchl,
  op_rlcra,
  op_rrcb,
  op_rrcc,
  op_rrcd,
  op_rrce,
  op_rrch,
  op_rrcl,
  op_rrchl,
  op_rrcra,
  op_rlb,
  op_rlc,
  op_rld,
  op_rle,
  op_rlh,
  op_rll,
  op_rlhl,
  op_rlra,
  op_rrb,
  op_rrc,
  op_rrd,
  op_rre,
  op_rrh,
  op_rrl,
  op_rrhl,
  op_rrra,
  op_slab,
  op_slac,
  op_slad,
  op_slae,
  op_slah,
  op_slal,
  op_slahl,
  op_slaa,
  op_srab,
  op_srac,
  op_srad,
  op_srae,
  op_srah,
  op_sral,
  op_srahl,
  op_sraa,
  trap_cb,
  trap_cb,
  trap_cb,
  trap_cb,
  trap_cb,
  trap_cb,
  trap_cb,
  trap_cb,
  op_srlb,
  op_srlc,
  op_srld,
  op_srle,
  op_srlh,
  op_srll,
  op_srlhl,
  op_srla,
  op_tb0b,
  op_tb0c,
  op_tb0d,
  op_tb0e,
  op_tb0h,
  op_tb0l,
  op_tb0hl,
  op_tb0a,
  op_tb1b,
  op_tb1c,
  op_tb1d,
  op_tb1e,
  op_tb1h,
  op_tb1l,
  op_tb1hl,
  op_tb1a,
  op_tb2b,
  op_tb2c,
  op_tb2d,
  op_tb2e,
  op_tb2h,
  op_tb2l,
  op_tb2hl,
  op_tb2a,
  op_tb3b,
  op_tb3c,
  op_tb3d,
  op_tb3e,
  op_tb3h,
  op_tb3l,
  op_tb3hl,
  op_tb3a,
  op_tb4b,
  op_tb4c,
  op_tb4d,
  op_tb4e,
  op_tb4h,
  op_tb4l,
  op_tb4hl,
  op_tb4a,
  op_tb5b,
  op_tb5c,
  op_tb5d,
  op_tb5e,
  op_tb5h,
  op_tb5l,
  op_tb5hl,
  op_tb5a,
  op_tb6b,
  op_tb6c,
  op_tb6d,
  op_tb6e,
  op_tb6h,
  op_tb6l,
  op_tb6hl,
  op_tb6a,
  op_tb7b,
  op_tb7c,
  op_tb7d,
  op_tb7e,
  op_tb7h,
  op_tb7l,
  op_tb7hl,
  op_tb7a,
  op_rb0b,
  op_rb0c,
  op_rb0d,
  op_rb0e,
  op_rb0h,
  op_rb0l,
  op_rb0hl,
  op_rb0a,
  op_rb1b,
  op_rb1c,
  op_rb1d,
  op_rb1e,
  op_rb1h,
  op_rb1l,
  op_rb1hl,
  op_rb1a,
  op_rb2b,
  op_rb2c,
  op_rb2d,
  op_rb2e,
  op_rb2h,
  op_rb2l,
  op_rb2hl,
  op_rb2a,
  op_rb3b,
  op_rb3c,
  op_rb3d,
  op_rb3e,
  op_rb3h,
  op_rb3l,
  op_rb3hl,
  op_rb3a,
  op_rb4b,
  op_rb4c,
  op_rb4d,
  op_rb4e,
  op_rb4h,
  op_rb4l,
  op_rb4hl,
  op_rb4a,
  op_rb5b,
  op_rb5c,
  op_rb5d,
  op_rb5e,
  op_rb5h,
  op_rb5l,
  op_rb5hl,
  op_rb5a,
  op_rb6b,
  op_rb6c,
  op_rb6d,
  op_rb6e,
  op_rb6h,
  op_rb6l,
  op_rb6hl,
  op_rb6a,
  op_rb7b,
  op_rb7c,
  op_rb7d,
  op_rb7e,
  op_rb7h,
  op_rb7l,
  op_rb7hl,
  op_rb7a,
  op_sb0b,
  op_sb0c,
  op_sb0d,
  op_sb0e,
  op_sb0h,
  op_sb0l,
  op_sb0hl,
  op_sb0a,
  op_sb1b,
  op_sb1c,
  op_sb1d,
  op_sb1e,
  op_sb1h,
  op_sb1l,
  op_sb1hl,
  op_sb1a,
  op_sb2b,
  op_sb2c,
  op_sb2d,
  op_sb2e,
  op_sb2h,
  op_sb2l,
  op_sb2hl,
  op_sb2a,
  op_sb3b,
  op_sb3c,
  op_sb3d,
  op_sb3e,
  op_sb3h,
  op_sb3l,
  op_sb3hl,
  op_sb3a,
  op_sb4b,
  op_sb4c,
  op_sb4d,
  op_sb4e,
  op_sb4h,
  op_sb4l,
  op_sb4hl,
  op_sb4a,
  op_sb5b,
  op_sb5c,
  op_sb5d,
  op_sb5e,
  op_sb5h,
  op_sb5l,
  op_sb5hl,
  op_sb5a,
  op_sb6b,
  op_sb6c,
  op_sb6d,
  op_sb6e,
  op_sb6h,
  op_sb6l,
  op_sb6hl,
  op_sb6a,
  op_sb7b,
  op_sb7c,
  op_sb7d,
  op_sb7e,
  op_sb7h,
  op_sb7l,
  op_sb7hl,
  op_sb7a
 };


 t = (*op_cb[*PC++]) ();





  if (PC > ram + 65535)
   PC = ram;


 return(t);
}





static int trap_cb(void)
{
 cpu_error = 5;
 cpu_state = 0;
 return(0);
}

static int op_srla(void)
{
 (A & 1) ? (F |= 1) : (F &= ~1);
 A >>= 1;
 F &= ~(16 | 2);
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srlb(void)
{
 (B & 1) ? (F |= 1) : (F &= ~1);
 B >>= 1;
 F &= ~(16 | 2);
 (B) ? (F &= ~64) : (F |= 64);
 (B & 128) ? (F |= 128) : (F &= ~128);
 (parrity[B]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srlc(void)
{
 (C & 1) ? (F |= 1) : (F &= ~1);
 C >>= 1;
 F &= ~(16 | 2);
 (C) ? (F &= ~64) : (F |= 64);
 (C & 128) ? (F |= 128) : (F &= ~128);
 (parrity[C]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srld(void)
{
 (D & 1) ? (F |= 1) : (F &= ~1);
 D >>= 1;
 F &= ~(16 | 2);
 (D) ? (F &= ~64) : (F |= 64);
 (D & 128) ? (F |= 128) : (F &= ~128);
 (parrity[D]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srle(void)
{
 (E & 1) ? (F |= 1) : (F &= ~1);
 E >>= 1;
 F &= ~(16 | 2);
 (E) ? (F &= ~64) : (F |= 64);
 (E & 128) ? (F |= 128) : (F &= ~128);
 (parrity[E]) ? (F &= ~4) :(F |= 4);
 return(8);
}

static int op_srlh(void)
{
 (H & 1) ? (F |= 1) : (F &= ~1);
 H >>= 1;
 F &= ~(16 | 2);
 (H) ? (F &= ~64) : (F |= 64);
 (H & 128) ? (F |= 128) : (F &= ~128);
 (parrity[H]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srll(void)
{
 (L & 1) ? (F |= 1) : (F &= ~1);
 L >>= 1;
 F &= ~(16 | 2);
 (L) ? (F &= ~64) : (F |= 64);
 (L & 128) ? (F |= 128) : (F &= ~128);
 (parrity[L]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srlhl(void)
{
 register BYTE *p;







 p = ram + (H << 8) + L;
 (*p & 1) ? (F |= 1) : (F &= ~1);
 *p >>= 1;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(15);
}

static int op_slaa(void)
{
 (A & 128) ? (F |= 1) : (F &= ~1);
 A <<= 1;
 F &= ~(16 | 2);
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_slab(void)
{
 (B & 128) ? (F |= 1) : (F &= ~1);
 B <<= 1;
 F &= ~(16 | 2);
 (B) ? (F &= ~64) : (F |= 64);
 (B & 128) ? (F |= 128) : (F &= ~128);
 (parrity[B]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_slac(void)
{
 (C & 128) ? (F |= 1) : (F &= ~1);
 C <<= 1;
 F &= ~(16 | 2);
 (C) ? (F &= ~64) : (F |= 64);
 (C & 128) ? (F |= 128) : (F &= ~128);
 (parrity[C]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_slad(void)
{
 (D & 128) ? (F |= 1) : (F &= ~1);
 D <<= 1;
 F &= ~(16 | 2);
 (D) ? (F &= ~64) : (F |= 64);
 (D & 128) ? (F |= 128) : (F &= ~128);
 (parrity[D]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_slae(void)
{
 (E & 128) ? (F |= 1) : (F &= ~1);
 E <<= 1;
 F &= ~(16 | 2);
 (E) ? (F &= ~64) : (F |= 64);
 (E & 128) ? (F |= 128) : (F &= ~128);
 (parrity[E]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_slah(void)
{
 (H & 128) ? (F |= 1) : (F &= ~1);
 H <<= 1;
 F &= ~(16 | 2);
 (H) ? (F &= ~64) : (F |= 64);
 (H & 128) ? (F |= 128) : (F &= ~128);
 (parrity[H]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_slal(void)
{
 (L & 128) ? (F |= 1) : (F &= ~1);
 L <<= 1;
 F &= ~(16 | 2);
 (L) ? (F &= ~64) : (F |= 64);
 (L & 128) ? (F |= 128) : (F &= ~128);
 (parrity[L]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_slahl(void)
{
 register BYTE *p;







 p = ram + (H << 8) + L;
 (*p & 128) ? (F |= 1) : (F &= ~1);
 *p <<= 1;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(15);
}

static int op_rlra(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (A & 128) ? (F |= 1) : (F &= ~1);
 A <<= 1;
 if (old_c_flag) A |= 1;
 F &= ~(16 | 2);
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlb(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (B & 128) ? (F |= 1) : (F &= ~1);
 B <<= 1;
 if (old_c_flag) B |= 1;
 F &= ~(16 | 2);
 (B) ? (F &= ~64) : (F |= 64);
 (B & 128) ? (F |= 128) : (F &= ~128);
 (parrity[B]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlc(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (C & 128) ? (F |= 1) : (F &= ~1);
 C <<= 1;
 if (old_c_flag) C |= 1;
 F &= ~(16 | 2);
 (C) ? (F &= ~64) : (F |= 64);
 (C & 128) ? (F |= 128) : (F &= ~128);
 (parrity[C]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rld(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (D & 128) ? (F |= 1) : (F &= ~1);
 D <<= 1;
 if (old_c_flag) D |= 1;
 F &= ~(16 | 2);
 (D) ? (F &= ~64) : (F |= 64);
 (D & 128) ? (F |= 128) : (F &= ~128);
 (parrity[D]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rle(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (E & 128) ? (F |= 1) : (F &= ~1);
 E <<= 1;
 if (old_c_flag) E |= 1;
 F &= ~(16 | 2);
 (E) ? (F &= ~64) : (F |= 64);
 (E & 128) ? (F |= 128) : (F &= ~128);
 (parrity[E]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlh(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (H & 128) ? (F |= 1) : (F &= ~1);
 H <<= 1;
 if (old_c_flag) H |= 1;
 F &= ~(16 | 2);
 (H) ? (F &= ~64) : (F |= 64);
 (H & 128) ? (F |= 128) : (F &= ~128);
 (parrity[H]) ? (F &= ~4) :(F |= 4);
 return(8);
}

static int op_rll(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (L & 128) ? (F |= 1) : (F &= ~1);
 L <<= 1;
 if (old_c_flag) L |= 1;
 F &= ~(16 | 2);
 (L) ? (F &= ~64) : (F |= 64);
 (L & 128) ? (F |= 128) : (F &= ~128);
 (parrity[L]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlhl(void)
{
 register int old_c_flag;
 register BYTE *p;







 p = ram + (H << 8) + L;
 old_c_flag = F & 1;
 (*p & 128) ? (F |= 1) : (F &= ~1);
 *p <<= 1;
 if (old_c_flag) *p |= 1;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(15);
}

static int op_rrra(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (A & 1) ? (F |= 1) : (F &= ~1);
 A >>= 1;
 if (old_c_flag) A |= 128;
 F &= ~(16 | 2);
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrb(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (B & 1) ? (F |= 1) : (F &= ~1);
 B >>= 1;
 if (old_c_flag) B |= 128;
 F &= ~(16 | 2);
 (B) ? (F &= ~64) : (F |= 64);
 (B & 128) ? (F |= 128) : (F &= ~128);
 (parrity[B]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrc(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (C & 1) ? (F |= 1) : (F &= ~1);
 C >>= 1;
 if (old_c_flag) C |= 128;
 F &= ~(16 | 2);
 (C) ? (F &= ~64) : (F |= 64);
 (C & 128) ? (F |= 128) : (F &= ~128);
 (parrity[C]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrd(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (D & 1) ? (F |= 1) : (F &= ~1);
 D >>= 1;
 if (old_c_flag) D |= 128;
 F &= ~(16 | 2);
 (D) ? (F &= ~64) : (F |= 64);
 (D & 128) ? (F |= 128) : (F &= ~128);
 (parrity[D]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rre(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (E & 1) ? (F |= 1) : (F &= ~1);
 E >>= 1;
 if (old_c_flag) E |= 128;
 F &= ~(16 | 2);
 (E) ? (F &= ~64) : (F |= 64);
 (E & 128) ? (F |= 128) : (F &= ~128);
 (parrity[E]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrh(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (H & 1) ? (F |= 1) : (F &= ~1);
 H >>= 1;
 if (old_c_flag) H |= 128;
 F &= ~(16 | 2);
 (H) ? (F &= ~64) : (F |= 64);
 (H & 128) ? (F |= 128) : (F &= ~128);
 (parrity[H]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrl(void)
{
 register int old_c_flag;

 old_c_flag = F & 1;
 (L & 1) ? (F |= 1) : (F &= ~1);
 L >>= 1;
 if (old_c_flag) L |= 128;
 F &= ~(16 | 2);
 (L) ? (F &= ~64) : (F |= 64);
 (L & 128) ? (F |= 128) : (F &= ~128);
 (parrity[L]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrhl(void)
{
 register int old_c_flag;
 register BYTE *p;







 old_c_flag = F & 1;
 p = ram + (H << 8) + L;
 (*p & 1) ? (F |= 1) : (F &= ~1);
 *p >>= 1;
 if (old_c_flag) *p |= 128;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(15);
}

static int op_rrcra(void)
{
 register int i;

 i = A & 1;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 A >>= 1;
 if (i) A |= 128;
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrcb(void)
{
 register int i;

 i = B & 1;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 B >>= 1;
 if (i) B |= 128;
 (B) ? (F &= ~64) : (F |= 64);
 (B & 128) ? (F |= 128) : (F &= ~128);
 (parrity[B]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrcc(void)
{
 register int i;

 i = C & 1;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 C >>= 1;
 if (i) C |= 128;
 (C) ? (F &= ~64) : (F |= 64);
 (C & 128) ? (F |= 128) : (F &= ~128);
 (parrity[C]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrcd(void)
{
 register int i;

 i = D & 1;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 D >>= 1;
 if (i) D |= 128;
 (D) ? (F &= ~64) : (F |= 64);
 (D & 128) ? (F |= 128) : (F &= ~128);
 (parrity[D]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrce(void)
{
 register int i;

 i = E & 1;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 E >>= 1;
 if (i) E |= 128;
 (E) ? (F &= ~64) : (F |= 64);
 (E & 128) ? (F |= 128) : (F &= ~128);
 (parrity[E]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrch(void)
{
 register int i;

 i = H & 1;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 H >>= 1;
 if (i) H |= 128;
 (H) ? (F &= ~64) : (F |= 64);
 (H & 128) ? (F |= 128) : (F &= ~128);
 (parrity[H]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrcl(void)
{
 register int i;

 i = L & 1;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 L >>= 1;
 if (i) L |= 128;
 (L) ? (F &= ~64) : (F |= 64);
 (L & 128) ? (F |= 128) : (F &= ~128);
 (parrity[L]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rrchl(void)
{
 register int i;
 register BYTE *p;







 p = ram + (H << 8) + L;
 i = *p & 1;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 *p >>= 1;
 if (i) *p |= 128;
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(15);
}

static int op_rlcra(void)
{
 register int i;

 i = A & 128;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 A <<= 1;
 if (i) A |= 1;
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlcb(void)
{
 register int i;

 i = B & 128;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 B <<= 1;
 if (i) B |= 1;
 (B) ? (F &= ~64) : (F |= 64);
 (B & 128) ? (F |= 128) : (F &= ~128);
 (parrity[B]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlcc(void)
{
 register int i;

 i = C & 128;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 C <<= 1;
 if (i) C |= 1;
 (C) ? (F &= ~64) : (F |= 64);
 (C & 128) ? (F |= 128) : (F &= ~128);
 (parrity[C]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlcd(void)
{
 register int i;

 i = D & 128;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 D <<= 1;
 if (i) D |= 1;
 (D) ? (F &= ~64) : (F |= 64);
 (D & 128) ? (F |= 128) : (F &= ~128);
 (parrity[D]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlce(void)
{
 register int i;

 i = E & 128;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 E <<= 1;
 if (i) E |= 1;
 (E) ? (F &= ~64) : (F |= 64);
 (E & 128) ? (F |= 128) : (F &= ~128);
 (parrity[E]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlch(void)
{
 register int i;

 i = H & 128;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 H <<= 1;
 if (i) H |= 1;
 (H) ? (F &= ~64) : (F |= 64);
 (H & 128) ? (F |= 128) : (F &= ~128);
 (parrity[H]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlcl(void)
{
 register int i;

 i = L & 128;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 L <<= 1;
 if (i) L |= 1;
 (L) ? (F &= ~64) : (F |= 64);
 (L & 128) ? (F |= 128) : (F &= ~128);
 (parrity[L]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_rlchl(void)
{
 register int i;
 register BYTE *p;







 p = ram + (H << 8) + L;
 i = *p & 128;
 (i) ? (F |= 1) : (F &= ~1);
 F &= ~(16 | 2);
 *p <<= 1;
 if (i) *p |= 1;
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(15);
}

static int op_sraa(void)
{
 register int i;

 i = A & 128;
 (A & 1) ? (F |= 1) : (F &= ~1);
 A >>= 1;
 A |= i;
 F &= ~(16 | 2);
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srab(void)
{
 register int i;

 i = B & 128;
 (B & 1) ? (F |= 1) : (F &= ~1);
 B >>= 1;
 B |= i;
 F &= ~(16 | 2);
 (B) ? (F &= ~64) : (F |= 64);
 (B & 128) ? (F |= 128) : (F &= ~128);
 (parrity[B]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srac(void)
{
 register int i;

 i = C & 128;
 (C & 1) ? (F |= 1) : (F &= ~1);
 C >>= 1;
 C |= i;
 F &= ~(16 | 2);
 (C) ? (F &= ~64) : (F |= 64);
 (C & 128) ? (F |= 128) : (F &= ~128);
 (parrity[C]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srad(void)
{
 register int i;

 i = D & 128;
 (D & 1) ? (F |= 1) : (F &= ~1);
 D >>= 1;
 D |= i;
 F &= ~(16 | 2);
 (D) ? (F &= ~64) : (F |= 64);
 (D & 128) ? (F |= 128) : (F &= ~128);
 (parrity[D]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srae(void)
{
 register int i;

 i = E & 128;
 (E & 1) ? (F |= 1) : (F &= ~1);
 E >>= 1;
 E |= i;
 F &= ~(16 | 2);
 (E) ? (F &= ~64) : (F |= 64);
 (E & 128) ? (F |= 128) : (F &= ~128);
 (parrity[E]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srah(void)
{
 register int i;

 i = H & 128;
 (H & 1) ? (F |= 1) : (F &= ~1);
 H >>= 1;
 H |= i;
 F &= ~(16 | 2);
 (H) ? (F &= ~64) : (F |= 64);
 (H & 128) ? (F |= 128) : (F &= ~128);
 (parrity[H]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_sral(void)
{
 register int i;

 i = L & 128;
 (L & 1) ? (F |= 1) : (F &= ~1);
 L >>= 1;
 L |= i;
 F &= ~(16 | 2);
 (L) ? (F &= ~64) : (F |= 64);
 (L & 128) ? (F |= 128) : (F &= ~128);
 (parrity[L]) ? (F &= ~4) : (F |= 4);
 return(8);
}

static int op_srahl(void)
{
 register int i;
 register BYTE *p;







 p = ram + (H << 8) + L;
 i = *p & 128;
 (*p & 1) ? (F |= 1) : (F &= ~1);
 *p >>= 1;
 *p |= i;
 F &= ~(16 | 2);
 (*p) ? (F &= ~64) : (F |= 64);
 (*p & 128) ? (F |= 128) : (F &= ~128);
 (parrity[*p]) ? (F &= ~4) : (F |= 4);






 return(15);
}

static int op_sb0a(void)
{
 A |= 1;
 return(8);
}

static int op_sb1a(void)
{
 A |= 2;
 return(8);
}

static int op_sb2a(void)
{
 A |= 4;
 return(8);
}

static int op_sb3a(void)
{
 A |= 8;
 return(8);
}

static int op_sb4a(void)
{
 A |= 16;
 return(8);
}

static int op_sb5a(void)
{
 A |= 32;
 return(8);
}

static int op_sb6a(void)
{
 A |= 64;
 return(8);
}

static int op_sb7a(void)
{
 A |= 128;
 return(8);
}

static int op_sb0b(void)
{
 B |= 1;
 return(8);
}

static int op_sb1b(void)
{
 B |= 2;
 return(8);
}

static int op_sb2b(void)
{
 B |= 4;
 return(8);
}

static int op_sb3b(void)
{
 B |= 8;
 return(8);
}

static int op_sb4b(void)
{
 B |= 16;
 return(8);
}

static int op_sb5b(void)
{
 B |= 32;
 return(8);
}

static int op_sb6b(void)
{
 B |= 64;
 return(8);
}

static int op_sb7b(void)
{
 B |= 128;
 return(8);
}

static int op_sb0c(void)
{
 C |= 1;
 return(8);
}

static int op_sb1c(void)
{
 C |= 2;
 return(8);
}

static int op_sb2c(void)
{
 C |= 4;
 return(8);
}

static int op_sb3c(void)
{
 C |= 8;
 return(8);
}

static int op_sb4c(void)
{
 C |= 16;
 return(8);
}

static int op_sb5c(void)
{
 C |= 32;
 return(8);
}

static int op_sb6c(void)
{
 C |= 64;
 return(8);
}

static int op_sb7c(void)
{
 C |= 128;
 return(8);
}

static int op_sb0d(void)
{
 D |= 1;
 return(8);
}

static int op_sb1d(void)
{
 D |= 2;
 return(8);
}

static int op_sb2d(void)
{
 D |= 4;
 return(8);
}

static int op_sb3d(void)
{
 D |= 8;
 return(8);
}

static int op_sb4d(void)
{
 D |= 16;
 return(8);
}

static int op_sb5d(void)
{
 D |= 32;
 return(8);
}

static int op_sb6d(void)
{
 D |= 64;
 return(8);
}

static int op_sb7d(void)
{
 D |= 128;
 return(8);
}

static int op_sb0e(void)
{
 E |= 1;
 return(8);
}

static int op_sb1e(void)
{
 E |= 2;
 return(8);
}

static int op_sb2e(void)
{
 E |= 4;
 return(8);
}

static int op_sb3e(void)
{
 E |= 8;
 return(8);
}

static int op_sb4e(void)
{
 E |= 16;
 return(8);
}

static int op_sb5e(void)
{
 E |= 32;
 return(8);
}

static int op_sb6e(void)
{
 E |= 64;
 return(8);
}

static int op_sb7e(void)
{
 E |= 128;
 return(8);
}

static int op_sb0h(void)
{
 H |= 1;
 return(8);
}

static int op_sb1h(void)
{
 H |= 2;
 return(8);
}

static int op_sb2h(void)
{
 H |= 4;
 return(8);
}

static int op_sb3h(void)
{
 H |= 8;
 return(8);
}

static int op_sb4h(void)
{
 H |= 16;
 return(8);
}

static int op_sb5h(void)
{
 H |= 32;
 return(8);
}

static int op_sb6h(void)
{
 H |= 64;
 return(8);
}

static int op_sb7h(void)
{
 H |= 128;
 return(8);
}

static int op_sb0l(void)
{
 L |= 1;
 return(8);
}

static int op_sb1l(void)
{
 L |= 2;
 return(8);
}

static int op_sb2l(void)
{
 L |= 4;
 return(8);
}

static int op_sb3l(void)
{
 L |= 8;
 return(8);
}

static int op_sb4l(void)
{
 L |= 16;
 return(8);
}

static int op_sb5l(void)
{
 L |= 32;
 return(8);
}

static int op_sb6l(void)
{
 L |= 64;
 return(8);
}

static int op_sb7l(void)
{
 L |= 128;
 return(8);
}

static int op_sb0hl(void)
{






 *(ram + (H << 8) + L) |= 1;






 return(15);
}

static int op_sb1hl(void)
{






 *(ram + (H << 8) + L) |= 2;






 return(15);
}

static int op_sb2hl(void)
{






 *(ram + (H << 8) + L) |= 4;






 return(15);
}

static int op_sb3hl(void)
{






 *(ram + (H << 8) + L) |= 8;






 return(15);
}

static int op_sb4hl(void)
{






 *(ram + (H << 8) + L) |= 16;






 return(15);
}

static int op_sb5hl(void)
{






 *(ram + (H << 8) + L) |= 32;






 return(15);
}

static int op_sb6hl(void)
{






 *(ram + (H << 8) + L) |= 64;






 return(15);
}

static int op_sb7hl(void)
{






 *(ram + (H << 8) + L) |= 128;






 return(15);
}

static int op_rb0a(void)
{
 A &= ~1;
 return(8);
}

static int op_rb1a(void)
{
 A &= ~2;
 return(8);
}

static int op_rb2a(void)
{
 A &= ~4;
 return(8);
}

static int op_rb3a(void)
{
 A &= ~8;
 return(8);
}

static int op_rb4a(void)
{
 A &= ~16;
 return(8);
}

static int op_rb5a(void)
{
 A &= ~32;
 return(8);
}

static int op_rb6a(void)
{
 A &= ~64;
 return(8);
}

static int op_rb7a(void)
{
 A &= ~128;
 return(8);
}

static int op_rb0b(void)
{
 B &= ~1;
 return(8);
}

static int op_rb1b(void)
{
 B &= ~2;
 return(8);
}

static int op_rb2b(void)
{
 B &= ~4;
 return(8);
}

static int op_rb3b(void)
{
 B &= ~8;
 return(8);
}

static int op_rb4b(void)
{
 B &= ~16;
 return(8);
}

static int op_rb5b(void)
{
 B &= ~32;
 return(8);
}

static int op_rb6b(void)
{
 B &= ~64;
 return(8);
}

static int op_rb7b(void)
{
 B &= ~128;
 return(8);
}

static int op_rb0c(void)
{
 C &= ~1;
 return(8);
}

static int op_rb1c(void)
{
 C &= ~2;
 return(8);
}

static int op_rb2c(void)
{
 C &= ~4;
 return(8);
}

static int op_rb3c(void)
{
 C &= ~8;
 return(8);
}

static int op_rb4c(void)
{
 C &= ~16;
 return(8);
}

static int op_rb5c(void)
{
 C &= ~32;
 return(8);
}

static int op_rb6c(void)
{
 C &= ~64;
 return(8);
}

static int op_rb7c(void)
{
 C &= ~128;
 return(8);
}

static int op_rb0d(void)
{
 D &= ~1;
 return(8);
}

static int op_rb1d(void)
{
 D &= ~2;
 return(8);
}

static int op_rb2d(void)
{
 D &= ~4;
 return(8);
}

static int op_rb3d(void)
{
 D &= ~8;
 return(8);
}

static int op_rb4d(void)
{
 D &= ~16;
 return(8);
}

static int op_rb5d(void)
{
 D &= ~32;
 return(8);
}

static int op_rb6d(void)
{
 D &= ~64;
 return(8);
}

static int op_rb7d(void)
{
 D &= ~128;
 return(8);
}

static int op_rb0e(void)
{
 E &= ~1;
 return(8);
}

static int op_rb1e(void)
{
 E &= ~2;
 return(8);
}

static int op_rb2e(void)
{
 E &= ~4;
 return(8);
}

static int op_rb3e(void)
{
 E &= ~8;
 return(8);
}

static int op_rb4e(void)
{
 E &= ~16;
 return(8);
}

static int op_rb5e(void)
{
 E &= ~32;
 return(8);
}

static int op_rb6e(void)
{
 E &= ~64;
 return(8);
}

static int op_rb7e(void)
{
 E &= ~128;
 return(8);
}

static int op_rb0h(void)
{
 H &= ~1;
 return(8);
}

static int op_rb1h(void)
{
 H &= ~2;
 return(8);
}

static int op_rb2h(void)
{
 H &= ~4;
 return(8);
}

static int op_rb3h(void)
{
 H &= ~8;
 return(8);
}

static int op_rb4h(void)
{
 H &= ~16;
 return(8);
}

static int op_rb5h(void)
{
 H &= ~32;
 return(8);
}

static int op_rb6h(void)
{
 H &= ~64;
 return(8);
}

static int op_rb7h(void)
{
 H &= ~128;
 return(8);
}

static int op_rb0l(void)
{
 L &= ~1;
 return(8);
}

static int op_rb1l(void)
{
 L &= ~2;
 return(8);
}

static int op_rb2l(void)
{
 L &= ~4;
 return(8);
}

static int op_rb3l(void)
{
 L &= ~8;
 return(8);
}

static int op_rb4l(void)
{
 L &= ~16;
 return(8);
}

static int op_rb5l(void)
{
 L &= ~32;
 return(8);
}

static int op_rb6l(void)
{
 L &= ~64;
 return(8);
}

static int op_rb7l(void)
{
 L &= ~128;
 return(8);
}

static int op_rb0hl(void)
{






 *(ram + (H << 8) + L) &= ~1;






 return(15);
}

static int op_rb1hl(void)
{






 *(ram + (H << 8) + L) &= ~2;






 return(15);
}

static int op_rb2hl(void)
{






 *(ram + (H << 8) + L) &= ~4;






 return(15);
}

static int op_rb3hl(void)
{






 *(ram + (H << 8) + L) &= ~8;






 return(15);
}

static int op_rb4hl(void)
{






 *(ram + (H << 8) + L) &= ~16;






 return(15);
}

static int op_rb5hl(void)
{






 *(ram + (H << 8) + L) &= ~32;






 return(15);
}

static int op_rb6hl(void)
{






 *(ram + (H << 8) + L) &= ~64;






 return(15);
}

static int op_rb7hl(void)
{






 *(ram + (H << 8) + L) &= ~128;






 return(15);
}

static int op_tb0a(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (A & 1) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb1a(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (A & 2) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb2a(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (A & 4) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb3a(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (A & 8) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb4a(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (A & 16) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb5a(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (A & 32) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb6a(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (A & 64) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb7a(void)
{
 F &= ~2;
 F |= 16;
 if (A & 128) {
  F &= ~(64 | 4);
  F |= 128;
 } else {
  F |= (64 | 4);
  F &= ~128;
 }
 return(8);
}

static int op_tb0b(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (B & 1) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb1b(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (B & 2) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb2b(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (B & 4) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb3b(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (B & 8) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb4b(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (B & 16) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb5b(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (B & 32) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb6b(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (B & 64) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb7b(void)
{
 F &= ~2;
 F |= 16;
 if (B & 128) {
  F &= ~(64 | 4);
  F |= 128;
 } else {
  F |= (64 | 4);
  F &= ~128;
 }
 return(8);
}

static int op_tb0c(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (C & 1) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb1c(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (C & 2) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb2c(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (C & 4) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb3c(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (C & 8) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb4c(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (C & 16) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb5c(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (C & 32) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb6c(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (C & 64) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb7c(void)
{
 F &= ~2;
 F |= 16;
 if (C & 128) {
  F &= ~(64 | 4);
  F |= 128;
 } else {
  F |= (64 | 4);
  F &= ~128;
 }
 return(8);
}

static int op_tb0d(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (D & 1) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb1d(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (D & 2) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb2d(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (D & 4) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb3d(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (D & 8) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb4d(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (D & 16) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb5d(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (D & 32) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb6d(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (D & 64) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb7d(void)
{
 F &= ~2;
 F |= 16;
 if (D & 128) {
  F &= ~(64 | 4);
  F |= 128;
 } else {
  F |= (64 | 4);
  F &= ~128;
 }
 return(8);
}

static int op_tb0e(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (E & 1) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb1e(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (E & 2) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb2e(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (E & 4) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb3e(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (E & 8) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb4e(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (E & 16) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb5e(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (E & 32) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb6e(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (E & 64) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb7e(void)
{
 F &= ~2;
 F |= 16;
 if (E & 128) {
  F &= ~(64 | 4);
  F |= 128;
 } else {
  F |= (64 | 4);
  F &= ~128;
 }
 return(8);
}

static int op_tb0h(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (H & 1) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb1h(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (H & 2) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb2h(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (H & 4) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb3h(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (H & 8) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb4h(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (H & 16) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb5h(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (H & 32) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb6h(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (H & 64) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb7h(void)
{
 F &= ~2;
 F |= 16;
 if (H & 128) {
  F &= ~(64 | 4);
  F |= 128;
 } else {
  F |= (64 | 4);
  F &= ~128;
 }
 return(8);
}

static int op_tb0l(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (L & 1) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb1l(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (L & 2) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb2l(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (L & 4) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb3l(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (L & 8) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb4l(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (L & 16) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb5l(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (L & 32) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb6l(void)
{
 F &= ~(2 | 128);
 F |= 16;
 (L & 64) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
 return(8);
}

static int op_tb7l(void)
{
 F &= ~2;
 F |= 16;
 if (L & 128) {
  F &= ~(64 | 4);
  F |= 128;
 } else {
  F |= (64 | 4);
  F &= ~128;
 }
 return(8);
}

static int op_tb0hl(void)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + (H << 8) + L) & 1) ? (F &= ~(64 | 4))
        : (F |= (64 | 4));
 return(12);
}

static int op_tb1hl(void)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + (H << 8) + L) & 2) ? (F &= ~(64 | 4))
        : (F |= (64 | 4));
 return(12);
}

static int op_tb2hl(void)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + (H << 8) + L) & 4) ? (F &= ~(64 | 4))
        : (F |= (64 | 4));
 return(12);
}

static int op_tb3hl(void)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + (H << 8) + L) & 8) ? (F &= ~(64 | 4))
        : (F |= (64 | 4));
 return(12);
}

static int op_tb4hl(void)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + (H << 8) + L) & 16) ? (F &= ~(64 | 4))
         : (F |= (64 | 4));
 return(12);
}

static int op_tb5hl(void)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + (H << 8) + L) & 32) ? (F &= ~(64 | 4))
         : (F |= (64 | 4));
 return(12);
}

static int op_tb6hl(void)
{






 F &= ~(2 | 128);
 F |= 16;
 (*(ram + (H << 8) + L) & 64) ? (F &= ~(64 | 4))
         : (F |= (64 | 4));
 return(12);
}

static int op_tb7hl(void)
{






 F &= ~2;
 F |= 16;
 if (*(ram + (H << 8) + L) & 128) {
  F &= ~(64 | 4);
  F |= 128;
 } else {
  F |= (64 | 4);
  F &= ~128;
 }
 return(12);
}
