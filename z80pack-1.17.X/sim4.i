# 1 "../z80sim/sim4.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../z80sim/sim4.c"
# 33 "../z80sim/sim4.c"
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
# 34 "../z80sim/sim4.c" 2
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
# 35 "../z80sim/sim4.c" 2





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
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  op_inbic,
  op_outcb,
  op_sbchb,
  op_ldinbc,
  op_neg,
  op_retn,
  op_im0,
  op_ldia,
  op_incic,
  op_outcc,
  op_adchb,
  op_ldbcinn,
  trap_ed,
  op_reti,
  trap_ed,
  op_ldra,
  op_indic,
  op_outcd,
  op_sbchd,
  op_ldinde,
  trap_ed,
  trap_ed,
  op_im1,
  op_ldai,
  op_ineic,
  op_outce,
  op_adchd,
  op_lddeinn,
  trap_ed,
  trap_ed,
  op_im2,
  op_ldar,
  op_inhic,
  op_outch,
  op_sbchh,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  op_oprrd,
  op_inlic,
  op_outcl,
  op_adchh,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  op_oprld,
  trap_ed,
  trap_ed,
  op_sbchs,
  op_ldinsp,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  op_inaic,
  op_outca,
  op_adchs,
  op_ldspinn,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  op_ldi,
  op_cpi,
  op_ini,
  op_outi,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  op_ldd,
  op_cpdop,
  op_ind,
  op_outd,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  op_ldir,
  op_cpir,
  op_inir,
  op_otir,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  op_lddr,
  op_cpdr,
  op_indr,
  op_otdr,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed,
  trap_ed
 };


 t = (*op_ed[*PC++]) ();





  if (PC > ram + 65535)
   PC = ram;


 return(t);
}





static int trap_ed(void)
{
 cpu_error = 5;
 cpu_state = 0;
 return(0);
}

static int op_im0(void)
{
 int_mode = 0;
 return(8);
}

static int op_im1(void)
{
 int_mode = 1;
 return(8);
}

static int op_im2(void)
{
 int_mode = 2;
 return(8);
}

static int op_reti(void)
{
 register unsigned i;







 i = *STACK++;

 if (STACK >= ram + 65536L)
  STACK = ram;

 i += *STACK++ << 8;

 if (STACK >= ram + 65536L)
  STACK = ram;

 PC = ram + i;
 return(14);
}

static int op_retn(void)
{
 register unsigned i;







 i = *STACK++;

 if (STACK >= ram + 65536L)
  STACK = ram;

 i += *STACK++ << 8;

 if (STACK >= ram + 65536L)
  STACK = ram;

 PC = ram + i;
 if (IFF & 2)
  IFF |= 1;
 return(14);
}

static int op_neg(void)
{
 (A) ? (F |= 1) : (F &= ~1);
 (A == 0x80) ? (F |= 4) : (F &= ~4);
 (0 - ((signed char) A & 0xf) < 0) ? (F |= 16) : (F &= ~16);
 A = 0 - A;
 F |= 2;
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 return(8);
}

static int op_inaic(void)
{
 BYTE io_in();







 A = io_in(C);
 F &= ~(2 | 16);
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 return(12);
}

static int op_inbic(void)
{
 BYTE io_in();







 B = io_in(C);
 F &= ~(2 | 16);
 (B) ? (F &= ~64) : (F |= 64);
 (B & 128) ? (F |= 128) : (F &= ~128);
 (parrity[B]) ? (F &= ~4) : (F |= 4);
 return(12);
}

static int op_incic(void)
{
 BYTE io_in();







 C = io_in(C);
 F &= ~(2 | 16);
 (C) ? (F &= ~64) : (F |= 64);
 (C & 128) ? (F |= 128) : (F &= ~128);
 (parrity[C]) ? (F &= ~4) : (F |= 4);
 return(12);
}

static int op_indic(void)
{
 BYTE io_in();







 D = io_in(C);
 F &= ~(2 | 16);
 (D) ? (F &= ~64) : (F |= 64);
 (D & 128) ? (F |= 128) : (F &= ~128);
 (parrity[D]) ? (F &= ~4) : (F |= 4);
 return(12);
}

static int op_ineic(void)
{
 BYTE io_in();







 E = io_in(C);
 F &= ~(2 | 16);
 (E) ? (F &= ~64) : (F |= 64);
 (E & 128) ? (F |= 128) : (F &= ~128);
 (parrity[E]) ? (F &= ~4) : (F |= 4);
 return(12);
}

