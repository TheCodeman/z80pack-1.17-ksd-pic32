# 1 "../z80sim/simglb.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../z80sim/simglb.c"
# 32 "../z80sim/simglb.c"
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
# 33 "../z80sim/simglb.c" 2






BYTE A,B,C,D,E,H,L;
int F;
WORD IX, IY;
BYTE A_,B_,C_,D_,E_,H_,L_;
int F_;
BYTE *PC;
BYTE *STACK;
BYTE I;
BYTE IFF;
long R;
# 57 "../z80sim/simglb.c"
BYTE mem_wp;




BYTE ram[65536];
BYTE *wrk_ram;





struct history his[100];
int h_next;
int h_flag;






struct softbreak soft[4];
int sb_next;






long t_states;
int t_flag;
BYTE *t_start = ram + 65535;
BYTE *t_end = ram + 65535;
# 104 "../z80sim/simglb.c"
int s_flag;
int l_flag;
int m_flag;
int x_flag;
int i_flag;
int f_flag;



char xfn[80];
BYTE cpu_state;
int cpu_error;
int int_type;
int tmax;
int int_mode;
int cntl_c;
int cntl_bs;




int busy_loop_cnt[5];




int parrity[256] = {
  0 , 1 , 1 ,
  0 , 1 , 0 ,
  0 , 1 , 1 ,
  0 , 0 , 1 ,
  0 , 1 , 1 ,
  0 , 1 , 0 ,
  0 , 1 , 0 ,
  1 , 1 , 0 ,
  0 , 1 , 1 ,
  0 , 1 , 0 ,
  0 , 1 , 1 ,
  0 , 0 , 1 ,
  0 , 1 , 1 ,
  0 , 0 , 1 ,
  1 , 0 , 1 ,
  0 , 0 , 1 ,
  0 , 1 , 1 ,
  0 , 1 , 0 ,
  0 , 1 , 1 ,
  0 , 0 , 1 ,
  0 , 1 , 1 ,
  0 , 1 , 0 ,
  0 , 1 , 0 ,
  1 , 1 , 0 ,
  0 , 1 , 1 ,
  0 , 1 , 0 ,
  0 , 1 , 0 ,
  1 , 1 , 0 ,
  1 , 0 , 0 ,
  1 , 1 , 0 ,
  0 , 1 , 0 ,
  1 , 1 , 0 ,
  0 , 1 , 1 ,
  0 , 1 , 0 ,
  0 , 1 , 1 ,
  0 , 0 , 1 ,
  0 , 1 , 1 ,
  0 , 1 , 0 ,
  0 , 1 , 0 ,
  1 , 1 , 0 ,
  0 , 1 , 1 ,
  0 , 1 , 0 ,
  0 , 1 ,
  1 , 0 , 0 ,
  1 , 0 , 1 ,
  1 , 0 , 0 ,
  1 , 1 , 0 ,
  1 , 0 , 0 ,
  1 , 0 , 1 ,
  1 , 0 , 1 ,
  0 , 0 , 1 ,
  1 , 0 , 0 ,
  1 , 0 , 1 ,
  1 , 0 , 0 ,
  1 , 1 , 0 ,
  1 , 0 , 0 ,
  1 , 1 , 0 ,
  0 , 1 , 0 ,
  1 , 1 , 0 ,
  1 , 0 , 0 ,
  1 , 0 , 1 ,
  1 , 0 , 0 ,
  1 , 1 , 0 ,
  1 , 0 , 0 ,
  1 , 0 , 1 ,
  1 , 0 , 1 ,
  0 , 0 , 1 ,
  1 , 0 , 0 ,
  1 , 0 , 1 ,
  1 , 0 , 1 ,
  0 , 0 , 1 ,
  0 , 1 , 1 ,
  0 , 0 , 1 ,
  1 , 0 , 1 ,
  0 , 0 , 1 ,
  1 , 0 , 0 ,
  1 , 0 , 1 ,
  1 , 0 , 0 ,
  1 , 1 , 0 ,
  1 , 0 , 0 ,
  1 , 0 , 1 ,
  1 , 0 , 1 ,
  0 , 0 , 1 ,
  1 , 0 , 0 ,
  1 , 0 , 1 ,
  1 , 0
};