static int op_inhic(void)
{
 BYTE io_in();







 H = io_in(C);
 F &= ~(2 | 16);
 (H) ? (F &= ~64) : (F |= 64);
 (H & 128) ? (F |= 128) : (F &= ~128);
 (parrity[H]) ? (F &= ~4) : (F |= 4);
 return(12);
}

static int op_inlic(void)
{
 BYTE io_in();







 L = io_in(C);
 F &= ~(2 | 16);
 (L) ? (F &= ~64) : (F |= 64);
 (L & 128) ? (F |= 128) : (F &= ~128);
 (parrity[L]) ? (F &= ~4) : (F |= 4);
 return(12);
}

static int op_outca(void)
{
 BYTE io_out();







 io_out(C, A);
 return(12);
}

static int op_outcb(void)
{
 BYTE io_out();







 io_out(C, B);
 return(12);
}

static int op_outcc(void)
{
 BYTE io_out();







 io_out(C, C);
 return(12);
}

static int op_outcd(void)
{
 BYTE io_out();







 io_out(C, D);
 return(12);
}

static int op_outce(void)
{
 BYTE io_out();







 io_out(C, E);
 return(12);
}

static int op_outch(void)
{
 BYTE io_out();







 io_out(C, H);
 return(12);
}

static int op_outcl(void)
{
 BYTE io_out();







 io_out(C, L);
 return(12);
}

static int op_ini(void)
{
 BYTE io_in();







 *(ram + (H << 8) + L) = io_in(C);






 L++;
 if (!L)
  H++;
 B--;
 F |= 2;
 (B) ? (F &= ~64) : (F |= 64);
 return(16);
}

static int op_inir(void)
{
 register int t = -21;
 register BYTE *d;
 BYTE io_in();

 d = ram + (H << 8) + L;
 do {






  *d++ = io_in(C);






  B--;
  t += 21;
 } while (B);
 H = (d - ram) >> 8;
 L = d - ram;
 F |= 2 | 64;
 return(t + 16);
}

static int op_ind(void)
{
 BYTE io_in();







 *(ram + (H << 8) + L) = io_in(C);






 L--;
 if (L == 0xff)
  H--;
 B--;
 F |= 2;
 (B) ? (F &= ~64) : (F |= 64);
 return(16);
}

static int op_indr(void)
{
 register int t = -21;
 register BYTE *d;
 BYTE io_in();

 d = ram + (H << 8) + L;
 do {






  *d-- = io_in(C);






  B--;
  t += 21;
 } while (B);
 H = (d - ram) >> 8;
 L = d - ram;
 F |= 2 | 64;
 return(t + 16);
}

static int op_outi(void)
{
 BYTE io_out();







 io_out(C, *(ram + (H << 8) * L));






 L++;
 if (!L)
  H++;
 B--;
 F |= 2;
 (B) ? (F &= ~64) : (F |= 64);
 return(16);
}

static int op_otir(void)
{
 register int t = -21;
 register BYTE *d;
 BYTE io_out();

 d = ram + (H << 8) + L;
 do {






  io_out(C, *d++);






  B--;
  t += 21;
 } while (B);
 H = (d - ram) >> 8;
 L = d - ram;
 F |= 2 | 64;
 return(t + 16);
}

static int op_outd(void)
{
 BYTE io_out();







 io_out(C, *(ram + (H << 8) * L));






 L--;
 if (L == 0xff)
  H--;
 B--;
 F |= 2;
 (B) ? (F &= ~64) : (F |= 64);
 return(16);
}

static int op_otdr(void)
{
 register int t = -21;
 register BYTE *d;
 BYTE io_out();

 d = ram + (H << 8) + L;
 do {






  io_out(C, *d--);






  B--;
  t += 21;
 } while (B);
 H = (d - ram) >> 8;
 L = d - ram;
 F |= 2 | 64;
 return(t + 16);
}

static int op_ldai(void)
{
 A = I;
 F &= ~(2 | 16);
 (IFF & 2) ? (F |= 4) : (F &= ~4);
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 return(9);
}

static int op_ldar(void)
{
 A = (BYTE) R;
 F &= ~(2 | 16);
 (IFF & 2) ? (F |= 4) : (F &= ~4);
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 return(9);
}

static int op_ldia(void)
{
 I = A;
 return(9);
}

static int op_ldra(void)
{
 R = A;
 return(9);
}

static int op_ldbcinn(void)
{
 register BYTE *p;







 p = ram + *PC++;
 p += *PC++ << 8;
 C = *p++;
 B = *p;
 return(20);
}

static int op_lddeinn(void)
{
 register BYTE *p;







 p = ram + *PC++;
 p += *PC++ << 8;
 E = *p++;
 D = *p;
 return(20);
}

static int op_ldspinn(void)
{
 register BYTE *p;







 p = ram + *PC++;
 p += *PC++ << 8;
 STACK = ram + *p++;
 STACK += *p << 8;
 return(20);
}

static int op_ldinbc(void)
{
 register BYTE *p;







 p = ram + *PC++;
 p += *PC++ << 8;
 *p++ = C;
 *p = B;
 return(20);
}

static int op_ldinde(void)
{
 register BYTE *p;







 p = ram + *PC++;
 p += *PC++ << 8;
 *p++ = E;
 *p = D;
 return(20);
}

static int op_ldinsp(void)
{
 register BYTE *p;
 register int i;







 p = ram + *PC++;
 p += *PC++ << 8;
 i = STACK - ram;
 *p++ = i;
 *p = i >> 8;
 return(20);
}

static int op_adchb(void)
{
 int carry, lcarry;
 register short hl, bc;
 int i;

 carry = (F & 1) ? 1 : 0;
 lcarry = (L + C + carry > 255) ? 1 : 0;
 ((H & 0xf) + (B & 0xf) + lcarry > 0xf) ? (F |= 16)
            : (F &= ~16);
 hl = (H << 8) + L;
 bc = (B << 8) + C;
 i = hl + bc + carry;
 ((i > 32767) || (i < -32768)) ? (F |= 4) : (F &= ~4);
 (H + B + lcarry > 255) ? (F |= 1) : (F &= ~1);
 (i & 0xffff) ? (F &= ~64) : (F |= 64);
 H = i >> 8;
 L = i;
 F &= ~2;
 (H & 128) ? (F |= 128) : (F &= ~128);
 return(15);
}

static int op_adchd(void)
{
 int carry, lcarry;
 register short hl, de;
 int i;

 carry = (F & 1) ? 1 : 0;
 lcarry = (L + E + carry > 255) ? 1 : 0;
 ((H & 0xf) + (D & 0xf) + lcarry > 0xf) ? (F |= 16)
            : (F &= ~16);
 hl = (H << 8) + L;
 de = (D << 8) + E;
 i = hl + de + carry;
 ((i > 32767) || (i < -32768)) ? (F |= 4) : (F &= ~4);
 (H + D + lcarry > 255) ? (F |= 1) : (F &= ~1);
 (i & 0xffff) ? (F &= ~64) : (F |= 64);
 H = i >> 8;
 L = i;
 F &= ~2;
 (H & 128) ? (F |= 128) : (F &= ~128);
 return(15);
}

static int op_adchh(void)
{
 int carry, lcarry;
 register short hl;
 int i;

 carry = (F & 1) ? 1 : 0;
 lcarry = (L + L + carry > 255) ? 1 : 0;
 ((H & 0xf) + (H & 0xf) + lcarry > 0xf) ? (F |= 16)
            : (F &= ~16);
 hl = (H << 8) + L;
 i = (hl << 1) + carry;
 ((i > 32767) || (i < -32768)) ? (F |= 4) : (F &= ~4);
 (H + H + lcarry > 255) ? (F |= 1) : (F &= ~1);
 (i & 0xffff) ? (F &= ~64) : (F |= 64);
 H = i >> 8;
 L = i;
 F &= ~2;
 (H & 128) ? (F |= 128) : (F &= ~128);
 return(15);
}

static int op_adchs(void)
{
 int carry, lcarry;
 register short hl, sp;
 int i;

 carry = (F & 1) ? 1 : 0;
 hl = (H << 8) + L;
 sp = STACK - ram;
 lcarry = (L + (sp & 0xff) + carry > 255) ? 1 : 0;
 ((H & 0xf) + ((sp >> 8) & 0xf) + lcarry > 0xf) ? (F |= 16)
             : (F &= ~16);
 i = hl + sp + carry;
 ((i > 32767) || (i < -32768)) ? (F |= 4) : (F &= ~4);
 (H + (sp >> 8) + lcarry > 255) ? (F |= 1) : (F &= ~1);
 (i & 0xffff) ? (F &= ~64) : (F |= 64);
 H = i >> 8;
 L = i;
 F &= ~2;
 (H & 128) ? (F |= 128) : (F &= ~128);
 return(15);
}

static int op_sbchb(void)
{
 int carry, lcarry;
 register short hl, bc;
 int i;

 carry = (F & 1) ? 1 : 0;
 lcarry = (C + carry > L) ? 1 : 0;
 ((B & 0xf) + lcarry > (H & 0xf)) ? (F |= 16)
      : (F &= ~16);
 hl = (H << 8) + L;
 bc = (B << 8) + C;
 i = hl - bc - carry;
 ((i > 32767) || (i < -32768)) ? (F |= 4) : (F &= ~4);
 ((WORD)bc + carry > (WORD)hl) ? (F |= 1) : (F &= ~1);
 (i & 0xffff) ? (F &= ~64) : (F |= 64);
 H = i >> 8;
 L = i;
 F |= 2;
 (H & 128) ? (F |= 128) : (F &= ~128);
 return(15);
}

static int op_sbchd(void)
{
 int carry, lcarry;
 register short hl, de;
 int i;

 carry = (F & 1) ? 1 : 0;
 lcarry = (E + carry > L) ? 1 : 0;
 ((D & 0xf) + lcarry > (H & 0xf)) ? (F |= 16)
      : (F &= ~16);
 hl = (H << 8) + L;
 de = (D << 8) + E;
 i = hl - de - carry;
 ((i > 32767) || (i < -32768)) ? (F |= 4) : (F &= ~4);
 ((WORD)de + carry > (WORD)hl) ? (F |= 1) : (F &= ~1);
 (i & 0xffff) ? (F &= ~64) : (F |= 64);
 H = i >> 8;
 L = i;
 F |= 2;
 (H & 128) ? (F |= 128) : (F &= ~128);
 return(15);
}

static int op_sbchh(void)
{
 int carry, lcarry;
 register short hl;
 int i;

 carry = (F & 1) ? 1 : 0;
 lcarry = (L + carry > L) ? 1 : 0;
 ((H & 0xf) + lcarry > (H & 0xf)) ? (F |= 16)
      : (F &= ~16);
 hl = (H << 8) + L;
 i = hl - hl - carry;
 ((i > 32767) || (i < -32768)) ? (F |= 4) : (F &= ~4);
 ((WORD)hl + carry > (WORD)hl) ? (F |= 1) : (F &= ~1);
 (i & 0xffff) ? (F &= ~64) : (F |= 64);
 H = i >> 8;
 L = i;
 F |= 2;
 (H & 128) ? (F |= 128) : (F &= ~128);
 return(15);
}

static int op_sbchs(void)
{
 int carry, lcarry;
 register short hl, sp;
 int i;

 carry = (F & 1) ? 1 : 0;
 hl = (H << 8) + L;
 sp = STACK - ram;
 lcarry = ((sp & 0xff) + carry > L) ? 1 : 0;
 (((sp >> 8) & 0xf) + lcarry > (H & 0xf)) ? (F |= 16)
       : (F &= ~16);
 i = hl - sp - carry;
 ((i > 32767) || (i < -32768)) ? (F |= 4) : (F &= ~4);
 ((WORD)sp + carry > (WORD)hl) ? (F |= 1) : (F &= ~1);
 (i & 0xffff) ? (F &= ~64) : (F |= 64);
 H = i >> 8;
 L = i;
 F |= 2;
 (H & 128) ? (F |= 128) : (F &= ~128);
 return(15);
}

static int op_ldi(void)
{






 *(ram + (D << 8) + E) = *(ram + (H << 8) + L);






 E++;
 if (!E)
  D++;
 L++;
 if (!L)
  H++;
 C--;
 if (C == 0xff)
  B--;
 (B | C) ? (F |= 4) : (F &= ~4);
 F &= ~(2 | 16);
 return(16);
}

static int op_ldir(void)
{
 register int t = -21;
 register WORD i;
 register BYTE *s, *d;

 i = (B << 8) + C;
 d = ram + (D << 8) + E;
 s = ram + (H << 8) + L;
 do {






  *d++ = *s++;






  t += 21;
 } while (--i);
 B = C = 0;
 D = (d - ram) >> 8;
 E = d - ram;
 H = (s - ram) >> 8;
 L = s - ram;
 F &= ~(2 | 4 | 16);
 return(t + 16);
}

static int op_ldd(void)
{






 *(ram + (D << 8) + E) = *(ram + (H << 8) + L);






 E--;
 if (E == 0xff)
  D--;
 L--;
 if (L == 0xff)
  H--;
 C--;
 if (C == 0xff)
  B--;
 (B | C) ? (F |= 4) : (F &= ~4);
 F &= ~(2 | 16);
 return(16);
}

static int op_lddr(void)
{
 register int t = -21;
 register WORD i;
 register BYTE *s, *d;

 i = (B << 8) + C;
 d = ram + (D << 8) + E;
 s = ram + (H << 8) + L;
 do {






  *d-- = *s--;






  t += 21;
 } while (--i);
 B = C = 0;
 D = (d - ram) >> 8;
 E = d - ram;
 H = (s - ram) >> 8;
 L = s - ram;
 F &= ~(2 | 4 | 16);
 return(t + 16);
}

static int op_cpi(void)
{
 register BYTE i;







 i = *(ram + ((H << 8) + L));
 ((i & 0xf) > (A & 0xF)) ? (F |= 16) : (F &= ~16);
 i = A - i;
 L++;
 if (!L)
  H++;
 C--;
 if (C == 0xff)
  B--;
 F |= 2;
 (B | C) ? (F |= 4) : (F &= ~4);
 (i) ? (F &= ~64) : (F |= 64);
 (i & 128) ? (F |= 128) : (F &= ~128);
 return(16);
}

static int op_cpir(void)

{
 register int t = -21;
 register BYTE *s;
 register BYTE d;
 register WORD i;

 i = (B << 8) + C;
 s = ram + (H << 8) + L;
 do {






  d = A - *s++;
  t += 21;
 } while (--i && d);
 F |= 2;
 B = i >> 8;
 C = i;
 H = (s - ram) >> 8;
 L = s - ram;
 (i) ? (F |= 4) : (F &= ~4);
 (d) ? (F &= ~64) : (F |= 64);
 (d & 128) ? (F |= 128) : (F &= ~128);
 return(t + 16);
}

static int op_cpdop(void)
{
 register BYTE i;







 i = *(ram + ((H << 8) + L));
 ((i & 0xf) > (A & 0xF)) ? (F |= 16) : (F &= ~16);
 i = A - i;
 L--;
 if (L == 0xff)
  H--;
 C--;
 if (C == 0xff)
  B--;
 F |= 2;
 (B | C) ? (F |= 4) : (F &= ~4);
 (i) ? (F &= ~64) : (F |= 64);
 (i & 128) ? (F |= 128) : (F &= ~128);
 return(16);
}

static int op_cpdr(void)

{
 register int t = -21;
 register BYTE *s;
 register BYTE d;
 register WORD i;

 i = (B << 8) + C;
 s = ram + (H << 8) + L;
 do {






  d = A - *s--;
  t += 21;
 } while (--i && d);
 F |= 2;
 B = i >> 8;
 C = i;
 H = (s - ram) >> 8;
 L = s - ram;
 (i) ? (F |= 4) : (F &= ~4);
 (d) ? (F &= ~64) : (F |= 64);
 (d & 128) ? (F |= 128) : (F &= ~128);
 return(t + 16);
}

static int op_oprld(void)
{
 register int i, j;







 i = *(ram + (H << 8) + L);
 j = A & 0x0f;
 A = (A & 0xf0) | (i >> 4);
 i = (i << 4) | j;
 *(ram + (H << 8) + L) = i;






 F &= ~(16 | 2);
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 return(18);
}

static int op_oprrd(void)
{
 register int i, j;







 i = *(ram + (H << 8) + L);
 j = A & 0x0f;
 A = (A & 0xf0) | (i & 0x0f);
 i = (i >> 4) | (j << 4);
 *(ram + (H << 8) + L) = i;






 F &= ~(16 | 2);
 (A) ? (F &= ~64) : (F |= 64);
 (A & 128) ? (F |= 128) : (F &= ~128);
 (parrity[A]) ? (F &= ~4) : (F |= 4);
 return(18);
}
