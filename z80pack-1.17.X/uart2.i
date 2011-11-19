# 1 "../uart2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../uart2.c"
# 49 "../uart2.c"
# 1 "../Compiler.h" 1
# 110 "../Compiler.h"
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/p32xxxx.h" 1 3
# 121 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/p32xxxx.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/proc/p32mx795f512h.h" 1 3
# 11 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/proc/p32mx795f512h.h" 3
extern volatile unsigned int WDTCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDTCLR:1;
    unsigned :1;
    unsigned SWDTPS:5;
    unsigned :8;
    unsigned ON:1;
  };
  struct {
    unsigned :2;
    unsigned SWDTPS0:1;
    unsigned SWDTPS1:1;
    unsigned SWDTPS2:1;
    unsigned SWDTPS3:1;
    unsigned SWDTPS4:1;
  };
  struct {
    unsigned :2;
    unsigned WDTPSTA:5;
  };
  struct {
    unsigned :2;
    unsigned WDTPS:5;
  };
  struct {
    unsigned w:32;
  };
} __WDTCONbits_t;
extern volatile __WDTCONbits_t WDTCONbits __asm__ ("WDTCON") __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONSET __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RTCOE:1;
    unsigned HALFSEC:1;
    unsigned RTCSYNC:1;
    unsigned RTCWREN:1;
    unsigned :2;
    unsigned RTCCLKON:1;
    unsigned RTSECSEL:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned CAL:10;
  };
  struct {
    unsigned w:32;
  };
} __RTCCONbits_t;
extern volatile __RTCCONbits_t RTCCONbits __asm__ ("RTCCON") __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ARPT:8;
    unsigned AMASK:4;
    unsigned ALRMSYNC:1;
    unsigned PIV:1;
    unsigned CHIME:1;
    unsigned ALRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __RTCALRMbits_t;
extern volatile __RTCALRMbits_t RTCALRMbits __asm__ ("RTCALRM") __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMCLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMSET __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIME __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SEC01:4;
    unsigned SEC10:4;
    unsigned MIN01:4;
    unsigned MIN10:4;
    unsigned HR01:4;
    unsigned HR10:4;
  };
  struct {
    unsigned w:32;
  };
} __RTCTIMEbits_t;
extern volatile __RTCTIMEbits_t RTCTIMEbits __asm__ ("RTCTIME") __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMECLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMESET __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMEINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDAY01:4;
    unsigned :4;
    unsigned DAY01:4;
    unsigned DAY10:4;
    unsigned MONTH01:4;
    unsigned MONTH10:4;
    unsigned YEAR01:4;
    unsigned YEAR10:4;
  };
  struct {
    unsigned w:32;
  };
} __RTCDATEbits_t;
extern volatile __RTCDATEbits_t RTCDATEbits __asm__ ("RTCDATE") __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATECLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATESET __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATEINV __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIME __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SEC01:4;
    unsigned SEC10:4;
    unsigned MIN01:4;
    unsigned MIN10:4;
    unsigned HR01:4;
    unsigned HR10:4;
  };
  struct {
    unsigned w:32;
  };
} __ALRMTIMEbits_t;
extern volatile __ALRMTIMEbits_t ALRMTIMEbits __asm__ ("ALRMTIME") __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMECLR __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMESET __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMEINV __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDAY01:4;
    unsigned :4;
    unsigned DAY01:4;
    unsigned DAY10:4;
    unsigned MONTH01:4;
    unsigned MONTH10:4;
  };
  struct {
    unsigned w:32;
  };
} __ALRMDATEbits_t;
extern volatile __ALRMDATEbits_t ALRMDATEbits __asm__ ("ALRMDATE") __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATECLR __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATESET __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATEINV __attribute__((section("sfrs")));
extern volatile unsigned int T1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned TSYNC:1;
    unsigned :1;
    unsigned TCKPS:2;
    unsigned :1;
    unsigned TGATE:1;
    unsigned :3;
    unsigned TWIP:1;
    unsigned TWDIS:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T1CONbits_t;
extern volatile __T1CONbits_t T1CONbits __asm__ ("T1CON") __attribute__((section("sfrs")));
extern volatile unsigned int T1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR1 __attribute__((section("sfrs")));
extern volatile unsigned int TMR1CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR1SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR1INV __attribute__((section("sfrs")));
extern volatile unsigned int PR1 __attribute__((section("sfrs")));
extern volatile unsigned int PR1CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR1SET __attribute__((section("sfrs")));
extern volatile unsigned int PR1INV __attribute__((section("sfrs")));
extern volatile unsigned int T2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned T32:1;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T2CONbits_t;
extern volatile __T2CONbits_t T2CONbits __asm__ ("T2CON") __attribute__((section("sfrs")));
extern volatile unsigned int T2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR2 __attribute__((section("sfrs")));
extern volatile unsigned int TMR2CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR2SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR2INV __attribute__((section("sfrs")));
extern volatile unsigned int PR2 __attribute__((section("sfrs")));
extern volatile unsigned int PR2CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR2SET __attribute__((section("sfrs")));
extern volatile unsigned int PR2INV __attribute__((section("sfrs")));
extern volatile unsigned int T3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :4;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T3CONbits_t;
extern volatile __T3CONbits_t T3CONbits __asm__ ("T3CON") __attribute__((section("sfrs")));
extern volatile unsigned int T3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR3 __attribute__((section("sfrs")));
extern volatile unsigned int TMR3CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR3SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR3INV __attribute__((section("sfrs")));
extern volatile unsigned int PR3 __attribute__((section("sfrs")));
extern volatile unsigned int PR3CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR3SET __attribute__((section("sfrs")));
extern volatile unsigned int PR3INV __attribute__((section("sfrs")));
extern volatile unsigned int T4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned T32:1;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T4CONbits_t;
extern volatile __T4CONbits_t T4CONbits __asm__ ("T4CON") __attribute__((section("sfrs")));
extern volatile unsigned int T4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR4 __attribute__((section("sfrs")));
extern volatile unsigned int TMR4CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR4SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR4INV __attribute__((section("sfrs")));
extern volatile unsigned int PR4 __attribute__((section("sfrs")));
extern volatile unsigned int PR4CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR4SET __attribute__((section("sfrs")));
extern volatile unsigned int PR4INV __attribute__((section("sfrs")));
extern volatile unsigned int T5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :4;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T5CONbits_t;
extern volatile __T5CONbits_t T5CONbits __asm__ ("T5CON") __attribute__((section("sfrs")));
extern volatile unsigned int T5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR5 __attribute__((section("sfrs")));
extern volatile unsigned int TMR5CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR5SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR5INV __attribute__((section("sfrs")));
extern volatile unsigned int PR5 __attribute__((section("sfrs")));
extern volatile unsigned int PR5CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR5SET __attribute__((section("sfrs")));
extern volatile unsigned int PR5INV __attribute__((section("sfrs")));
extern volatile unsigned int IC1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC1CONbits_t;
extern volatile __IC1CONbits_t IC1CONbits __asm__ ("IC1CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC1BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC2CONbits_t;
extern volatile __IC2CONbits_t IC2CONbits __asm__ ("IC2CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC2BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC3CONbits_t;
extern volatile __IC3CONbits_t IC3CONbits __asm__ ("IC3CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC3BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC4CONbits_t;
extern volatile __IC4CONbits_t IC4CONbits __asm__ ("IC4CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC4BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC5CONbits_t;
extern volatile __IC5CONbits_t IC5CONbits __asm__ ("IC5CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC5BUF __attribute__((section("sfrs")));
extern volatile unsigned int OC1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC1CONbits_t;
extern volatile __OC1CONbits_t OC1CONbits __asm__ ("OC1CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC1R __attribute__((section("sfrs")));
extern volatile unsigned int OC1RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC1RS __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC2CONbits_t;
extern volatile __OC2CONbits_t OC2CONbits __asm__ ("OC2CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC2R __attribute__((section("sfrs")));
extern volatile unsigned int OC2RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC2RS __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC3CONbits_t;
extern volatile __OC3CONbits_t OC3CONbits __asm__ ("OC3CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC3R __attribute__((section("sfrs")));
extern volatile unsigned int OC3RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC3RS __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC4CONbits_t;
extern volatile __OC4CONbits_t OC4CONbits __asm__ ("OC4CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC4R __attribute__((section("sfrs")));
extern volatile unsigned int OC4RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC4RS __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC5CONbits_t;
extern volatile __OC5CONbits_t OC5CONbits __asm__ ("OC5CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC5R __attribute__((section("sfrs")));
extern volatile unsigned int OC5RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC5RS __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1ACONbits_t;
extern volatile __I2C1ACONbits_t I2C1ACONbits __asm__ ("I2C1ACON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C3CONbits_t;
extern volatile __I2C3CONbits_t I2C3CONbits __asm__ ("I2C3CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1ASTATbits_t;
extern volatile __I2C1ASTATbits_t I2C1ASTATbits __asm__ ("I2C1ASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C3STATbits_t;
extern volatile __I2C3STATbits_t I2C3STATbits __asm__ ("I2C3STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3STATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C3MSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3MSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C3BRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C3TRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3TRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ARCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3RCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C2ACONbits_t;
extern volatile __I2C2ACONbits_t I2C2ACONbits __asm__ ("I2C2ACON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C4CONbits_t;
extern volatile __I2C4CONbits_t I2C4CONbits __asm__ ("I2C4CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C2ASTATbits_t;
extern volatile __I2C2ASTATbits_t I2C2ASTATbits __asm__ ("I2C2ASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C4STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C4STATbits_t;
extern volatile __I2C4STATbits_t I2C4STATbits __asm__ ("I2C4STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C4STATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C4ADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C4ADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C4MSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C4MSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C4BRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C4BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C4TRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C4TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C4TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C4TRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ARCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C4RCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C3ACONbits_t;
extern volatile __I2C3ACONbits_t I2C3ACONbits __asm__ ("I2C3ACON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C5CONbits_t;
extern volatile __I2C5CONbits_t I2C5CONbits __asm__ ("I2C5CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ACONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ACONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C3ASTATbits_t;
extern volatile __I2C3ASTATbits_t I2C3ASTATbits __asm__ ("I2C3ASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C5STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C5STATbits_t;
extern volatile __I2C5STATbits_t I2C5STATbits __asm__ ("I2C5STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C5STATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3AADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C5ADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C3AADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3AADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3AADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C5ADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3AMSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C5MSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C3AMSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3AMSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3AMSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C5MSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ABRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C5BRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C5BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ATRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C5TRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ATRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C5TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ATRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C5TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ATRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C5TRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C3ARCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C5RCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1CONbits_t;
extern volatile __I2C1CONbits_t I2C1CONbits __asm__ ("I2C1CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1STATbits_t;
extern volatile __I2C1STATbits_t I2C1STATbits __asm__ ("I2C1STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1RCV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned :1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :6;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI1ACONbits_t;
extern volatile __SPI1ACONbits_t SPI1ACONbits __asm__ ("SPI1ACON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned :1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :6;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI3CONbits_t;
extern volatile __SPI3CONbits_t SPI3CONbits __asm__ ("SPI3CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ACONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ACONINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned :4;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI1ASTATbits_t;
extern volatile __SPI1ASTATbits_t SPI1ASTATbits __asm__ ("SPI1ASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI3STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned :4;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI3STATbits_t;
extern volatile __SPI3STATbits_t SPI3STATbits __asm__ ("SPI3STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI3STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI3STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI3STATINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ABUF __attribute__((section("sfrs")));
extern volatile unsigned int SPI3BUF __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ABRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI3BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI3BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI3BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI3BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned :1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :6;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI2ACONbits_t;
extern volatile __SPI2ACONbits_t SPI2ACONbits __asm__ ("SPI2ACON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned :1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :6;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI2CONbits_t;
extern volatile __SPI2CONbits_t SPI2CONbits __asm__ ("SPI2CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ACONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ACONINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned :4;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI2ASTATbits_t;
extern volatile __SPI2ASTATbits_t SPI2ASTATbits __asm__ ("SPI2ASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned :4;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI2STATbits_t;
extern volatile __SPI2STATbits_t SPI2STATbits __asm__ ("SPI2STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ABUF __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BUF __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ABRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned :1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :6;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI3ACONbits_t;
extern volatile __SPI3ACONbits_t SPI3ACONbits __asm__ ("SPI3ACON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned :1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :6;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI4CONbits_t;
extern volatile __SPI4CONbits_t SPI4CONbits __asm__ ("SPI4CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ACONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ACONINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned :4;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI3ASTATbits_t;
extern volatile __SPI3ASTATbits_t SPI3ASTATbits __asm__ ("SPI3ASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI4STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned :4;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI4STATbits_t;
extern volatile __SPI4STATbits_t SPI4STATbits __asm__ ("SPI4STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI4STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI4STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI4STATINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ABUF __attribute__((section("sfrs")));
extern volatile unsigned int SPI4BUF __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ABRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI4BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI4BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI4BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI3ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI4BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U1AMODEbits_t;
extern volatile __U1AMODEbits_t U1AMODEbits __asm__ ("U1AMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U1MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U1MODEbits_t;
extern volatile __U1MODEbits_t U1MODEbits __asm__ ("U1MODE") __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U1MODESET __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U1ASTAbits_t;
extern volatile __U1ASTAbits_t U1ASTAbits __asm__ ("U1ASTA") __attribute__((section("sfrs")));
extern volatile unsigned int U1STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U1STAbits_t;
extern volatile __U1STAbits_t U1STAbits __asm__ ("U1STA") __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U1STACLR __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTASET __attribute__((section("sfrs")));
extern volatile unsigned int U1STASET __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTAINV __attribute__((section("sfrs")));
extern volatile unsigned int U1STAINV __attribute__((section("sfrs")));
extern volatile unsigned int U1ATXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1TXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1ARXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1RXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRG __attribute__((section("sfrs")));
extern volatile unsigned int U1BRG __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned :4;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U1BMODEbits_t;
extern volatile __U1BMODEbits_t U1BMODEbits __asm__ ("U1BMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U4MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned :4;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U4MODEbits_t;
extern volatile __U4MODEbits_t U4MODEbits __asm__ ("U4MODE") __attribute__((section("sfrs")));
extern volatile unsigned int U1BMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U4MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U4MODESET __attribute__((section("sfrs")));
extern volatile unsigned int U1BMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U4MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BSTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U1BSTAbits_t;
extern volatile __U1BSTAbits_t U1BSTAbits __asm__ ("U1BSTA") __attribute__((section("sfrs")));
extern volatile unsigned int U4STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U4STAbits_t;
extern volatile __U4STAbits_t U4STAbits __asm__ ("U4STA") __attribute__((section("sfrs")));
extern volatile unsigned int U1BSTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U4STACLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BSTASET __attribute__((section("sfrs")));
extern volatile unsigned int U4STASET __attribute__((section("sfrs")));
extern volatile unsigned int U1BSTAINV __attribute__((section("sfrs")));
extern volatile unsigned int U4STAINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BTXREG __attribute__((section("sfrs")));
extern volatile unsigned int U4TXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1BRXREG __attribute__((section("sfrs")));
extern volatile unsigned int U4RXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1BBRG __attribute__((section("sfrs")));
extern volatile unsigned int U4BRG __attribute__((section("sfrs")));
extern volatile unsigned int U1BBRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U4BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BBRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U4BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U1BBRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U4BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U2AMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U2AMODEbits_t;
extern volatile __U2AMODEbits_t U2AMODEbits __asm__ ("U2AMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U3MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U3MODEbits_t;
extern volatile __U3MODEbits_t U3MODEbits __asm__ ("U3MODE") __attribute__((section("sfrs")));
extern volatile unsigned int U2AMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U3MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U2AMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U3MODESET __attribute__((section("sfrs")));
extern volatile unsigned int U2AMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U3MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U2ASTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U2ASTAbits_t;
extern volatile __U2ASTAbits_t U2ASTAbits __asm__ ("U2ASTA") __attribute__((section("sfrs")));
extern volatile unsigned int U3STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U3STAbits_t;
extern volatile __U3STAbits_t U3STAbits __asm__ ("U3STA") __attribute__((section("sfrs")));
extern volatile unsigned int U2ASTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U3STACLR __attribute__((section("sfrs")));
extern volatile unsigned int U2ASTASET __attribute__((section("sfrs")));
extern volatile unsigned int U3STASET __attribute__((section("sfrs")));
extern volatile unsigned int U2ASTAINV __attribute__((section("sfrs")));
extern volatile unsigned int U3STAINV __attribute__((section("sfrs")));
extern volatile unsigned int U2ATXREG __attribute__((section("sfrs")));
extern volatile unsigned int U3TXREG __attribute__((section("sfrs")));
extern volatile unsigned int U2ARXREG __attribute__((section("sfrs")));
extern volatile unsigned int U3RXREG __attribute__((section("sfrs")));
extern volatile unsigned int U2ABRG __attribute__((section("sfrs")));
extern volatile unsigned int U3BRG __attribute__((section("sfrs")));
extern volatile unsigned int U2ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U3BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U2ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U3BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U2ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U3BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U2BMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned :4;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U2BMODEbits_t;
extern volatile __U2BMODEbits_t U2BMODEbits __asm__ ("U2BMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U6MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned :4;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U6MODEbits_t;
extern volatile __U6MODEbits_t U6MODEbits __asm__ ("U6MODE") __attribute__((section("sfrs")));
extern volatile unsigned int U2BMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U6MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U2BMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U6MODESET __attribute__((section("sfrs")));
extern volatile unsigned int U2BMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U6MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U2BSTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U2BSTAbits_t;
extern volatile __U2BSTAbits_t U2BSTAbits __asm__ ("U2BSTA") __attribute__((section("sfrs")));
extern volatile unsigned int U6STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U6STAbits_t;
extern volatile __U6STAbits_t U6STAbits __asm__ ("U6STA") __attribute__((section("sfrs")));
extern volatile unsigned int U2BSTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U6STACLR __attribute__((section("sfrs")));
extern volatile unsigned int U2BSTASET __attribute__((section("sfrs")));
extern volatile unsigned int U6STASET __attribute__((section("sfrs")));
extern volatile unsigned int U2BSTAINV __attribute__((section("sfrs")));
extern volatile unsigned int U6STAINV __attribute__((section("sfrs")));
extern volatile unsigned int U2BTXREG __attribute__((section("sfrs")));
extern volatile unsigned int U6TXREG __attribute__((section("sfrs")));
extern volatile unsigned int U2BRXREG __attribute__((section("sfrs")));
extern volatile unsigned int U6RXREG __attribute__((section("sfrs")));
extern volatile unsigned int U2BBRG __attribute__((section("sfrs")));
extern volatile unsigned int U6BRG __attribute__((section("sfrs")));
extern volatile unsigned int U2BBRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U6BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U2BBRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U6BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U2BBRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U6BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U2MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U2MODEbits_t;
extern volatile __U2MODEbits_t U2MODEbits __asm__ ("U2MODE") __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U3AMODEbits_t;
extern volatile __U3AMODEbits_t U3AMODEbits __asm__ ("U3AMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U2MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U2MODESET __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U2MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U2STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U2STAbits_t;
extern volatile __U2STAbits_t U2STAbits __asm__ ("U2STA") __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U3ASTAbits_t;
extern volatile __U3ASTAbits_t U3ASTAbits __asm__ ("U3ASTA") __attribute__((section("sfrs")));
extern volatile unsigned int U2STACLR __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U2STASET __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTASET __attribute__((section("sfrs")));
extern volatile unsigned int U2STAINV __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTAINV __attribute__((section("sfrs")));
extern volatile unsigned int U2TXREG __attribute__((section("sfrs")));
extern volatile unsigned int U3ATXREG __attribute__((section("sfrs")));
extern volatile unsigned int U2RXREG __attribute__((section("sfrs")));
extern volatile unsigned int U3ARXREG __attribute__((section("sfrs")));
extern volatile unsigned int U2BRG __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRG __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U3BMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned :4;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U3BMODEbits_t;
extern volatile __U3BMODEbits_t U3BMODEbits __asm__ ("U3BMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U5MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned :4;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U5MODEbits_t;
extern volatile __U5MODEbits_t U5MODEbits __asm__ ("U5MODE") __attribute__((section("sfrs")));
extern volatile unsigned int U3BMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U5MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U3BMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U5MODESET __attribute__((section("sfrs")));
extern volatile unsigned int U3BMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U5MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U3BSTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U3BSTAbits_t;
extern volatile __U3BSTAbits_t U3BSTAbits __asm__ ("U3BSTA") __attribute__((section("sfrs")));
extern volatile unsigned int U5STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U5STAbits_t;
extern volatile __U5STAbits_t U5STAbits __asm__ ("U5STA") __attribute__((section("sfrs")));
extern volatile unsigned int U3BSTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U5STACLR __attribute__((section("sfrs")));
extern volatile unsigned int U3BSTASET __attribute__((section("sfrs")));
extern volatile unsigned int U5STASET __attribute__((section("sfrs")));
extern volatile unsigned int U3BSTAINV __attribute__((section("sfrs")));
extern volatile unsigned int U5STAINV __attribute__((section("sfrs")));
extern volatile unsigned int U3BTXREG __attribute__((section("sfrs")));
extern volatile unsigned int U5TXREG __attribute__((section("sfrs")));
extern volatile unsigned int U3BRXREG __attribute__((section("sfrs")));
extern volatile unsigned int U5RXREG __attribute__((section("sfrs")));
extern volatile unsigned int U3BBRG __attribute__((section("sfrs")));
extern volatile unsigned int U5BRG __attribute__((section("sfrs")));
extern volatile unsigned int U3BBRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U5BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U3BBRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U5BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U3BBRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U5BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int PMCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RDSP:1;
    unsigned WRSP:1;
    unsigned :1;
    unsigned CS1P:1;
    unsigned CS2P:1;
    unsigned ALP:1;
    unsigned CSF:2;
    unsigned PTRDEN:1;
    unsigned PTWREN:1;
    unsigned PMPTTL:1;
    unsigned ADRMUX:2;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :6;
    unsigned CSF0:1;
    unsigned CSF1:1;
    unsigned :3;
    unsigned ADRMUX0:1;
    unsigned ADRMUX1:1;
  };
  struct {
    unsigned :13;
    unsigned PSIDL:1;
    unsigned :1;
    unsigned PMPEN:1;
  };
  struct {
    unsigned w:32;
  };
} __PMCONbits_t;
extern volatile __PMCONbits_t PMCONbits __asm__ ("PMCON") __attribute__((section("sfrs")));
extern volatile unsigned int PMCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMCONSET __attribute__((section("sfrs")));
extern volatile unsigned int PMCONINV __attribute__((section("sfrs")));
extern volatile unsigned int PMMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WAITE:2;
    unsigned WAITM:4;
    unsigned WAITB:2;
    unsigned MODE:2;
    unsigned MODE16:1;
    unsigned INCM:2;
    unsigned IRQM:2;
    unsigned BUSY:1;
  };
  struct {
    unsigned WAITE0:1;
    unsigned WAITE1:1;
    unsigned WAITM0:1;
    unsigned WAITM1:1;
    unsigned WAITM2:1;
    unsigned WAITM3:1;
    unsigned WAITB0:1;
    unsigned WAITB1:1;
    unsigned MODE0:1;
    unsigned MODE1:1;
    unsigned :1;
    unsigned INCM0:1;
    unsigned INCM1:1;
    unsigned IRQM0:1;
    unsigned IRQM1:1;
  };
  struct {
    unsigned w:32;
  };
} __PMMODEbits_t;
extern volatile __PMMODEbits_t PMMODEbits __asm__ ("PMMODE") __attribute__((section("sfrs")));
extern volatile unsigned int PMMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int PMMODESET __attribute__((section("sfrs")));
extern volatile unsigned int PMMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int PMADDR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADDR:14;
    unsigned CS1:1;
    unsigned CS2:1;
  };
  struct {
    unsigned PADDR:14;
  };
  struct {
    unsigned :14;
    unsigned CS:2;
  };
  struct {
    unsigned w:32;
  };
} __PMADDRbits_t;
extern volatile __PMADDRbits_t PMADDRbits __asm__ ("PMADDR") __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUT __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTSET __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTINV __attribute__((section("sfrs")));
extern volatile unsigned int PMDIN __attribute__((section("sfrs")));
extern volatile unsigned int PMDINCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMDINSET __attribute__((section("sfrs")));
extern volatile unsigned int PMDININV __attribute__((section("sfrs")));
extern volatile unsigned int PMAEN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PTEN:16;
  };
  struct {
    unsigned PTEN0:1;
    unsigned PTEN1:1;
    unsigned PTEN2:1;
    unsigned PTEN3:1;
    unsigned PTEN4:1;
    unsigned PTEN5:1;
    unsigned PTEN6:1;
    unsigned PTEN7:1;
    unsigned PTEN8:1;
    unsigned PTEN9:1;
    unsigned PTEN10:1;
    unsigned PTEN11:1;
    unsigned PTEN12:1;
    unsigned PTEN13:1;
    unsigned PTEN14:1;
    unsigned PTEN15:1;
  };
  struct {
    unsigned w:32;
  };
} __PMAENbits_t;
extern volatile __PMAENbits_t PMAENbits __asm__ ("PMAEN") __attribute__((section("sfrs")));
extern volatile unsigned int PMAENCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMAENSET __attribute__((section("sfrs")));
extern volatile unsigned int PMAENINV __attribute__((section("sfrs")));
extern volatile unsigned int PMSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OB0E:1;
    unsigned OB1E:1;
    unsigned OB2E:1;
    unsigned OB3E:1;
    unsigned :2;
    unsigned OBUF:1;
    unsigned OBE:1;
    unsigned IB0F:1;
    unsigned IB1F:1;
    unsigned IB2F:1;
    unsigned IB3F:1;
    unsigned :2;
    unsigned IBOV:1;
    unsigned IBF:1;
  };
  struct {
    unsigned w:32;
  };
} __PMSTATbits_t;
extern volatile __PMSTATbits_t PMSTATbits __asm__ ("PMSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATINV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DONE:1;
    unsigned SAMP:1;
    unsigned ASAM:1;
    unsigned :1;
    unsigned CLRASAM:1;
    unsigned SSRC:3;
    unsigned FORM:3;
    unsigned :2;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :5;
    unsigned SSRC0:1;
    unsigned SSRC1:1;
    unsigned SSRC2:1;
    unsigned FORM0:1;
    unsigned FORM1:1;
    unsigned FORM2:1;
  };
  struct {
    unsigned :13;
    unsigned ADSIDL:1;
    unsigned :1;
    unsigned ADON:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CON1bits_t;
extern volatile __AD1CON1bits_t AD1CON1bits __asm__ ("AD1CON1") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1CLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1SET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1INV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ALTS:1;
    unsigned BUFM:1;
    unsigned SMPI:4;
    unsigned :1;
    unsigned BUFS:1;
    unsigned :2;
    unsigned CSCNA:1;
    unsigned :1;
    unsigned OFFCAL:1;
    unsigned VCFG:3;
  };
  struct {
    unsigned :2;
    unsigned SMPI0:1;
    unsigned SMPI1:1;
    unsigned SMPI2:1;
    unsigned SMPI3:1;
    unsigned :7;
    unsigned VCFG0:1;
    unsigned VCFG1:1;
    unsigned VCFG2:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CON2bits_t;
extern volatile __AD1CON2bits_t AD1CON2bits __asm__ ("AD1CON2") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2INV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCS:8;
    unsigned SAMC:5;
    unsigned :2;
    unsigned ADRC:1;
  };
  struct {
    unsigned ADCS0:1;
    unsigned ADCS1:1;
    unsigned ADCS2:1;
    unsigned ADCS3:1;
    unsigned ADCS4:1;
    unsigned ADCS5:1;
    unsigned ADCS6:1;
    unsigned ADCS7:1;
    unsigned SAMC0:1;
    unsigned SAMC1:1;
    unsigned SAMC2:1;
    unsigned SAMC3:1;
    unsigned SAMC4:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CON3bits_t;
extern volatile __AD1CON3bits_t AD1CON3bits __asm__ ("AD1CON3") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3CLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3SET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3INV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHS __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :16;
    unsigned CH0SA:4;
    unsigned :3;
    unsigned CH0NA:1;
    unsigned CH0SB:4;
    unsigned :3;
    unsigned CH0NB:1;
  };
  struct {
    unsigned :16;
    unsigned CH0SA0:1;
    unsigned CH0SA1:1;
    unsigned CH0SA2:1;
    unsigned CH0SA3:1;
    unsigned :4;
    unsigned CH0SB0:1;
    unsigned CH0SB1:1;
    unsigned CH0SB2:1;
    unsigned CH0SB3:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CHSbits_t;
extern volatile __AD1CHSbits_t AD1CHSbits __asm__ ("AD1CHS") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHSCLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHSSET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHSINV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSL __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CSSL:16;
  };
  struct {
    unsigned CSSL0:1;
    unsigned CSSL1:1;
    unsigned CSSL2:1;
    unsigned CSSL3:1;
    unsigned CSSL4:1;
    unsigned CSSL5:1;
    unsigned CSSL6:1;
    unsigned CSSL7:1;
    unsigned CSSL8:1;
    unsigned CSSL9:1;
    unsigned CSSL10:1;
    unsigned CSSL11:1;
    unsigned CSSL12:1;
    unsigned CSSL13:1;
    unsigned CSSL14:1;
    unsigned CSSL15:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CSSLbits_t;
extern volatile __AD1CSSLbits_t AD1CSSLbits __asm__ ("AD1CSSL") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSLCLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSLSET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSLINV __attribute__((section("sfrs")));
extern volatile unsigned int AD1PCFG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PCFG:16;
  };
  struct {
    unsigned PCFG0:1;
    unsigned PCFG1:1;
    unsigned PCFG2:1;
    unsigned PCFG3:1;
    unsigned PCFG4:1;
    unsigned PCFG5:1;
    unsigned PCFG6:1;
    unsigned PCFG7:1;
    unsigned PCFG8:1;
    unsigned PCFG9:1;
    unsigned PCFG10:1;
    unsigned PCFG11:1;
    unsigned PCFG12:1;
    unsigned PCFG13:1;
    unsigned PCFG14:1;
    unsigned PCFG15:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1PCFGbits_t;
extern volatile __AD1PCFGbits_t AD1PCFGbits __asm__ ("AD1PCFG") __attribute__((section("sfrs")));
extern volatile unsigned int AD1PCFGCLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1PCFGSET __attribute__((section("sfrs")));
extern volatile unsigned int AD1PCFGINV __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF0 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF1 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF2 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF3 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF4 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF5 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF6 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF7 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF8 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF9 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFA __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFB __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFC __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFD __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFE __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFF __attribute__((section("sfrs")));
extern volatile unsigned int CVRCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CVR:4;
    unsigned CVRSS:1;
    unsigned CVRR:1;
    unsigned CVROE:1;
    unsigned :8;
    unsigned ON:1;
  };
  struct {
    unsigned CVR0:1;
    unsigned CVR1:1;
    unsigned CVR2:1;
    unsigned CVR3:1;
  };
  struct {
    unsigned w:32;
  };
} __CVRCONbits_t;
extern volatile __CVRCONbits_t CVRCONbits __asm__ ("CVRCON") __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONSET __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONINV __attribute__((section("sfrs")));
extern volatile unsigned int CM1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CCH:2;
    unsigned :2;
    unsigned CREF:1;
    unsigned :1;
    unsigned EVPOL:2;
    unsigned COUT:1;
    unsigned :4;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned ON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :4;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned w:32;
  };
} __CM1CONbits_t;
extern volatile __CM1CONbits_t CM1CONbits __asm__ ("CM1CON") __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int CM2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CCH:2;
    unsigned :2;
    unsigned CREF:1;
    unsigned :1;
    unsigned EVPOL:2;
    unsigned COUT:1;
    unsigned :4;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned ON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :4;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned w:32;
  };
} __CM2CONbits_t;
extern volatile __CM2CONbits_t CM2CONbits __asm__ ("CM2CON") __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int CMSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned C1OUT:1;
    unsigned C2OUT:1;
    unsigned :11;
    unsigned SIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __CMSTATbits_t;
extern volatile __CMSTATbits_t CMSTATbits __asm__ ("CMSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATINV __attribute__((section("sfrs")));
extern volatile unsigned int OSCCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OSWEN:1;
    unsigned SOSCEN:1;
    unsigned UFRCEN:1;
    unsigned CF:1;
    unsigned SLPEN:1;
    unsigned SLOCK:1;
    unsigned ULOCK:1;
    unsigned CLKLOCK:1;
    unsigned NOSC:3;
    unsigned :1;
    unsigned COSC:3;
    unsigned :1;
    unsigned PLLMULT:3;
    unsigned PBDIV:2;
    unsigned :1;
    unsigned SOSCRDY:1;
    unsigned :1;
    unsigned FRCDIV:3;
    unsigned PLLODIV:3;
  };
  struct {
    unsigned :8;
    unsigned NOSC0:1;
    unsigned NOSC1:1;
    unsigned NOSC2:1;
    unsigned :1;
    unsigned COSC0:1;
    unsigned COSC1:1;
    unsigned COSC2:1;
    unsigned :1;
    unsigned PLLMULT0:1;
    unsigned PLLMULT1:1;
    unsigned PLLMULT2:1;
    unsigned PBDIV0:1;
    unsigned PBDIV1:1;
    unsigned :3;
    unsigned FRCDIV0:1;
    unsigned FRCDIV1:1;
    unsigned FRCDIV2:1;
    unsigned PLLODIV0:1;
    unsigned PLLODIV1:1;
    unsigned PLLODIV2:1;
  };
  struct {
    unsigned w:32;
  };
} __OSCCONbits_t;
extern volatile __OSCCONbits_t OSCCONbits __asm__ ("OSCCON") __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONINV __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TUN:6;
  };
  struct {
    unsigned TUN0:1;
    unsigned TUN1:1;
    unsigned TUN2:1;
    unsigned TUN3:1;
    unsigned TUN4:1;
    unsigned TUN5:1;
  };
  struct {
    unsigned w:32;
  };
} __OSCTUNbits_t;
extern volatile __OSCTUNbits_t OSCTUNbits __asm__ ("OSCTUN") __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNCLR __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNSET __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNINV __attribute__((section("sfrs")));
extern volatile unsigned int DDPCON __attribute__((section("sfrs")));
typedef struct {
  unsigned TDOEN:1;
  unsigned :1;
  unsigned TROEN:1;
  unsigned JTAGEN:1;
} __DDPCONbits_t;
extern volatile __DDPCONbits_t DDPCONbits __asm__ ("DDPCON") __attribute__((section("sfrs")));
extern volatile unsigned int DEVID __attribute__((section("sfrs")));
typedef struct {
  unsigned DEVID:28;
  unsigned VER:4;
} __DEVIDbits_t;
extern volatile __DEVIDbits_t DEVIDbits __asm__ ("DEVID") __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEY __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEYCLR __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEYSET __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEYINV __attribute__((section("sfrs")));
extern volatile unsigned int NVMCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned NVMOP:4;
    unsigned :7;
    unsigned LVDSTAT:1;
    unsigned LVDERR:1;
    unsigned WRERR:1;
    unsigned WREN:1;
    unsigned WR:1;
  };
  struct {
    unsigned NVMOP0:1;
    unsigned NVMOP1:1;
    unsigned NVMOP2:1;
    unsigned NVMOP3:1;
  };
  struct {
    unsigned PROGOP:4;
  };
  struct {
    unsigned PROGOP0:1;
    unsigned PROGOP1:1;
    unsigned PROGOP2:1;
    unsigned PROGOP3:1;
  };
  struct {
    unsigned w:32;
  };
} __NVMCONbits_t;
extern volatile __NVMCONbits_t NVMCONbits __asm__ ("NVMCON") __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONINV __attribute__((section("sfrs")));
extern volatile unsigned int NVMKEY __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDR __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA __attribute__((section("sfrs")));
extern volatile unsigned int NVMSRCADDR __attribute__((section("sfrs")));
extern volatile unsigned int RCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned POR:1;
    unsigned BOR:1;
    unsigned IDLE:1;
    unsigned SLEEP:1;
    unsigned WDTO:1;
    unsigned :1;
    unsigned SWR:1;
    unsigned EXTR:1;
    unsigned VREGS:1;
    unsigned CMR:1;
  };
  struct {
    unsigned w:32;
  };
} __RCONbits_t;
extern volatile __RCONbits_t RCONbits __asm__ ("RCON") __attribute__((section("sfrs")));
extern volatile unsigned int RCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int RCONSET __attribute__((section("sfrs")));
extern volatile unsigned int RCONINV __attribute__((section("sfrs")));
extern volatile unsigned int RSWRST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SWRST:1;
  };
  struct {
    unsigned w:32;
  };
} __RSWRSTbits_t;
extern volatile __RSWRSTbits_t RSWRSTbits __asm__ ("RSWRST") __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTCLR __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTSET __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTINV __attribute__((section("sfrs")));
extern volatile unsigned int _DDPSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned APIFUL:1;
  unsigned APOFUL:1;
  unsigned STRFUL:1;
  unsigned :5;
  unsigned APIOV:1;
  unsigned APOOV:1;
  unsigned :5;
  unsigned STOV:16;
} ___DDPSTATbits_t;
extern volatile ___DDPSTATbits_t _DDPSTATbits __asm__ ("_DDPSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int _STRO __attribute__((section("sfrs")));
extern volatile unsigned int _STROCLR __attribute__((section("sfrs")));
extern volatile unsigned int _STROSET __attribute__((section("sfrs")));
extern volatile unsigned int _STROINV __attribute__((section("sfrs")));
extern volatile unsigned int _APPO __attribute__((section("sfrs")));
extern volatile unsigned int _APPOCLR __attribute__((section("sfrs")));
extern volatile unsigned int _APPOSET __attribute__((section("sfrs")));
extern volatile unsigned int _APPOINV __attribute__((section("sfrs")));
extern volatile unsigned int _APPI __attribute__((section("sfrs")));
extern volatile unsigned int INTCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned INT0EP:1;
    unsigned INT1EP:1;
    unsigned INT2EP:1;
    unsigned INT3EP:1;
    unsigned INT4EP:1;
    unsigned :3;
    unsigned TPC:3;
    unsigned :1;
    unsigned MVEC:1;
    unsigned :1;
    unsigned FRZ:1;
    unsigned :1;
    unsigned SS0:1;
  };
  struct {
    unsigned w:32;
  };
} __INTCONbits_t;
extern volatile __INTCONbits_t INTCONbits __asm__ ("INTCON") __attribute__((section("sfrs")));
extern volatile unsigned int INTCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int INTCONSET __attribute__((section("sfrs")));
extern volatile unsigned int INTCONINV __attribute__((section("sfrs")));
extern volatile unsigned int INTSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned VEC:6;
  unsigned :2;
  unsigned SRIPL:3;
} __INTSTATbits_t;
extern volatile __INTSTATbits_t INTSTATbits __asm__ ("INTSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int IPTMR __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRCLR __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRSET __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRINV __attribute__((section("sfrs")));
extern volatile unsigned int IFS0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIF:1;
    unsigned CS0IF:1;
    unsigned CS1IF:1;
    unsigned INT0IF:1;
    unsigned T1IF:1;
    unsigned IC1IF:1;
    unsigned OC1IF:1;
    unsigned INT1IF:1;
    unsigned T2IF:1;
    unsigned IC2IF:1;
    unsigned OC2IF:1;
    unsigned INT2IF:1;
    unsigned T3IF:1;
    unsigned IC3IF:1;
    unsigned OC3IF:1;
    unsigned INT3IF:1;
    unsigned T4IF:1;
    unsigned IC4IF:1;
    unsigned OC4IF:1;
    unsigned INT4IF:1;
    unsigned T5IF:1;
    unsigned IC5IF:1;
    unsigned OC5IF:1;
    unsigned :3;
    unsigned U1EIF:1;
    unsigned U1RXIF:1;
    unsigned U1TXIF:1;
    unsigned I2C1BIF:1;
    unsigned I2C1SIF:1;
    unsigned I2C1MIF:1;
  };
  struct {
    unsigned :26;
    unsigned U1AEIF:1;
    unsigned U1ARXIF:1;
    unsigned U1ATXIF:1;
  };
  struct {
    unsigned :26;
    unsigned SPI3EIF:1;
    unsigned SPI3RXIF:1;
    unsigned SPI3TXIF:1;
  };
  struct {
    unsigned :26;
    unsigned SPI1AEIF:1;
    unsigned SPI1ARXIF:1;
    unsigned SPI1ATXIF:1;
  };
  struct {
    unsigned :26;
    unsigned I2C3BIF:1;
    unsigned I2C3SIF:1;
    unsigned I2C3MIF:1;
  };
  struct {
    unsigned :26;
    unsigned I2C1ABIF:1;
    unsigned I2C1ASIF:1;
    unsigned I2C1AMIF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS0bits_t;
extern volatile __IFS0bits_t IFS0bits __asm__ ("IFS0") __attribute__((section("sfrs")));
extern volatile unsigned int IFS0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS0SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS0INV __attribute__((section("sfrs")));
extern volatile unsigned int IFS1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIF:1;
    unsigned AD1IF:1;
    unsigned PMPIF:1;
    unsigned CMP1IF:1;
    unsigned CMP2IF:1;
    unsigned U3EIF:1;
    unsigned U3RXIF:1;
    unsigned U3TXIF:1;
    unsigned U2EIF:1;
    unsigned U2RXIF:1;
    unsigned U2TXIF:1;
    unsigned I2C2BIF:1;
    unsigned I2C2SIF:1;
    unsigned I2C2MIF:1;
    unsigned FSCMIF:1;
    unsigned RTCCIF:1;
    unsigned DMA0IF:1;
    unsigned DMA1IF:1;
    unsigned DMA2IF:1;
    unsigned DMA3IF:1;
    unsigned DMA4IF:1;
    unsigned DMA5IF:1;
    unsigned DMA6IF:1;
    unsigned DMA7IF:1;
    unsigned FCEIF:1;
    unsigned USBIF:1;
    unsigned CAN1IF:1;
    unsigned CAN2IF:1;
    unsigned ETHIF:1;
    unsigned IC1EIF:1;
    unsigned IC2EIF:1;
    unsigned IC3EIF:1;
  };
  struct {
    unsigned :5;
    unsigned U2AEIF:1;
    unsigned U2ARXIF:1;
    unsigned U2ATXIF:1;
    unsigned U3AEIF:1;
    unsigned U3ARXIF:1;
    unsigned U3ATXIF:1;
  };
  struct {
    unsigned :5;
    unsigned SPI2EIF:1;
    unsigned SPI2RXIF:1;
    unsigned SPI2TXIF:1;
    unsigned SPI4EIF:1;
    unsigned SPI4RXIF:1;
    unsigned SPI4TXIF:1;
  };
  struct {
    unsigned :5;
    unsigned SPI2AEIF:1;
    unsigned SPI2ARXIF:1;
    unsigned SPI2ATXIF:1;
    unsigned SPI3AEIF:1;
    unsigned SPI3ARXIF:1;
    unsigned SPI3ATXIF:1;
  };
  struct {
    unsigned :5;
    unsigned I2C4BIF:1;
    unsigned I2C4SIF:1;
    unsigned I2C4MIF:1;
    unsigned I2C5BIF:1;
    unsigned I2C5SIF:1;
    unsigned I2C5MIF:1;
  };
  struct {
    unsigned :5;
    unsigned I2C2ABIF:1;
    unsigned I2C2ASIF:1;
    unsigned I2C2AMIF:1;
    unsigned I2C3ABIF:1;
    unsigned I2C3ASIF:1;
    unsigned I2C3AMIF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS1bits_t;
extern volatile __IFS1bits_t IFS1bits __asm__ ("IFS1") __attribute__((section("sfrs")));
extern volatile unsigned int IFS1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS1SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS1INV __attribute__((section("sfrs")));
extern volatile unsigned int IFS2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned IC4EIF:1;
    unsigned IC5EIF:1;
    unsigned PMPEIF:1;
    unsigned U1BEIF:1;
    unsigned U1BRXIF:1;
    unsigned U1BTXIF:1;
    unsigned U2BEIF:1;
    unsigned U2BRXIF:1;
    unsigned U2BTXIF:1;
    unsigned U3BEIF:1;
    unsigned U3BRXIF:1;
    unsigned U3BTXIF:1;
  };
  struct {
    unsigned :3;
    unsigned U4EIF:1;
    unsigned U4RXIF:1;
    unsigned U4TXIF:1;
    unsigned U6EIF:1;
    unsigned U6RXIF:1;
    unsigned U6TXIF:1;
    unsigned U5EIF:1;
    unsigned U5RXIF:1;
    unsigned U5TXIF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS2bits_t;
extern volatile __IFS2bits_t IFS2bits __asm__ ("IFS2") __attribute__((section("sfrs")));
extern volatile unsigned int IFS2CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS2SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS2INV __attribute__((section("sfrs")));
extern volatile unsigned int IEC0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIE:1;
    unsigned CS0IE:1;
    unsigned CS1IE:1;
    unsigned INT0IE:1;
    unsigned T1IE:1;
    unsigned IC1IE:1;
    unsigned OC1IE:1;
    unsigned INT1IE:1;
    unsigned T2IE:1;
    unsigned IC2IE:1;
    unsigned OC2IE:1;
    unsigned INT2IE:1;
    unsigned T3IE:1;
    unsigned IC3IE:1;
    unsigned OC3IE:1;
    unsigned INT3IE:1;
    unsigned T4IE:1;
    unsigned IC4IE:1;
    unsigned OC4IE:1;
    unsigned INT4IE:1;
    unsigned T5IE:1;
    unsigned IC5IE:1;
    unsigned OC5IE:1;
    unsigned :3;
    unsigned U1EIE:1;
    unsigned U1RXIE:1;
    unsigned U1TXIE:1;
    unsigned I2C1BIE:1;
    unsigned I2C1SIE:1;
    unsigned I2C1MIE:1;
  };
  struct {
    unsigned :26;
    unsigned U1AEIE:1;
    unsigned U1ARXIE:1;
    unsigned U1ATXIE:1;
  };
  struct {
    unsigned :26;
    unsigned SPI3EIE:1;
    unsigned SPI3RXIE:1;
    unsigned SPI3TXIE:1;
  };
  struct {
    unsigned :26;
    unsigned SPI1AEIE:1;
    unsigned SPI1ARXIE:1;
    unsigned SPI1ATXIE:1;
  };
  struct {
    unsigned :26;
    unsigned I2C3BIE:1;
    unsigned I2C3SIE:1;
    unsigned I2C3MIE:1;
  };
  struct {
    unsigned :26;
    unsigned I2C1ABIE:1;
    unsigned I2C1ASIE:1;
    unsigned I2C1AMIE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC0bits_t;
extern volatile __IEC0bits_t IEC0bits __asm__ ("IEC0") __attribute__((section("sfrs")));
extern volatile unsigned int IEC0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC0SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC0INV __attribute__((section("sfrs")));
extern volatile unsigned int IEC1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIE:1;
    unsigned AD1IE:1;
    unsigned PMPIE:1;
    unsigned CMP1IE:1;
    unsigned CMP2IE:1;
    unsigned U3EIE:1;
    unsigned U3RXIE:1;
    unsigned U3TXIE:1;
    unsigned U2EIE:1;
    unsigned U2RXIE:1;
    unsigned U2TXIE:1;
    unsigned I2C2BIE:1;
    unsigned I2C2SIE:1;
    unsigned I2C2MIE:1;
    unsigned FSCMIE:1;
    unsigned RTCCIE:1;
    unsigned DMA0IE:1;
    unsigned DMA1IE:1;
    unsigned DMA2IE:1;
    unsigned DMA3IE:1;
    unsigned DMA4IE:1;
    unsigned DMA5IE:1;
    unsigned DMA6IE:1;
    unsigned DMA7IE:1;
    unsigned FCEIE:1;
    unsigned USBIE:1;
    unsigned CAN1IE:1;
    unsigned CAN2IE:1;
    unsigned ETHIE:1;
    unsigned IC1EIE:1;
    unsigned IC2EIE:1;
    unsigned IC3EIE:1;
  };
  struct {
    unsigned :5;
    unsigned U2AEIE:1;
    unsigned U2ARXIE:1;
    unsigned U2ATXIE:1;
    unsigned U3AEIE:1;
    unsigned U3ARXIE:1;
    unsigned U3ATXIE:1;
  };
  struct {
    unsigned :5;
    unsigned SPI2EIE:1;
    unsigned SPI2RXIE:1;
    unsigned SPI2TXIE:1;
    unsigned SPI4EIE:1;
    unsigned SPI4RXIE:1;
    unsigned SPI4TXIE:1;
  };
  struct {
    unsigned :5;
    unsigned SPI2AEIE:1;
    unsigned SPI2ARXIE:1;
    unsigned SPI2ATXIE:1;
    unsigned SPI3AEIE:1;
    unsigned SPI3ARXIE:1;
    unsigned SPI3ATXIE:1;
  };
  struct {
    unsigned :5;
    unsigned I2C4BIE:1;
    unsigned I2C4SIE:1;
    unsigned I2C4MIE:1;
    unsigned I2C5BIE:1;
    unsigned I2C5SIE:1;
    unsigned I2C5MIE:1;
  };
  struct {
    unsigned :5;
    unsigned I2C2ABIE:1;
    unsigned I2C2ASIE:1;
    unsigned I2C2AMIE:1;
    unsigned I2C3ABIE:1;
    unsigned I2C3ASIE:1;
    unsigned I2C3AMIE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC1bits_t;
extern volatile __IEC1bits_t IEC1bits __asm__ ("IEC1") __attribute__((section("sfrs")));
extern volatile unsigned int IEC1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC1SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC1INV __attribute__((section("sfrs")));
extern volatile unsigned int IEC2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned IC4EIE:1;
    unsigned IC5EIE:1;
    unsigned PMPEIE:1;
    unsigned U1BEIE:1;
    unsigned U1BRXIE:1;
    unsigned U1BTXIE:1;
    unsigned U2BEIE:1;
    unsigned U2BRXIE:1;
    unsigned U2BTXIE:1;
    unsigned U3BEIE:1;
    unsigned U3BRXIE:1;
    unsigned U3BTXIE:1;
  };
  struct {
    unsigned :3;
    unsigned U4EIE:1;
    unsigned U4RXIE:1;
    unsigned U4TXIE:1;
    unsigned U6EIE:1;
    unsigned U6RXIE:1;
    unsigned U6TXIE:1;
    unsigned U5EIE:1;
    unsigned U5RXIE:1;
    unsigned U5TXIE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC2bits_t;
extern volatile __IEC2bits_t IEC2bits __asm__ ("IEC2") __attribute__((section("sfrs")));
extern volatile unsigned int IEC2CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC2SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC2INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIS:2;
    unsigned CTIP:3;
    unsigned :3;
    unsigned CS0IS:2;
    unsigned CS0IP:3;
    unsigned :3;
    unsigned CS1IS:2;
    unsigned CS1IP:3;
    unsigned :3;
    unsigned INT0IS:2;
    unsigned INT0IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC0bits_t;
extern volatile __IPC0bits_t IPC0bits __asm__ ("IPC0") __attribute__((section("sfrs")));
extern volatile unsigned int IPC0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC0SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC0INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T1IS:2;
    unsigned T1IP:3;
    unsigned :3;
    unsigned IC1IS:2;
    unsigned IC1IP:3;
    unsigned :3;
    unsigned OC1IS:2;
    unsigned OC1IP:3;
    unsigned :3;
    unsigned INT1IS:2;
    unsigned INT1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC1bits_t;
extern volatile __IPC1bits_t IPC1bits __asm__ ("IPC1") __attribute__((section("sfrs")));
extern volatile unsigned int IPC1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC1SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC1INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T2IS:2;
    unsigned T2IP:3;
    unsigned :3;
    unsigned IC2IS:2;
    unsigned IC2IP:3;
    unsigned :3;
    unsigned OC2IS:2;
    unsigned OC2IP:3;
    unsigned :3;
    unsigned INT2IS:2;
    unsigned INT2IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC2bits_t;
extern volatile __IPC2bits_t IPC2bits __asm__ ("IPC2") __attribute__((section("sfrs")));
extern volatile unsigned int IPC2CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC2SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC2INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T3IS:2;
    unsigned T3IP:3;
    unsigned :3;
    unsigned IC3IS:2;
    unsigned IC3IP:3;
    unsigned :3;
    unsigned OC3IS:2;
    unsigned OC3IP:3;
    unsigned :3;
    unsigned INT3IS:2;
    unsigned INT3IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC3bits_t;
extern volatile __IPC3bits_t IPC3bits __asm__ ("IPC3") __attribute__((section("sfrs")));
extern volatile unsigned int IPC3CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC3SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC3INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T4IS:2;
    unsigned T4IP:3;
    unsigned :3;
    unsigned IC4IS:2;
    unsigned IC4IP:3;
    unsigned :3;
    unsigned OC4IS:2;
    unsigned OC4IP:3;
    unsigned :3;
    unsigned INT4IS:2;
    unsigned INT4IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC4bits_t;
extern volatile __IPC4bits_t IPC4bits __asm__ ("IPC4") __attribute__((section("sfrs")));
extern volatile unsigned int IPC4CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC4SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC4INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T5IS:2;
    unsigned T5IP:3;
    unsigned :3;
    unsigned IC5IS:2;
    unsigned IC5IP:3;
    unsigned :3;
    unsigned OC5IS:2;
    unsigned OC5IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC5bits_t;
extern volatile __IPC5bits_t IPC5bits __asm__ ("IPC5") __attribute__((section("sfrs")));
extern volatile unsigned int IPC5CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC5SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC5INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned U1IS:2;
    unsigned U1IP:3;
    unsigned :3;
    unsigned I2C1IS:2;
    unsigned I2C1IP:3;
    unsigned :3;
    unsigned CNIS:2;
    unsigned CNIP:3;
    unsigned :3;
    unsigned AD1IS:2;
    unsigned AD1IP:3;
  };
  struct {
    unsigned U1AIS:2;
    unsigned U1AIP:3;
  };
  struct {
    unsigned SPI3IS:2;
    unsigned SPI3IP:3;
  };
  struct {
    unsigned SPI1AIS:2;
    unsigned SPI1AIP:3;
  };
  struct {
    unsigned I2C3IS:2;
    unsigned I2C3IP:3;
  };
  struct {
    unsigned I2C1AIS:2;
    unsigned I2C1AIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC6bits_t;
extern volatile __IPC6bits_t IPC6bits __asm__ ("IPC6") __attribute__((section("sfrs")));
extern volatile unsigned int IPC6CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC6SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC6INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PMPIS:2;
    unsigned PMPIP:3;
    unsigned :3;
    unsigned CMP1IS:2;
    unsigned CMP1IP:3;
    unsigned :3;
    unsigned CMP2IS:2;
    unsigned CMP2IP:3;
    unsigned :3;
    unsigned U3IS:2;
    unsigned U3IP:3;
  };
  struct {
    unsigned :24;
    unsigned U2AIS:2;
    unsigned U2AIP:3;
  };
  struct {
    unsigned :24;
    unsigned SPI2IS:2;
    unsigned SPI2IP:3;
  };
  struct {
    unsigned :24;
    unsigned SPI2AIS:2;
    unsigned SPI2AIP:3;
  };
  struct {
    unsigned :24;
    unsigned I2C4IS:2;
    unsigned I2C4IP:3;
  };
  struct {
    unsigned :24;
    unsigned I2C2AIS:2;
    unsigned I2C2AIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC7bits_t;
extern volatile __IPC7bits_t IPC7bits __asm__ ("IPC7") __attribute__((section("sfrs")));
extern volatile unsigned int IPC7CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC7SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC7INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned U2IS:2;
    unsigned U2IP:3;
    unsigned :3;
    unsigned I2C2IS:2;
    unsigned I2C2IP:3;
    unsigned :3;
    unsigned FSCMIS:2;
    unsigned FSCMIP:3;
    unsigned :3;
    unsigned RTCCIS:2;
    unsigned RTCCIP:3;
  };
  struct {
    unsigned U3AIS:2;
    unsigned U3AIP:3;
  };
  struct {
    unsigned SPI4IS:2;
    unsigned SPI4IP:3;
  };
  struct {
    unsigned SPI3AIS:2;
    unsigned SPI3AIP:3;
  };
  struct {
    unsigned I2C5IS:2;
    unsigned I2C5IP:3;
  };
  struct {
    unsigned I2C3AIS:2;
    unsigned I2C3AIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC8bits_t;
extern volatile __IPC8bits_t IPC8bits __asm__ ("IPC8") __attribute__((section("sfrs")));
extern volatile unsigned int IPC8CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC8SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC8INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DMA0IS:2;
    unsigned DMA0IP:3;
    unsigned :3;
    unsigned DMA1IS:2;
    unsigned DMA1IP:3;
    unsigned :3;
    unsigned DMA2IS:2;
    unsigned DMA2IP:3;
    unsigned :3;
    unsigned DMA3IS:2;
    unsigned DMA3IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC9bits_t;
extern volatile __IPC9bits_t IPC9bits __asm__ ("IPC9") __attribute__((section("sfrs")));
extern volatile unsigned int IPC9CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC9SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC9INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DMA4IS:2;
    unsigned DMA4IP:3;
    unsigned :3;
    unsigned DMA5IS:2;
    unsigned DMA5IP:3;
    unsigned :3;
    unsigned DMA6IS:2;
    unsigned DMA6IP:3;
    unsigned :3;
    unsigned DMA7IS:2;
    unsigned DMA7IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC10bits_t;
extern volatile __IPC10bits_t IPC10bits __asm__ ("IPC10") __attribute__((section("sfrs")));
extern volatile unsigned int IPC10CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC10SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC10INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC11 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FCEIS:2;
    unsigned FCEIP:3;
    unsigned :3;
    unsigned USBIS:2;
    unsigned USBIP:3;
    unsigned :3;
    unsigned CAN1IS:2;
    unsigned CAN1IP:3;
    unsigned :3;
    unsigned CAN2IS:2;
    unsigned CAN2IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC11bits_t;
extern volatile __IPC11bits_t IPC11bits __asm__ ("IPC11") __attribute__((section("sfrs")));
extern volatile unsigned int IPC11CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC11SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC11INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC12 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ETHIS:2;
    unsigned ETHIP:3;
    unsigned :3;
    unsigned U4IS:2;
    unsigned U4IP:3;
    unsigned :3;
    unsigned U6IS:2;
    unsigned U6IP:3;
    unsigned :3;
    unsigned U5IS:2;
    unsigned U5IP:3;
  };
  struct {
    unsigned :8;
    unsigned U1BIS:2;
    unsigned U1BIP:3;
    unsigned :3;
    unsigned U2BIS:2;
    unsigned U2BIP:3;
    unsigned :3;
    unsigned U3BIS:2;
    unsigned U3BIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC12bits_t;
extern volatile __IPC12bits_t IPC12bits __asm__ ("IPC12") __attribute__((section("sfrs")));
extern volatile unsigned int IPC12CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC12SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC12INV __attribute__((section("sfrs")));
extern volatile unsigned int BMXCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned BMXARB:3;
    unsigned :3;
    unsigned BMXWSDRM:1;
    unsigned :9;
    unsigned BMXERRIS:1;
    unsigned BMXERRDS:1;
    unsigned BMXERRDMA:1;
    unsigned BMXERRICD:1;
    unsigned BMXERRIXI:1;
    unsigned :5;
    unsigned BMXCHEDMA:1;
  };
  struct {
    unsigned w:32;
  };
} __BMXCONbits_t;
extern volatile __BMXCONbits_t BMXCONbits __asm__ ("BMXCON") __attribute__((section("sfrs")));
extern volatile unsigned int BMXCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXCONSET __attribute__((section("sfrs")));
extern volatile unsigned int BMXCONINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDRMSZ __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXPFMSZ __attribute__((section("sfrs")));
extern volatile unsigned int BMXBOOTSZ __attribute__((section("sfrs")));
extern volatile unsigned int DMACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :11;
    unsigned DMABUSY:1;
    unsigned SUSPEND:1;
    unsigned :2;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __DMACONbits_t;
extern volatile __DMACONbits_t DMACONbits __asm__ ("DMACON") __attribute__((section("sfrs")));
extern volatile unsigned int DMACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMACONSET __attribute__((section("sfrs")));
extern volatile unsigned int DMACONINV __attribute__((section("sfrs")));
extern volatile unsigned int DMASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DMACH:3;
    unsigned RDWR:1;
  };
  struct {
    unsigned w:32;
  };
} __DMASTATbits_t;
extern volatile __DMASTATbits_t DMASTATbits __asm__ ("DMASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDR __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CRCCH:3;
    unsigned :2;
    unsigned CRCTYP:1;
    unsigned CRCAPP:1;
    unsigned CRCEN:1;
    unsigned PLEN:5;
    unsigned :11;
    unsigned BITO:1;
    unsigned :2;
    unsigned WBO:1;
    unsigned BYTO:2;
  };
  struct {
    unsigned w:32;
  };
} __DCRCCONbits_t;
extern volatile __DCRCCONbits_t DCRCCONbits __asm__ ("DCRCCON") __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATA __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATASET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXOR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORSET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH0CONbits_t;
extern volatile __DCH0CONbits_t DCH0CONbits __asm__ ("DCH0CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH0ECONbits_t;
extern volatile __DCH0ECONbits_t DCH0ECONbits __asm__ ("DCH0ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH0INTbits_t;
extern volatile __DCH0INTbits_t DCH0INTbits __asm__ ("DCH0INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH1CONbits_t;
extern volatile __DCH1CONbits_t DCH1CONbits __asm__ ("DCH1CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH1ECONbits_t;
extern volatile __DCH1ECONbits_t DCH1ECONbits __asm__ ("DCH1ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH1INTbits_t;
extern volatile __DCH1INTbits_t DCH1INTbits __asm__ ("DCH1INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH2CONbits_t;
extern volatile __DCH2CONbits_t DCH2CONbits __asm__ ("DCH2CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH2ECONbits_t;
extern volatile __DCH2ECONbits_t DCH2ECONbits __asm__ ("DCH2ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH2INTbits_t;
extern volatile __DCH2INTbits_t DCH2INTbits __asm__ ("DCH2INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH3CONbits_t;
extern volatile __DCH3CONbits_t DCH3CONbits __asm__ ("DCH3CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH3ECONbits_t;
extern volatile __DCH3ECONbits_t DCH3ECONbits __asm__ ("DCH3ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH3INTbits_t;
extern volatile __DCH3INTbits_t DCH3INTbits __asm__ ("DCH3INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH4CONbits_t;
extern volatile __DCH4CONbits_t DCH4CONbits __asm__ ("DCH4CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH4ECONbits_t;
extern volatile __DCH4ECONbits_t DCH4ECONbits __asm__ ("DCH4ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH4INTbits_t;
extern volatile __DCH4INTbits_t DCH4INTbits __asm__ ("DCH4INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH4INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH4DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH5CONbits_t;
extern volatile __DCH5CONbits_t DCH5CONbits __asm__ ("DCH5CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH5ECONbits_t;
extern volatile __DCH5ECONbits_t DCH5ECONbits __asm__ ("DCH5ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH5INTbits_t;
extern volatile __DCH5INTbits_t DCH5INTbits __asm__ ("DCH5INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH5INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH5DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH6CONbits_t;
extern volatile __DCH6CONbits_t DCH6CONbits __asm__ ("DCH6CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH6ECONbits_t;
extern volatile __DCH6ECONbits_t DCH6ECONbits __asm__ ("DCH6ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH6INTbits_t;
extern volatile __DCH6INTbits_t DCH6INTbits __asm__ ("DCH6INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH6INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH6DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH7CONbits_t;
extern volatile __DCH7CONbits_t DCH7CONbits __asm__ ("DCH7CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH7ECONbits_t;
extern volatile __DCH7ECONbits_t DCH7ECONbits __asm__ ("DCH7ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH7INTbits_t;
extern volatile __DCH7INTbits_t DCH7INTbits __asm__ ("DCH7INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH7INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSA __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH7DATINV __attribute__((section("sfrs")));
extern volatile unsigned int CHECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PFMWS:3;
    unsigned :1;
    unsigned PREFEN:2;
    unsigned :2;
    unsigned DCSZ:2;
    unsigned :6;
    unsigned CHECOH:1;
  };
  struct {
    unsigned w:32;
  };
} __CHECONbits_t;
extern volatile __CHECONbits_t CHECONbits __asm__ ("CHECON") __attribute__((section("sfrs")));
extern volatile unsigned int CHECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CHECONSET __attribute__((section("sfrs")));
extern volatile unsigned int CHECONINV __attribute__((section("sfrs")));
extern volatile unsigned int CHEACC __attribute__((section("sfrs")));
extern volatile unsigned int CHEACCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CHEACCSET __attribute__((section("sfrs")));
extern volatile unsigned int CHEACCINV __attribute__((section("sfrs")));
extern volatile unsigned int CHETAG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned LTYPE:1;
    unsigned LLOCK:1;
    unsigned LVALID:1;
    unsigned LTAG:20;
    unsigned :7;
    unsigned LTAGBOOT:1;
  };
  struct {
    unsigned w:32;
  };
} __CHETAGbits_t;
extern volatile __CHETAGbits_t CHETAGbits __asm__ ("CHETAG") __attribute__((section("sfrs")));
extern volatile unsigned int CHETAGCLR __attribute__((section("sfrs")));
extern volatile unsigned int CHETAGSET __attribute__((section("sfrs")));
extern volatile unsigned int CHETAGINV __attribute__((section("sfrs")));
extern volatile unsigned int CHEMSK __attribute__((section("sfrs")));
extern volatile unsigned int CHEMSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int CHEMSKSET __attribute__((section("sfrs")));
extern volatile unsigned int CHEMSKINV __attribute__((section("sfrs")));
extern volatile unsigned int CHEW0 __attribute__((section("sfrs")));
extern volatile unsigned int CHEW1 __attribute__((section("sfrs")));
extern volatile unsigned int CHEW2 __attribute__((section("sfrs")));
extern volatile unsigned int CHEW3 __attribute__((section("sfrs")));
extern volatile unsigned int CHELRU __attribute__((section("sfrs")));
extern volatile unsigned int CHEHIT __attribute__((section("sfrs")));
extern volatile unsigned int CHEMIS __attribute__((section("sfrs")));
extern volatile unsigned int CHEPFABT __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIR __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSVDIF:1;
  unsigned :1;
  unsigned SESENDIF:1;
  unsigned SESVDIF:1;
  unsigned ACTVIF:1;
  unsigned LSTATEIF:1;
  unsigned T1MSECIF:1;
  unsigned IDIF:1;
} __U1OTGIRbits_t;
extern volatile __U1OTGIRbits_t U1OTGIRbits __asm__ ("U1OTGIR") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIE __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSVDIE:1;
  unsigned :1;
  unsigned SESENDIE:1;
  unsigned SESVDIE:1;
  unsigned ACTVIE:1;
  unsigned LSTATEIE:1;
  unsigned T1MSECIE:1;
  unsigned IDIE:1;
} __U1OTGIEbits_t;
extern volatile __U1OTGIEbits_t U1OTGIEbits __asm__ ("U1OTGIE") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIESET __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSVD:1;
  unsigned :1;
  unsigned SESEND:1;
  unsigned SESVD:1;
  unsigned :1;
  unsigned LSTATE:1;
  unsigned :1;
  unsigned ID:1;
} __U1OTGSTATbits_t;
extern volatile __U1OTGSTATbits_t U1OTGSTATbits __asm__ ("U1OTGSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCON __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSDIS:1;
  unsigned VBUSCHG:1;
  unsigned OTGEN:1;
  unsigned VBUSON:1;
  unsigned DMPULDWN:1;
  unsigned DPPULDWN:1;
  unsigned DMPULUP:1;
  unsigned DPPULUP:1;
} __U1OTGCONbits_t;
extern volatile __U1OTGCONbits_t U1OTGCONbits __asm__ ("U1OTGCON") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCONSET __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCONINV __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRC __attribute__((section("sfrs")));
typedef struct {
  unsigned USBPWR:1;
  unsigned USUSPEND:1;
  unsigned :1;
  unsigned USBBUSY:1;
  unsigned USLPGRD:1;
  unsigned :2;
  unsigned UACTPND:1;
} __U1PWRCbits_t;
extern volatile __U1PWRCbits_t U1PWRCbits __asm__ ("U1PWRC") __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRCCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRCSET __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRCINV __attribute__((section("sfrs")));
extern volatile unsigned int U1IR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URSTIF_DETACHIF:1;
    unsigned UERRIF:1;
    unsigned SOFIF:1;
    unsigned TRNIF:1;
    unsigned IDLEIF:1;
    unsigned RESUMEIF:1;
    unsigned ATTACHIF:1;
    unsigned STALLIF:1;
  };
  struct {
    unsigned DETACHIF:1;
  };
  struct {
    unsigned URSTIF:1;
  };
} __U1IRbits_t;
extern volatile __U1IRbits_t U1IRbits __asm__ ("U1IR") __attribute__((section("sfrs")));
extern volatile unsigned int U1IRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1IE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URSTIE_DETACHIE:1;
    unsigned UERRIE:1;
    unsigned SOFIE:1;
    unsigned TRNIE:1;
    unsigned IDLEIE:1;
    unsigned RESUMEIE:1;
    unsigned ATTACHIE:1;
    unsigned STALLIE:1;
  };
  struct {
    unsigned DETACHIE:1;
  };
  struct {
    unsigned URSTIE:1;
  };
} __U1IEbits_t;
extern volatile __U1IEbits_t U1IEbits __asm__ ("U1IE") __attribute__((section("sfrs")));
extern volatile unsigned int U1IECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1IESET __attribute__((section("sfrs")));
extern volatile unsigned int U1IEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1EIR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PIDEF:1;
    unsigned CRC5EF_EOFEF:1;
    unsigned CRC16EF:1;
    unsigned DFN8EF:1;
    unsigned BTOEF:1;
    unsigned DMAEF:1;
    unsigned BMXEF:1;
    unsigned BTSEF:1;
  };
  struct {
    unsigned :1;
    unsigned CRC5EF:1;
  };
  struct {
    unsigned :1;
    unsigned EOFEF:1;
  };
} __U1EIRbits_t;
extern volatile __U1EIRbits_t U1EIRbits __asm__ ("U1EIR") __attribute__((section("sfrs")));
extern volatile unsigned int U1EIRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EIE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PIDEE:1;
    unsigned CRC5EE_EOFEE:1;
    unsigned CRC16EE:1;
    unsigned DFN8EE:1;
    unsigned BTOEE:1;
    unsigned DMAEE:1;
    unsigned BMXEE:1;
    unsigned BTSEE:1;
  };
  struct {
    unsigned :1;
    unsigned CRC5EE:1;
  };
  struct {
    unsigned :1;
    unsigned EOFEE:1;
  };
} __U1EIEbits_t;
extern volatile __U1EIEbits_t U1EIEbits __asm__ ("U1EIE") __attribute__((section("sfrs")));
extern volatile unsigned int U1EIECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EIESET __attribute__((section("sfrs")));
extern volatile unsigned int U1EIEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned PPBI:1;
    unsigned DIR:1;
    unsigned ENDPT0:1;
  };
  struct {
    unsigned :4;
    unsigned ENDPT:4;
  };
  struct {
    unsigned :5;
    unsigned ENDPT1:1;
    unsigned ENDPT2:1;
    unsigned ENDPT3:1;
  };
} __U1STATbits_t;
extern volatile __U1STATbits_t U1STATbits __asm__ ("U1STAT") __attribute__((section("sfrs")));
extern volatile unsigned int U1STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1STATSET __attribute__((section("sfrs")));
extern volatile unsigned int U1STATINV __attribute__((section("sfrs")));
extern volatile unsigned int U1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USBEN_SOFEN:1;
    unsigned PPBRST:1;
    unsigned RESUME:1;
    unsigned HOSTEN:1;
    unsigned USBRST:1;
    unsigned PKTDIS_TOKBUSY:1;
    unsigned SE0:1;
    unsigned JSTATE:1;
  };
  struct {
    unsigned USBEN:1;
  };
  struct {
    unsigned SOFEN:1;
    unsigned :4;
    unsigned PKTDIS:1;
  };
  struct {
    unsigned :5;
    unsigned TOKBUSY:1;
  };
} __U1CONbits_t;
extern volatile __U1CONbits_t U1CONbits __asm__ ("U1CON") __attribute__((section("sfrs")));
extern volatile unsigned int U1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int U1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEVADDR:7;
    unsigned LSPDEN:1;
  };
  struct {
    unsigned DEVADDR0:1;
    unsigned DEVADDR1:1;
    unsigned DEVADDR2:1;
    unsigned DEVADDR3:1;
    unsigned DEVADDR4:1;
    unsigned DEVADDR5:1;
    unsigned DEVADDR6:1;
  };
} __U1ADDRbits_t;
extern volatile __U1ADDRbits_t U1ADDRbits __asm__ ("U1ADDR") __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned BDTPTRL:7;
} __U1BDTP1bits_t;
extern volatile __U1BDTP1bits_t U1BDTP1bits __asm__ ("U1BDTP1") __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1SET __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1INV __attribute__((section("sfrs")));
extern volatile unsigned int U1FRML __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRML:8;
  };
  struct {
    unsigned FRM0:1;
    unsigned FRM1:1;
    unsigned FRM2:1;
    unsigned FRM3:1;
    unsigned FRM4:1;
    unsigned FRM5:1;
    unsigned FRM6:1;
    unsigned FRM7:1;
  };
} __U1FRMLbits_t;
extern volatile __U1FRMLbits_t U1FRMLbits __asm__ ("U1FRML") __attribute__((section("sfrs")));
extern volatile unsigned int U1FRMLCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1FRMLSET __attribute__((section("sfrs")));
extern volatile unsigned int U1FRMLINV __attribute__((section("sfrs")));
extern volatile unsigned int U1FRMH __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRMH:3;
  };
  struct {
    unsigned FRM8:1;
    unsigned FRM9:1;
    unsigned FRM10:1;
  };
} __U1FRMHbits_t;
extern volatile __U1FRMHbits_t U1FRMHbits __asm__ ("U1FRMH") __attribute__((section("sfrs")));
extern volatile unsigned int U1FRMHCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1FRMHSET __attribute__((section("sfrs")));
extern volatile unsigned int U1FRMHINV __attribute__((section("sfrs")));
extern volatile unsigned int U1TOK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EP:4;
    unsigned PID:4;
  };
  struct {
    unsigned EP0:1;
  };
  struct {
    unsigned :1;
    unsigned EP1:1;
    unsigned EP2:1;
    unsigned EP3:1;
    unsigned PID0:1;
  };
  struct {
    unsigned :5;
    unsigned PID1:1;
    unsigned PID2:1;
    unsigned PID3:1;
  };
} __U1TOKbits_t;
extern volatile __U1TOKbits_t U1TOKbits __asm__ ("U1TOK") __attribute__((section("sfrs")));
extern volatile unsigned int U1TOKCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1TOKSET __attribute__((section("sfrs")));
extern volatile unsigned int U1TOKINV __attribute__((section("sfrs")));
extern volatile unsigned int U1SOF __attribute__((section("sfrs")));
typedef struct {
  unsigned CNT:8;
} __U1SOFbits_t;
extern volatile __U1SOFbits_t U1SOFbits __asm__ ("U1SOF") __attribute__((section("sfrs")));
extern volatile unsigned int U1SOFCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1SOFSET __attribute__((section("sfrs")));
extern volatile unsigned int U1SOFINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2 __attribute__((section("sfrs")));
typedef struct {
  unsigned BDTPTRH:8;
} __U1BDTP2bits_t;
extern volatile __U1BDTP2bits_t U1BDTP2bits __asm__ ("U1BDTP2") __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2SET __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2INV __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3 __attribute__((section("sfrs")));
typedef struct {
  unsigned BDTPTRU:8;
} __U1BDTP3bits_t;
extern volatile __U1BDTP3bits_t U1BDTP3bits __asm__ ("U1BDTP3") __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3SET __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3INV __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned UASUSPND:1;
  unsigned :3;
  unsigned USBSIDL:1;
  unsigned :1;
  unsigned UOEMON:1;
  unsigned UTEYE:1;
} __U1CNFG1bits_t;
extern volatile __U1CNFG1bits_t U1CNFG1bits __asm__ ("U1CNFG1") __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1SET __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
  unsigned :1;
  unsigned RETRYDIS:1;
  unsigned LSPD:1;
} __U1EP0bits_t;
extern volatile __U1EP0bits_t U1EP0bits __asm__ ("U1EP0") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP1bits_t;
extern volatile __U1EP1bits_t U1EP1bits __asm__ ("U1EP1") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP2bits_t;
extern volatile __U1EP2bits_t U1EP2bits __asm__ ("U1EP2") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP3bits_t;
extern volatile __U1EP3bits_t U1EP3bits __asm__ ("U1EP3") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP4bits_t;
extern volatile __U1EP4bits_t U1EP4bits __asm__ ("U1EP4") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP5bits_t;
extern volatile __U1EP5bits_t U1EP5bits __asm__ ("U1EP5") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP6bits_t;
extern volatile __U1EP6bits_t U1EP6bits __asm__ ("U1EP6") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP7bits_t;
extern volatile __U1EP7bits_t U1EP7bits __asm__ ("U1EP7") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP8bits_t;
extern volatile __U1EP8bits_t U1EP8bits __asm__ ("U1EP8") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP9bits_t;
extern volatile __U1EP9bits_t U1EP9bits __asm__ ("U1EP9") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP10bits_t;
extern volatile __U1EP10bits_t U1EP10bits __asm__ ("U1EP10") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP11bits_t;
extern volatile __U1EP11bits_t U1EP11bits __asm__ ("U1EP11") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP12bits_t;
extern volatile __U1EP12bits_t U1EP12bits __asm__ ("U1EP12") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP13bits_t;
extern volatile __U1EP13bits_t U1EP13bits __asm__ ("U1EP13") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP14bits_t;
extern volatile __U1EP14bits_t U1EP14bits __asm__ ("U1EP14") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP15bits_t;
extern volatile __U1EP15bits_t U1EP15bits __asm__ ("U1EP15") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15INV __attribute__((section("sfrs")));
extern volatile unsigned int TRISB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned TRISB6:1;
    unsigned TRISB7:1;
    unsigned TRISB8:1;
    unsigned TRISB9:1;
    unsigned TRISB10:1;
    unsigned TRISB11:1;
    unsigned TRISB12:1;
    unsigned TRISB13:1;
    unsigned TRISB14:1;
    unsigned TRISB15:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISBbits_t;
extern volatile __TRISBbits_t TRISBbits __asm__ ("TRISB") __attribute__((section("sfrs")));
extern volatile unsigned int TRISBCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISBSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISBINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
    unsigned RB8:1;
    unsigned RB9:1;
    unsigned RB10:1;
    unsigned RB11:1;
    unsigned RB12:1;
    unsigned RB13:1;
    unsigned RB14:1;
    unsigned RB15:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTBbits_t;
extern volatile __PORTBbits_t PORTBbits __asm__ ("PORTB") __attribute__((section("sfrs")));
extern volatile unsigned int PORTBCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTBSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTBINV __attribute__((section("sfrs")));
extern volatile unsigned int LATB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATB0:1;
    unsigned LATB1:1;
    unsigned LATB2:1;
    unsigned LATB3:1;
    unsigned LATB4:1;
    unsigned LATB5:1;
    unsigned LATB6:1;
    unsigned LATB7:1;
    unsigned LATB8:1;
    unsigned LATB9:1;
    unsigned LATB10:1;
    unsigned LATB11:1;
    unsigned LATB12:1;
    unsigned LATB13:1;
    unsigned LATB14:1;
    unsigned LATB15:1;
  };
  struct {
    unsigned w:32;
  };
} __LATBbits_t;
extern volatile __LATBbits_t LATBbits __asm__ ("LATB") __attribute__((section("sfrs")));
extern volatile unsigned int LATBCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATBSET __attribute__((section("sfrs")));
extern volatile unsigned int LATBINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCB0:1;
    unsigned ODCB1:1;
    unsigned ODCB2:1;
    unsigned ODCB3:1;
    unsigned ODCB4:1;
    unsigned ODCB5:1;
    unsigned ODCB6:1;
    unsigned ODCB7:1;
    unsigned ODCB8:1;
    unsigned ODCB9:1;
    unsigned ODCB10:1;
    unsigned ODCB11:1;
    unsigned ODCB12:1;
    unsigned ODCB13:1;
    unsigned ODCB14:1;
    unsigned ODCB15:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCBbits_t;
extern volatile __ODCBbits_t ODCBbits __asm__ ("ODCB") __attribute__((section("sfrs")));
extern volatile unsigned int ODCBCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCBSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCBINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :12;
    unsigned TRISC12:1;
    unsigned TRISC13:1;
    unsigned TRISC14:1;
    unsigned TRISC15:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISCbits_t;
extern volatile __TRISCbits_t TRISCbits __asm__ ("TRISC") __attribute__((section("sfrs")));
extern volatile unsigned int TRISCCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISCSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISCINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :12;
    unsigned RC12:1;
    unsigned RC13:1;
    unsigned RC14:1;
    unsigned RC15:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTCbits_t;
extern volatile __PORTCbits_t PORTCbits __asm__ ("PORTC") __attribute__((section("sfrs")));
extern volatile unsigned int PORTCCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTCSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTCINV __attribute__((section("sfrs")));
extern volatile unsigned int LATC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :12;
    unsigned LATC12:1;
    unsigned LATC13:1;
    unsigned LATC14:1;
    unsigned LATC15:1;
  };
  struct {
    unsigned w:32;
  };
} __LATCbits_t;
extern volatile __LATCbits_t LATCbits __asm__ ("LATC") __attribute__((section("sfrs")));
extern volatile unsigned int LATCCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATCSET __attribute__((section("sfrs")));
extern volatile unsigned int LATCINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :12;
    unsigned ODCC12:1;
    unsigned ODCC13:1;
    unsigned ODCC14:1;
    unsigned ODCC15:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCCbits_t;
extern volatile __ODCCbits_t ODCCbits __asm__ ("ODCC") __attribute__((section("sfrs")));
extern volatile unsigned int ODCCCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCCSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCCINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISD0:1;
    unsigned TRISD1:1;
    unsigned TRISD2:1;
    unsigned TRISD3:1;
    unsigned TRISD4:1;
    unsigned TRISD5:1;
    unsigned TRISD6:1;
    unsigned TRISD7:1;
    unsigned TRISD8:1;
    unsigned TRISD9:1;
    unsigned TRISD10:1;
    unsigned TRISD11:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISDbits_t;
extern volatile __TRISDbits_t TRISDbits __asm__ ("TRISD") __attribute__((section("sfrs")));
extern volatile unsigned int TRISDCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISDSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISDINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
    unsigned RD8:1;
    unsigned RD9:1;
    unsigned RD10:1;
    unsigned RD11:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTDbits_t;
extern volatile __PORTDbits_t PORTDbits __asm__ ("PORTD") __attribute__((section("sfrs")));
extern volatile unsigned int PORTDCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTDSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTDINV __attribute__((section("sfrs")));
extern volatile unsigned int LATD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATD0:1;
    unsigned LATD1:1;
    unsigned LATD2:1;
    unsigned LATD3:1;
    unsigned LATD4:1;
    unsigned LATD5:1;
    unsigned LATD6:1;
    unsigned LATD7:1;
    unsigned LATD8:1;
    unsigned LATD9:1;
    unsigned LATD10:1;
    unsigned LATD11:1;
  };
  struct {
    unsigned w:32;
  };
} __LATDbits_t;
extern volatile __LATDbits_t LATDbits __asm__ ("LATD") __attribute__((section("sfrs")));
extern volatile unsigned int LATDCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATDSET __attribute__((section("sfrs")));
extern volatile unsigned int LATDINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCD0:1;
    unsigned ODCD1:1;
    unsigned ODCD2:1;
    unsigned ODCD3:1;
    unsigned ODCD4:1;
    unsigned ODCD5:1;
    unsigned ODCD6:1;
    unsigned ODCD7:1;
    unsigned ODCD8:1;
    unsigned ODCD9:1;
    unsigned ODCD10:1;
    unsigned ODCD11:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCDbits_t;
extern volatile __ODCDbits_t ODCDbits __asm__ ("ODCD") __attribute__((section("sfrs")));
extern volatile unsigned int ODCDCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCDSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCDINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISE0:1;
    unsigned TRISE1:1;
    unsigned TRISE2:1;
    unsigned TRISE3:1;
    unsigned TRISE4:1;
    unsigned TRISE5:1;
    unsigned TRISE6:1;
    unsigned TRISE7:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISEbits_t;
extern volatile __TRISEbits_t TRISEbits __asm__ ("TRISE") __attribute__((section("sfrs")));
extern volatile unsigned int TRISECLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISESET __attribute__((section("sfrs")));
extern volatile unsigned int TRISEINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
    unsigned RE3:1;
    unsigned RE4:1;
    unsigned RE5:1;
    unsigned RE6:1;
    unsigned RE7:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTEbits_t;
extern volatile __PORTEbits_t PORTEbits __asm__ ("PORTE") __attribute__((section("sfrs")));
extern volatile unsigned int PORTECLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTESET __attribute__((section("sfrs")));
extern volatile unsigned int PORTEINV __attribute__((section("sfrs")));
extern volatile unsigned int LATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATE0:1;
    unsigned LATE1:1;
    unsigned LATE2:1;
    unsigned LATE3:1;
    unsigned LATE4:1;
    unsigned LATE5:1;
    unsigned LATE6:1;
    unsigned LATE7:1;
  };
  struct {
    unsigned w:32;
  };
} __LATEbits_t;
extern volatile __LATEbits_t LATEbits __asm__ ("LATE") __attribute__((section("sfrs")));
extern volatile unsigned int LATECLR __attribute__((section("sfrs")));
extern volatile unsigned int LATESET __attribute__((section("sfrs")));
extern volatile unsigned int LATEINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCE0:1;
    unsigned ODCE1:1;
    unsigned ODCE2:1;
    unsigned ODCE3:1;
    unsigned ODCE4:1;
    unsigned ODCE5:1;
    unsigned ODCE6:1;
    unsigned ODCE7:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCEbits_t;
extern volatile __ODCEbits_t ODCEbits __asm__ ("ODCE") __attribute__((section("sfrs")));
extern volatile unsigned int ODCECLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCESET __attribute__((section("sfrs")));
extern volatile unsigned int ODCEINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISF0:1;
    unsigned TRISF1:1;
    unsigned TRISF2:1;
    unsigned TRISF3:1;
    unsigned TRISF4:1;
    unsigned TRISF5:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISFbits_t;
extern volatile __TRISFbits_t TRISFbits __asm__ ("TRISF") __attribute__((section("sfrs")));
extern volatile unsigned int TRISFCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISFSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISFINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RF0:1;
    unsigned RF1:1;
    unsigned RF2:1;
    unsigned RF3:1;
    unsigned RF4:1;
    unsigned RF5:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTFbits_t;
extern volatile __PORTFbits_t PORTFbits __asm__ ("PORTF") __attribute__((section("sfrs")));
extern volatile unsigned int PORTFCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTFSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTFINV __attribute__((section("sfrs")));
extern volatile unsigned int LATF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATF0:1;
    unsigned LATF1:1;
    unsigned LATF2:1;
    unsigned LATF3:1;
    unsigned LATF4:1;
    unsigned LATF5:1;
  };
  struct {
    unsigned w:32;
  };
} __LATFbits_t;
extern volatile __LATFbits_t LATFbits __asm__ ("LATF") __attribute__((section("sfrs")));
extern volatile unsigned int LATFCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATFSET __attribute__((section("sfrs")));
extern volatile unsigned int LATFINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCF0:1;
    unsigned ODCF1:1;
    unsigned ODCF2:1;
    unsigned ODCF3:1;
    unsigned ODCF4:1;
    unsigned ODCF5:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCFbits_t;
extern volatile __ODCFbits_t ODCFbits __asm__ ("ODCF") __attribute__((section("sfrs")));
extern volatile unsigned int ODCFCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCFSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCFINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned TRISG2:1;
    unsigned TRISG3:1;
    unsigned :2;
    unsigned TRISG6:1;
    unsigned TRISG7:1;
    unsigned TRISG8:1;
    unsigned TRISG9:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISGbits_t;
extern volatile __TRISGbits_t TRISGbits __asm__ ("TRISG") __attribute__((section("sfrs")));
extern volatile unsigned int TRISGCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISGSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISGINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned RG2:1;
    unsigned RG3:1;
    unsigned :2;
    unsigned RG6:1;
    unsigned RG7:1;
    unsigned RG8:1;
    unsigned RG9:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTGbits_t;
extern volatile __PORTGbits_t PORTGbits __asm__ ("PORTG") __attribute__((section("sfrs")));
extern volatile unsigned int PORTGCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTGSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTGINV __attribute__((section("sfrs")));
extern volatile unsigned int LATG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned LATG2:1;
    unsigned LATG3:1;
    unsigned :2;
    unsigned LATG6:1;
    unsigned LATG7:1;
    unsigned LATG8:1;
    unsigned LATG9:1;
  };
  struct {
    unsigned w:32;
  };
} __LATGbits_t;
extern volatile __LATGbits_t LATGbits __asm__ ("LATG") __attribute__((section("sfrs")));
extern volatile unsigned int LATGCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATGSET __attribute__((section("sfrs")));
extern volatile unsigned int LATGINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned ODCG2:1;
    unsigned ODCG3:1;
    unsigned :2;
    unsigned ODCG6:1;
    unsigned ODCG7:1;
    unsigned ODCG8:1;
    unsigned ODCG9:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCGbits_t;
extern volatile __ODCGbits_t ODCGbits __asm__ ("ODCG") __attribute__((section("sfrs")));
extern volatile unsigned int ODCGCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCGSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCGINV __attribute__((section("sfrs")));
extern volatile unsigned int CNCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :13;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONbits_t;
extern volatile __CNCONbits_t CNCONbits __asm__ ("CNCON") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONSET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONINV __attribute__((section("sfrs")));
extern volatile unsigned int CNEN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNEN0:1;
    unsigned CNEN1:1;
    unsigned CNEN2:1;
    unsigned CNEN3:1;
    unsigned CNEN4:1;
    unsigned CNEN5:1;
    unsigned CNEN6:1;
    unsigned CNEN7:1;
    unsigned CNEN8:1;
    unsigned CNEN9:1;
    unsigned CNEN10:1;
    unsigned CNEN11:1;
    unsigned CNEN12:1;
    unsigned CNEN13:1;
    unsigned CNEN14:1;
    unsigned CNEN15:1;
    unsigned CNEN16:1;
    unsigned CNEN17:1;
    unsigned CNEN18:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENbits_t;
extern volatile __CNENbits_t CNENbits __asm__ ("CNEN") __attribute__((section("sfrs")));
extern volatile unsigned int CNENCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENSET __attribute__((section("sfrs")));
extern volatile unsigned int CNENINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPUE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUE0:1;
    unsigned CNPUE1:1;
    unsigned CNPUE2:1;
    unsigned CNPUE3:1;
    unsigned CNPUE4:1;
    unsigned CNPUE5:1;
    unsigned CNPUE6:1;
    unsigned CNPUE7:1;
    unsigned CNPUE8:1;
    unsigned CNPUE9:1;
    unsigned CNPUE10:1;
    unsigned CNPUE11:1;
    unsigned CNPUE12:1;
    unsigned CNPUE13:1;
    unsigned CNPUE14:1;
    unsigned CNPUE15:1;
    unsigned CNPUE16:1;
    unsigned CNPUE17:1;
    unsigned CNPUE18:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUEbits_t;
extern volatile __CNPUEbits_t CNPUEbits __asm__ ("CNPUE") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUECLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUESET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUEINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned BUFCDEC:1;
    unsigned :3;
    unsigned MANFC:1;
    unsigned :2;
    unsigned AUTOFC:1;
    unsigned RXEN:1;
    unsigned TXRTS:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned PTV:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHCON1bits_t;
extern volatile __ETHCON1bits_t ETHCON1bits __asm__ ("ETHCON1") __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON1CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON1SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON1INV __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :4;
    unsigned RXBUF_SZ:7;
  };
  struct {
    unsigned w:32;
  };
} __ETHCON2bits_t;
extern volatile __ETHCON2bits_t ETHCON2bits __asm__ ("ETHCON2") __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON2SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHCON2INV __attribute__((section("sfrs")));
extern volatile unsigned int ETHTXST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned TXSTADDR:30;
  };
  struct {
    unsigned w:32;
  };
} __ETHTXSTbits_t;
extern volatile __ETHTXSTbits_t ETHTXSTbits __asm__ ("ETHTXST") __attribute__((section("sfrs")));
extern volatile unsigned int ETHTXSTCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHTXSTSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHTXSTINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned RXSTADDR:30;
  };
  struct {
    unsigned w:32;
  };
} __ETHRXSTbits_t;
extern volatile __ETHRXSTbits_t ETHRXSTbits __asm__ ("ETHRXST") __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXSTCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXSTSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXSTINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT0 __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT0CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT0SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT0INV __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT1 __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT1CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT1SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHHT1INV __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM0 __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM0CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM0SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM0INV __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM1 __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM1CLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM1SET __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMM1INV __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMCS __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PMCS:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHPMCSbits_t;
extern volatile __ETHPMCSbits_t ETHPMCSbits __asm__ ("ETHPMCS") __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMCSCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMCSSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMCSINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMO __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PMO:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHPMObits_t;
extern volatile __ETHPMObits_t ETHPMObits __asm__ ("ETHPMO") __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMOCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMOSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHPMOINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXFC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned BCEN:1;
    unsigned MCEN:1;
    unsigned NOTMEEN:1;
    unsigned UCEN:1;
    unsigned RUNTEN:1;
    unsigned RUNTERREN:1;
    unsigned CRCOKEN:1;
    unsigned CRCERREN:1;
    unsigned PMMODE:4;
    unsigned NOTPM:1;
    unsigned :1;
    unsigned MPEN:1;
    unsigned HTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __ETHRXFCbits_t;
extern volatile __ETHRXFCbits_t ETHRXFCbits __asm__ ("ETHRXFC") __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXFCCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXFCSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXFCINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXWM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXEWM:8;
    unsigned :8;
    unsigned RXFWM:8;
  };
  struct {
    unsigned w:32;
  };
} __ETHRXWMbits_t;
extern volatile __ETHRXWMbits_t ETHRXWMbits __asm__ ("ETHRXWM") __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXWMCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXWMSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXWMINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHIEN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXOVFLWIE:1;
    unsigned RXBUFNAIE:1;
    unsigned TXABORTIE:1;
    unsigned TXDONEIE:1;
    unsigned :1;
    unsigned RXACTIE:1;
    unsigned PKTPENDIE:1;
    unsigned RXDONEIE:1;
    unsigned FWMARKIE:1;
    unsigned EWMARKIE:1;
    unsigned :3;
    unsigned RXBUSEIE:1;
    unsigned TXBUSEIE:1;
  };
  struct {
    unsigned w:32;
  };
} __ETHIENbits_t;
extern volatile __ETHIENbits_t ETHIENbits __asm__ ("ETHIEN") __attribute__((section("sfrs")));
extern volatile unsigned int ETHIENCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHIENSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHIENINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHIRQ __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXOVFLW:1;
    unsigned RXBUFNA:1;
    unsigned TXABORT:1;
    unsigned TXDONE:1;
    unsigned :1;
    unsigned RXACT:1;
    unsigned PKTPEND:1;
    unsigned RXDONE:1;
    unsigned FWMARK:1;
    unsigned EWMARK:1;
    unsigned :3;
    unsigned RXBUSE:1;
    unsigned TXBUSE:1;
  };
  struct {
    unsigned w:32;
  };
} __ETHIRQbits_t;
extern volatile __ETHIRQbits_t ETHIRQbits __asm__ ("ETHIRQ") __attribute__((section("sfrs")));
extern volatile unsigned int ETHIRQCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHIRQSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHIRQINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :5;
    unsigned RXBUSY:1;
    unsigned TXBUSY:1;
    unsigned BUSY:1;
    unsigned :8;
    unsigned BUFCNT:8;
  };
  struct {
    unsigned :7;
    unsigned ETHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __ETHSTATbits_t;
extern volatile __ETHSTATbits_t ETHSTATbits __asm__ ("ETHSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int ETHSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHSTATINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXOVFLOW __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXOVFLWCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHRXOVFLOWbits_t;
extern volatile __ETHRXOVFLOWbits_t ETHRXOVFLOWbits __asm__ ("ETHRXOVFLOW") __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXOVFLOWCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXOVFLOWSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHRXOVFLOWINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMTXOK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRMTXOKCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHFRMTXOKbits_t;
extern volatile __ETHFRMTXOKbits_t ETHFRMTXOKbits __asm__ ("ETHFRMTXOK") __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMTXOKCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMTXOKSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMTXOKINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHSCOLFRM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SCOLFRMCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHSCOLFRMbits_t;
extern volatile __ETHSCOLFRMbits_t ETHSCOLFRMbits __asm__ ("ETHSCOLFRM") __attribute__((section("sfrs")));
extern volatile unsigned int ETHSCOLFRMCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHSCOLFRMSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHSCOLFRMINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHMCOLFRM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MCOLFRMCNT:16;
  };
  struct {
    unsigned MCOLFRM_CNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHMCOLFRMbits_t;
extern volatile __ETHMCOLFRMbits_t ETHMCOLFRMbits __asm__ ("ETHMCOLFRM") __attribute__((section("sfrs")));
extern volatile unsigned int ETHMCOLFRMCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHMCOLFRMSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHMCOLFRMINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMRXOK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRMRXOKCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHFRMRXOKbits_t;
extern volatile __ETHFRMRXOKbits_t ETHFRMRXOKbits __asm__ ("ETHFRMRXOK") __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMRXOKCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMRXOKSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHFRMRXOKINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHFCSERR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FCSERRCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHFCSERRbits_t;
extern volatile __ETHFCSERRbits_t ETHFCSERRbits __asm__ ("ETHFCSERR") __attribute__((section("sfrs")));
extern volatile unsigned int ETHFCSERRCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHFCSERRSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHFCSERRINV __attribute__((section("sfrs")));
extern volatile unsigned int ETHALGNERR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ALGNERRCNT:16;
  };
  struct {
    unsigned w:32;
  };
} __ETHALGNERRbits_t;
extern volatile __ETHALGNERRbits_t ETHALGNERRbits __asm__ ("ETHALGNERR") __attribute__((section("sfrs")));
extern volatile unsigned int ETHALGNERRCLR __attribute__((section("sfrs")));
extern volatile unsigned int ETHALGNERRSET __attribute__((section("sfrs")));
extern volatile unsigned int ETHALGNERRINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXENABLE:1;
    unsigned PASSALL:1;
    unsigned RXPAUSE:1;
    unsigned TXPAUSE:1;
    unsigned LOOPBACK:1;
    unsigned :3;
    unsigned RESETTFUN:1;
    unsigned RESETTMCS:1;
    unsigned RESETRFUN:1;
    unsigned RESETRMCS:1;
    unsigned :2;
    unsigned SIMRESET:1;
    unsigned SOFTRESET:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1CFG1bits_t;
extern volatile __EMAC1CFG1bits_t EMAC1CFG1bits __asm__ ("EMAC1CFG1") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXENABLE:1;
    unsigned PASSALL:1;
    unsigned RXPAUSE:1;
    unsigned TXPAUSE:1;
    unsigned LOOPBACK:1;
    unsigned :3;
    unsigned RESETTFUN:1;
    unsigned RESETTMCS:1;
    unsigned RESETRFUN:1;
    unsigned RESETRMCS:1;
    unsigned :2;
    unsigned SIMRESET:1;
    unsigned SOFTRESET:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxCFG1bits_t;
extern volatile __EMACxCFG1bits_t EMACxCFG1bits __asm__ ("EMACxCFG1") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG1CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG1CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG1SET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG1SET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG1INV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG1INV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FULLDPLX:1;
    unsigned LENGTHCK:1;
    unsigned HUGEFRM:1;
    unsigned DELAYCRC:1;
    unsigned CRCENABLE:1;
    unsigned PADENABLE:1;
    unsigned VLANPAD:1;
    unsigned AUTOPAD:1;
    unsigned PUREPRE:1;
    unsigned LONGPRE:1;
    unsigned :2;
    unsigned NOBKOFF:1;
    unsigned BPNOBKOFF:1;
    unsigned EXCESSDFR:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1CFG2bits_t;
extern volatile __EMAC1CFG2bits_t EMAC1CFG2bits __asm__ ("EMAC1CFG2") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FULLDPLX:1;
    unsigned LENGTHCK:1;
    unsigned HUGEFRM:1;
    unsigned DELAYCRC:1;
    unsigned CRCENABLE:1;
    unsigned PADENABLE:1;
    unsigned VLANPAD:1;
    unsigned AUTOPAD:1;
    unsigned PUREPRE:1;
    unsigned LONGPRE:1;
    unsigned :2;
    unsigned NOBKOFF:1;
    unsigned BPNOBKOFF:1;
    unsigned EXCESSDFR:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxCFG2bits_t;
extern volatile __EMACxCFG2bits_t EMACxCFG2bits __asm__ ("EMACxCFG2") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG2CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG2CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG2SET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG2SET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CFG2INV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCFG2INV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned B2BIPKTGP:7;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1IPGTbits_t;
extern volatile __EMAC1IPGTbits_t EMAC1IPGTbits __asm__ ("EMAC1IPGT") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned B2BIPKTGP:7;
  };
  struct {
    unsigned w:32;
  };
} __EMACxIPGTbits_t;
extern volatile __EMACxIPGTbits_t EMACxIPGTbits __asm__ ("EMACxIPGT") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGTINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGTINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned NB2BIPKTGP2:7;
    unsigned :1;
    unsigned NB2BIPKTGP1:7;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1IPGRbits_t;
extern volatile __EMAC1IPGRbits_t EMAC1IPGRbits __asm__ ("EMAC1IPGR") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned NB2BIPKTGP2:7;
    unsigned :1;
    unsigned NB2BIPKTGP1:7;
  };
  struct {
    unsigned w:32;
  };
} __EMACxIPGRbits_t;
extern volatile __EMACxIPGRbits_t EMACxIPGRbits __asm__ ("EMACxIPGR") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGRCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGRCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGRSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGRSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1IPGRINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxIPGRINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CLRT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RETX:4;
    unsigned :4;
    unsigned CWINDOW:6;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1CLRTbits_t;
extern volatile __EMAC1CLRTbits_t EMAC1CLRTbits __asm__ ("EMAC1CLRT") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCLRT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RETX:4;
    unsigned :4;
    unsigned CWINDOW:6;
  };
  struct {
    unsigned w:32;
  };
} __EMACxCLRTbits_t;
extern volatile __EMACxCLRTbits_t EMACxCLRTbits __asm__ ("EMACxCLRT") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CLRTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCLRTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CLRTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCLRTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1CLRTINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxCLRTINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MAXF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MACMAXF:16;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MAXFbits_t;
extern volatile __EMAC1MAXFbits_t EMAC1MAXFbits __asm__ ("EMAC1MAXF") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMAXF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MACMAXF:16;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMAXFbits_t;
extern volatile __EMACxMAXFbits_t EMACxMAXFbits __asm__ ("EMACxMAXF") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MAXFCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMAXFCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MAXFSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMAXFSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MAXFINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMAXFINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SUPP __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SPEEDRMII:1;
    unsigned :2;
    unsigned RESETRMII:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1SUPPbits_t;
extern volatile __EMAC1SUPPbits_t EMAC1SUPPbits __asm__ ("EMAC1SUPP") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSUPP __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SPEEDRMII:1;
    unsigned :2;
    unsigned RESETRMII:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxSUPPbits_t;
extern volatile __EMACxSUPPbits_t EMACxSUPPbits __asm__ ("EMACxSUPP") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SUPPCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSUPPCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SUPPSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSUPPSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SUPPINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSUPPINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1TEST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SHRTQNTA:1;
    unsigned TESTPAUSE:1;
    unsigned TESTBP:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1TESTbits_t;
extern volatile __EMAC1TESTbits_t EMAC1TESTbits __asm__ ("EMAC1TEST") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxTEST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SHRTQNTA:1;
    unsigned TESTPAUSE:1;
    unsigned TESTBP:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxTESTbits_t;
extern volatile __EMACxTESTbits_t EMACxTESTbits __asm__ ("EMACxTEST") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1TESTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxTESTCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1TESTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxTESTSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1TESTINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxTESTINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCFG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SCANINC:1;
    unsigned NOPRE:1;
    unsigned CLKSEL:4;
    unsigned :9;
    unsigned RESETMGMT:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MCFGbits_t;
extern volatile __EMAC1MCFGbits_t EMAC1MCFGbits __asm__ ("EMAC1MCFG") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCFG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SCANINC:1;
    unsigned NOPRE:1;
    unsigned CLKSEL:4;
    unsigned :9;
    unsigned RESETMGMT:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMCFGbits_t;
extern volatile __EMACxMCFGbits_t EMACxMCFGbits __asm__ ("EMACxMCFG") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCFGCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCFGCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCFGSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCFGSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCFGINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCFGINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCMD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned READ:1;
    unsigned SCAN:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MCMDbits_t;
extern volatile __EMAC1MCMDbits_t EMAC1MCMDbits __asm__ ("EMAC1MCMD") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCMD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned READ:1;
    unsigned SCAN:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMCMDbits_t;
extern volatile __EMACxMCMDbits_t EMACxMCMDbits __asm__ ("EMACxMCMD") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCMDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCMDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCMDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCMDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MCMDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMCMDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MADR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned REGADDR:5;
    unsigned :3;
    unsigned PHYADDR:5;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MADRbits_t;
extern volatile __EMAC1MADRbits_t EMAC1MADRbits __asm__ ("EMAC1MADR") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMADR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned REGADDR:5;
    unsigned :3;
    unsigned PHYADDR:5;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMADRbits_t;
extern volatile __EMACxMADRbits_t EMACxMADRbits __asm__ ("EMACxMADR") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MADRCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMADRCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MADRSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMADRSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MADRINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMADRINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MWTD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MWTD:16;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MWTDbits_t;
extern volatile __EMAC1MWTDbits_t EMAC1MWTDbits __asm__ ("EMAC1MWTD") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMWTD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MWTD:16;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMWTDbits_t;
extern volatile __EMACxMWTDbits_t EMACxMWTDbits __asm__ ("EMACxMWTD") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MWTDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMWTDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MWTDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMWTDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MWTDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMWTDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MRDD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MRDD:16;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MRDDbits_t;
extern volatile __EMAC1MRDDbits_t EMAC1MRDDbits __asm__ ("EMAC1MRDD") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMRDD __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MRDD:16;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMRDDbits_t;
extern volatile __EMACxMRDDbits_t EMACxMRDDbits __asm__ ("EMACxMRDD") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MRDDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMRDDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MRDDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMRDDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MRDDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMRDDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MIND __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MIIMBUSY:1;
    unsigned SCAN:1;
    unsigned NOTVALID:1;
    unsigned LINKFAIL:1;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1MINDbits_t;
extern volatile __EMAC1MINDbits_t EMAC1MINDbits __asm__ ("EMAC1MIND") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMIND __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned MIIMBUSY:1;
    unsigned SCAN:1;
    unsigned NOTVALID:1;
    unsigned LINKFAIL:1;
  };
  struct {
    unsigned w:32;
  };
} __EMACxMINDbits_t;
extern volatile __EMACxMINDbits_t EMACxMINDbits __asm__ ("EMACxMIND") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MINDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMINDCLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MINDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMINDSET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1MINDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxMINDINV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR5:8;
    unsigned STNADDR6:8;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1SA0bits_t;
extern volatile __EMAC1SA0bits_t EMAC1SA0bits __asm__ ("EMAC1SA0") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR5:8;
    unsigned STNADDR6:8;
  };
  struct {
    unsigned w:32;
  };
} __EMACxSA0bits_t;
extern volatile __EMACxSA0bits_t EMACxSA0bits __asm__ ("EMACxSA0") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA0CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA0CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA0SET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA0SET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA0INV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA0INV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR3:8;
    unsigned STNADDR4:8;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1SA1bits_t;
extern volatile __EMAC1SA1bits_t EMAC1SA1bits __asm__ ("EMAC1SA1") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR3:8;
    unsigned STNADDR4:8;
  };
  struct {
    unsigned w:32;
  };
} __EMACxSA1bits_t;
extern volatile __EMACxSA1bits_t EMACxSA1bits __asm__ ("EMACxSA1") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA1CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA1CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA1SET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA1SET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA1INV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA1INV __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR1:8;
    unsigned STNADDR2:8;
  };
  struct {
    unsigned w:32;
  };
} __EMAC1SA2bits_t;
extern volatile __EMAC1SA2bits_t EMAC1SA2bits __asm__ ("EMAC1SA2") __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STNADDR1:8;
    unsigned STNADDR2:8;
  };
  struct {
    unsigned w:32;
  };
} __EMACxSA2bits_t;
extern volatile __EMACxSA2bits_t EMACxSA2bits __asm__ ("EMACxSA2") __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA2CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA2CLR __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA2SET __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA2SET __attribute__((section("sfrs")));
extern volatile unsigned int EMAC1SA2INV __attribute__((section("sfrs")));
extern volatile unsigned int EMACxSA2INV __attribute__((section("sfrs")));
extern volatile unsigned int C1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DNCNT:5;
    unsigned :6;
    unsigned CANBUSY:1;
    unsigned :1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned :4;
    unsigned CANCAP:1;
    unsigned OPMOD:3;
    unsigned REQOP:3;
    unsigned ABAT:1;
  };
  struct {
    unsigned w:32;
  };
} __C1CONbits_t;
extern volatile __C1CONbits_t C1CONbits __asm__ ("C1CON") __attribute__((section("sfrs")));
extern volatile unsigned int C1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int C1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int C1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int C1CFG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned BRP:6;
    unsigned SJW:2;
    unsigned PRSEG:3;
    unsigned SEG1PH:3;
    unsigned SAM:1;
    unsigned SEG2PHTS:1;
    unsigned SEG2PH:3;
    unsigned :3;
    unsigned WAKFIL:1;
  };
  struct {
    unsigned w:32;
  };
} __C1CFGbits_t;
extern volatile __C1CFGbits_t C1CFGbits __asm__ ("C1CFG") __attribute__((section("sfrs")));
extern volatile unsigned int C1CFGCLR __attribute__((section("sfrs")));
extern volatile unsigned int C1CFGSET __attribute__((section("sfrs")));
extern volatile unsigned int C1CFGINV __attribute__((section("sfrs")));
extern volatile unsigned int C1INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBIF:1;
    unsigned RBIF:1;
    unsigned CTMRIF:1;
    unsigned MODIF:1;
    unsigned :7;
    unsigned RBOVIF:1;
    unsigned SERRIF:1;
    unsigned CERRIF:1;
    unsigned WAKIF:1;
    unsigned IVRIF:1;
    unsigned TBIE:1;
    unsigned RBIE:1;
    unsigned CTMRIE:1;
    unsigned MODIE:1;
    unsigned :7;
    unsigned RBOVIE:1;
    unsigned SERRIE:1;
    unsigned CERRIE:1;
    unsigned WAKIE:1;
    unsigned IVRIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1INTbits_t;
extern volatile __C1INTbits_t C1INTbits __asm__ ("C1INT") __attribute__((section("sfrs")));
extern volatile unsigned int C1INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int C1INTSET __attribute__((section("sfrs")));
extern volatile unsigned int C1INTINV __attribute__((section("sfrs")));
extern volatile unsigned int C1VEC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICODE:7;
    unsigned :1;
    unsigned FILHIT:5;
  };
  struct {
    unsigned w:32;
  };
} __C1VECbits_t;
extern volatile __C1VECbits_t C1VECbits __asm__ ("C1VEC") __attribute__((section("sfrs")));
extern volatile unsigned int C1VECCLR __attribute__((section("sfrs")));
extern volatile unsigned int C1VECSET __attribute__((section("sfrs")));
extern volatile unsigned int C1VECINV __attribute__((section("sfrs")));
extern volatile unsigned int C1TREC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RERRCNT:8;
    unsigned TERRCNT:8;
    unsigned EWARN:1;
    unsigned RXWARN:1;
    unsigned TXWARN:1;
    unsigned RXBP:1;
    unsigned TXBP:1;
    unsigned TXBO:1;
  };
  struct {
    unsigned w:32;
  };
} __C1TRECbits_t;
extern volatile __C1TRECbits_t C1TRECbits __asm__ ("C1TREC") __attribute__((section("sfrs")));
extern volatile unsigned int C1TRECCLR __attribute__((section("sfrs")));
extern volatile unsigned int C1TRECSET __attribute__((section("sfrs")));
extern volatile unsigned int C1TRECINV __attribute__((section("sfrs")));
extern volatile unsigned int C1FSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FIFOIP:32;
  };
  struct {
    unsigned FIFOIP0:1;
    unsigned FIFOIP1:1;
    unsigned FIFOIP2:1;
    unsigned FIFOIP3:1;
    unsigned FIFOIP4:1;
    unsigned FIFOIP5:1;
    unsigned FIFOIP6:1;
    unsigned FIFOIP7:1;
    unsigned FIFOIP8:1;
    unsigned FIFOIP9:1;
    unsigned FIFOIP10:1;
    unsigned FIFOIP11:1;
    unsigned FIFOIP12:1;
    unsigned FIFOIP13:1;
    unsigned FIFOIP14:1;
    unsigned FIFOIP15:1;
    unsigned FIFOIP16:1;
    unsigned FIFOIP17:1;
    unsigned FIFOIP18:1;
    unsigned FIFOIP19:1;
    unsigned FIFOIP20:1;
    unsigned FIFOIP21:1;
    unsigned FIFOIP22:1;
    unsigned FIFOIP23:1;
    unsigned FIFOIP24:1;
    unsigned FIFOIP25:1;
    unsigned FIFOIP26:1;
    unsigned FIFOIP27:1;
    unsigned FIFOIP28:1;
    unsigned FIFOIP29:1;
    unsigned FIFOIP30:1;
    unsigned FIFOIP31:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FSTATbits_t;
extern volatile __C1FSTATbits_t C1FSTATbits __asm__ ("C1FSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int C1FSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int C1FSTATINV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXOVF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXOVF:32;
  };
  struct {
    unsigned RXOVF0:1;
    unsigned RXOVF1:1;
    unsigned RXOVF2:1;
    unsigned RXOVF3:1;
    unsigned RXOVF4:1;
    unsigned RXOVF5:1;
    unsigned RXOVF6:1;
    unsigned RXOVF7:1;
    unsigned RXOVF8:1;
    unsigned RXOVF9:1;
    unsigned RXOVF10:1;
    unsigned RXOVF11:1;
    unsigned RXOVF12:1;
    unsigned RXOVF13:1;
    unsigned RXOVF14:1;
    unsigned RXOVF15:1;
    unsigned RXOVF16:1;
    unsigned RXOVF17:1;
    unsigned RXOVF18:1;
    unsigned RXOVF19:1;
    unsigned RXOVF20:1;
    unsigned RXOVF21:1;
    unsigned RXOVF22:1;
    unsigned RXOVF23:1;
    unsigned RXOVF24:1;
    unsigned RXOVF25:1;
    unsigned RXOVF26:1;
    unsigned RXOVF27:1;
    unsigned RXOVF28:1;
    unsigned RXOVF29:1;
    unsigned RXOVF30:1;
    unsigned RXOVF31:1;
  };
  struct {
    unsigned w:32;
  };
} __C1RXOVFbits_t;
extern volatile __C1RXOVFbits_t C1RXOVFbits __asm__ ("C1RXOVF") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXOVFCLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXOVFSET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXOVFINV __attribute__((section("sfrs")));
extern volatile unsigned int C1TMR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CANTSPRE:16;
    unsigned CANTS:16;
  };
  struct {
    unsigned w:32;
  };
} __C1TMRbits_t;
extern volatile __C1TMRbits_t C1TMRbits __asm__ ("C1TMR") __attribute__((section("sfrs")));
extern volatile unsigned int C1TMRCLR __attribute__((section("sfrs")));
extern volatile unsigned int C1TMRSET __attribute__((section("sfrs")));
extern volatile unsigned int C1TMRINV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned MIDE:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXM0bits_t;
extern volatile __C1RXM0bits_t C1RXM0bits __asm__ ("C1RXM0") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM0SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM0INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned MIDE:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXM1bits_t;
extern volatile __C1RXM1bits_t C1RXM1bits __asm__ ("C1RXM1") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM1SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM1INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned MIDE:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXM2bits_t;
extern volatile __C1RXM2bits_t C1RXM2bits __asm__ ("C1RXM2") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM2SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM2INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned MIDE:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXM3bits_t;
extern volatile __C1RXM3bits_t C1RXM3bits __asm__ ("C1RXM3") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM3SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXM3INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL0:5;
    unsigned MSEL0:2;
    unsigned FLTEN0:1;
    unsigned FSEL1:5;
    unsigned MSEL1:2;
    unsigned FLTEN1:1;
    unsigned FSEL2:5;
    unsigned MSEL2:2;
    unsigned FLTEN2:1;
    unsigned FSEL3:5;
    unsigned MSEL3:2;
    unsigned FLTEN3:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FLTCON0bits_t;
extern volatile __C1FLTCON0bits_t C1FLTCON0bits __asm__ ("C1FLTCON0") __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON0SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON0INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL4:5;
    unsigned MSEL4:2;
    unsigned FLTEN4:1;
    unsigned FSEL5:5;
    unsigned MSEL5:2;
    unsigned FLTEN5:1;
    unsigned FSEL6:5;
    unsigned MSEL6:2;
    unsigned FLTEN6:1;
    unsigned FSEL7:5;
    unsigned MSEL7:2;
    unsigned FLTEN7:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FLTCON1bits_t;
extern volatile __C1FLTCON1bits_t C1FLTCON1bits __asm__ ("C1FLTCON1") __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON1SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON1INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL8:5;
    unsigned MSEL8:2;
    unsigned FLTEN8:1;
    unsigned FSEL9:5;
    unsigned MSEL9:2;
    unsigned FLTEN9:1;
    unsigned FSEL10:5;
    unsigned MSEL10:2;
    unsigned FLTEN10:1;
    unsigned FSEL11:5;
    unsigned MSEL11:2;
    unsigned FLTEN11:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FLTCON2bits_t;
extern volatile __C1FLTCON2bits_t C1FLTCON2bits __asm__ ("C1FLTCON2") __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON2SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON2INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL12:5;
    unsigned MSEL12:2;
    unsigned FLTEN12:1;
    unsigned FSEL13:5;
    unsigned MSEL13:2;
    unsigned FLTEN13:1;
    unsigned FSEL14:5;
    unsigned MSEL14:2;
    unsigned FLTEN14:1;
    unsigned FSEL15:5;
    unsigned MSEL15:2;
    unsigned FLTEN15:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FLTCON3bits_t;
extern volatile __C1FLTCON3bits_t C1FLTCON3bits __asm__ ("C1FLTCON3") __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON3SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON3INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL16:5;
    unsigned MSEL16:2;
    unsigned FLTEN16:1;
    unsigned FSEL17:5;
    unsigned MSEL17:2;
    unsigned FLTEN17:1;
    unsigned FSEL18:5;
    unsigned MSEL18:2;
    unsigned FLTEN18:1;
    unsigned FSEL19:5;
    unsigned MSEL19:2;
    unsigned FLTEN19:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FLTCON4bits_t;
extern volatile __C1FLTCON4bits_t C1FLTCON4bits __asm__ ("C1FLTCON4") __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON4SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON4INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL20:5;
    unsigned MSEL20:2;
    unsigned FLTEN20:1;
    unsigned FSEL21:5;
    unsigned MSEL21:2;
    unsigned FLTEN21:1;
    unsigned FSEL22:5;
    unsigned MSEL22:2;
    unsigned FLTEN22:1;
    unsigned FSEL23:5;
    unsigned MSEL23:2;
    unsigned FLTEN23:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FLTCON5bits_t;
extern volatile __C1FLTCON5bits_t C1FLTCON5bits __asm__ ("C1FLTCON5") __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON5SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON5INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL24:5;
    unsigned MSEL24:2;
    unsigned FLTEN24:1;
    unsigned FSEL25:5;
    unsigned MSEL25:2;
    unsigned FLTEN25:1;
    unsigned FSEL26:5;
    unsigned MSEL26:2;
    unsigned FLTEN26:1;
    unsigned FSEL27:5;
    unsigned MSEL27:2;
    unsigned FLTEN27:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FLTCON6bits_t;
extern volatile __C1FLTCON6bits_t C1FLTCON6bits __asm__ ("C1FLTCON6") __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON6SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON6INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL28:5;
    unsigned MSEL28:2;
    unsigned FLTEN28:1;
    unsigned FSEL29:5;
    unsigned MSEL29:2;
    unsigned FLTEN29:1;
    unsigned FSEL30:5;
    unsigned MSEL30:2;
    unsigned FLTEN30:1;
    unsigned FSEL31:5;
    unsigned MSEL31:2;
    unsigned FLTEN31:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FLTCON7bits_t;
extern volatile __C1FLTCON7bits_t C1FLTCON7bits __asm__ ("C1FLTCON7") __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON7SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FLTCON7INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF0bits_t;
extern volatile __C1RXF0bits_t C1RXF0bits __asm__ ("C1RXF0") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF0SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF0INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF1bits_t;
extern volatile __C1RXF1bits_t C1RXF1bits __asm__ ("C1RXF1") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF1SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF1INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF2bits_t;
extern volatile __C1RXF2bits_t C1RXF2bits __asm__ ("C1RXF2") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF2SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF2INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF3bits_t;
extern volatile __C1RXF3bits_t C1RXF3bits __asm__ ("C1RXF3") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF3SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF3INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF4bits_t;
extern volatile __C1RXF4bits_t C1RXF4bits __asm__ ("C1RXF4") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF4SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF4INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF5bits_t;
extern volatile __C1RXF5bits_t C1RXF5bits __asm__ ("C1RXF5") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF5SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF5INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF6bits_t;
extern volatile __C1RXF6bits_t C1RXF6bits __asm__ ("C1RXF6") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF6SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF6INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF7bits_t;
extern volatile __C1RXF7bits_t C1RXF7bits __asm__ ("C1RXF7") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF7SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF7INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF8bits_t;
extern volatile __C1RXF8bits_t C1RXF8bits __asm__ ("C1RXF8") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF8CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF8SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF8INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF9bits_t;
extern volatile __C1RXF9bits_t C1RXF9bits __asm__ ("C1RXF9") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF9CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF9SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF9INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF10bits_t;
extern volatile __C1RXF10bits_t C1RXF10bits __asm__ ("C1RXF10") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF10CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF10SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF10INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF11 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF11bits_t;
extern volatile __C1RXF11bits_t C1RXF11bits __asm__ ("C1RXF11") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF11CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF11SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF11INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF12 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF12bits_t;
extern volatile __C1RXF12bits_t C1RXF12bits __asm__ ("C1RXF12") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF12CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF12SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF12INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF13 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF13bits_t;
extern volatile __C1RXF13bits_t C1RXF13bits __asm__ ("C1RXF13") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF13CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF13SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF13INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF14 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF14bits_t;
extern volatile __C1RXF14bits_t C1RXF14bits __asm__ ("C1RXF14") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF14CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF14SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF14INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF15 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF15bits_t;
extern volatile __C1RXF15bits_t C1RXF15bits __asm__ ("C1RXF15") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF15CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF15SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF15INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF16 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF16bits_t;
extern volatile __C1RXF16bits_t C1RXF16bits __asm__ ("C1RXF16") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF16CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF16SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF16INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF17 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF17bits_t;
extern volatile __C1RXF17bits_t C1RXF17bits __asm__ ("C1RXF17") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF17CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF17SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF17INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF18 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF18bits_t;
extern volatile __C1RXF18bits_t C1RXF18bits __asm__ ("C1RXF18") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF18CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF18SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF18INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF19 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF19bits_t;
extern volatile __C1RXF19bits_t C1RXF19bits __asm__ ("C1RXF19") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF19CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF19SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF19INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF20 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF20bits_t;
extern volatile __C1RXF20bits_t C1RXF20bits __asm__ ("C1RXF20") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF20CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF20SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF20INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF21 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF21bits_t;
extern volatile __C1RXF21bits_t C1RXF21bits __asm__ ("C1RXF21") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF21CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF21SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF21INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF22 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF22bits_t;
extern volatile __C1RXF22bits_t C1RXF22bits __asm__ ("C1RXF22") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF22CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF22SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF22INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF23 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF23bits_t;
extern volatile __C1RXF23bits_t C1RXF23bits __asm__ ("C1RXF23") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF23CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF23SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF23INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF24 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF24bits_t;
extern volatile __C1RXF24bits_t C1RXF24bits __asm__ ("C1RXF24") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF24CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF24SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF24INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF25 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF25bits_t;
extern volatile __C1RXF25bits_t C1RXF25bits __asm__ ("C1RXF25") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF25CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF25SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF25INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF26 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF26bits_t;
extern volatile __C1RXF26bits_t C1RXF26bits __asm__ ("C1RXF26") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF26CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF26SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF26INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF27 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF27bits_t;
extern volatile __C1RXF27bits_t C1RXF27bits __asm__ ("C1RXF27") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF27CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF27SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF27INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF28 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF28bits_t;
extern volatile __C1RXF28bits_t C1RXF28bits __asm__ ("C1RXF28") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF28CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF28SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF28INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF29 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF29bits_t;
extern volatile __C1RXF29bits_t C1RXF29bits __asm__ ("C1RXF29") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF29CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF29SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF29INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF30 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF30bits_t;
extern volatile __C1RXF30bits_t C1RXF30bits __asm__ ("C1RXF30") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF30CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF30SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF30INV __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF31 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C1RXF31bits_t;
extern volatile __C1RXF31bits_t C1RXF31bits __asm__ ("C1RXF31") __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF31CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF31SET __attribute__((section("sfrs")));
extern volatile unsigned int C1RXF31INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOBA __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOBACLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOBASET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOBAINV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON0bits_t;
extern volatile __C1FIFOCON0bits_t C1FIFOCON0bits __asm__ ("C1FIFOCON0") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON0SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON0INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT0bits_t;
extern volatile __C1FIFOINT0bits_t C1FIFOINT0bits __asm__ ("C1FIFOINT0") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT0SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT0INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA0 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA0SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA0INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI0bits_t;
extern volatile __C1FIFOCI0bits_t C1FIFOCI0bits __asm__ ("C1FIFOCI0") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI0SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI0INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON1bits_t;
extern volatile __C1FIFOCON1bits_t C1FIFOCON1bits __asm__ ("C1FIFOCON1") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON1SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON1INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT1bits_t;
extern volatile __C1FIFOINT1bits_t C1FIFOINT1bits __asm__ ("C1FIFOINT1") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT1SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT1INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA1 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA1SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA1INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI1bits_t;
extern volatile __C1FIFOCI1bits_t C1FIFOCI1bits __asm__ ("C1FIFOCI1") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI1SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI1INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON2bits_t;
extern volatile __C1FIFOCON2bits_t C1FIFOCON2bits __asm__ ("C1FIFOCON2") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON2SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON2INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT2bits_t;
extern volatile __C1FIFOINT2bits_t C1FIFOINT2bits __asm__ ("C1FIFOINT2") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT2SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT2INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA2 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA2SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA2INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI2bits_t;
extern volatile __C1FIFOCI2bits_t C1FIFOCI2bits __asm__ ("C1FIFOCI2") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI2SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI2INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON3bits_t;
extern volatile __C1FIFOCON3bits_t C1FIFOCON3bits __asm__ ("C1FIFOCON3") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON3SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON3INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT3bits_t;
extern volatile __C1FIFOINT3bits_t C1FIFOINT3bits __asm__ ("C1FIFOINT3") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT3SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT3INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA3 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA3SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA3INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI3bits_t;
extern volatile __C1FIFOCI3bits_t C1FIFOCI3bits __asm__ ("C1FIFOCI3") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI3SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI3INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON4bits_t;
extern volatile __C1FIFOCON4bits_t C1FIFOCON4bits __asm__ ("C1FIFOCON4") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON4SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON4INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT4bits_t;
extern volatile __C1FIFOINT4bits_t C1FIFOINT4bits __asm__ ("C1FIFOINT4") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT4SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT4INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA4 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA4SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA4INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI4bits_t;
extern volatile __C1FIFOCI4bits_t C1FIFOCI4bits __asm__ ("C1FIFOCI4") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI4SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI4INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON5bits_t;
extern volatile __C1FIFOCON5bits_t C1FIFOCON5bits __asm__ ("C1FIFOCON5") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON5SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON5INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT5bits_t;
extern volatile __C1FIFOINT5bits_t C1FIFOINT5bits __asm__ ("C1FIFOINT5") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT5SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT5INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA5 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA5SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA5INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI5bits_t;
extern volatile __C1FIFOCI5bits_t C1FIFOCI5bits __asm__ ("C1FIFOCI5") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI5SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI5INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON6bits_t;
extern volatile __C1FIFOCON6bits_t C1FIFOCON6bits __asm__ ("C1FIFOCON6") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON6SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON6INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT6bits_t;
extern volatile __C1FIFOINT6bits_t C1FIFOINT6bits __asm__ ("C1FIFOINT6") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT6SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT6INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA6 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA6SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA6INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI6bits_t;
extern volatile __C1FIFOCI6bits_t C1FIFOCI6bits __asm__ ("C1FIFOCI6") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI6SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI6INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON7bits_t;
extern volatile __C1FIFOCON7bits_t C1FIFOCON7bits __asm__ ("C1FIFOCON7") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON7SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON7INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT7bits_t;
extern volatile __C1FIFOINT7bits_t C1FIFOINT7bits __asm__ ("C1FIFOINT7") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT7SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT7INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA7 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA7SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA7INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI7bits_t;
extern volatile __C1FIFOCI7bits_t C1FIFOCI7bits __asm__ ("C1FIFOCI7") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI7SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI7INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON8bits_t;
extern volatile __C1FIFOCON8bits_t C1FIFOCON8bits __asm__ ("C1FIFOCON8") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON8CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON8SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON8INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT8bits_t;
extern volatile __C1FIFOINT8bits_t C1FIFOINT8bits __asm__ ("C1FIFOINT8") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT8CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT8SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT8INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA8 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA8CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA8SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA8INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI8bits_t;
extern volatile __C1FIFOCI8bits_t C1FIFOCI8bits __asm__ ("C1FIFOCI8") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI8CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI8SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI8INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON9bits_t;
extern volatile __C1FIFOCON9bits_t C1FIFOCON9bits __asm__ ("C1FIFOCON9") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON9CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON9SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON9INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT9bits_t;
extern volatile __C1FIFOINT9bits_t C1FIFOINT9bits __asm__ ("C1FIFOINT9") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT9CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT9SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT9INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA9 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA9CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA9SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA9INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI9bits_t;
extern volatile __C1FIFOCI9bits_t C1FIFOCI9bits __asm__ ("C1FIFOCI9") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI9CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI9SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI9INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON10bits_t;
extern volatile __C1FIFOCON10bits_t C1FIFOCON10bits __asm__ ("C1FIFOCON10") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON10CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON10SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON10INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT10bits_t;
extern volatile __C1FIFOINT10bits_t C1FIFOINT10bits __asm__ ("C1FIFOINT10") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT10CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT10SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT10INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA10 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA10CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA10SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA10INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI10bits_t;
extern volatile __C1FIFOCI10bits_t C1FIFOCI10bits __asm__ ("C1FIFOCI10") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI10CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI10SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI10INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON11 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON11bits_t;
extern volatile __C1FIFOCON11bits_t C1FIFOCON11bits __asm__ ("C1FIFOCON11") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON11CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON11SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON11INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT11 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT11bits_t;
extern volatile __C1FIFOINT11bits_t C1FIFOINT11bits __asm__ ("C1FIFOINT11") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT11CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT11SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT11INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA11 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA11CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA11SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA11INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI11 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI11bits_t;
extern volatile __C1FIFOCI11bits_t C1FIFOCI11bits __asm__ ("C1FIFOCI11") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI11CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI11SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI11INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON12 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON12bits_t;
extern volatile __C1FIFOCON12bits_t C1FIFOCON12bits __asm__ ("C1FIFOCON12") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON12CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON12SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON12INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT12 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT12bits_t;
extern volatile __C1FIFOINT12bits_t C1FIFOINT12bits __asm__ ("C1FIFOINT12") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT12CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT12SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT12INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA12 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA12CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA12SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA12INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI12 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI12bits_t;
extern volatile __C1FIFOCI12bits_t C1FIFOCI12bits __asm__ ("C1FIFOCI12") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI12CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI12SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI12INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON13 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON13bits_t;
extern volatile __C1FIFOCON13bits_t C1FIFOCON13bits __asm__ ("C1FIFOCON13") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON13CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON13SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON13INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT13 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT13bits_t;
extern volatile __C1FIFOINT13bits_t C1FIFOINT13bits __asm__ ("C1FIFOINT13") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT13CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT13SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT13INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA13 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA13CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA13SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA13INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI13 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI13bits_t;
extern volatile __C1FIFOCI13bits_t C1FIFOCI13bits __asm__ ("C1FIFOCI13") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI13CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI13SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI13INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON14 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON14bits_t;
extern volatile __C1FIFOCON14bits_t C1FIFOCON14bits __asm__ ("C1FIFOCON14") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON14CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON14SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON14INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT14 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT14bits_t;
extern volatile __C1FIFOINT14bits_t C1FIFOINT14bits __asm__ ("C1FIFOINT14") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT14CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT14SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT14INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA14 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA14CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA14SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA14INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI14 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI14bits_t;
extern volatile __C1FIFOCI14bits_t C1FIFOCI14bits __asm__ ("C1FIFOCI14") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI14CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI14SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI14INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON15 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON15bits_t;
extern volatile __C1FIFOCON15bits_t C1FIFOCON15bits __asm__ ("C1FIFOCON15") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON15CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON15SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON15INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT15 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT15bits_t;
extern volatile __C1FIFOINT15bits_t C1FIFOINT15bits __asm__ ("C1FIFOINT15") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT15CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT15SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT15INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA15 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA15CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA15SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA15INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI15 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI15bits_t;
extern volatile __C1FIFOCI15bits_t C1FIFOCI15bits __asm__ ("C1FIFOCI15") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI15CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI15SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI15INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON16 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON16bits_t;
extern volatile __C1FIFOCON16bits_t C1FIFOCON16bits __asm__ ("C1FIFOCON16") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON16CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON16SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON16INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT16 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT16bits_t;
extern volatile __C1FIFOINT16bits_t C1FIFOINT16bits __asm__ ("C1FIFOINT16") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT16CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT16SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT16INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA16 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA16CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA16SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA16INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI16 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI16bits_t;
extern volatile __C1FIFOCI16bits_t C1FIFOCI16bits __asm__ ("C1FIFOCI16") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI16CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI16SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI16INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON17 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON17bits_t;
extern volatile __C1FIFOCON17bits_t C1FIFOCON17bits __asm__ ("C1FIFOCON17") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON17CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON17SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON17INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT17 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT17bits_t;
extern volatile __C1FIFOINT17bits_t C1FIFOINT17bits __asm__ ("C1FIFOINT17") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT17CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT17SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT17INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA17 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA17CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA17SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA17INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI17 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI17bits_t;
extern volatile __C1FIFOCI17bits_t C1FIFOCI17bits __asm__ ("C1FIFOCI17") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI17CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI17SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI17INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON18 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON18bits_t;
extern volatile __C1FIFOCON18bits_t C1FIFOCON18bits __asm__ ("C1FIFOCON18") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON18CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON18SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON18INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT18 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT18bits_t;
extern volatile __C1FIFOINT18bits_t C1FIFOINT18bits __asm__ ("C1FIFOINT18") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT18CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT18SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT18INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA18 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA18CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA18SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA18INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI18 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI18bits_t;
extern volatile __C1FIFOCI18bits_t C1FIFOCI18bits __asm__ ("C1FIFOCI18") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI18CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI18SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI18INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON19 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON19bits_t;
extern volatile __C1FIFOCON19bits_t C1FIFOCON19bits __asm__ ("C1FIFOCON19") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON19CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON19SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON19INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT19 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT19bits_t;
extern volatile __C1FIFOINT19bits_t C1FIFOINT19bits __asm__ ("C1FIFOINT19") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT19CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT19SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT19INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA19 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA19CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA19SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA19INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI19 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI19bits_t;
extern volatile __C1FIFOCI19bits_t C1FIFOCI19bits __asm__ ("C1FIFOCI19") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI19CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI19SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI19INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON20 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON20bits_t;
extern volatile __C1FIFOCON20bits_t C1FIFOCON20bits __asm__ ("C1FIFOCON20") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON20CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON20SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON20INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT20 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT20bits_t;
extern volatile __C1FIFOINT20bits_t C1FIFOINT20bits __asm__ ("C1FIFOINT20") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT20CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT20SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT20INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA20 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA20CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA20SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA20INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI20 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI20bits_t;
extern volatile __C1FIFOCI20bits_t C1FIFOCI20bits __asm__ ("C1FIFOCI20") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI20CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI20SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI20INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON21 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON21bits_t;
extern volatile __C1FIFOCON21bits_t C1FIFOCON21bits __asm__ ("C1FIFOCON21") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON21CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON21SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON21INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT21 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT21bits_t;
extern volatile __C1FIFOINT21bits_t C1FIFOINT21bits __asm__ ("C1FIFOINT21") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT21CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT21SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT21INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA21 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA21CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA21SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA21INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI21 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI21bits_t;
extern volatile __C1FIFOCI21bits_t C1FIFOCI21bits __asm__ ("C1FIFOCI21") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI21CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI21SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI21INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON22 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON22bits_t;
extern volatile __C1FIFOCON22bits_t C1FIFOCON22bits __asm__ ("C1FIFOCON22") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON22CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON22SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON22INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT22 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT22bits_t;
extern volatile __C1FIFOINT22bits_t C1FIFOINT22bits __asm__ ("C1FIFOINT22") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT22CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT22SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT22INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA22 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA22CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA22SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA22INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI22 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI22bits_t;
extern volatile __C1FIFOCI22bits_t C1FIFOCI22bits __asm__ ("C1FIFOCI22") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI22CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI22SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI22INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON23 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON23bits_t;
extern volatile __C1FIFOCON23bits_t C1FIFOCON23bits __asm__ ("C1FIFOCON23") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON23CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON23SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON23INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT23 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT23bits_t;
extern volatile __C1FIFOINT23bits_t C1FIFOINT23bits __asm__ ("C1FIFOINT23") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT23CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT23SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT23INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA23 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA23CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA23SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA23INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI23 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI23bits_t;
extern volatile __C1FIFOCI23bits_t C1FIFOCI23bits __asm__ ("C1FIFOCI23") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI23CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI23SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI23INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON24 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON24bits_t;
extern volatile __C1FIFOCON24bits_t C1FIFOCON24bits __asm__ ("C1FIFOCON24") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON24CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON24SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON24INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT24 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT24bits_t;
extern volatile __C1FIFOINT24bits_t C1FIFOINT24bits __asm__ ("C1FIFOINT24") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT24CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT24SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT24INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA24 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA24CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA24SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA24INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI24 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI24bits_t;
extern volatile __C1FIFOCI24bits_t C1FIFOCI24bits __asm__ ("C1FIFOCI24") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI24CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI24SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI24INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON25 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON25bits_t;
extern volatile __C1FIFOCON25bits_t C1FIFOCON25bits __asm__ ("C1FIFOCON25") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON25CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON25SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON25INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT25 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT25bits_t;
extern volatile __C1FIFOINT25bits_t C1FIFOINT25bits __asm__ ("C1FIFOINT25") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT25CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT25SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT25INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA25 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA25CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA25SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA25INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI25 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI25bits_t;
extern volatile __C1FIFOCI25bits_t C1FIFOCI25bits __asm__ ("C1FIFOCI25") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI25CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI25SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI25INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON26 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON26bits_t;
extern volatile __C1FIFOCON26bits_t C1FIFOCON26bits __asm__ ("C1FIFOCON26") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON26CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON26SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON26INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT26 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT26bits_t;
extern volatile __C1FIFOINT26bits_t C1FIFOINT26bits __asm__ ("C1FIFOINT26") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT26CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT26SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT26INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA26 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA26CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA26SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA26INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI26 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI26bits_t;
extern volatile __C1FIFOCI26bits_t C1FIFOCI26bits __asm__ ("C1FIFOCI26") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI26CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI26SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI26INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON27 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON27bits_t;
extern volatile __C1FIFOCON27bits_t C1FIFOCON27bits __asm__ ("C1FIFOCON27") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON27CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON27SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON27INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT27 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT27bits_t;
extern volatile __C1FIFOINT27bits_t C1FIFOINT27bits __asm__ ("C1FIFOINT27") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT27CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT27SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT27INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA27 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA27CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA27SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA27INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI27 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI27bits_t;
extern volatile __C1FIFOCI27bits_t C1FIFOCI27bits __asm__ ("C1FIFOCI27") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI27CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI27SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI27INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON28 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON28bits_t;
extern volatile __C1FIFOCON28bits_t C1FIFOCON28bits __asm__ ("C1FIFOCON28") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON28CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON28SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON28INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT28 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT28bits_t;
extern volatile __C1FIFOINT28bits_t C1FIFOINT28bits __asm__ ("C1FIFOINT28") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT28CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT28SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT28INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA28 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA28CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA28SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA28INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI28 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI28bits_t;
extern volatile __C1FIFOCI28bits_t C1FIFOCI28bits __asm__ ("C1FIFOCI28") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI28CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI28SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI28INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON29 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON29bits_t;
extern volatile __C1FIFOCON29bits_t C1FIFOCON29bits __asm__ ("C1FIFOCON29") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON29CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON29SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON29INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT29 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT29bits_t;
extern volatile __C1FIFOINT29bits_t C1FIFOINT29bits __asm__ ("C1FIFOINT29") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT29CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT29SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT29INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA29 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA29CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA29SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA29INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI29 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI29bits_t;
extern volatile __C1FIFOCI29bits_t C1FIFOCI29bits __asm__ ("C1FIFOCI29") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI29CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI29SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI29INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON30 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON30bits_t;
extern volatile __C1FIFOCON30bits_t C1FIFOCON30bits __asm__ ("C1FIFOCON30") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON30CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON30SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON30INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT30 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT30bits_t;
extern volatile __C1FIFOINT30bits_t C1FIFOINT30bits __asm__ ("C1FIFOINT30") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT30CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT30SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT30INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA30 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA30CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA30SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA30INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI30 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI30bits_t;
extern volatile __C1FIFOCI30bits_t C1FIFOCI30bits __asm__ ("C1FIFOCI30") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI30CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI30SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI30INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON31 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCON31bits_t;
extern volatile __C1FIFOCON31bits_t C1FIFOCON31bits __asm__ ("C1FIFOCON31") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON31CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON31SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCON31INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT31 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOINT31bits_t;
extern volatile __C1FIFOINT31bits_t C1FIFOINT31bits __asm__ ("C1FIFOINT31") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT31CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT31SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOINT31INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA31 __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA31CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA31SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOUA31INV __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI31 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C1FIFOCI31bits_t;
extern volatile __C1FIFOCI31bits_t C1FIFOCI31bits __asm__ ("C1FIFOCI31") __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI31CLR __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI31SET __attribute__((section("sfrs")));
extern volatile unsigned int C1FIFOCI31INV __attribute__((section("sfrs")));
extern volatile unsigned int C2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DNCNT:5;
    unsigned :6;
    unsigned CANBUSY:1;
    unsigned :1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned :4;
    unsigned CANCAP:1;
    unsigned OPMOD:3;
    unsigned REQOP:3;
    unsigned ABAT:1;
  };
  struct {
    unsigned w:32;
  };
} __C2CONbits_t;
extern volatile __C2CONbits_t C2CONbits __asm__ ("C2CON") __attribute__((section("sfrs")));
extern volatile unsigned int C2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int C2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int C2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int C2CFG __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned BRP:6;
    unsigned SJW:2;
    unsigned PRSEG:3;
    unsigned SEG1PH:3;
    unsigned SAM:1;
    unsigned SEG2PHTS:1;
    unsigned SEG2PH:3;
    unsigned :3;
    unsigned WAKFIL:1;
  };
  struct {
    unsigned w:32;
  };
} __C2CFGbits_t;
extern volatile __C2CFGbits_t C2CFGbits __asm__ ("C2CFG") __attribute__((section("sfrs")));
extern volatile unsigned int C2CFGCLR __attribute__((section("sfrs")));
extern volatile unsigned int C2CFGSET __attribute__((section("sfrs")));
extern volatile unsigned int C2CFGINV __attribute__((section("sfrs")));
extern volatile unsigned int C2INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBIF:1;
    unsigned RBIF:1;
    unsigned CTMRIF:1;
    unsigned MODIF:1;
    unsigned :7;
    unsigned RBOVIF:1;
    unsigned SERRIF:1;
    unsigned CERRIF:1;
    unsigned WAKIF:1;
    unsigned IVRIF:1;
    unsigned TBIE:1;
    unsigned RBIE:1;
    unsigned CTMRIE:1;
    unsigned MODIE:1;
    unsigned :7;
    unsigned RBOVIE:1;
    unsigned SERRIE:1;
    unsigned CERRIE:1;
    unsigned WAKIE:1;
    unsigned IVRIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2INTbits_t;
extern volatile __C2INTbits_t C2INTbits __asm__ ("C2INT") __attribute__((section("sfrs")));
extern volatile unsigned int C2INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int C2INTSET __attribute__((section("sfrs")));
extern volatile unsigned int C2INTINV __attribute__((section("sfrs")));
extern volatile unsigned int C2VEC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICODE:7;
    unsigned :1;
    unsigned FILHIT:5;
  };
  struct {
    unsigned w:32;
  };
} __C2VECbits_t;
extern volatile __C2VECbits_t C2VECbits __asm__ ("C2VEC") __attribute__((section("sfrs")));
extern volatile unsigned int C2VECCLR __attribute__((section("sfrs")));
extern volatile unsigned int C2VECSET __attribute__((section("sfrs")));
extern volatile unsigned int C2VECINV __attribute__((section("sfrs")));
extern volatile unsigned int C2TREC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RERRCNT:8;
    unsigned TERRCNT:8;
    unsigned EWARN:1;
    unsigned RXWARN:1;
    unsigned TXWARN:1;
    unsigned RXBP:1;
    unsigned TXBP:1;
    unsigned TXBO:1;
  };
  struct {
    unsigned w:32;
  };
} __C2TRECbits_t;
extern volatile __C2TRECbits_t C2TRECbits __asm__ ("C2TREC") __attribute__((section("sfrs")));
extern volatile unsigned int C2TRECCLR __attribute__((section("sfrs")));
extern volatile unsigned int C2TRECSET __attribute__((section("sfrs")));
extern volatile unsigned int C2TRECINV __attribute__((section("sfrs")));
extern volatile unsigned int C2FSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FIFOIP:32;
  };
  struct {
    unsigned FIFOIP0:1;
    unsigned FIFOIP1:1;
    unsigned FIFOIP2:1;
    unsigned FIFOIP3:1;
    unsigned FIFOIP4:1;
    unsigned FIFOIP5:1;
    unsigned FIFOIP6:1;
    unsigned FIFOIP7:1;
    unsigned FIFOIP8:1;
    unsigned FIFOIP9:1;
    unsigned FIFOIP10:1;
    unsigned FIFOIP11:1;
    unsigned FIFOIP12:1;
    unsigned FIFOIP13:1;
    unsigned FIFOIP14:1;
    unsigned FIFOIP15:1;
    unsigned FIFOIP16:1;
    unsigned FIFOIP17:1;
    unsigned FIFOIP18:1;
    unsigned FIFOIP19:1;
    unsigned FIFOIP20:1;
    unsigned FIFOIP21:1;
    unsigned FIFOIP22:1;
    unsigned FIFOIP23:1;
    unsigned FIFOIP24:1;
    unsigned FIFOIP25:1;
    unsigned FIFOIP26:1;
    unsigned FIFOIP27:1;
    unsigned FIFOIP28:1;
    unsigned FIFOIP29:1;
    unsigned FIFOIP30:1;
    unsigned FIFOIP31:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FSTATbits_t;
extern volatile __C2FSTATbits_t C2FSTATbits __asm__ ("C2FSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int C2FSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int C2FSTATINV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXOVF __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXOVF:32;
  };
  struct {
    unsigned RXOVF0:1;
    unsigned RXOVF1:1;
    unsigned RXOVF2:1;
    unsigned RXOVF3:1;
    unsigned RXOVF4:1;
    unsigned RXOVF5:1;
    unsigned RXOVF6:1;
    unsigned RXOVF7:1;
    unsigned RXOVF8:1;
    unsigned RXOVF9:1;
    unsigned RXOVF10:1;
    unsigned RXOVF11:1;
    unsigned RXOVF12:1;
    unsigned RXOVF13:1;
    unsigned RXOVF14:1;
    unsigned RXOVF15:1;
    unsigned RXOVF16:1;
    unsigned RXOVF17:1;
    unsigned RXOVF18:1;
    unsigned RXOVF19:1;
    unsigned RXOVF20:1;
    unsigned RXOVF21:1;
    unsigned RXOVF22:1;
    unsigned RXOVF23:1;
    unsigned RXOVF24:1;
    unsigned RXOVF25:1;
    unsigned RXOVF26:1;
    unsigned RXOVF27:1;
    unsigned RXOVF28:1;
    unsigned RXOVF29:1;
    unsigned RXOVF30:1;
    unsigned RXOVF31:1;
  };
  struct {
    unsigned w:32;
  };
} __C2RXOVFbits_t;
extern volatile __C2RXOVFbits_t C2RXOVFbits __asm__ ("C2RXOVF") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXOVFCLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXOVFSET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXOVFINV __attribute__((section("sfrs")));
extern volatile unsigned int C2TMR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CANTSPRE:16;
    unsigned CANTS:16;
  };
  struct {
    unsigned w:32;
  };
} __C2TMRbits_t;
extern volatile __C2TMRbits_t C2TMRbits __asm__ ("C2TMR") __attribute__((section("sfrs")));
extern volatile unsigned int C2TMRCLR __attribute__((section("sfrs")));
extern volatile unsigned int C2TMRSET __attribute__((section("sfrs")));
extern volatile unsigned int C2TMRINV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned MIDE:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXM0bits_t;
extern volatile __C2RXM0bits_t C2RXM0bits __asm__ ("C2RXM0") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM0SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM0INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned MIDE:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXM1bits_t;
extern volatile __C2RXM1bits_t C2RXM1bits __asm__ ("C2RXM1") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM1SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM1INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned MIDE:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXM2bits_t;
extern volatile __C2RXM2bits_t C2RXM2bits __asm__ ("C2RXM2") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM2SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM2INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned MIDE:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXM3bits_t;
extern volatile __C2RXM3bits_t C2RXM3bits __asm__ ("C2RXM3") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM3SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXM3INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL0:5;
    unsigned MSEL0:2;
    unsigned FLTEN0:1;
    unsigned FSEL1:5;
    unsigned MSEL1:2;
    unsigned FLTEN1:1;
    unsigned FSEL2:5;
    unsigned MSEL2:2;
    unsigned FLTEN2:1;
    unsigned FSEL3:5;
    unsigned MSEL3:2;
    unsigned FLTEN3:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FLTCON0bits_t;
extern volatile __C2FLTCON0bits_t C2FLTCON0bits __asm__ ("C2FLTCON0") __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON0SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON0INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL4:5;
    unsigned MSEL4:2;
    unsigned FLTEN4:1;
    unsigned FSEL5:5;
    unsigned MSEL5:2;
    unsigned FLTEN5:1;
    unsigned FSEL6:5;
    unsigned MSEL6:2;
    unsigned FLTEN6:1;
    unsigned FSEL7:5;
    unsigned MSEL7:2;
    unsigned FLTEN7:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FLTCON1bits_t;
extern volatile __C2FLTCON1bits_t C2FLTCON1bits __asm__ ("C2FLTCON1") __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON1SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON1INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL8:5;
    unsigned MSEL8:2;
    unsigned FLTEN8:1;
    unsigned FSEL9:5;
    unsigned MSEL9:2;
    unsigned FLTEN9:1;
    unsigned FSEL10:5;
    unsigned MSEL10:2;
    unsigned FLTEN10:1;
    unsigned FSEL11:5;
    unsigned MSEL11:2;
    unsigned FLTEN11:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FLTCON2bits_t;
extern volatile __C2FLTCON2bits_t C2FLTCON2bits __asm__ ("C2FLTCON2") __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON2SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON2INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL12:5;
    unsigned MSEL12:2;
    unsigned FLTEN12:1;
    unsigned FSEL13:5;
    unsigned MSEL13:2;
    unsigned FLTEN13:1;
    unsigned FSEL14:5;
    unsigned MSEL14:2;
    unsigned FLTEN14:1;
    unsigned FSEL15:5;
    unsigned MSEL15:2;
    unsigned FLTEN15:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FLTCON3bits_t;
extern volatile __C2FLTCON3bits_t C2FLTCON3bits __asm__ ("C2FLTCON3") __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON3SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON3INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL16:5;
    unsigned MSEL16:2;
    unsigned FLTEN16:1;
    unsigned FSEL17:5;
    unsigned MSEL17:2;
    unsigned FLTEN17:1;
    unsigned FSEL18:5;
    unsigned MSEL18:2;
    unsigned FLTEN18:1;
    unsigned FSEL19:5;
    unsigned MSEL19:2;
    unsigned FLTEN19:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FLTCON4bits_t;
extern volatile __C2FLTCON4bits_t C2FLTCON4bits __asm__ ("C2FLTCON4") __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON4SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON4INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL20:5;
    unsigned MSEL20:2;
    unsigned FLTEN20:1;
    unsigned FSEL21:5;
    unsigned MSEL21:2;
    unsigned FLTEN21:1;
    unsigned FSEL22:5;
    unsigned MSEL22:2;
    unsigned FLTEN22:1;
    unsigned FSEL23:5;
    unsigned MSEL23:2;
    unsigned FLTEN23:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FLTCON5bits_t;
extern volatile __C2FLTCON5bits_t C2FLTCON5bits __asm__ ("C2FLTCON5") __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON5SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON5INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL24:5;
    unsigned MSEL24:2;
    unsigned FLTEN24:1;
    unsigned FSEL25:5;
    unsigned MSEL25:2;
    unsigned FLTEN25:1;
    unsigned FSEL26:5;
    unsigned MSEL26:2;
    unsigned FLTEN26:1;
    unsigned FSEL27:5;
    unsigned MSEL27:2;
    unsigned FLTEN27:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FLTCON6bits_t;
extern volatile __C2FLTCON6bits_t C2FLTCON6bits __asm__ ("C2FLTCON6") __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON6SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON6INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSEL28:5;
    unsigned MSEL28:2;
    unsigned FLTEN28:1;
    unsigned FSEL29:5;
    unsigned MSEL29:2;
    unsigned FLTEN29:1;
    unsigned FSEL30:5;
    unsigned MSEL30:2;
    unsigned FLTEN30:1;
    unsigned FSEL31:5;
    unsigned MSEL31:2;
    unsigned FLTEN31:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FLTCON7bits_t;
extern volatile __C2FLTCON7bits_t C2FLTCON7bits __asm__ ("C2FLTCON7") __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON7SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FLTCON7INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF0bits_t;
extern volatile __C2RXF0bits_t C2RXF0bits __asm__ ("C2RXF0") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF0SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF0INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF1bits_t;
extern volatile __C2RXF1bits_t C2RXF1bits __asm__ ("C2RXF1") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF1SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF1INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF2bits_t;
extern volatile __C2RXF2bits_t C2RXF2bits __asm__ ("C2RXF2") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF2SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF2INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF3bits_t;
extern volatile __C2RXF3bits_t C2RXF3bits __asm__ ("C2RXF3") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF3SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF3INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF4bits_t;
extern volatile __C2RXF4bits_t C2RXF4bits __asm__ ("C2RXF4") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF4SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF4INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF5bits_t;
extern volatile __C2RXF5bits_t C2RXF5bits __asm__ ("C2RXF5") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF5SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF5INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF6bits_t;
extern volatile __C2RXF6bits_t C2RXF6bits __asm__ ("C2RXF6") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF6SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF6INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF7bits_t;
extern volatile __C2RXF7bits_t C2RXF7bits __asm__ ("C2RXF7") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF7SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF7INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF8bits_t;
extern volatile __C2RXF8bits_t C2RXF8bits __asm__ ("C2RXF8") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF8CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF8SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF8INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF9bits_t;
extern volatile __C2RXF9bits_t C2RXF9bits __asm__ ("C2RXF9") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF9CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF9SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF9INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF10bits_t;
extern volatile __C2RXF10bits_t C2RXF10bits __asm__ ("C2RXF10") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF10CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF10SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF10INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF11 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF11bits_t;
extern volatile __C2RXF11bits_t C2RXF11bits __asm__ ("C2RXF11") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF11CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF11SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF11INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF12 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF12bits_t;
extern volatile __C2RXF12bits_t C2RXF12bits __asm__ ("C2RXF12") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF12CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF12SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF12INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF13 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF13bits_t;
extern volatile __C2RXF13bits_t C2RXF13bits __asm__ ("C2RXF13") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF13CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF13SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF13INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF14 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF14bits_t;
extern volatile __C2RXF14bits_t C2RXF14bits __asm__ ("C2RXF14") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF14CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF14SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF14INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF15 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF15bits_t;
extern volatile __C2RXF15bits_t C2RXF15bits __asm__ ("C2RXF15") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF15CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF15SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF15INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF16 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF16bits_t;
extern volatile __C2RXF16bits_t C2RXF16bits __asm__ ("C2RXF16") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF16CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF16SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF16INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF17 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF17bits_t;
extern volatile __C2RXF17bits_t C2RXF17bits __asm__ ("C2RXF17") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF17CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF17SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF17INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF18 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF18bits_t;
extern volatile __C2RXF18bits_t C2RXF18bits __asm__ ("C2RXF18") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF18CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF18SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF18INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF19 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF19bits_t;
extern volatile __C2RXF19bits_t C2RXF19bits __asm__ ("C2RXF19") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF19CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF19SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF19INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF20 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF20bits_t;
extern volatile __C2RXF20bits_t C2RXF20bits __asm__ ("C2RXF20") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF20CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF20SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF20INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF21 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF21bits_t;
extern volatile __C2RXF21bits_t C2RXF21bits __asm__ ("C2RXF21") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF21CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF21SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF21INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF22 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF22bits_t;
extern volatile __C2RXF22bits_t C2RXF22bits __asm__ ("C2RXF22") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF22CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF22SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF22INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF23 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF23bits_t;
extern volatile __C2RXF23bits_t C2RXF23bits __asm__ ("C2RXF23") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF23CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF23SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF23INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF24 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF24bits_t;
extern volatile __C2RXF24bits_t C2RXF24bits __asm__ ("C2RXF24") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF24CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF24SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF24INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF25 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF25bits_t;
extern volatile __C2RXF25bits_t C2RXF25bits __asm__ ("C2RXF25") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF25CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF25SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF25INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF26 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF26bits_t;
extern volatile __C2RXF26bits_t C2RXF26bits __asm__ ("C2RXF26") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF26CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF26SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF26INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF27 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF27bits_t;
extern volatile __C2RXF27bits_t C2RXF27bits __asm__ ("C2RXF27") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF27CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF27SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF27INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF28 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF28bits_t;
extern volatile __C2RXF28bits_t C2RXF28bits __asm__ ("C2RXF28") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF28CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF28SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF28INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF29 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF29bits_t;
extern volatile __C2RXF29bits_t C2RXF29bits __asm__ ("C2RXF29") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF29CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF29SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF29INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF30 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF30bits_t;
extern volatile __C2RXF30bits_t C2RXF30bits __asm__ ("C2RXF30") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF30CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF30SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF30INV __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF31 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EID:18;
    unsigned :1;
    unsigned EXID:1;
    unsigned :1;
    unsigned SID:11;
  };
  struct {
    unsigned w:32;
  };
} __C2RXF31bits_t;
extern volatile __C2RXF31bits_t C2RXF31bits __asm__ ("C2RXF31") __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF31CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF31SET __attribute__((section("sfrs")));
extern volatile unsigned int C2RXF31INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOBA __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOBACLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOBASET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOBAINV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON0bits_t;
extern volatile __C2FIFOCON0bits_t C2FIFOCON0bits __asm__ ("C2FIFOCON0") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON0SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON0INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT0bits_t;
extern volatile __C2FIFOINT0bits_t C2FIFOINT0bits __asm__ ("C2FIFOINT0") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT0SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT0INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA0 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA0SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA0INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI0bits_t;
extern volatile __C2FIFOCI0bits_t C2FIFOCI0bits __asm__ ("C2FIFOCI0") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI0CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI0SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI0INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON1bits_t;
extern volatile __C2FIFOCON1bits_t C2FIFOCON1bits __asm__ ("C2FIFOCON1") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON1SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON1INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT1bits_t;
extern volatile __C2FIFOINT1bits_t C2FIFOINT1bits __asm__ ("C2FIFOINT1") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT1SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT1INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA1 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA1SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA1INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI1bits_t;
extern volatile __C2FIFOCI1bits_t C2FIFOCI1bits __asm__ ("C2FIFOCI1") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI1CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI1SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI1INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON2bits_t;
extern volatile __C2FIFOCON2bits_t C2FIFOCON2bits __asm__ ("C2FIFOCON2") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON2SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON2INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT2bits_t;
extern volatile __C2FIFOINT2bits_t C2FIFOINT2bits __asm__ ("C2FIFOINT2") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT2SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT2INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA2 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA2SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA2INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI2bits_t;
extern volatile __C2FIFOCI2bits_t C2FIFOCI2bits __asm__ ("C2FIFOCI2") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI2CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI2SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI2INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON3bits_t;
extern volatile __C2FIFOCON3bits_t C2FIFOCON3bits __asm__ ("C2FIFOCON3") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON3SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON3INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT3bits_t;
extern volatile __C2FIFOINT3bits_t C2FIFOINT3bits __asm__ ("C2FIFOINT3") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT3SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT3INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA3 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA3SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA3INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI3bits_t;
extern volatile __C2FIFOCI3bits_t C2FIFOCI3bits __asm__ ("C2FIFOCI3") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI3CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI3SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI3INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON4bits_t;
extern volatile __C2FIFOCON4bits_t C2FIFOCON4bits __asm__ ("C2FIFOCON4") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON4SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON4INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT4bits_t;
extern volatile __C2FIFOINT4bits_t C2FIFOINT4bits __asm__ ("C2FIFOINT4") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT4SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT4INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA4 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA4SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA4INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI4bits_t;
extern volatile __C2FIFOCI4bits_t C2FIFOCI4bits __asm__ ("C2FIFOCI4") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI4CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI4SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI4INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON5bits_t;
extern volatile __C2FIFOCON5bits_t C2FIFOCON5bits __asm__ ("C2FIFOCON5") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON5SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON5INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT5bits_t;
extern volatile __C2FIFOINT5bits_t C2FIFOINT5bits __asm__ ("C2FIFOINT5") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT5SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT5INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA5 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA5SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA5INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI5bits_t;
extern volatile __C2FIFOCI5bits_t C2FIFOCI5bits __asm__ ("C2FIFOCI5") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI5CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI5SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI5INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON6bits_t;
extern volatile __C2FIFOCON6bits_t C2FIFOCON6bits __asm__ ("C2FIFOCON6") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON6SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON6INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT6bits_t;
extern volatile __C2FIFOINT6bits_t C2FIFOINT6bits __asm__ ("C2FIFOINT6") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT6SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT6INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA6 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA6SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA6INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI6bits_t;
extern volatile __C2FIFOCI6bits_t C2FIFOCI6bits __asm__ ("C2FIFOCI6") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI6CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI6SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI6INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON7bits_t;
extern volatile __C2FIFOCON7bits_t C2FIFOCON7bits __asm__ ("C2FIFOCON7") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON7SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON7INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT7bits_t;
extern volatile __C2FIFOINT7bits_t C2FIFOINT7bits __asm__ ("C2FIFOINT7") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT7SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT7INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA7 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA7SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA7INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI7bits_t;
extern volatile __C2FIFOCI7bits_t C2FIFOCI7bits __asm__ ("C2FIFOCI7") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI7CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI7SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI7INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON8bits_t;
extern volatile __C2FIFOCON8bits_t C2FIFOCON8bits __asm__ ("C2FIFOCON8") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON8CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON8SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON8INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT8bits_t;
extern volatile __C2FIFOINT8bits_t C2FIFOINT8bits __asm__ ("C2FIFOINT8") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT8CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT8SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT8INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA8 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA8CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA8SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA8INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI8bits_t;
extern volatile __C2FIFOCI8bits_t C2FIFOCI8bits __asm__ ("C2FIFOCI8") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI8CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI8SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI8INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON9bits_t;
extern volatile __C2FIFOCON9bits_t C2FIFOCON9bits __asm__ ("C2FIFOCON9") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON9CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON9SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON9INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT9bits_t;
extern volatile __C2FIFOINT9bits_t C2FIFOINT9bits __asm__ ("C2FIFOINT9") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT9CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT9SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT9INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA9 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA9CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA9SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA9INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI9bits_t;
extern volatile __C2FIFOCI9bits_t C2FIFOCI9bits __asm__ ("C2FIFOCI9") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI9CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI9SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI9INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON10bits_t;
extern volatile __C2FIFOCON10bits_t C2FIFOCON10bits __asm__ ("C2FIFOCON10") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON10CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON10SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON10INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT10bits_t;
extern volatile __C2FIFOINT10bits_t C2FIFOINT10bits __asm__ ("C2FIFOINT10") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT10CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT10SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT10INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA10 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA10CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA10SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA10INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI10bits_t;
extern volatile __C2FIFOCI10bits_t C2FIFOCI10bits __asm__ ("C2FIFOCI10") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI10CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI10SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI10INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON11 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON11bits_t;
extern volatile __C2FIFOCON11bits_t C2FIFOCON11bits __asm__ ("C2FIFOCON11") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON11CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON11SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON11INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT11 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT11bits_t;
extern volatile __C2FIFOINT11bits_t C2FIFOINT11bits __asm__ ("C2FIFOINT11") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT11CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT11SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT11INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA11 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA11CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA11SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA11INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI11 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI11bits_t;
extern volatile __C2FIFOCI11bits_t C2FIFOCI11bits __asm__ ("C2FIFOCI11") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI11CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI11SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI11INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON12 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON12bits_t;
extern volatile __C2FIFOCON12bits_t C2FIFOCON12bits __asm__ ("C2FIFOCON12") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON12CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON12SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON12INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT12 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT12bits_t;
extern volatile __C2FIFOINT12bits_t C2FIFOINT12bits __asm__ ("C2FIFOINT12") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT12CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT12SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT12INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA12 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA12CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA12SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA12INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI12 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI12bits_t;
extern volatile __C2FIFOCI12bits_t C2FIFOCI12bits __asm__ ("C2FIFOCI12") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI12CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI12SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI12INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON13 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON13bits_t;
extern volatile __C2FIFOCON13bits_t C2FIFOCON13bits __asm__ ("C2FIFOCON13") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON13CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON13SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON13INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT13 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT13bits_t;
extern volatile __C2FIFOINT13bits_t C2FIFOINT13bits __asm__ ("C2FIFOINT13") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT13CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT13SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT13INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA13 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA13CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA13SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA13INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI13 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI13bits_t;
extern volatile __C2FIFOCI13bits_t C2FIFOCI13bits __asm__ ("C2FIFOCI13") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI13CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI13SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI13INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON14 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON14bits_t;
extern volatile __C2FIFOCON14bits_t C2FIFOCON14bits __asm__ ("C2FIFOCON14") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON14CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON14SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON14INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT14 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT14bits_t;
extern volatile __C2FIFOINT14bits_t C2FIFOINT14bits __asm__ ("C2FIFOINT14") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT14CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT14SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT14INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA14 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA14CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA14SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA14INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI14 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI14bits_t;
extern volatile __C2FIFOCI14bits_t C2FIFOCI14bits __asm__ ("C2FIFOCI14") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI14CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI14SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI14INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON15 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON15bits_t;
extern volatile __C2FIFOCON15bits_t C2FIFOCON15bits __asm__ ("C2FIFOCON15") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON15CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON15SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON15INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT15 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT15bits_t;
extern volatile __C2FIFOINT15bits_t C2FIFOINT15bits __asm__ ("C2FIFOINT15") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT15CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT15SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT15INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA15 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA15CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA15SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA15INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI15 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI15bits_t;
extern volatile __C2FIFOCI15bits_t C2FIFOCI15bits __asm__ ("C2FIFOCI15") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI15CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI15SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI15INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON16 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON16bits_t;
extern volatile __C2FIFOCON16bits_t C2FIFOCON16bits __asm__ ("C2FIFOCON16") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON16CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON16SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON16INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT16 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT16bits_t;
extern volatile __C2FIFOINT16bits_t C2FIFOINT16bits __asm__ ("C2FIFOINT16") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT16CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT16SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT16INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA16 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA16CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA16SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA16INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI16 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI16bits_t;
extern volatile __C2FIFOCI16bits_t C2FIFOCI16bits __asm__ ("C2FIFOCI16") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI16CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI16SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI16INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON17 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON17bits_t;
extern volatile __C2FIFOCON17bits_t C2FIFOCON17bits __asm__ ("C2FIFOCON17") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON17CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON17SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON17INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT17 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT17bits_t;
extern volatile __C2FIFOINT17bits_t C2FIFOINT17bits __asm__ ("C2FIFOINT17") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT17CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT17SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT17INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA17 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA17CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA17SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA17INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI17 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI17bits_t;
extern volatile __C2FIFOCI17bits_t C2FIFOCI17bits __asm__ ("C2FIFOCI17") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI17CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI17SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI17INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON18 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON18bits_t;
extern volatile __C2FIFOCON18bits_t C2FIFOCON18bits __asm__ ("C2FIFOCON18") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON18CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON18SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON18INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT18 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT18bits_t;
extern volatile __C2FIFOINT18bits_t C2FIFOINT18bits __asm__ ("C2FIFOINT18") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT18CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT18SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT18INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA18 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA18CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA18SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA18INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI18 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI18bits_t;
extern volatile __C2FIFOCI18bits_t C2FIFOCI18bits __asm__ ("C2FIFOCI18") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI18CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI18SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI18INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON19 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON19bits_t;
extern volatile __C2FIFOCON19bits_t C2FIFOCON19bits __asm__ ("C2FIFOCON19") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON19CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON19SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON19INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT19 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT19bits_t;
extern volatile __C2FIFOINT19bits_t C2FIFOINT19bits __asm__ ("C2FIFOINT19") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT19CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT19SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT19INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA19 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA19CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA19SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA19INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI19 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI19bits_t;
extern volatile __C2FIFOCI19bits_t C2FIFOCI19bits __asm__ ("C2FIFOCI19") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI19CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI19SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI19INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON20 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON20bits_t;
extern volatile __C2FIFOCON20bits_t C2FIFOCON20bits __asm__ ("C2FIFOCON20") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON20CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON20SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON20INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT20 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT20bits_t;
extern volatile __C2FIFOINT20bits_t C2FIFOINT20bits __asm__ ("C2FIFOINT20") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT20CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT20SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT20INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA20 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA20CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA20SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA20INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI20 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI20bits_t;
extern volatile __C2FIFOCI20bits_t C2FIFOCI20bits __asm__ ("C2FIFOCI20") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI20CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI20SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI20INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON21 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON21bits_t;
extern volatile __C2FIFOCON21bits_t C2FIFOCON21bits __asm__ ("C2FIFOCON21") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON21CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON21SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON21INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT21 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT21bits_t;
extern volatile __C2FIFOINT21bits_t C2FIFOINT21bits __asm__ ("C2FIFOINT21") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT21CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT21SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT21INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA21 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA21CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA21SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA21INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI21 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI21bits_t;
extern volatile __C2FIFOCI21bits_t C2FIFOCI21bits __asm__ ("C2FIFOCI21") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI21CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI21SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI21INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON22 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON22bits_t;
extern volatile __C2FIFOCON22bits_t C2FIFOCON22bits __asm__ ("C2FIFOCON22") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON22CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON22SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON22INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT22 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT22bits_t;
extern volatile __C2FIFOINT22bits_t C2FIFOINT22bits __asm__ ("C2FIFOINT22") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT22CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT22SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT22INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA22 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA22CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA22SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA22INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI22 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI22bits_t;
extern volatile __C2FIFOCI22bits_t C2FIFOCI22bits __asm__ ("C2FIFOCI22") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI22CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI22SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI22INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON23 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON23bits_t;
extern volatile __C2FIFOCON23bits_t C2FIFOCON23bits __asm__ ("C2FIFOCON23") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON23CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON23SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON23INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT23 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT23bits_t;
extern volatile __C2FIFOINT23bits_t C2FIFOINT23bits __asm__ ("C2FIFOINT23") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT23CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT23SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT23INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA23 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA23CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA23SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA23INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI23 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI23bits_t;
extern volatile __C2FIFOCI23bits_t C2FIFOCI23bits __asm__ ("C2FIFOCI23") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI23CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI23SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI23INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON24 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON24bits_t;
extern volatile __C2FIFOCON24bits_t C2FIFOCON24bits __asm__ ("C2FIFOCON24") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON24CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON24SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON24INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT24 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT24bits_t;
extern volatile __C2FIFOINT24bits_t C2FIFOINT24bits __asm__ ("C2FIFOINT24") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT24CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT24SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT24INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA24 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA24CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA24SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA24INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI24 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI24bits_t;
extern volatile __C2FIFOCI24bits_t C2FIFOCI24bits __asm__ ("C2FIFOCI24") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI24CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI24SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI24INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON25 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON25bits_t;
extern volatile __C2FIFOCON25bits_t C2FIFOCON25bits __asm__ ("C2FIFOCON25") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON25CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON25SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON25INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT25 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT25bits_t;
extern volatile __C2FIFOINT25bits_t C2FIFOINT25bits __asm__ ("C2FIFOINT25") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT25CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT25SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT25INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA25 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA25CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA25SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA25INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI25 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI25bits_t;
extern volatile __C2FIFOCI25bits_t C2FIFOCI25bits __asm__ ("C2FIFOCI25") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI25CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI25SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI25INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON26 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON26bits_t;
extern volatile __C2FIFOCON26bits_t C2FIFOCON26bits __asm__ ("C2FIFOCON26") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON26CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON26SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON26INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT26 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT26bits_t;
extern volatile __C2FIFOINT26bits_t C2FIFOINT26bits __asm__ ("C2FIFOINT26") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT26CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT26SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT26INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA26 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA26CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA26SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA26INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI26 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI26bits_t;
extern volatile __C2FIFOCI26bits_t C2FIFOCI26bits __asm__ ("C2FIFOCI26") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI26CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI26SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI26INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON27 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON27bits_t;
extern volatile __C2FIFOCON27bits_t C2FIFOCON27bits __asm__ ("C2FIFOCON27") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON27CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON27SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON27INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT27 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT27bits_t;
extern volatile __C2FIFOINT27bits_t C2FIFOINT27bits __asm__ ("C2FIFOINT27") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT27CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT27SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT27INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA27 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA27CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA27SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA27INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI27 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI27bits_t;
extern volatile __C2FIFOCI27bits_t C2FIFOCI27bits __asm__ ("C2FIFOCI27") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI27CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI27SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI27INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON28 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON28bits_t;
extern volatile __C2FIFOCON28bits_t C2FIFOCON28bits __asm__ ("C2FIFOCON28") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON28CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON28SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON28INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT28 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT28bits_t;
extern volatile __C2FIFOINT28bits_t C2FIFOINT28bits __asm__ ("C2FIFOINT28") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT28CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT28SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT28INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA28 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA28CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA28SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA28INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI28 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI28bits_t;
extern volatile __C2FIFOCI28bits_t C2FIFOCI28bits __asm__ ("C2FIFOCI28") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI28CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI28SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI28INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON29 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON29bits_t;
extern volatile __C2FIFOCON29bits_t C2FIFOCON29bits __asm__ ("C2FIFOCON29") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON29CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON29SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON29INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT29 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT29bits_t;
extern volatile __C2FIFOINT29bits_t C2FIFOINT29bits __asm__ ("C2FIFOINT29") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT29CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT29SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT29INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA29 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA29CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA29SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA29INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI29 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI29bits_t;
extern volatile __C2FIFOCI29bits_t C2FIFOCI29bits __asm__ ("C2FIFOCI29") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI29CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI29SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI29INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON30 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON30bits_t;
extern volatile __C2FIFOCON30bits_t C2FIFOCON30bits __asm__ ("C2FIFOCON30") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON30CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON30SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON30INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT30 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT30bits_t;
extern volatile __C2FIFOINT30bits_t C2FIFOINT30bits __asm__ ("C2FIFOINT30") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT30CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT30SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT30INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA30 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA30CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA30SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA30INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI30 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI30bits_t;
extern volatile __C2FIFOCI30bits_t C2FIFOCI30bits __asm__ ("C2FIFOCI30") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI30CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI30SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI30INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON31 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TXPRI:2;
    unsigned RTREN:1;
    unsigned TXREQ:1;
    unsigned TXERR:1;
    unsigned TXLARB:1;
    unsigned TXABAT:1;
    unsigned TXEN:1;
    unsigned :4;
    unsigned DONLY:1;
    unsigned UINC:1;
    unsigned FRESET:1;
    unsigned :1;
    unsigned FSIZE:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCON31bits_t;
extern volatile __C2FIFOCON31bits_t C2FIFOCON31bits __asm__ ("C2FIFOCON31") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON31CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON31SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCON31INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT31 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RXNEMPTYIF:1;
    unsigned RXHALFIF:1;
    unsigned RXFULLIF:1;
    unsigned RXOVFLIF:1;
    unsigned :4;
    unsigned TXEMPTYIF:1;
    unsigned TXHALFIF:1;
    unsigned TXNFULLIF:1;
    unsigned :5;
    unsigned RXNEMPTYIE:1;
    unsigned RXHALFIE:1;
    unsigned RXFULLIE:1;
    unsigned RXOVFLIE:1;
    unsigned :4;
    unsigned TXEMPTYIE:1;
    unsigned TXHALFIE:1;
    unsigned TXNFULLIE:1;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOINT31bits_t;
extern volatile __C2FIFOINT31bits_t C2FIFOINT31bits __asm__ ("C2FIFOINT31") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT31CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT31SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOINT31INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA31 __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA31CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA31SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOUA31INV __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI31 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CFIFOCI:5;
  };
  struct {
    unsigned w:32;
  };
} __C2FIFOCI31bits_t;
extern volatile __C2FIFOCI31bits_t C2FIFOCI31bits __asm__ ("C2FIFOCI31") __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI31CLR __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI31SET __attribute__((section("sfrs")));
extern volatile unsigned int C2FIFOCI31INV __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned FSRSSEL:3;
    unsigned :5;
    unsigned FMIIEN:1;
    unsigned FETHIO:1;
    unsigned FCANIO:1;
    unsigned :3;
    unsigned FUSBIDIO:1;
    unsigned FVBUSONIO:1;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG3bits_t;
extern volatile __DEVCFG3bits_t DEVCFG3bits __asm__ ("DEVCFG3") __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLMUL:3;
    unsigned :1;
    unsigned UPLLIDIV:3;
    unsigned :4;
    unsigned UPLLEN:1;
    unsigned FPLLODIV:3;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG2bits_t;
extern volatile __DEVCFG2bits_t DEVCFG2bits __asm__ ("DEVCFG2") __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned :2;
    unsigned FSOSCEN:1;
    unsigned :1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :1;
    unsigned FPBDIV:2;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned :2;
    unsigned FWDTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG1bits_t;
extern volatile __DEVCFG1bits_t DEVCFG1bits __asm__ ("DEVCFG1") __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned RESERVED1:1;
    unsigned ICESEL:1;
    unsigned :8;
    unsigned PWP:8;
    unsigned :4;
    unsigned BWP:1;
    unsigned :3;
    unsigned CP:1;
    unsigned :2;
    unsigned RESERVED:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG0bits_t;
extern volatile __DEVCFG0bits_t DEVCFG0bits __asm__ ("DEVCFG0") __attribute__((section("sfrs")));
# 39428 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/proc/p32mx795f512h.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/proc/ppic32mx.h" 1 3
# 39429 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/proc/p32mx795f512h.h" 2 3
# 122 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/p32xxxx.h" 2 3
# 210 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/p32xxxx.h" 3
extern int __C32_UART;

typedef unsigned long _reg_t;
# 412 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/p32xxxx.h" 3
extern unsigned int _xchsrspss (unsigned int);
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/appio.h" 1 3
# 36 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/appio.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/p32xxxx.h" 1 3
# 37 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/appio.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/string.h" 1 3
# 11 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/string.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stddef.h" 1 3
# 75 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stddef.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/machine/ansi.h" 1 3
# 76 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stddef.h" 2 3


typedef long unsigned int size_t;




typedef long int ptrdiff_t;







typedef int wchar_t;




typedef unsigned int wint_t;
# 12 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/string.h" 2 3


extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);

extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strrchr(const char *, int);
# 38 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/appio.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 1 3
# 23 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdarg.h" 1 3
# 75 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdarg.h" 3
typedef __builtin_va_list __va_list;





typedef __builtin_va_list __gnuc_va_list;
# 126 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdarg.h" 3
typedef __va_list va_list;
# 24 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 2 3





extern struct _iobuf {
 char * _ptr;
 int _cnt;
 char * _base;
 unsigned short _flag;
 short _file;
 size_t _size;
} _iob[8];


    extern struct _iobuf *_Files;
# 49 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 3
    extern struct _tfiles
        {
          char tname[81];
          struct _iobuf * tfp;
        } * _tfilesptr;
# 137 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 3
    extern int _mon_getc (int canblock);
    extern void _mon_putc (char c);
    extern void _mon_puts (const char * s);
    extern void _mon_write (const char * s, unsigned int count);
# 230 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 3
    extern int _flsbuf(char, struct _iobuf *);
    extern int _filbuf(struct _iobuf *);
    extern int fclose(struct _iobuf *);
    extern int fflush(struct _iobuf *);
    extern int fgetc(struct _iobuf *);
    extern int ungetc(int, struct _iobuf *);
    extern int fputc(int, struct _iobuf *);
    extern int getw(struct _iobuf *);
    extern int putw(int, struct _iobuf *);
    extern int fputs(const char *, struct _iobuf *);
    extern int fread(void *, size_t, size_t, struct _iobuf *);
    extern size_t fwrite(const void *, size_t, size_t, struct _iobuf *);
    extern int fseek(struct _iobuf *, long, int);
    extern int rewind(struct _iobuf *);
    extern void setbuf(struct _iobuf *, char *);
    extern int setvbuf(struct _iobuf *, char *, int, size_t);
    extern int fprintf(struct _iobuf *, const char *, ...);
    extern int _fprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_eE (struct _iobuf *, const char *, ...); extern int _fprintf_eEfF (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFgG (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFs (struct _iobuf *, const char *, ...); extern int _fprintf_eEgG (struct _iobuf *, const char *, ...); extern int _fprintf_eEgGs (struct _iobuf *, const char *, ...); extern int _fprintf_eEs (struct _iobuf *, const char *, ...); extern int _fprintf_fF (struct _iobuf *, const char *, ...); extern int _fprintf_fFgG (struct _iobuf *, const char *, ...); extern int _fprintf_fFgGs (struct _iobuf *, const char *, ...); extern int _fprintf_fFs (struct _iobuf *, const char *, ...); extern int _fprintf_gG (struct _iobuf *, const char *, ...); extern int _fprintf_gGs (struct _iobuf *, const char *, ...); extern int _fprintf_s (struct _iobuf *, const char *, ...); extern int _fprintf (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_eE (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfF (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFgG (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEgG (struct _iobuf *, const char *, ...); extern int _dfprintf_eEgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEs (struct _iobuf *, const char *, ...); extern int _dfprintf_fF (struct _iobuf *, const char *, ...); extern int _dfprintf_fFgG (struct _iobuf *, const char *, ...); extern int _dfprintf_fFgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_fFs (struct _iobuf *, const char *, ...); extern int _dfprintf_gG (struct _iobuf *, const char *, ...); extern int _dfprintf_gGs (struct _iobuf *, const char *, ...); extern int _dfprintf_s (struct _iobuf *, const char *, ...); extern int _dfprintf (struct _iobuf *, const char *, ...);;
    extern int fscanf(struct _iobuf *, const char *, ...);
    extern int _fscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_eE (struct _iobuf *, const char *, ...); extern int _fscanf_eEfF (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFgG (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFs (struct _iobuf *, const char *, ...); extern int _fscanf_eEgG (struct _iobuf *, const char *, ...); extern int _fscanf_eEgGs (struct _iobuf *, const char *, ...); extern int _fscanf_eEs (struct _iobuf *, const char *, ...); extern int _fscanf_fF (struct _iobuf *, const char *, ...); extern int _fscanf_fFgG (struct _iobuf *, const char *, ...); extern int _fscanf_fFgGs (struct _iobuf *, const char *, ...); extern int _fscanf_fFs (struct _iobuf *, const char *, ...); extern int _fscanf_gG (struct _iobuf *, const char *, ...); extern int _fscanf_gGs (struct _iobuf *, const char *, ...); extern int _fscanf_s (struct _iobuf *, const char *, ...); extern int _fscanf (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_eE (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfF (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFgG (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEgG (struct _iobuf *, const char *, ...); extern int _dfscanf_eEgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEs (struct _iobuf *, const char *, ...); extern int _dfscanf_fF (struct _iobuf *, const char *, ...); extern int _dfscanf_fFgG (struct _iobuf *, const char *, ...); extern int _dfscanf_fFgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_fFs (struct _iobuf *, const char *, ...); extern int _dfscanf_gG (struct _iobuf *, const char *, ...); extern int _dfscanf_gGs (struct _iobuf *, const char *, ...); extern int _dfscanf_s (struct _iobuf *, const char *, ...); extern int _dfscanf (struct _iobuf *, const char *, ...);;
    extern int vfprintf(struct _iobuf *, const char *, va_list);
    extern int _vfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_eE (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfF (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEs (struct _iobuf *, const char *, va_list); extern int _vfprintf_fF (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFs (struct _iobuf *, const char *, va_list); extern int _vfprintf_gG (struct _iobuf *, const char *, va_list); extern int _vfprintf_gGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_s (struct _iobuf *, const char *, va_list); extern int _vfprintf (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eE (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfF (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fF (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_gG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_gGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_s (struct _iobuf *, const char *, va_list); extern int _dvfprintf (struct _iobuf *, const char *, va_list);;
    extern int vfscanf(struct _iobuf *, const char *, va_list);
    extern int _vfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_eE (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfF (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEs (struct _iobuf *, const char *, va_list); extern int _vfscanf_fF (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFs (struct _iobuf *, const char *, va_list); extern int _vfscanf_gG (struct _iobuf *, const char *, va_list); extern int _vfscanf_gGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_s (struct _iobuf *, const char *, va_list); extern int _vfscanf (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eE (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfF (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fF (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_gG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_gGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_s (struct _iobuf *, const char *, va_list); extern int _dvfscanf (struct _iobuf *, const char *, va_list);;
    extern int remove(const char *);
    extern int rename(const char *, const char *);
    extern struct _iobuf * fopen(const char *, const char *);
    extern struct _iobuf * freopen(const char *, const char *, struct _iobuf *);
    extern struct _iobuf * fdopen(int, const char *);
    extern long ftell(struct _iobuf *);
    extern char * fgets(char *, int, struct _iobuf *);
    extern void perror(const char *);
    extern char* _bufallo (void);
    extern void _buffree (char *pp);
    extern char * tmpnam(char *);
    extern struct _iobuf * tmpfile(void);





    extern void (*_atexitptr)(void);
# 302 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 3
    extern char * gets(char *);
    extern int puts(const char *);

    extern int scanf(const char *, ...);
    extern int _scanf_cdeEfFgGnopsuxX (const char *, ...); extern int _scanf_cdeEfFgGnopuxX (const char *, ...); extern int _scanf_cdeEfFnopsuxX (const char *, ...); extern int _scanf_cdeEfFnopuxX (const char *, ...); extern int _scanf_cdeEgGnopsuxX (const char *, ...); extern int _scanf_cdeEgGnopuxX (const char *, ...); extern int _scanf_cdeEnopsuxX (const char *, ...); extern int _scanf_cdeEnopuxX (const char *, ...); extern int _scanf_cdfFgGnopsuxX (const char *, ...); extern int _scanf_cdfFgGnopuxX (const char *, ...); extern int _scanf_cdfFnopsuxX (const char *, ...); extern int _scanf_cdfFnopuxX (const char *, ...); extern int _scanf_cdgGnopsuxX (const char *, ...); extern int _scanf_cdgGnopuxX (const char *, ...); extern int _scanf_cdnopsuxX (const char *, ...); extern int _scanf_cdnopuxX (const char *, ...); extern int _scanf_eE (const char *, ...); extern int _scanf_eEfF (const char *, ...); extern int _scanf_eEfFgG (const char *, ...); extern int _scanf_eEfFgGs (const char *, ...); extern int _scanf_eEfFs (const char *, ...); extern int _scanf_eEgG (const char *, ...); extern int _scanf_eEgGs (const char *, ...); extern int _scanf_eEs (const char *, ...); extern int _scanf_fF (const char *, ...); extern int _scanf_fFgG (const char *, ...); extern int _scanf_fFgGs (const char *, ...); extern int _scanf_fFs (const char *, ...); extern int _scanf_gG (const char *, ...); extern int _scanf_gGs (const char *, ...); extern int _scanf_s (const char *, ...); extern int _scanf (const char *, ...); extern int _dscanf_cdeEfFgGnopsuxX (const char *, ...); extern int _dscanf_cdeEfFgGnopuxX (const char *, ...); extern int _dscanf_cdeEfFnopsuxX (const char *, ...); extern int _dscanf_cdeEfFnopuxX (const char *, ...); extern int _dscanf_cdeEgGnopsuxX (const char *, ...); extern int _dscanf_cdeEgGnopuxX (const char *, ...); extern int _dscanf_cdeEnopsuxX (const char *, ...); extern int _dscanf_cdeEnopuxX (const char *, ...); extern int _dscanf_cdfFgGnopsuxX (const char *, ...); extern int _dscanf_cdfFgGnopuxX (const char *, ...); extern int _dscanf_cdfFnopsuxX (const char *, ...); extern int _dscanf_cdfFnopuxX (const char *, ...); extern int _dscanf_cdgGnopsuxX (const char *, ...); extern int _dscanf_cdgGnopuxX (const char *, ...); extern int _dscanf_cdnopsuxX (const char *, ...); extern int _dscanf_cdnopuxX (const char *, ...); extern int _dscanf_eE (const char *, ...); extern int _dscanf_eEfF (const char *, ...); extern int _dscanf_eEfFgG (const char *, ...); extern int _dscanf_eEfFgGs (const char *, ...); extern int _dscanf_eEfFs (const char *, ...); extern int _dscanf_eEgG (const char *, ...); extern int _dscanf_eEgGs (const char *, ...); extern int _dscanf_eEs (const char *, ...); extern int _dscanf_fF (const char *, ...); extern int _dscanf_fFgG (const char *, ...); extern int _dscanf_fFgGs (const char *, ...); extern int _dscanf_fFs (const char *, ...); extern int _dscanf_gG (const char *, ...); extern int _dscanf_gGs (const char *, ...); extern int _dscanf_s (const char *, ...); extern int _dscanf (const char *, ...);;
    extern int sscanf(const char *, const char *, ...);
    extern int _sscanf_cdeEfFgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEnopuxX (const char *, const char *, ...); extern int _sscanf_cdfFgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdfFgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdfFnopsuxX (const char *, const char *, ...); extern int _sscanf_cdfFnopuxX (const char *, const char *, ...); extern int _sscanf_cdgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdnopsuxX (const char *, const char *, ...); extern int _sscanf_cdnopuxX (const char *, const char *, ...); extern int _sscanf_eE (const char *, const char *, ...); extern int _sscanf_eEfF (const char *, const char *, ...); extern int _sscanf_eEfFgG (const char *, const char *, ...); extern int _sscanf_eEfFgGs (const char *, const char *, ...); extern int _sscanf_eEfFs (const char *, const char *, ...); extern int _sscanf_eEgG (const char *, const char *, ...); extern int _sscanf_eEgGs (const char *, const char *, ...); extern int _sscanf_eEs (const char *, const char *, ...); extern int _sscanf_fF (const char *, const char *, ...); extern int _sscanf_fFgG (const char *, const char *, ...); extern int _sscanf_fFgGs (const char *, const char *, ...); extern int _sscanf_fFs (const char *, const char *, ...); extern int _sscanf_gG (const char *, const char *, ...); extern int _sscanf_gGs (const char *, const char *, ...); extern int _sscanf_s (const char *, const char *, ...); extern int _sscanf (const char *, const char *, ...); extern int _dsscanf_cdeEfFgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEnopuxX (const char *, const char *, ...); extern int _dsscanf_cdfFgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdfFgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdfFnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdfFnopuxX (const char *, const char *, ...); extern int _dsscanf_cdgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdnopuxX (const char *, const char *, ...); extern int _dsscanf_eE (const char *, const char *, ...); extern int _dsscanf_eEfF (const char *, const char *, ...); extern int _dsscanf_eEfFgG (const char *, const char *, ...); extern int _dsscanf_eEfFgGs (const char *, const char *, ...); extern int _dsscanf_eEfFs (const char *, const char *, ...); extern int _dsscanf_eEgG (const char *, const char *, ...); extern int _dsscanf_eEgGs (const char *, const char *, ...); extern int _dsscanf_eEs (const char *, const char *, ...); extern int _dsscanf_fF (const char *, const char *, ...); extern int _dsscanf_fFgG (const char *, const char *, ...); extern int _dsscanf_fFgGs (const char *, const char *, ...); extern int _dsscanf_fFs (const char *, const char *, ...); extern int _dsscanf_gG (const char *, const char *, ...); extern int _dsscanf_gGs (const char *, const char *, ...); extern int _dsscanf_s (const char *, const char *, ...); extern int _dsscanf (const char *, const char *, ...);;

    extern int vprintf(const char *, va_list);
    extern int _vprintf_cdeEfFgGnopsuxX (const char *, va_list); extern int _vprintf_cdeEfFgGnopuxX (const char *, va_list); extern int _vprintf_cdeEfFnopsuxX (const char *, va_list); extern int _vprintf_cdeEfFnopuxX (const char *, va_list); extern int _vprintf_cdeEgGnopsuxX (const char *, va_list); extern int _vprintf_cdeEgGnopuxX (const char *, va_list); extern int _vprintf_cdeEnopsuxX (const char *, va_list); extern int _vprintf_cdeEnopuxX (const char *, va_list); extern int _vprintf_cdfFgGnopsuxX (const char *, va_list); extern int _vprintf_cdfFgGnopuxX (const char *, va_list); extern int _vprintf_cdfFnopsuxX (const char *, va_list); extern int _vprintf_cdfFnopuxX (const char *, va_list); extern int _vprintf_cdgGnopsuxX (const char *, va_list); extern int _vprintf_cdgGnopuxX (const char *, va_list); extern int _vprintf_cdnopsuxX (const char *, va_list); extern int _vprintf_cdnopuxX (const char *, va_list); extern int _vprintf_eE (const char *, va_list); extern int _vprintf_eEfF (const char *, va_list); extern int _vprintf_eEfFgG (const char *, va_list); extern int _vprintf_eEfFgGs (const char *, va_list); extern int _vprintf_eEfFs (const char *, va_list); extern int _vprintf_eEgG (const char *, va_list); extern int _vprintf_eEgGs (const char *, va_list); extern int _vprintf_eEs (const char *, va_list); extern int _vprintf_fF (const char *, va_list); extern int _vprintf_fFgG (const char *, va_list); extern int _vprintf_fFgGs (const char *, va_list); extern int _vprintf_fFs (const char *, va_list); extern int _vprintf_gG (const char *, va_list); extern int _vprintf_gGs (const char *, va_list); extern int _vprintf_s (const char *, va_list); extern int _vprintf (const char *, va_list); extern int _dvprintf_cdeEfFgGnopsuxX (const char *, va_list); extern int _dvprintf_cdeEfFgGnopuxX (const char *, va_list); extern int _dvprintf_cdeEfFnopsuxX (const char *, va_list); extern int _dvprintf_cdeEfFnopuxX (const char *, va_list); extern int _dvprintf_cdeEgGnopsuxX (const char *, va_list); extern int _dvprintf_cdeEgGnopuxX (const char *, va_list); extern int _dvprintf_cdeEnopsuxX (const char *, va_list); extern int _dvprintf_cdeEnopuxX (const char *, va_list); extern int _dvprintf_cdfFgGnopsuxX (const char *, va_list); extern int _dvprintf_cdfFgGnopuxX (const char *, va_list); extern int _dvprintf_cdfFnopsuxX (const char *, va_list); extern int _dvprintf_cdfFnopuxX (const char *, va_list); extern int _dvprintf_cdgGnopsuxX (const char *, va_list); extern int _dvprintf_cdgGnopuxX (const char *, va_list); extern int _dvprintf_cdnopsuxX (const char *, va_list); extern int _dvprintf_cdnopuxX (const char *, va_list); extern int _dvprintf_eE (const char *, va_list); extern int _dvprintf_eEfF (const char *, va_list); extern int _dvprintf_eEfFgG (const char *, va_list); extern int _dvprintf_eEfFgGs (const char *, va_list); extern int _dvprintf_eEfFs (const char *, va_list); extern int _dvprintf_eEgG (const char *, va_list); extern int _dvprintf_eEgGs (const char *, va_list); extern int _dvprintf_eEs (const char *, va_list); extern int _dvprintf_fF (const char *, va_list); extern int _dvprintf_fFgG (const char *, va_list); extern int _dvprintf_fFgGs (const char *, va_list); extern int _dvprintf_fFs (const char *, va_list); extern int _dvprintf_gG (const char *, va_list); extern int _dvprintf_gGs (const char *, va_list); extern int _dvprintf_s (const char *, va_list); extern int _dvprintf (const char *, va_list);;
    extern int vsprintf(char *, const char *, va_list);
    extern int _vsprintf_cdeEfFgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEnopuxX (char *, const char *, va_list); extern int _vsprintf_cdfFgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdfFgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdfFnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdfFnopuxX (char *, const char *, va_list); extern int _vsprintf_cdgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdnopuxX (char *, const char *, va_list); extern int _vsprintf_eE (char *, const char *, va_list); extern int _vsprintf_eEfF (char *, const char *, va_list); extern int _vsprintf_eEfFgG (char *, const char *, va_list); extern int _vsprintf_eEfFgGs (char *, const char *, va_list); extern int _vsprintf_eEfFs (char *, const char *, va_list); extern int _vsprintf_eEgG (char *, const char *, va_list); extern int _vsprintf_eEgGs (char *, const char *, va_list); extern int _vsprintf_eEs (char *, const char *, va_list); extern int _vsprintf_fF (char *, const char *, va_list); extern int _vsprintf_fFgG (char *, const char *, va_list); extern int _vsprintf_fFgGs (char *, const char *, va_list); extern int _vsprintf_fFs (char *, const char *, va_list); extern int _vsprintf_gG (char *, const char *, va_list); extern int _vsprintf_gGs (char *, const char *, va_list); extern int _vsprintf_s (char *, const char *, va_list); extern int _vsprintf (char *, const char *, va_list); extern int _dvsprintf_cdeEfFgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdnopuxX (char *, const char *, va_list); extern int _dvsprintf_eE (char *, const char *, va_list); extern int _dvsprintf_eEfF (char *, const char *, va_list); extern int _dvsprintf_eEfFgG (char *, const char *, va_list); extern int _dvsprintf_eEfFgGs (char *, const char *, va_list); extern int _dvsprintf_eEfFs (char *, const char *, va_list); extern int _dvsprintf_eEgG (char *, const char *, va_list); extern int _dvsprintf_eEgGs (char *, const char *, va_list); extern int _dvsprintf_eEs (char *, const char *, va_list); extern int _dvsprintf_fF (char *, const char *, va_list); extern int _dvsprintf_fFgG (char *, const char *, va_list); extern int _dvsprintf_fFgGs (char *, const char *, va_list); extern int _dvsprintf_fFs (char *, const char *, va_list); extern int _dvsprintf_gG (char *, const char *, va_list); extern int _dvsprintf_gGs (char *, const char *, va_list); extern int _dvsprintf_s (char *, const char *, va_list); extern int _dvsprintf (char *, const char *, va_list);;
    extern int vscanf(const char *, va_list ap);
    extern int _vscanf_cdeEfFgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEfFgGnopuxX (const char *, va_list ap); extern int _vscanf_cdeEfFnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEfFnopuxX (const char *, va_list ap); extern int _vscanf_cdeEgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEgGnopuxX (const char *, va_list ap); extern int _vscanf_cdeEnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEnopuxX (const char *, va_list ap); extern int _vscanf_cdfFgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdfFgGnopuxX (const char *, va_list ap); extern int _vscanf_cdfFnopsuxX (const char *, va_list ap); extern int _vscanf_cdfFnopuxX (const char *, va_list ap); extern int _vscanf_cdgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdgGnopuxX (const char *, va_list ap); extern int _vscanf_cdnopsuxX (const char *, va_list ap); extern int _vscanf_cdnopuxX (const char *, va_list ap); extern int _vscanf_eE (const char *, va_list ap); extern int _vscanf_eEfF (const char *, va_list ap); extern int _vscanf_eEfFgG (const char *, va_list ap); extern int _vscanf_eEfFgGs (const char *, va_list ap); extern int _vscanf_eEfFs (const char *, va_list ap); extern int _vscanf_eEgG (const char *, va_list ap); extern int _vscanf_eEgGs (const char *, va_list ap); extern int _vscanf_eEs (const char *, va_list ap); extern int _vscanf_fF (const char *, va_list ap); extern int _vscanf_fFgG (const char *, va_list ap); extern int _vscanf_fFgGs (const char *, va_list ap); extern int _vscanf_fFs (const char *, va_list ap); extern int _vscanf_gG (const char *, va_list ap); extern int _vscanf_gGs (const char *, va_list ap); extern int _vscanf_s (const char *, va_list ap); extern int _vscanf (const char *, va_list ap); extern int _dvscanf_cdeEfFgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEnopuxX (const char *, va_list ap); extern int _dvscanf_cdfFgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdfFgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdfFnopsuxX (const char *, va_list ap); extern int _dvscanf_cdfFnopuxX (const char *, va_list ap); extern int _dvscanf_cdgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdnopsuxX (const char *, va_list ap); extern int _dvscanf_cdnopuxX (const char *, va_list ap); extern int _dvscanf_eE (const char *, va_list ap); extern int _dvscanf_eEfF (const char *, va_list ap); extern int _dvscanf_eEfFgG (const char *, va_list ap); extern int _dvscanf_eEfFgGs (const char *, va_list ap); extern int _dvscanf_eEfFs (const char *, va_list ap); extern int _dvscanf_eEgG (const char *, va_list ap); extern int _dvscanf_eEgGs (const char *, va_list ap); extern int _dvscanf_eEs (const char *, va_list ap); extern int _dvscanf_fF (const char *, va_list ap); extern int _dvscanf_fFgG (const char *, va_list ap); extern int _dvscanf_fFgGs (const char *, va_list ap); extern int _dvscanf_fFs (const char *, va_list ap); extern int _dvscanf_gG (const char *, va_list ap); extern int _dvscanf_gGs (const char *, va_list ap); extern int _dvscanf_s (const char *, va_list ap); extern int _dvscanf (const char *, va_list ap);;
    extern int vsscanf(const char *, const char *, va_list);
    extern int _vsscanf_cdeEfFgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdnopuxX (const char *, const char *, va_list); extern int _vsscanf_eE (const char *, const char *, va_list); extern int _vsscanf_eEfF (const char *, const char *, va_list); extern int _vsscanf_eEfFgG (const char *, const char *, va_list); extern int _vsscanf_eEfFgGs (const char *, const char *, va_list); extern int _vsscanf_eEfFs (const char *, const char *, va_list); extern int _vsscanf_eEgG (const char *, const char *, va_list); extern int _vsscanf_eEgGs (const char *, const char *, va_list); extern int _vsscanf_eEs (const char *, const char *, va_list); extern int _vsscanf_fF (const char *, const char *, va_list); extern int _vsscanf_fFgG (const char *, const char *, va_list); extern int _vsscanf_fFgGs (const char *, const char *, va_list); extern int _vsscanf_fFs (const char *, const char *, va_list); extern int _vsscanf_gG (const char *, const char *, va_list); extern int _vsscanf_gGs (const char *, const char *, va_list); extern int _vsscanf_s (const char *, const char *, va_list); extern int _vsscanf (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdnopuxX (const char *, const char *, va_list); extern int _dvsscanf_eE (const char *, const char *, va_list); extern int _dvsscanf_eEfF (const char *, const char *, va_list); extern int _dvsscanf_eEfFgG (const char *, const char *, va_list); extern int _dvsscanf_eEfFgGs (const char *, const char *, va_list); extern int _dvsscanf_eEfFs (const char *, const char *, va_list); extern int _dvsscanf_eEgG (const char *, const char *, va_list); extern int _dvsscanf_eEgGs (const char *, const char *, va_list); extern int _dvsscanf_eEs (const char *, const char *, va_list); extern int _dvsscanf_fF (const char *, const char *, va_list); extern int _dvsscanf_fFgG (const char *, const char *, va_list); extern int _dvsscanf_fFgGs (const char *, const char *, va_list); extern int _dvsscanf_fFs (const char *, const char *, va_list); extern int _dvsscanf_gG (const char *, const char *, va_list); extern int _dvsscanf_gGs (const char *, const char *, va_list); extern int _dvsscanf_s (const char *, const char *, va_list); extern int _dvsscanf (const char *, const char *, va_list);;


    extern int snprintf (char *, size_t, const char *, ...);
    extern int _snprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdnopuxX (char *, size_t, const char *, ...); extern int _snprintf_eE (char *, size_t, const char *, ...); extern int _snprintf_eEfF (char *, size_t, const char *, ...); extern int _snprintf_eEfFgG (char *, size_t, const char *, ...); extern int _snprintf_eEfFgGs (char *, size_t, const char *, ...); extern int _snprintf_eEfFs (char *, size_t, const char *, ...); extern int _snprintf_eEgG (char *, size_t, const char *, ...); extern int _snprintf_eEgGs (char *, size_t, const char *, ...); extern int _snprintf_eEs (char *, size_t, const char *, ...); extern int _snprintf_fF (char *, size_t, const char *, ...); extern int _snprintf_fFgG (char *, size_t, const char *, ...); extern int _snprintf_fFgGs (char *, size_t, const char *, ...); extern int _snprintf_fFs (char *, size_t, const char *, ...); extern int _snprintf_gG (char *, size_t, const char *, ...); extern int _snprintf_gGs (char *, size_t, const char *, ...); extern int _snprintf_s (char *, size_t, const char *, ...); extern int _snprintf (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_eE (char *, size_t, const char *, ...); extern int _dsnprintf_eEfF (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFgG (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFgGs (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFs (char *, size_t, const char *, ...); extern int _dsnprintf_eEgG (char *, size_t, const char *, ...); extern int _dsnprintf_eEgGs (char *, size_t, const char *, ...); extern int _dsnprintf_eEs (char *, size_t, const char *, ...); extern int _dsnprintf_fF (char *, size_t, const char *, ...); extern int _dsnprintf_fFgG (char *, size_t, const char *, ...); extern int _dsnprintf_fFgGs (char *, size_t, const char *, ...); extern int _dsnprintf_fFs (char *, size_t, const char *, ...); extern int _dsnprintf_gG (char *, size_t, const char *, ...); extern int _dsnprintf_gGs (char *, size_t, const char *, ...); extern int _dsnprintf_s (char *, size_t, const char *, ...); extern int _dsnprintf (char *, size_t, const char *, ...);;
    extern int vsnprintf (char *, size_t, const char *, __va_list);
    extern int _vsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_eE (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfF (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEs (char *, size_t, const char *, __va_list); extern int _vsnprintf_fF (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFs (char *, size_t, const char *, __va_list); extern int _vsnprintf_gG (char *, size_t, const char *, __va_list); extern int _vsnprintf_gGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_s (char *, size_t, const char *, __va_list); extern int _vsnprintf (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eE (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfF (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fF (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_gG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_gGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_s (char *, size_t, const char *, __va_list); extern int _dvsnprintf (char *, size_t, const char *, __va_list);;
    extern int asprintf (char **, const char *, ...);
    extern int _asprintf_cdeEfFgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEfFgGnopuxX (char **, const char *, ...); extern int _asprintf_cdeEfFnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEfFnopuxX (char **, const char *, ...); extern int _asprintf_cdeEgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEgGnopuxX (char **, const char *, ...); extern int _asprintf_cdeEnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEnopuxX (char **, const char *, ...); extern int _asprintf_cdfFgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdfFgGnopuxX (char **, const char *, ...); extern int _asprintf_cdfFnopsuxX (char **, const char *, ...); extern int _asprintf_cdfFnopuxX (char **, const char *, ...); extern int _asprintf_cdgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdgGnopuxX (char **, const char *, ...); extern int _asprintf_cdnopsuxX (char **, const char *, ...); extern int _asprintf_cdnopuxX (char **, const char *, ...); extern int _asprintf_eE (char **, const char *, ...); extern int _asprintf_eEfF (char **, const char *, ...); extern int _asprintf_eEfFgG (char **, const char *, ...); extern int _asprintf_eEfFgGs (char **, const char *, ...); extern int _asprintf_eEfFs (char **, const char *, ...); extern int _asprintf_eEgG (char **, const char *, ...); extern int _asprintf_eEgGs (char **, const char *, ...); extern int _asprintf_eEs (char **, const char *, ...); extern int _asprintf_fF (char **, const char *, ...); extern int _asprintf_fFgG (char **, const char *, ...); extern int _asprintf_fFgGs (char **, const char *, ...); extern int _asprintf_fFs (char **, const char *, ...); extern int _asprintf_gG (char **, const char *, ...); extern int _asprintf_gGs (char **, const char *, ...); extern int _asprintf_s (char **, const char *, ...); extern int _asprintf (char **, const char *, ...); extern int _dasprintf_cdeEfFgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEnopuxX (char **, const char *, ...); extern int _dasprintf_cdfFgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdfFgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdfFnopsuxX (char **, const char *, ...); extern int _dasprintf_cdfFnopuxX (char **, const char *, ...); extern int _dasprintf_cdgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdnopsuxX (char **, const char *, ...); extern int _dasprintf_cdnopuxX (char **, const char *, ...); extern int _dasprintf_eE (char **, const char *, ...); extern int _dasprintf_eEfF (char **, const char *, ...); extern int _dasprintf_eEfFgG (char **, const char *, ...); extern int _dasprintf_eEfFgGs (char **, const char *, ...); extern int _dasprintf_eEfFs (char **, const char *, ...); extern int _dasprintf_eEgG (char **, const char *, ...); extern int _dasprintf_eEgGs (char **, const char *, ...); extern int _dasprintf_eEs (char **, const char *, ...); extern int _dasprintf_fF (char **, const char *, ...); extern int _dasprintf_fFgG (char **, const char *, ...); extern int _dasprintf_fFgGs (char **, const char *, ...); extern int _dasprintf_fFs (char **, const char *, ...); extern int _dasprintf_gG (char **, const char *, ...); extern int _dasprintf_gGs (char **, const char *, ...); extern int _dasprintf_s (char **, const char *, ...); extern int _dasprintf (char **, const char *, ...);;
    extern int vasprintf (char **, const char *, __va_list);
    extern int _vasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdnopuxX (char **, const char *, __va_list); extern int _vasprintf_eE (char **, const char *, __va_list); extern int _vasprintf_eEfF (char **, const char *, __va_list); extern int _vasprintf_eEfFgG (char **, const char *, __va_list); extern int _vasprintf_eEfFgGs (char **, const char *, __va_list); extern int _vasprintf_eEfFs (char **, const char *, __va_list); extern int _vasprintf_eEgG (char **, const char *, __va_list); extern int _vasprintf_eEgGs (char **, const char *, __va_list); extern int _vasprintf_eEs (char **, const char *, __va_list); extern int _vasprintf_fF (char **, const char *, __va_list); extern int _vasprintf_fFgG (char **, const char *, __va_list); extern int _vasprintf_fFgGs (char **, const char *, __va_list); extern int _vasprintf_fFs (char **, const char *, __va_list); extern int _vasprintf_gG (char **, const char *, __va_list); extern int _vasprintf_gGs (char **, const char *, __va_list); extern int _vasprintf_s (char **, const char *, __va_list); extern int _vasprintf (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdnopuxX (char **, const char *, __va_list); extern int _dvasprintf_eE (char **, const char *, __va_list); extern int _dvasprintf_eEfF (char **, const char *, __va_list); extern int _dvasprintf_eEfFgG (char **, const char *, __va_list); extern int _dvasprintf_eEfFgGs (char **, const char *, __va_list); extern int _dvasprintf_eEfFs (char **, const char *, __va_list); extern int _dvasprintf_eEgG (char **, const char *, __va_list); extern int _dvasprintf_eEgGs (char **, const char *, __va_list); extern int _dvasprintf_eEs (char **, const char *, __va_list); extern int _dvasprintf_fF (char **, const char *, __va_list); extern int _dvasprintf_fFgG (char **, const char *, __va_list); extern int _dvasprintf_fFgGs (char **, const char *, __va_list); extern int _dvasprintf_fFs (char **, const char *, __va_list); extern int _dvasprintf_gG (char **, const char *, __va_list); extern int _dvasprintf_gGs (char **, const char *, __va_list); extern int _dvasprintf_s (char **, const char *, __va_list); extern int _dvasprintf (char **, const char *, __va_list);;







    extern int sprintf(char *, const char *, ...);
    extern int _sprintf_cdeEfFgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEfFgGnopuxX (char *, const char *, ...); extern int _sprintf_cdeEfFnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEfFnopuxX (char *, const char *, ...); extern int _sprintf_cdeEgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEgGnopuxX (char *, const char *, ...); extern int _sprintf_cdeEnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEnopuxX (char *, const char *, ...); extern int _sprintf_cdfFgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdfFgGnopuxX (char *, const char *, ...); extern int _sprintf_cdfFnopsuxX (char *, const char *, ...); extern int _sprintf_cdfFnopuxX (char *, const char *, ...); extern int _sprintf_cdgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdgGnopuxX (char *, const char *, ...); extern int _sprintf_cdnopsuxX (char *, const char *, ...); extern int _sprintf_cdnopuxX (char *, const char *, ...); extern int _sprintf_eE (char *, const char *, ...); extern int _sprintf_eEfF (char *, const char *, ...); extern int _sprintf_eEfFgG (char *, const char *, ...); extern int _sprintf_eEfFgGs (char *, const char *, ...); extern int _sprintf_eEfFs (char *, const char *, ...); extern int _sprintf_eEgG (char *, const char *, ...); extern int _sprintf_eEgGs (char *, const char *, ...); extern int _sprintf_eEs (char *, const char *, ...); extern int _sprintf_fF (char *, const char *, ...); extern int _sprintf_fFgG (char *, const char *, ...); extern int _sprintf_fFgGs (char *, const char *, ...); extern int _sprintf_fFs (char *, const char *, ...); extern int _sprintf_gG (char *, const char *, ...); extern int _sprintf_gGs (char *, const char *, ...); extern int _sprintf_s (char *, const char *, ...); extern int _sprintf (char *, const char *, ...); extern int _dsprintf_cdeEfFgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEnopuxX (char *, const char *, ...); extern int _dsprintf_cdfFgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdfFgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdfFnopsuxX (char *, const char *, ...); extern int _dsprintf_cdfFnopuxX (char *, const char *, ...); extern int _dsprintf_cdgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdnopsuxX (char *, const char *, ...); extern int _dsprintf_cdnopuxX (char *, const char *, ...); extern int _dsprintf_eE (char *, const char *, ...); extern int _dsprintf_eEfF (char *, const char *, ...); extern int _dsprintf_eEfFgG (char *, const char *, ...); extern int _dsprintf_eEfFgGs (char *, const char *, ...); extern int _dsprintf_eEfFs (char *, const char *, ...); extern int _dsprintf_eEgG (char *, const char *, ...); extern int _dsprintf_eEgGs (char *, const char *, ...); extern int _dsprintf_eEs (char *, const char *, ...); extern int _dsprintf_fF (char *, const char *, ...); extern int _dsprintf_fFgG (char *, const char *, ...); extern int _dsprintf_fFgGs (char *, const char *, ...); extern int _dsprintf_fFs (char *, const char *, ...); extern int _dsprintf_gG (char *, const char *, ...); extern int _dsprintf_gGs (char *, const char *, ...); extern int _dsprintf_s (char *, const char *, ...); extern int _dsprintf (char *, const char *, ...);;
    extern int printf(const char *, ...);
    extern int _printf_cdeEfFgGnopsuxX (const char *, ...); extern int _printf_cdeEfFgGnopuxX (const char *, ...); extern int _printf_cdeEfFnopsuxX (const char *, ...); extern int _printf_cdeEfFnopuxX (const char *, ...); extern int _printf_cdeEgGnopsuxX (const char *, ...); extern int _printf_cdeEgGnopuxX (const char *, ...); extern int _printf_cdeEnopsuxX (const char *, ...); extern int _printf_cdeEnopuxX (const char *, ...); extern int _printf_cdfFgGnopsuxX (const char *, ...); extern int _printf_cdfFgGnopuxX (const char *, ...); extern int _printf_cdfFnopsuxX (const char *, ...); extern int _printf_cdfFnopuxX (const char *, ...); extern int _printf_cdgGnopsuxX (const char *, ...); extern int _printf_cdgGnopuxX (const char *, ...); extern int _printf_cdnopsuxX (const char *, ...); extern int _printf_cdnopuxX (const char *, ...); extern int _printf_eE (const char *, ...); extern int _printf_eEfF (const char *, ...); extern int _printf_eEfFgG (const char *, ...); extern int _printf_eEfFgGs (const char *, ...); extern int _printf_eEfFs (const char *, ...); extern int _printf_eEgG (const char *, ...); extern int _printf_eEgGs (const char *, ...); extern int _printf_eEs (const char *, ...); extern int _printf_fF (const char *, ...); extern int _printf_fFgG (const char *, ...); extern int _printf_fFgGs (const char *, ...); extern int _printf_fFs (const char *, ...); extern int _printf_gG (const char *, ...); extern int _printf_gGs (const char *, ...); extern int _printf_s (const char *, ...); extern int _printf (const char *, ...); extern int _dprintf_cdeEfFgGnopsuxX (const char *, ...); extern int _dprintf_cdeEfFgGnopuxX (const char *, ...); extern int _dprintf_cdeEfFnopsuxX (const char *, ...); extern int _dprintf_cdeEfFnopuxX (const char *, ...); extern int _dprintf_cdeEgGnopsuxX (const char *, ...); extern int _dprintf_cdeEgGnopuxX (const char *, ...); extern int _dprintf_cdeEnopsuxX (const char *, ...); extern int _dprintf_cdeEnopuxX (const char *, ...); extern int _dprintf_cdfFgGnopsuxX (const char *, ...); extern int _dprintf_cdfFgGnopuxX (const char *, ...); extern int _dprintf_cdfFnopsuxX (const char *, ...); extern int _dprintf_cdfFnopuxX (const char *, ...); extern int _dprintf_cdgGnopsuxX (const char *, ...); extern int _dprintf_cdgGnopuxX (const char *, ...); extern int _dprintf_cdnopsuxX (const char *, ...); extern int _dprintf_cdnopuxX (const char *, ...); extern int _dprintf_eE (const char *, ...); extern int _dprintf_eEfF (const char *, ...); extern int _dprintf_eEfFgG (const char *, ...); extern int _dprintf_eEfFgGs (const char *, ...); extern int _dprintf_eEfFs (const char *, ...); extern int _dprintf_eEgG (const char *, ...); extern int _dprintf_eEgGs (const char *, ...); extern int _dprintf_eEs (const char *, ...); extern int _dprintf_fF (const char *, ...); extern int _dprintf_fFgG (const char *, ...); extern int _dprintf_fFgGs (const char *, ...); extern int _dprintf_fFs (const char *, ...); extern int _dprintf_gG (const char *, ...); extern int _dprintf_gGs (const char *, ...); extern int _dprintf_s (const char *, ...); extern int _dprintf (const char *, ...);;
# 39 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/appio.h" 2 3
# 414 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/p32xxxx.h" 2 3
# 428 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/p32xxxx.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/cp0defs.h" 1 3
# 429 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/p32xxxx.h" 2 3
# 111 "../Compiler.h" 2
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 1 3
# 49 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/adc10.h" 1 3
# 45 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/adc10.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 1 3
# 48 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/attribs.h" 1 3
# 49 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 2 3






# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int_5xx_6xx_7xx.h" 1 3
# 62 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int_5xx_6xx_7xx.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/int_5xx_6xx_7xx_legacy.h" 1 3
# 63 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int_5xx_6xx_7xx.h" 2 3
# 81 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int_5xx_6xx_7xx.h" 3
typedef enum
{
    INT_CT = 0,

    INT_CS0,
    INT_CS1,

    INT_INT0,
    INT_INT1,
    INT_INT2,
    INT_INT3,
    INT_INT4,

    INT_T1,
    INT_T2,
    INT_T3,
    INT_T4,
    INT_T5,

    INT_IC1,
    INT_IC2,
    INT_IC3,
    INT_IC4,
    INT_IC5,

    INT_IC1E,
    INT_IC2E,
    INT_IC3E,
    INT_IC4E,
    INT_IC5E,

    INT_OC1,
    INT_OC2,
    INT_OC3,
    INT_OC4,
    INT_OC5,

    INT_CN,

    INT_SPI1,
    INT_SPI2A,
    INT_SPI1A,
    INT_SPI3A,

    INT_SPI1E,
    INT_SPI2AE,
    INT_SPI1AE,
    INT_SPI3AE,

    INT_SPI1TX,
    INT_SPI2ATX,
    INT_SPI1ATX,
    INT_SPI3ATX,

    INT_SPI1RX,
    INT_SPI2ARX,
    INT_SPI1ARX,
    INT_SPI3ARX,

    INT_I2C1,
    INT_I2C2,
    INT_I2C1A,
    INT_I2C2A,
    INT_I2C3A,

    INT_I2C1B,
    INT_I2C2B,
    INT_I2C1AB,
    INT_I2C2AB,
    INT_I2C3AB,

    INT_I2C1S,
    INT_I2C2S,
    INT_I2C1AS,
    INT_I2C2AS,
    INT_I2C3AS,

    INT_I2C1M,
    INT_I2C2M,
    INT_I2C1AM,
    INT_I2C2AM,
    INT_I2C3AM,

    INT_U1A,
    INT_U3A,
    INT_U2A,
    INT_U1B,
    INT_U3B,
    INT_U2B,

    INT_U1AE,
    INT_U3AE,
    INT_U2AE,
    INT_U1BE,
    INT_U3BE,
    INT_U2BE,

    INT_U1ARX,
    INT_U3ARX,
    INT_U2ARX,
    INT_U1BRX,
    INT_U3BRX,
    INT_U2BRX,

    INT_U1ATX,
    INT_U3ATX,
    INT_U2ATX,
    INT_U1BTX,
    INT_U3BTX,
    INT_U2BTX,

    INT_AD1,

    INT_PMP,
    INT_PMPE,

    INT_CMP1,
    INT_CMP2,

    INT_FSCM,

    INT_FCE,

    INT_RTCC,

    INT_DMA0,
    INT_DMA1,
    INT_DMA2,
    INT_DMA3,
    INT_DMA4,
    INT_DMA5,
    INT_DMA6,
    INT_DMA7,

    INT_USB,

    INT_CAN1,
    INT_CAN2,

    INT_ETHERNET,

    INT_NUM
}INT_SOURCE;
# 283 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int_5xx_6xx_7xx.h" 3
typedef enum
{
    INT_CORE_TIMER_VECTOR,

    INT_CORE_SOFTWARE_0_VECTOR,
    INT_CORE_SOFTWARE_1_VECTOR,

    INT_EXTERNAL_0_VECTOR,
    INT_EXTERNAL_1_VECTOR,
    INT_EXTERNAL_2_VECTOR,
    INT_EXTERNAL_3_VECTOR,
    INT_EXTERNAL_4_VECTOR,

    INT_TIMER_1_VECTOR,
    INT_TIMER_2_VECTOR,
    INT_TIMER_3_VECTOR,
    INT_TIMER_4_VECTOR,
    INT_TIMER_5_VECTOR,

    INT_INPUT_CAPTURE_1_VECTOR,
    INT_INPUT_CAPTURE_2_VECTOR,
    INT_INPUT_CAPTURE_3_VECTOR,
    INT_INPUT_CAPTURE_4_VECTOR,
    INT_INPUT_CAPTURE_5_VECTOR,

    INT_OUTPUT_COMPARE_1_VECTOR,
    INT_OUTPUT_COMPARE_2_VECTOR,
    INT_OUTPUT_COMPARE_3_VECTOR,
    INT_OUTPUT_COMPARE_4_VECTOR,
    INT_OUTPUT_COMPARE_5_VECTOR,

    INT_SPI_1_VECTOR,
    INT_SPI_2A_VECTOR,
    INT_SPI_1A_VECTOR,
    INT_SPI_3A_VECTOR,

    INT_UART_1A_VECTOR,
    INT_UART_3A_VECTOR,
    INT_UART_2A_VECTOR,
    INT_UART_1B_VECTOR,
    INT_UART_3B_VECTOR,
    INT_UART_2B_VECTOR,

    INT_I2C_1_VECTOR,
    INT_I2C_2_VECTOR,
    INT_I2C_1A_VECTOR,
    INT_I2C_2A_VECTOR,
    INT_I2C_3A_VECTOR,

    INT_CHANGE_NOTICE_VECTOR,
    INT_ADC_VECTOR,
    INT_PMP_VECTOR,

    INT_COMPARATOR_1_VECTOR,
    INT_COMPARATOR_2_VECTOR,

    INT_FAIL_SAFE_MONITOR_VECTOR,
    INT_RTCC_VECTOR,

    INT_DMA_0_VECTOR,
    INT_DMA_1_VECTOR,
    INT_DMA_2_VECTOR,
    INT_DMA_3_VECTOR,
    INT_DMA_4_VECTOR,
    INT_DMA_5_VECTOR,
    INT_DMA_6_VECTOR,
    INT_DMA_7_VECTOR,

    INT_FCE_VECTOR,

    INT_USB_1_VECTOR,

    INT_CAN_1_VECTOR,
    INT_CAN_2_VECTOR,

    INT_ETH_VECTOR


}INT_VECTOR;
# 56 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 2 3
# 65 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 1 3
# 54 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__ ((nomips16)) INTEnableSystemMultiVectoredInt(void);
# 68 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__ ((nomips16)) INTEnableSystemSingleVectoredInt(void);
# 406 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) SetCoreSW0(void);
# 437 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) SetCoreSW1(void);
# 471 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) ClearCoreSW0(void);
# 505 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) ClearCoreSW1(void);
# 66 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 2 3
# 83 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_REGISTOR_SET_SELECT_NONE = 0 ,

    INT_REGISTOR_SET_SELECT_SS0 = (0x00010000)

}INT_SV_SS;
# 102 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_PRIORITY_DISABLED = 0 ,

    INT_PRIORITY_LEVEL_1 = 1 ,

    INT_PRIORITY_LEVEL_2 = 2 ,

    INT_PRIORITY_LEVEL_3 = 3 ,

    INT_PRIORITY_LEVEL_4 = 4 ,

    INT_PRIORITY_LEVEL_5 = 5 ,

    INT_PRIORITY_LEVEL_6 = 6 ,

    INT_PRIORITY_LEVEL_7 = 7
}INT_PRIORITY;
# 132 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_SUB_PRIORITY_LEVEL_0 = 0 ,

    INT_SUB_PRIORITY_LEVEL_1 = 1 ,

    INT_SUB_PRIORITY_LEVEL_2 = 2 ,

    INT_SUB_PRIORITY_LEVEL_3 = 3
}INT_SUB_PRIORITY;
# 153 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_DISABLED = 0 ,

    INT_ENABLED = 1
}INT_EN_DIS;
# 169 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_TPC_DISABLE = 0x00000700 ,

    INT_TPC_GROUP_PRI_LEVEL_1 = 1 ,

    INT_TPC_GROUP_PRI_LEVEL_2 = 2 ,

    INT_TPC_GROUP_PRI_LEVEL_3 = 3 ,

    INT_TPC_GROUP_PRI_LEVEL_4 = 4 ,

    INT_TPC_GROUP_PRI_LEVEL_5 = 5 ,

    INT_TPC_GROUP_PRI_LEVEL_6 = 6 ,

    INT_TPC_GROUP_PRI_LEVEL_7 = 7
}INT_TPC_GROUP;
# 198 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_VS_32 = 32 ,

    INT_VS_64 = 64 ,

    INT_VS_128 = 128 ,

    INT_VS_256 = 256 ,

    INT_VS_512 = 512
}INT_VS;
# 221 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_SYSTEM_CONFIG_MULT_VECTOR,

    INT_SYSTEM_CONFIG_SINGLE_VECTOR
}INT_SYSTEM_CONFIG;
# 265 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int __attribute__((nomips16)) INTDisableInterrupts(void);
# 297 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int __attribute__((nomips16)) INTEnableInterrupts(void);
# 332 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) INTRestoreInterrupts(unsigned int status);
# 382 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__ ((nomips16)) INTConfigureSystem(INT_SYSTEM_CONFIG config);
# 414 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) INTSetEBASE(unsigned int ebase_address);
# 444 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) INTSetVectorSpacing(INT_VS vector_spacing);
# 474 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTSingleVectorRegisterSet(INT_SV_SS reg_set)
{
    INTCONCLR = reg_set;
    INTCONSET = reg_set;
}
# 514 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
extern inline unsigned int __attribute__ ((always_inline)) INTGetInterruptVectorNumber(void)
{
    return (unsigned int)(INTSTATbits.VEC);
}
# 547 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
extern inline INT_PRIORITY __attribute__ ((always_inline)) INTGetInterruptVectorPriority(void)
{
    return (INT_PRIORITY)(INTSTATbits.SRIPL);
}
# 589 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTGetInterruptVectorNumberAndPriority(unsigned int *number, INT_PRIORITY *priority)
{
    *number = INTSTAT;
    *priority = (INT_PRIORITY)((*number >> 8) & 7);
    *number &= 0x3F;
}
# 623 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void INTClearFlag(INT_SOURCE source);
# 653 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void INTSetFlag(INT_SOURCE source);
# 686 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int INTGetFlag(INT_SOURCE source);
# 716 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void INTEnable(INT_SOURCE source, INT_EN_DIS enable);
# 749 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int INTGetEnable(INT_SOURCE source);
# 779 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void INTSetVectorPriority(INT_VECTOR vector, INT_PRIORITY priority);
# 810 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
INT_PRIORITY INTGetVectorPriority(INT_VECTOR vector);
# 840 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void INTSetVectorSubPriority(INT_VECTOR vector, INT_SUB_PRIORITY subPriority);
# 871 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
INT_SUB_PRIORITY INTGetVectorSubPriority(INT_VECTOR vector);
# 901 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTSetIntProximityTimerReload(unsigned int time)
{
    IPTMR = time;
}
# 934 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
extern inline unsigned int __attribute__ ((always_inline)) INTGetIntProximityTimer(void)
{
    return IPTMR;
}
# 965 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTSetTemporalProximityControl(INT_TPC_GROUP level)
{
    INTCONCLR = INT_TPC_DISABLE;

    if(level != INT_TPC_DISABLE)
        INTCONSET = (level << 0x00000008);
}
# 1012 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreSetSoftwareInterrupt0(void);
# 1043 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreSetSoftwareInterrupt1(void);
# 1077 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreClearSoftwareInterrupt0(void);
# 1111 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreClearSoftwareInterrupt1(void);
# 46 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/adc10.h" 2 3
# 50 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/bmx.h" 1 3
# 51 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/cmp.h" 1 3
# 52 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/cvref.h" 1 3
# 53 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma.h" 1 3
# 44 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 1 3
# 55 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 typedef enum
 {
  DMA_CHANNEL0,

  DMA_CHANNEL1,

  DMA_CHANNEL2,

  DMA_CHANNEL3,

  DMA_CHANNEL4,

  DMA_CHANNEL5,

  DMA_CHANNEL6,

  DMA_CHANNEL7,
# 81 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DMA_CHANNELS
 }DmaChannel;



 typedef enum
 {
  DMA_CHN_PRI0,
  DMA_CHN_PRI1,
  DMA_CHN_PRI2,
  DMA_CHN_PRI3
 }DmaChannelPri;





 typedef enum
 {
  DMA_OPEN_DEFAULT = 0,
  DMA_OPEN_AUTO = 0x00000010,
  DMA_OPEN_CHAIN_LOW = (0x00000020|0x00000100),
  DMA_OPEN_CHAIN_HI = (0x00000020),
  DMA_OPEN_DET_EN = 0x00000040,
  DMA_OPEN_ENABLE = 0x00000080,
  DMA_OPEN_MATCH = 0x80000000,
 }DmaOpenFlags;


 typedef enum
 {
  DMA_EV_ERR = 0x1,
  DMA_EV_ABORT = 0x2,
  DMA_EV_CELL_DONE = 0x4,
  DMA_EV_BLOCK_DONE = 0x8,
  DMA_EV_DST_HALF = 0x10,
  DMA_EV_DST_FULL = 0x20,
  DMA_EV_SRC_HALF = 0x40,
  DMA_EV_SRC_FULL = 0x80,

  DMA_EV_ALL_EVNTS= (DMA_EV_ERR|DMA_EV_ABORT|DMA_EV_CELL_DONE|DMA_EV_BLOCK_DONE|DMA_EV_DST_HALF|
         DMA_EV_DST_FULL|DMA_EV_SRC_HALF|DMA_EV_SRC_FULL)
 }DmaEvFlags;


 typedef enum
 {
  DMA_TXFER_OK,
  DMA_TXFER_ADD_ERR,
  DMA_TXFER_ABORT,
  DMA_TXFER_BC_ERR,
  DMA_TXFER_CC_ERR,
  DMA_TXFER_TMO
 }DmaTxferRes;

 typedef enum
 {
  DMA_WAIT_NOT,
  DMA_WAIT_CELL,
  DMA_WAIT_BLOCK
 }DmaWaitMode;

 typedef enum
 {
  DMA_CHKSUM_CRC,
  DMA_CHKSUM_IP,
 }DmaChksumType;

 typedef enum
 {
  DMA_BITO_MSb,
  DMA_BITO_LSb,
 }DmaBitOrder;

 typedef enum
 {
  DMA_REORDER_NOT,
  DMA_REORDER_ENDIAN,
  DMA_REORDER_SWAP_HALF,
  DMA_REORDER_SWAP_BYTE,
 }DmaReorderMode;
# 201 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnOpen(DmaChannel chn, DmaChannelPri chPri, DmaOpenFlags oFlags);
# 220 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnEnable(DmaChannel chn);
# 239 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnDisable(DmaChannel chn);
# 271 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnSetTxfer(DmaChannel chn, const void* vSrcAdd, void* vDstAdd, int srcSize, int dstSize, int cellSize);
# 291 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnSetSrcAdd(DmaChannel chn, const void* vSrcAdd);
# 310 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnSetDstAdd(DmaChannel chn, void* vDstAdd);
# 330 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnSetMatchPattern(DmaChannel chn, int pattern);
# 349 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  int DmaChnGetMatchPattern(DmaChannel chn);
# 383 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DmaTxferRes DmaChnStartTxfer(DmaChannel chn, DmaWaitMode wMode, unsigned long retries);
# 402 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnForceTxfer(DmaChannel chn);
# 421 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnAbortTxfer(DmaChannel chn);
# 454 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnSetEvEnableFlags(DmaChannel chn, DmaEvFlags eFlags);
# 485 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnClrEvEnableFlags(DmaChannel chn, DmaEvFlags eFlags);
# 515 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnWriteEvEnableFlags(DmaChannel chn, DmaEvFlags eFlags);
# 543 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DmaEvFlags DmaChnGetEvEnableFlags(DmaChannel chn);
# 574 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnClrEvFlags(DmaChannel chn, DmaEvFlags eFlags);
# 602 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DmaEvFlags DmaChnGetEvFlags(DmaChannel chn);
# 638 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DmaTxferRes DmaChnMemcpy(void* s1, const void* s2, int n, DmaChannel chn, DmaChannelPri chPri);
# 670 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DmaTxferRes DmaChnStrcpy(char* s1, const char* s2, DmaChannel chn, DmaChannelPri chPri);
# 705 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DmaTxferRes DmaChnStrncpy(char* s1, const char* s2, int n, DmaChannel chn, DmaChannelPri chPri);
# 738 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DmaTxferRes DmaChnMemCrc(void* d, const void* s, int n, DmaChannel chn, DmaChannelPri chPri);
# 771 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DmaTxferRes DmaChnMemChecksum(void* d, const void* s, int n, DmaChannel chn, DmaChannelPri chPri);
# 798 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ void __attribute__((always_inline)) DmaSfmConfigure(DmaChksumType cType, DmaBitOrder bitO, DmaReorderMode rMode)
 {
  DCRCCONCLR=0x00000020|0x01000000|0x30000000;
  DCRCCONSET=(cType<<0x00000005)|(bitO<<0x00000018)|(rMode<<0x0000001C);
 }
# 828 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ void __attribute__((always_inline)) DmaSfmTxferReorder(int enable)
 {
  DCRCCONCLR=0x08000000;
  DCRCCONSET=(enable<<0x0000001B);
 }
# 871 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ void __attribute__((always_inline)) DmaSfmCrcConfigure(unsigned int polynomial, int pLen, unsigned int seed)
 {
  DCRCCONCLR=0x00001F00;
  DCRCCONSET=(pLen-1)<<0x00000008;
  DCRCDATA=seed;
  DCRCXOR=polynomial;
 }
# 907 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 void DmaSfmAttachChannel(DmaChannel chn, int appendMode);
# 928 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ int __attribute__((always_inline)) DmaSfmChecksum(void)
 {
  return DCRCDATA;
 }
# 954 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ void __attribute__((always_inline)) DmaSfmSetSeed(unsigned int seed)
 {
  DCRCDATA=seed;
 }
# 966 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 typedef struct
 {
  union
  {
   struct
   {
    unsigned int chn: 3;
    unsigned int rdOp: 1;
   };
   unsigned int w;
  }lastAccess;
  void* lastAddress;
 }DmaStatus;

 typedef enum
 {
  DMA_GFLG_SUSPEND = 0x00001000,
  DMA_GFLG_ON = 0x00008000,

  DMA_GFLG_ALL_FLAGS= DMA_GFLG_SUSPEND|DMA_GFLG_ON
 }DmaGlblFlags;




 typedef enum
 {
  DMA_EV_ABORT_IRQ_EN = 0x00000008,
  DMA_EV_START_IRQ_EN = 0x00000010,


  DMA_EV_MATCH_EN = 0x00000020,



        _DMA_EV_MAX_MASK = 0x00FF0000,
 }DmaEvCtrlFlags;
# 1013 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 typedef enum
 {
  DMA_CTL_AUTO_EN = 0x00000010,
  DMA_CTL_CHAIN_EN = 0x00000020,
  DMA_CTL_DET_EN = 0x00000040,
  DMA_CTL_CHN_EN = 0x00000080,
  DMA_CTL_CHAIN_DIR = 0x00000100,


 }DmaChnCtrlFlags;






 typedef struct
 {
  void* vSrcAdd;
  void* vDstAdd;
  int srcSize;
  int dstSize;
  int cellSize;
 }DmaTxferCtrl;
# 1062 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ void __attribute__((always_inline)) DmaEnable(int enable)
 {
  if(enable)
  {
   DMACONSET=0x00008000;
  }
  else
  {
   DMACONCLR=0x00008000;
   while(DMACONbits.ON);
  }
 }
# 1114 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
        extern __inline__ int __attribute__((always_inline)) DmaSuspend(void)
 {
  int suspSt;
  if(!(suspSt=DMACONbits.SUSPEND))
  {
   DMACONSET=0x00001000;
   while((DMACONbits.DMABUSY));
  }
  return suspSt;
 }
# 1144 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaResume(int susp)
 {
  if(susp)
  {
   DmaSuspend();
  }
  else
  {
   DMACONCLR=0x00001000;
  }
 }
# 1178 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaGetStatus(DmaStatus* pStat);
# 1202 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaSetGlobalFlags(DmaGlblFlags gFlags)
 {
  DMACONSET=gFlags;
 }
# 1229 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaClrGlobalFlags(DmaGlblFlags gFlags)
 {
  DMACONCLR=gFlags;
 }
# 1256 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaWriteGlobalFlags(DmaGlblFlags gFlags)
 {
  DMACON=gFlags;
 }
# 1280 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
        extern __inline__ DmaGlblFlags __attribute__((always_inline)) DmaGetGlobalFlags(void)
 {
  return (DmaGlblFlags)DMACON;
 }
# 1303 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ int __attribute__((always_inline)) DmaGetMaxTxferSize(void)
 {
  return 65536;
 }



 typedef enum
 {
  DMA_CONFIG_DEFAULT = 0,
  DMA_CONFIG_AUTO = 0x00000010,
  DMA_CONFIG_CHAIN_LOW = (0x00000020|0x00000100),
  DMA_CONFIG_CHAIN_HI = (0x00000020),
  DMA_CONFIG_DET_EN = 0x00000040,
  DMA_CONFIG_ENABLE = 0x00000080,
  DMA_CONFIG_MATCH = 0x80000000,
 }DmaConfigFlags;
# 1358 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 void DmaChnConfigure(DmaChannel chn, DmaChannelPri chPri, DmaConfigFlags cFlags);
# 1379 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  int DmaChnGetSrcPnt(DmaChannel chn);
# 1399 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  int DmaChnGetDstPnt(DmaChannel chn);
# 1419 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  int DmaChnGetCellPnt(DmaChannel chn);
# 1455 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnSetEventControlFlags(DmaChannel chn, DmaEvCtrlFlags dmaEvCtrl);
# 1490 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnClrEventControlFlags(DmaChannel chn, DmaEvCtrlFlags dmaEvCtrl);
# 1526 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnWriteEventControlFlags(DmaChannel chn, DmaEvCtrlFlags dmaEvCtrl);
# 1597 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DmaEvCtrlFlags DmaChnGetEventControl(DmaChannel chn);
# 1633 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnSetControlFlags(DmaChannel chn, DmaChnCtrlFlags dmaChnCtrl);
# 1668 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnClrControlFlags(DmaChannel chn, DmaChnCtrlFlags dmaChnCtrl);
# 1702 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnWriteControlFlags(DmaChannel chn, DmaChnCtrlFlags dmaChnCtrl);
# 1769 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  DmaChnCtrlFlags DmaChnGetControlFlags(DmaChannel chn);
# 1790 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  int DmaChnGetEvDetect(DmaChannel chn);
# 1820 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnGetTxfer(DmaChannel chn, DmaTxferCtrl* pTxCtrl, int mapToK0);
# 1842 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ void __attribute__((always_inline)) DmaSfmEnable(int enable)
 {
  if(enable)
  {
   DCRCCONSET=0x00000080;
  }
  else
  {
   DCRCCONCLR=0x00000080;
  }
 }
# 1874 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ int __attribute__((always_inline)) DmaSfmGetEnable(void)
 {
  return DCRCCONbits.CRCEN!=0;
 }
# 1902 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ void __attribute__((always_inline)) DmaSfmAppendEnable(int enable)
 {
  if(enable)
  {
   DCRCCONSET=0x00000040;
  }
  else
  {
   DCRCCONCLR=0x00000040;
  }
 }
# 1934 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ int __attribute__((always_inline)) DmaSfmGetAppendMode(void)
 {
  return DCRCCONbits.CRCAPP!=0;
 }
# 1958 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ void __attribute__((always_inline)) DmaSfmSetAttach(DmaChannel chn)
 {
  DCRCCONCLR=0x00000007;
  DCRCCONSET=chn;
 }
# 1983 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ DmaChannel __attribute__((always_inline)) DmaSfmGetAttach(void)
 {
  return (DmaChannel)DCRCCONbits.CRCCH;
 }
# 2006 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ void __attribute__((always_inline)) DmaCrcSetPLen(int pLen)
 {
  DCRCCONCLR=0x00001F00;
  DCRCCONSET=(pLen)-1;
 }
# 2030 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ int __attribute__((always_inline)) DmaCrcGetPLen(void)
 {
  return DCRCCONbits.PLEN+1;
 }
# 2054 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ void __attribute__((always_inline)) DmaCrcSetShiftFeedback(unsigned int feedback)
 {
  DCRCXOR=feedback;
 }
# 2079 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
 extern __inline__ unsigned int __attribute__((always_inline)) DmaCrcGetShiftFeedback(void)
 {
  return DCRCXOR;
 }
# 2117 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnSetEvFlags(DmaChannel chn, DmaEvFlags eFlags);
# 2147 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
  void DmaChnWriteEvFlags(DmaChannel chn, DmaEvFlags eFlags);
# 2157 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 1 3
# 48 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma.h" 1 3
# 49 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 2 3
# 723 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
typedef enum
{

 DMA_REG_IX_CON,
 DMA_REG_IX_CON_CLR,
 DMA_REG_IX_CON_SET,
 DMA_REG_IX_CON_INV,

 DMA_REG_IX_ECON,
 DMA_REG_IX_ECON_CLR,
 DMA_REG_IX_ECON_SET,
 DMA_REG_IX_ECON_INV,

 DMA_REG_IX_INTR,
 DMA_REG_IX_INTR_CLR,
 DMA_REG_IX_INTR_SET,
 DMA_REG_IX_INTR_INV,

 DMA_REG_IX_SSA,
 DMA_REG_IX_SSA_CLR,
 DMA_REG_IX_SSA_SET,
 DMA_REG_IX_SSA_INV,

 DMA_REG_IX_DSA,
 DMA_REG_IX_DSA_CLR,
 DMA_REG_IX_DSA_SET,
 DMA_REG_IX_DSA_INV,

 DMA_REG_IX_SSIZ,
 DMA_REG_IX_SSIZ_CLR,
 DMA_REG_IX_SSIZ_SET,
 DMA_REG_IX_SSIZ_INV,

 DMA_REG_IX_DSIZ,
 DMA_REG_IX_DSIZ_CLR,
 DMA_REG_IX_DSIZ_SET,
 DMA_REG_IX_DSIZ_INV,

 DMA_REG_IX_SPTR,
 DMA_REG_IX_RESERVED0,
 DMA_REG_IX_RESERVED1,
 DMA_REG_IX_RESERVED2,

 DMA_REG_IX_DPTR,
 DMA_REG_IX_RESERVED3,
 DMA_REG_IX_RESERVED4,
 DMA_REG_IX_RESERVED5,

 DMA_REG_IX_CSIZ,
 DMA_REG_IX_CSIZ_CLR,
 DMA_REG_IX_CSIZ_SET,
 DMA_REG_IX_CSIZ_INV,

 DMA_REG_IX_CPTR,
 DMA_REG_IX_RESERVED6,
 DMA_REG_IX_RESERVED7,
 DMA_REG_IX_RESERVED8,

 DMA_REG_IX_DAT,
 DMA_REG_IX_DAT_CLR,
 DMA_REG_IX_DAT_SET,
 DMA_REG_IX_DAT_INV,
}DmaChnRegIx;
# 806 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
 void DmaChnSetRegister(DmaChannel chn, DmaChnRegIx regIx, unsigned int value);
# 827 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
 unsigned int DmaChnGetRegister(DmaChannel chn, DmaChnRegIx regIx);
# 2158 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma_5xx_6xx_7xx.h" 2 3
# 45 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/dma.h" 2 3
# 54 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 1 3
# 50 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
# 1 "/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include/GenericTypeDefs.h" 1 3
# 66 "/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include/GenericTypeDefs.h" 3
typedef enum _BOOL { FALSE = 0, TRUE } BOOL;

typedef enum _BIT { CLEAR = 0, SET } BIT;






typedef signed int INT;
typedef signed char INT8;
typedef signed short int INT16;
typedef signed long int INT32;



__extension__ typedef signed long long INT64;



typedef unsigned int UINT;
typedef unsigned char UINT8;
typedef unsigned short int UINT16;




typedef unsigned long int UINT32;


__extension__ typedef unsigned long long UINT64;


typedef union
{
    UINT8 Val;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
    } bits;
} UINT8_VAL, UINT8_BITS;

typedef union
{
    UINT16 Val;
    UINT8 v[2] ;
    struct
    {
        UINT8 LB;
        UINT8 HB;
    } byte;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
        __extension__ UINT8 b8:1;
        __extension__ UINT8 b9:1;
        __extension__ UINT8 b10:1;
        __extension__ UINT8 b11:1;
        __extension__ UINT8 b12:1;
        __extension__ UINT8 b13:1;
        __extension__ UINT8 b14:1;
        __extension__ UINT8 b15:1;
    } bits;
} UINT16_VAL, UINT16_BITS;
# 187 "/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include/GenericTypeDefs.h" 3
typedef union
{
    UINT32 Val;
    UINT16 w[2] ;
    UINT8 v[4] ;
    struct
    {
        UINT16 LW;
        UINT16 HW;
    } word;
    struct
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
        UINT8 MB;
    } byte;
    struct
    {
        UINT16_VAL low;
        UINT16_VAL high;
    }wordUnion;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
        __extension__ UINT8 b8:1;
        __extension__ UINT8 b9:1;
        __extension__ UINT8 b10:1;
        __extension__ UINT8 b11:1;
        __extension__ UINT8 b12:1;
        __extension__ UINT8 b13:1;
        __extension__ UINT8 b14:1;
        __extension__ UINT8 b15:1;
        __extension__ UINT8 b16:1;
        __extension__ UINT8 b17:1;
        __extension__ UINT8 b18:1;
        __extension__ UINT8 b19:1;
        __extension__ UINT8 b20:1;
        __extension__ UINT8 b21:1;
        __extension__ UINT8 b22:1;
        __extension__ UINT8 b23:1;
        __extension__ UINT8 b24:1;
        __extension__ UINT8 b25:1;
        __extension__ UINT8 b26:1;
        __extension__ UINT8 b27:1;
        __extension__ UINT8 b28:1;
        __extension__ UINT8 b29:1;
        __extension__ UINT8 b30:1;
        __extension__ UINT8 b31:1;
    } bits;
} UINT32_VAL;



typedef union
{
    UINT64 Val;
    UINT32 d[2] ;
    UINT16 w[4] ;
    UINT8 v[8] ;
    struct
    {
        UINT32 LD;
        UINT32 HD;
    } dword;
    struct
    {
        UINT16 LW;
        UINT16 HW;
        UINT16 UW;
        UINT16 MW;
    } word;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
        __extension__ UINT8 b8:1;
        __extension__ UINT8 b9:1;
        __extension__ UINT8 b10:1;
        __extension__ UINT8 b11:1;
        __extension__ UINT8 b12:1;
        __extension__ UINT8 b13:1;
        __extension__ UINT8 b14:1;
        __extension__ UINT8 b15:1;
        __extension__ UINT8 b16:1;
        __extension__ UINT8 b17:1;
        __extension__ UINT8 b18:1;
        __extension__ UINT8 b19:1;
        __extension__ UINT8 b20:1;
        __extension__ UINT8 b21:1;
        __extension__ UINT8 b22:1;
        __extension__ UINT8 b23:1;
        __extension__ UINT8 b24:1;
        __extension__ UINT8 b25:1;
        __extension__ UINT8 b26:1;
        __extension__ UINT8 b27:1;
        __extension__ UINT8 b28:1;
        __extension__ UINT8 b29:1;
        __extension__ UINT8 b30:1;
        __extension__ UINT8 b31:1;
        __extension__ UINT8 b32:1;
        __extension__ UINT8 b33:1;
        __extension__ UINT8 b34:1;
        __extension__ UINT8 b35:1;
        __extension__ UINT8 b36:1;
        __extension__ UINT8 b37:1;
        __extension__ UINT8 b38:1;
        __extension__ UINT8 b39:1;
        __extension__ UINT8 b40:1;
        __extension__ UINT8 b41:1;
        __extension__ UINT8 b42:1;
        __extension__ UINT8 b43:1;
        __extension__ UINT8 b44:1;
        __extension__ UINT8 b45:1;
        __extension__ UINT8 b46:1;
        __extension__ UINT8 b47:1;
        __extension__ UINT8 b48:1;
        __extension__ UINT8 b49:1;
        __extension__ UINT8 b50:1;
        __extension__ UINT8 b51:1;
        __extension__ UINT8 b52:1;
        __extension__ UINT8 b53:1;
        __extension__ UINT8 b54:1;
        __extension__ UINT8 b55:1;
        __extension__ UINT8 b56:1;
        __extension__ UINT8 b57:1;
        __extension__ UINT8 b58:1;
        __extension__ UINT8 b59:1;
        __extension__ UINT8 b60:1;
        __extension__ UINT8 b61:1;
        __extension__ UINT8 b62:1;
        __extension__ UINT8 b63:1;
    } bits;
} UINT64_VAL;





typedef void VOID;

typedef char CHAR8;
typedef unsigned char UCHAR8;

typedef unsigned char BYTE;
typedef unsigned short int WORD;
typedef unsigned long DWORD;

__extension__
typedef unsigned long long QWORD;
typedef signed char CHAR;
typedef signed short int SHORT;
typedef signed long LONG;

__extension__
typedef signed long long LONGLONG;
typedef union
{
    BYTE Val;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
    } bits;
} BYTE_VAL, BYTE_BITS;

typedef union
{
    WORD Val;
    BYTE v[2] ;
    struct
    {
        BYTE LB;
        BYTE HB;
    } byte;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
        __extension__ BYTE b8:1;
        __extension__ BYTE b9:1;
        __extension__ BYTE b10:1;
        __extension__ BYTE b11:1;
        __extension__ BYTE b12:1;
        __extension__ BYTE b13:1;
        __extension__ BYTE b14:1;
        __extension__ BYTE b15:1;
    } bits;
} WORD_VAL, WORD_BITS;

typedef union
{
    DWORD Val;
    WORD w[2] ;
    BYTE v[4] ;
    struct
    {
        WORD LW;
        WORD HW;
    } word;
    struct
    {
        BYTE LB;
        BYTE HB;
        BYTE UB;
        BYTE MB;
    } byte;
    struct
    {
        WORD_VAL low;
        WORD_VAL high;
    }wordUnion;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
        __extension__ BYTE b8:1;
        __extension__ BYTE b9:1;
        __extension__ BYTE b10:1;
        __extension__ BYTE b11:1;
        __extension__ BYTE b12:1;
        __extension__ BYTE b13:1;
        __extension__ BYTE b14:1;
        __extension__ BYTE b15:1;
        __extension__ BYTE b16:1;
        __extension__ BYTE b17:1;
        __extension__ BYTE b18:1;
        __extension__ BYTE b19:1;
        __extension__ BYTE b20:1;
        __extension__ BYTE b21:1;
        __extension__ BYTE b22:1;
        __extension__ BYTE b23:1;
        __extension__ BYTE b24:1;
        __extension__ BYTE b25:1;
        __extension__ BYTE b26:1;
        __extension__ BYTE b27:1;
        __extension__ BYTE b28:1;
        __extension__ BYTE b29:1;
        __extension__ BYTE b30:1;
        __extension__ BYTE b31:1;
    } bits;
} DWORD_VAL;


typedef union
{
    QWORD Val;
    DWORD d[2] ;
    WORD w[4] ;
    BYTE v[8] ;
    struct
    {
        DWORD LD;
        DWORD HD;
    } dword;
    struct
    {
        WORD LW;
        WORD HW;
        WORD UW;
        WORD MW;
    } word;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
        __extension__ BYTE b8:1;
        __extension__ BYTE b9:1;
        __extension__ BYTE b10:1;
        __extension__ BYTE b11:1;
        __extension__ BYTE b12:1;
        __extension__ BYTE b13:1;
        __extension__ BYTE b14:1;
        __extension__ BYTE b15:1;
        __extension__ BYTE b16:1;
        __extension__ BYTE b17:1;
        __extension__ BYTE b18:1;
        __extension__ BYTE b19:1;
        __extension__ BYTE b20:1;
        __extension__ BYTE b21:1;
        __extension__ BYTE b22:1;
        __extension__ BYTE b23:1;
        __extension__ BYTE b24:1;
        __extension__ BYTE b25:1;
        __extension__ BYTE b26:1;
        __extension__ BYTE b27:1;
        __extension__ BYTE b28:1;
        __extension__ BYTE b29:1;
        __extension__ BYTE b30:1;
        __extension__ BYTE b31:1;
        __extension__ BYTE b32:1;
        __extension__ BYTE b33:1;
        __extension__ BYTE b34:1;
        __extension__ BYTE b35:1;
        __extension__ BYTE b36:1;
        __extension__ BYTE b37:1;
        __extension__ BYTE b38:1;
        __extension__ BYTE b39:1;
        __extension__ BYTE b40:1;
        __extension__ BYTE b41:1;
        __extension__ BYTE b42:1;
        __extension__ BYTE b43:1;
        __extension__ BYTE b44:1;
        __extension__ BYTE b45:1;
        __extension__ BYTE b46:1;
        __extension__ BYTE b47:1;
        __extension__ BYTE b48:1;
        __extension__ BYTE b49:1;
        __extension__ BYTE b50:1;
        __extension__ BYTE b51:1;
        __extension__ BYTE b52:1;
        __extension__ BYTE b53:1;
        __extension__ BYTE b54:1;
        __extension__ BYTE b55:1;
        __extension__ BYTE b56:1;
        __extension__ BYTE b57:1;
        __extension__ BYTE b58:1;
        __extension__ BYTE b59:1;
        __extension__ BYTE b60:1;
        __extension__ BYTE b61:1;
        __extension__ BYTE b62:1;
        __extension__ BYTE b63:1;
    } bits;
} QWORD_VAL;
# 51 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 2 3


# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 1 3
# 557 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 void IdleI2C1( void );
# 583 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned char MasterReadI2C1( void );
# 609 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned int MasterWriteI2C1( unsigned char data );
# 639 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned int MastergetsI2C1( unsigned int length, unsigned char *data,
                                    unsigned int I2cDataWait );
# 667 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned int MasterputsI2C1( unsigned char *data );
# 693 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned char SlaveReadI2C1( void );
# 718 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 void SlaveWriteI2C1( unsigned char data );
# 745 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned int SlavegetsI2C1( unsigned char *data,
                                   unsigned int I2cDataWait );
# 773 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
 unsigned int SlaveputsI2C1( unsigned char *data );
# 54 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 2 3
# 79 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{


    I2C1,
# 93 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
    I2C3,




    I2C4,




    I2C5,



    I2C_NUMBER_OF_MODULES

} I2C_MODULE;
# 122 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef union
{


    UINT8 byte;

    struct
    {

        UINT8 rw : 1;


        UINT8 address : 7;
    };

} I2C_7_BIT_ADDRESS;
# 150 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef union
{

    UINT16 both_bytes;

    struct
    {

        BYTE first_byte;


        BYTE second_byte;
    };

    struct
    {

        UINT16 rw : 1;


        UINT16 high_bits : 2;


        UINT16 const_bits : 5;


        UINT16 low_bits : 8;
    };

} I2C_10_BIT_ADDRESS;
# 270 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{

    I2C_SUCCESS = 0,


    I2C_ERROR,


    I2C_MASTER_BUS_COLLISION,



    I2C_RECEIVE_OVERFLOW

} I2C_RESULT;
# 304 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{


    I2C_ENABLE_SLAVE_CLOCK_STRETCHING
                             = 0x00000040 ,



    I2C_ENABLE_SMB_SUPPORT
                             = 0x00000100 ,


    I2C_ENABLE_HIGH_SPEED
                             = 0x00000200 ,


    I2C_STOP_IN_IDLE
                             = 0x00002000

} I2C_CONFIGURATION;
# 342 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{

    I2C_USE_7BIT_ADDRESS
                             = 0x00000000 ,


    I2C_USE_10BIT_ADDRESS
                             = 0x00000400 ,



    I2C_ENABLE_GENERAL_CALL_ADDRESS
                             = 0x00000080 ,



    I2C_USE_RESERVED_ADDRESSES
                             = 0x00000800

} I2C_ADDRESS_MODE;
# 381 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{


    I2C_TRANSMITTER_FULL
                             = 0x00000001 ,



    I2C_DATA_AVAILABLE
                            = 0x00000002 ,




    I2C_SLAVE_READ
                             = 0x00000004 ,


    I2C_START
                             = 0x00000008 ,


    I2C_STOP
                             = 0x00000010 ,



    I2C_SLAVE_DATA
                             = 0x00000020 ,



    I2C_RECEIVER_OVERFLOW
                             = 0x00000040 ,



    I2C_TRANSMITTER_OVERFLOW
                             = 0x00000080 ,



    I2C_10BIT_ADDRESS
                             = 0x00000100 ,


    I2C_GENERAL_CALL
                             = 0x00000200 ,



    I2C_ARBITRATION_LOSS
                             = 0x00000400 ,


    I2C_TRANSMITTER_BUSY
                             = 0x00004000 ,


    I2C_BYTE_ACKNOWLEDGED
                             = 0x00008000

} I2C_STATUS;
# 717 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CEnable( I2C_MODULE id, BOOL enable );
# 754 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CConfigure ( I2C_MODULE id, I2C_CONFIGURATION flags );
# 798 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
UINT32 I2CSetFrequency ( I2C_MODULE id, UINT32 sourceClock, UINT32 i2cClock );
# 851 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CSetSlaveAddress ( I2C_MODULE id, UINT16 address, UINT16 mask, I2C_ADDRESS_MODE flags );
# 891 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CBusIsIdle( I2C_MODULE id );
# 930 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CStart( I2C_MODULE id );
# 967 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CRepeatStart ( I2C_MODULE id );
# 1001 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CStop ( I2C_MODULE id );
# 1040 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CTransmitterIsReady ( I2C_MODULE id );
# 1082 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CSendByte ( I2C_MODULE id, BYTE data );
# 1125 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CTransmissionHasCompleted ( I2C_MODULE id );
# 1168 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CByteWasAcknowledged ( I2C_MODULE id );
# 1209 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CReceiverEnable ( I2C_MODULE id, BOOL enable );
# 1247 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CReceivedDataIsAvailable ( I2C_MODULE id );
# 1293 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CReceivedByteIsAnAddress ( I2C_MODULE id );
# 1331 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
BYTE I2CGetByte ( I2C_MODULE id );
# 1373 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CAcknowledgeByte ( I2C_MODULE id, BOOL ack );
# 1415 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CAcknowledgeHasCompleted ( I2C_MODULE id );
# 1460 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CSlaveDataReadRequested ( I2C_MODULE id );
# 1494 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CSlaveClockHold ( I2C_MODULE id );
# 1530 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CSlaveClockRelease ( I2C_MODULE id );
# 1568 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_STATUS I2CGetStatus ( I2C_MODULE id );
# 1608 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CClearStatus ( I2C_MODULE id, I2C_STATUS status );
# 55 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/incap.h" 1 3
# 339 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/incap.h" 3
 void ReadCapture1(unsigned int * buffer);



 void ReadCapture2(unsigned int * buffer);



 void ReadCapture3(unsigned int * buffer);



 void ReadCapture4(unsigned int * buffer);



 void ReadCapture5(unsigned int * buffer);
# 56 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3

# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/nvm.h" 1 3
# 44 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/nvm.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/kmem.h" 1 3
# 21 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/kmem.h" 3
typedef unsigned long _paddr_t;
typedef unsigned long _vaddr_t;
# 45 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/nvm.h" 2 3
# 69 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMProgram(void * address, const void * data, unsigned int size, void* pagebuff);
# 87 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMWriteWord(void* address, unsigned int data);
# 106 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMWriteRow(void* address, void* data);
# 124 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMErasePage(void* address);
# 140 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMClearError(void);
# 58 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/outcompare.h" 1 3
# 59 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pcache.h" 1 3
# 373 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pcache.h" 3
void __attribute__ ((nomips16)) CheKseg0CacheOff();
# 388 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pcache.h" 3
void __attribute__ ((nomips16)) CheKseg0CacheOn();
# 60 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 1 3
# 46 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
typedef enum {BUF0, BUF1, BUF2, BUF3}BUFFER ;
# 310 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
extern inline void __attribute__((always_inline)) PMPSetAddress(unsigned int addrs)
{
    while((PMMODEbits.BUSY));
    PMADDR = addrs;
}
# 391 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
extern inline unsigned int __attribute__((always_inline)) PMPMasterRead(void)
{
 while((PMMODEbits.BUSY));
 return(PMDIN);
}
# 420 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterReadByteBlock(unsigned int addrs, unsigned int bytes, unsigned char* pDest);
# 445 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterReadWordBlock(unsigned int addrs, unsigned int words, unsigned short* pDest);
# 472 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
extern inline void __attribute__((always_inline)) PMPMasterWrite(unsigned short value)
{
 while((PMMODEbits.BUSY));
 PMDIN = value;
}
# 501 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterWriteByteBlock(unsigned int addrs, unsigned int bytes, unsigned char* source);
# 526 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterWriteWordBlock(unsigned int addrs, unsigned int words, unsigned short* source);
# 547 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
unsigned char PMPSlaveReadBuffer(BUFFER);
# 569 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPSlaveReadBuffers(unsigned char* pDest);
# 594 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPSlaveWriteBuffer(BUFFER, unsigned char value);
# 617 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPSlaveWriteBuffers(unsigned char* source);
# 61 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 1 3
# 46 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/SPI_Port_Mappings.h" 1 3
# 47 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/Ethernet_Port_Mappings.h" 1 3
# 48 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 2 3
# 843 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
typedef enum {




        IOPORT_B,


        IOPORT_C,


        IOPORT_D,


        IOPORT_E,


        IOPORT_F,


        IOPORT_G,

    IOPORT_NUM
    }IoPortId;
# 890 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsDigitalIn(IoPortId portId, unsigned int inputs);
# 914 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsDigitalOut(IoPortId portId, unsigned int outputs);
# 938 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsAnalogIn(IoPortId portId, unsigned int inputs);
# 962 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsAnalogOut(IoPortId portId, unsigned int outputs);
# 986 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTResetPins(IoPortId portId, unsigned int pins);
# 1004 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
unsigned int PORTRead(IoPortId portId);
# 1024 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
unsigned int PORTReadBits(IoPortId portId, unsigned int bits);
# 1042 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTWrite(IoPortId portId, unsigned int bits);
# 1062 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetBits(IoPortId portId, unsigned int bits);
# 1082 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTClearBits(IoPortId portId, unsigned int bits);
# 1102 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTToggleBits(IoPortId portId, unsigned int bits);
# 62 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/power.h" 1 3
# 60 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/power.h" 3
void __attribute__((nomips16)) PowerSaveSleep(void);
# 78 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/power.h" 3
void __attribute__((nomips16)) PowerSaveIdle(void);
# 63 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/reset.h" 1 3
# 45 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/reset.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/lock.h" 1 3
# 46 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/reset.h" 2 3
# 140 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/reset.h" 3
void __attribute__((noreturn)) SoftReset(void);
# 163 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/reset.h" 3
char isWU(void);
# 64 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 1 3
# 56 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
typedef union
{
 struct
 {
  unsigned char rsvd;
  unsigned char sec;
  unsigned char min;
  unsigned char hour;
 };
 unsigned char b[4];
 unsigned short w[2];
 unsigned long l;
}rtccTime;


typedef union
{
 struct
 {
  unsigned char wday;
  unsigned char mday;
  unsigned char mon;
  unsigned char year;
 };
 unsigned char b[4];
 unsigned short w[2];
 unsigned long l;
}rtccDate;


typedef enum
{
 RTCC_RPT_HALF_SEC,
 RTCC_RPT_SEC,
 RTCC_RPT_TEN_SEC,
 RTCC_RPT_MIN,
 RTCC_RPT_TEN_MIN,
 RTCC_RPT_HOUR,
 RTCC_RPT_DAY,
 RTCC_RPT_WEEK,
 RTCC_RPT_MON,
 RTCC_RPT_YEAR
}rtccRepeat;


typedef enum
{
 RTCC_CLK_ON,
 RTCC_SOSC_NRDY,
 RTCC_CLK_NRDY,
 RTCC_WR_DSBL,
}rtccRes;
# 136 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
rtccRes RtccInit(void);
# 175 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
rtccRes RtccOpen(unsigned long tm, unsigned long dt, int drift);
# 196 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccShutdown(void);
# 231 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetTime(unsigned long tm);
# 252 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetTime(void)
{
 unsigned int t0, t1;
 do
 {
  t0=RTCTIME;
  t1=RTCTIME;
 }while(t0!=t1);
 return t0;
}
# 293 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetDate(unsigned long dt);
# 314 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetDate(void)
{
 unsigned int d0, d1;
 do
 {
  d0=RTCDATE;
  d1=RTCDATE;
 }while(d0!=d1);

 return d0;
}
# 363 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetTimeDate(unsigned long tm, unsigned long dt);
# 386 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccGetTimeDate(rtccTime* pTm, rtccDate* pDt)
{
 rtccTime t0;
 rtccDate d0;
 do
 {
  d0.l=RTCDATE;
  t0.l=RTCTIME;
  pTm->l=RTCTIME;
  pDt->l=RTCDATE;
 }while((d0.l!=pDt->l) || (t0.l!=pTm->l));
}
# 424 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmTime(unsigned long tm);
# 443 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetAlarmTime(void)
{
 return ALRMTIME;
}
# 474 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmDate(unsigned long dt);
# 493 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetAlarmDate(void)
{
 return ALRMDATE;
}
# 531 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmTimeDate(unsigned long tm, unsigned long dt);
# 552 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccGetAlarmTimeDate(rtccTime* pTm, rtccDate* pDt)
{
 pTm->l=ALRMTIME;
 pDt->l=ALRMDATE;
}
# 577 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
 void RtccAlarmEnable(void);
# 599 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
 void RtccAlarmDisable(void);
# 619 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlarmEnable(void)
{
 int isAlrm0, isAlrm1;
 do
 {
  isAlrm0=RTCALRMbits.ALRMEN;
  isAlrm1=RTCALRMbits.ALRMEN;
 }while(isAlrm0!=isAlrm1);

 return isAlrm0;
}
# 651 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccChimeEnable(void);
# 672 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccChimeDisable(void);
# 692 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetChimeEnable(void)
{
 int ch0, ch1;
 do
 {
  ch0=RTCALRMbits.CHIME;
  ch1=RTCALRMbits.CHIME;
 }while(ch0!=ch1);

 return ch0;

}
# 724 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmRpt(rtccRepeat rpt);
# 743 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ rtccRepeat __attribute__((always_inline)) RtccGetAlarmRpt(void)
{
 rtccRepeat r0, r1;

 do
 {
  r0=(rtccRepeat)(RTCALRM&0x00000F00);
  r1=(rtccRepeat)(RTCALRM&0x00000F00);
 }while(r0!=r1);

 return (rtccRepeat)(r0>>0x00000008);
}
# 781 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmRptCount(int rptCnt);
# 801 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlarmRptCount(void)
{
 int rpt0, rpt1;
 do
 {
  rpt0=RTCALRMbits.ARPT;
  rpt1=RTCALRMbits.ARPT;
 }while(rpt0!=rpt1);

 return rpt0;
}
# 834 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
int RtccWeekDay(int year, int month, int day);
# 860 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
rtccRes RtccEnable(void);
# 886 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
int RtccDisable(void);
# 905 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetEnable(void)
{
 return (RTCCON&(0x00008000|0x00000040));
}
# 928 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ rtccRes __attribute__((always_inline)) RtccGetClkStat(void)
{

 if( (!(OSCCONbits.SOSCEN)) || (!(OSCCONbits.SOSCRDY)) )
 {
  return RTCC_SOSC_NRDY;
 }
 else if(!(RTCCONbits.RTCCLKON))
 {
  return RTCC_CLK_NRDY;
 }

 return RTCC_CLK_ON;
}
# 974 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetCalibration(int drift);
# 995 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetCalibration(void)
{
 return RTCCONbits.CAL;
}
# 1022 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccWrEnable(int enable)
{
 if(enable)
 {
  do{int intStat, dmaSusp; intStat=INTDisableInterrupts(); dmaSusp=DmaSuspend(); SYSKEY = 0, SYSKEY = 0xAA996655, SYSKEY = 0x556699AA; (RTCCONSET=0x00000008); SYSKEY = 0x33333333; DmaResume(dmaSusp); INTRestoreInterrupts(intStat);}while(0);
 }
 else
 {
  RTCCONCLR=0x00000008;
 }
}
# 1052 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetWrEnable(void)
{
 return RTCCONbits.RTCWREN!=0;
}
# 1074 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetSync(void)
{
 return RTCCONbits.RTCSYNC!=0;
}
# 1097 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetHalfSecond(void)
{
 return RTCCONbits.HALFSEC!=0;
}
# 1119 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlrmSync(void)
{
 return RTCALRMbits.ALRMSYNC!=0;
}
# 1142 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccSelectPulseOutput(int secPulse)
{
 if(secPulse)
 {
  RTCCONSET=0x00000080;
 }
 else
 {
  RTCCONCLR=0x00000080;
 }
}
# 1177 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccAlarmPulseHigh(void);
# 1200 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccAlarmPulseLow(void);
# 1223 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccAlarmPulseToggle(void);
# 1243 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlarmPulse(void)
{
 return RTCALRMbits.PIV!=0;
}
# 1266 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccOutputEnable(int enable)
{
 if(enable)
 {
  RTCCONSET=0x00000001;
 }
 else
 {
  RTCCONCLR=0x00000001;
 }
}
# 1295 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetOutputEnable(void)
{
 return RTCCONbits.RTCOE!=0;
}
# 1310 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/rtcc_legacy.h" 1 3
# 1311 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/rtcc.h" 2 3
# 65 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi.h" 1 3
# 48 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 1 3
# 68 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
typedef enum
{





    SPI_CHANNEL2 = 2,



    SPI_CHANNEL3 = 3,



    SPI_CHANNEL4 = 4,


    SPI_CHANNELS = 0




                        + 1


                        + 1


                        + 1


                   +1



                   +1


}SpiChannel;
# 124 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
typedef enum
{

    SPI_OPEN_MSTEN = 0x00000020,
    SPI_OPEN_SMP_END = 0x00000200,
    SPI_OPEN_MSSEN = 0x10000000,
    SPI_OPEN_MSSEN_HIGH = 0x20000000,


    SPI_OPEN_SLVEN = 0,
    SPI_OPEN_SSEN = 0x00000080,


    SPI_OPEN_CKP_HIGH = 0x00000040,
    SPI_OPEN_CKE_REV = 0x00000100,


    SPI_OPEN_MODE8 = 0,
    SPI_OPEN_MODE16 = 0x00000400,
    SPI_OPEN_MODE32 = 0x00000800,


    SPI_OPEN_FRMEN = 0x80000000,
    SPI_OPEN_FSP_IN = 0x40000000,

    SPI_OPEN_FSP_HIGH = 0x20000000,
    SPI_OPEN_FSP_CLK1 = 0x00020000,

    SPI_OPEN_FSP_WIDE = 0x08000000,

    SPI_OPEN_FRM_CNT1 = (0 << 0x00000018),
    SPI_OPEN_FRM_CNT2 = (1 << 0x00000018),
    SPI_OPEN_FRM_CNT4 = (2 << 0x00000018),
    SPI_OPEN_FRM_CNT8 = (3 << 0x00000018),
    SPI_OPEN_FRM_CNT16 = (4 << 0x00000018),
    SPI_OPEN_FRM_CNT32 = (5 << 0x00000018),


    SPI_OPEN_ENHBUF = 0x00010000,

    SPI_OPEN_TBE_NOT_FULL = (3 << 0x00000002),
    SPI_OPEN_TBE_HALF_EMPTY = (2 << 0x00000002),
    SPI_OPEN_TBE_EMPTY = (1 << 0x00000002),
    SPI_OPEN_TBE_SR_EMPTY = (0 << 0x00000002),


    SPI_OPEN_RBF_FULL = (3 << 0x00000000),
    SPI_OPEN_RBF_HALF_FULL = (2 << 0x00000000),
    SPI_OPEN_RBF_NOT_EMPTY = (1 << 0x00000000),
    SPI_OPEN_RBF_EMPTY = (0 << 0x00000000),


    SPI_OPEN_DISSDO = 0x00001000,

    SPI_OPEN_SIDL = 0x00002000,
    SPI_OPEN_ON = 0x00008000,
}SpiOpenFlags;

typedef enum
{
    SPI_STAT_SPIRBF = 0x00000001,
    SPI_STAT_SPITBF = 0x00000002,
    SPI_STAT_SPITBE = 0x00000008,
    SPI_STAT_SPIRBE = 0x00000020,
    SPI_STAT_SPIROV = 0x00000040,
    SPI_STAT_SPISRMT = 0x00000080,
    SPI_STAT_SPITUR = 0x00000100,
    SPI_STAT_SPIBUSY = 0x00000800,
}SpiStatusFlags;
# 237 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
void SpiChnOpen(SpiChannel chn, SpiOpenFlags oFlags, unsigned int srcClkDiv);
# 260 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
void SpiChnClose(SpiChannel chn);
# 293 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
void SpiChnChangeMode(SpiChannel chn, int isMaster, int isFrmMaster, int waitBusy);
# 315 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnDataRdy(SpiChannel chn);
# 335 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnRxBuffEmpty(SpiChannel chn);
# 356 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnRxBuffFull(SpiChannel chn);
# 375 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnRxBuffCount(SpiChannel chn);
# 403 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
unsigned int SpiChnReadC(SpiChannel chn);
# 430 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
unsigned int SpiChnGetC(SpiChannel chn);
# 465 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
void SpiChnGetS(SpiChannel chn, unsigned int *pBuff, unsigned int nChars);
# 487 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnTxBuffEmpty(SpiChannel chn);
# 507 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnTxBuffFull(SpiChannel chn);
# 526 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnTxBuffCount(SpiChannel chn);
# 548 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
void SpiChnWriteC(SpiChannel chn, unsigned int data);
# 570 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
void SpiChnPutC(SpiChannel chn, unsigned int data);
# 594 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
void SpiChnPutS(SpiChannel chn, unsigned int* pBuff, unsigned int nChars);
# 616 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnGetRov(SpiChannel chn, int clear);
# 638 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnIsBusy(SpiChannel chn);
# 659 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnIsSrEmpty(SpiChannel chn);
# 684 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
int SpiChnGetTur(SpiChannel chn);
# 705 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
SpiStatusFlags SpiChnGetStatus(SpiChannel chn);
# 728 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
volatile void* SpiChnBuffer(SpiChannel chn);







typedef enum
{

    SPI_CONFIG_MSTEN = 0x00000020,
    SPI_CONFIG_SMP_END = 0x00000200,
    SPI_CONFIG_MSSEN = 0x10000000,
    SPI_CONFIG_MSSEN_HIGH = 0x20000000,


    SPI_CONFIG_SLVEN = 0,
    SPI_CONFIG_SSEN = 0x00000080,


    SPI_CONFIG_CKP_HIGH = 0x00000040,
    SPI_CONFIG_CKE_REV = 0x00000100,


    SPI_CONFIG_MODE8 = 0,
    SPI_CONFIG_MODE16 = 0x00000400,
    SPI_CONFIG_MODE32 = 0x00000800,


    SPI_CONFIG_FRMEN = 0x80000000,
    SPI_CONFIG_FSP_IN = 0x40000000,

    SPI_CONFIG_FSP_HIGH = 0x20000000,
    SPI_CONFIG_FSP_CLK1 = 0x00020000,

    SPI_CONFIG_FSP_WIDE = 0x08000000,

    SPI_CONFIG_FRM_CNT1 = (0 << 0x00000018),
    SPI_CONFIG_FRM_CNT2 = (1 << 0x00000018),
    SPI_CONFIG_FRM_CNT4 = (2 << 0x00000018),
    SPI_CONFIG_FRM_CNT8 = (3 << 0x00000018),
    SPI_CONFIG_FRM_CNT16 = (4 << 0x00000018),
    SPI_CONFIG_FRM_CNT32 = (5 << 0x00000018),


    SPI_CONFIG_ENHBUF = 0x00010000,

    SPI_CONFIG_TBE_NOT_FULL = (3 << 0x00000002),
    SPI_CONFIG_TBE_HALF_EMPTY = (2 << 0x00000002),
    SPI_CONFIG_TBE_EMPTY = (1 << 0x00000002),
    SPI_CONFIG_TBE_SR_EMPTY = (0 << 0x00000002),


    SPI_CONFIG_RBF_FULL = (3 << 0x00000000),
    SPI_CONFIG_RBF_HALF_FULL = (2 << 0x00000000),
    SPI_CONFIG_RBF_NOT_EMPTY = (1 << 0x00000000),
    SPI_CONFIG_RBF_EMPTY = (0 << 0x00000000),


    SPI_CONFIG_DISSDO = 0x00001000,

    SPI_CONFIG_SIDL = 0x00002000,
    SPI_CONFIG_ON = 0x00008000,
}SpiConfigFlags;
# 826 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
void SpiChnConfigure(SpiChannel chn, SpiConfigFlags config);
# 849 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
void SpiChnEnable(SpiChannel chn, int enable);
# 882 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
unsigned int SpiChnSetBitRate(SpiChannel chn, unsigned int srcClk, unsigned int spiClk);
# 904 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
void SpiChnSetBrg(SpiChannel chn, unsigned int brg);
# 923 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
extern __inline__ unsigned int __attribute__((always_inline)) SpiBrgVal(unsigned int srcClk, unsigned int spiClk)
{
    return (srcClk / (2 * spiClk)) - 1;
}
# 936 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 1 3
# 61 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef enum
{

 SPI_CON_MSTEN = 0x00000020,
 SPI_CON_SMP = 0x00000200,


 SPI_CON_SLVEN = 0,
 SPI_CON_SSEN = 0x00000080,


 SPI_CON_CKP = 0x00000040,
 SPI_CON_CKE = 0x00000100,


 SPI_CON_MODE8 = 0,
 SPI_CON_MODE16 = 0x00000400,
 SPI_CON_MODE32 = 0x00000800,


 SPI_CON_FRMEN = 0x80000000,
 SPI_CON_FRMSYNC = 0x40000000,

 SPI_CON_FRMPOL = 0x20000000,
 SPI_CON_SPIFE = 0x00020000,



 SPI_CON_DISSDO = 0x00001000,
 SPI_CON_SIDL = 0x00002000,
 SPI_CON_ON = 0x00008000,
}SpiCtrlFlags;
# 604 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef union
{
 struct
 {
     unsigned PPRE: 2;
     unsigned SPRE: 3;
     unsigned MSTEN: 1;
     unsigned CKP: 1;
     unsigned SSEN: 1;
     unsigned CKE: 1;
     unsigned SMP: 1;
     unsigned MODE16: 1;
     unsigned MODE32: 1;
     unsigned DISSDO: 1;
     unsigned: 17;
     unsigned FRMSYNC: 1;
  unsigned FRMEN: 1;
 };
 unsigned int w;
}SpiOpenConfig1;
# 678 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef union
{
 struct
 {
  unsigned: 6;
  unsigned SPIROV: 1;
  unsigned: 6;
  unsigned SIDL: 1;
  unsigned: 1;
  unsigned ON: 1;
  unsigned: 1;
  unsigned SPIFE: 1;
  unsigned: 11;
     unsigned FRMPOL: 1;
 };
 unsigned int w;
}SpiOpenConfig2;
# 721 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef union
{
 struct
 {
  unsigned ipl: 3;
  unsigned ispl: 2;
  unsigned fie: 1;
  unsigned txie: 1;
  unsigned rxie: 1;
 };
 unsigned int w;
}SpiConfigInt;
# 1223 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 void OpenSPI2(unsigned int config1, unsigned int config2 );
# 1468 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 unsigned int getcSPI2(void);
# 1521 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 unsigned int getsSPI2(unsigned int length, unsigned int *rdptr, unsigned int spi_data_wait);
# 1545 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
 void putsSPI2(unsigned int length, unsigned int *wrptr);
# 937 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi_5xx_6xx_7xx.h" 2 3
# 49 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/spi.h" 2 3
# 66 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/system.h" 1 3
# 39 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/system.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/osc.h" 1 3
# 66 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/osc.h" 3
void OSCConfig(unsigned long int source, unsigned long int mult, unsigned long int post, unsigned long int div);
# 168 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/osc.h" 3
extern inline void __attribute__((always_inline)) OSCSetPBDIV(unsigned int oscPbDiv)
{
 unsigned int dma_status;
 unsigned int int_status;
 __OSCCONbits_t oscBits;

 do{int_status=INTDisableInterrupts(); dma_status=DmaSuspend(); SYSKEY = 0, SYSKEY = 0xAA996655, SYSKEY = 0x556699AA;}while(0);

 oscBits.w=OSCCON;
 oscBits.PBDIV=0;
 oscBits.w|=oscPbDiv;
 OSCCON=oscBits.w;
 oscBits.w=OSCCON;

 do{SYSKEY = 0x33333333; DmaResume(dma_status); INTRestoreInterrupts(int_status);}while(0);
}
# 40 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/system.h" 2 3
# 76 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfigPB(unsigned int sys_clock)
{
    unsigned int pb_div;
    unsigned int pb_clock;

    pb_clock = sys_clock;

    if(sys_clock > 80000000)
    {
        pb_div=(1 << 0x00000013);
        pb_clock >>= 1;
    }
    else
    {
        pb_div=(0 << 0x00000013);
    }

    OSCSetPBDIV(pb_div);

    return pb_clock;
}
# 117 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/system.h" 3
extern inline void __attribute__((always_inline)) SYSTEMConfigWaitStates(unsigned int sys_clock)
{

    unsigned int wait_states;
    unsigned int int_status;



    wait_states = 0;

    while(sys_clock > 30000000)
    {
        wait_states++;
        sys_clock -= 30000000;
    }

    int_status=INTDisableInterrupts();
    (CHECON = (wait_states));
    INTRestoreInterrupts(int_status);


}
# 158 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfigWaitStatesAndPB(unsigned int sys_clock)
{

    unsigned int wait_states;

    unsigned int pb_clock;
    unsigned int int_status;

    pb_clock = SYSTEMConfigPB(sys_clock);





    wait_states = 0;

    while(sys_clock > 30000000)
    {
        wait_states++;
        sys_clock -= 30000000;
    }

    int_status=INTDisableInterrupts();
    (CHECON = (wait_states));
    INTRestoreInterrupts(int_status);



    return pb_clock;
}
# 207 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfigPerformance(unsigned int sys_clock)
{

    unsigned int pb_clk;

    unsigned int cache_status;

    unsigned int int_status;

    pb_clk = SYSTEMConfigWaitStatesAndPB(sys_clock);

    int_status=INTDisableInterrupts();

    (BMXCONCLR = 0x00000040);


    cache_status = CHECON;
    cache_status |= (3 << 0x00000004);
    (CHECON = (cache_status));
    CheKseg0CacheOn();


    INTRestoreInterrupts(int_status);

    return pb_clk;

}
# 259 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfig(unsigned int sys_clock, unsigned int flags)
{
    unsigned int pb_clk;
    unsigned int int_status;

    unsigned int cache_status;


    int_status=INTDisableInterrupts();

    (BMXCONCLR = 0x00000040);

    if(flags & 0x00000001)
    {
        SYSTEMConfigWaitStates(sys_clock);
    }

    if(flags & 0x00000002)
    {
        SYSTEMConfigPB(sys_clock);
    }



    if(flags & 0x00000004)
    {
        cache_status = CHECON;
        cache_status |= (3 << 0x00000004);
        (CHECON = (cache_status));
        CheKseg0CacheOn();
    }


    pb_clk = sys_clock;
    pb_clk >>= OSCCONbits.PBDIV;

    INTRestoreInterrupts(int_status);

    return pb_clk;

}
# 67 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/timer.h" 1 3
# 60 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/timer.h" 3
void __attribute__((nomips16)) OpenCoreTimer(unsigned int period);
# 78 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/timer.h" 3
 void __attribute__((nomips16)) UpdateCoreTimer(unsigned int period);
# 190 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/timer.h" 3
unsigned int __attribute__((nomips16)) ReadCoreTimer(void);
# 207 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/timer.h" 3
void __attribute__((nomips16)) WriteCoreTimer(unsigned int timer);
# 68 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 1 3
# 54 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/uart_legacy.h" 1 3
# 505 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/uart_legacy.h" 3
void putsUART1(const char* buffer);



void putsUART2(const char* buffer);
# 662 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/uart_legacy.h" 3
unsigned int getsUART1(unsigned int length, char* buffer, unsigned int uart_data_wait);



unsigned int getsUART2(unsigned int length, char* buffer, unsigned int uart_data_wait);
# 55 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 2 3
# 73 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
typedef struct
{
 volatile UINT reg;
 volatile UINT clr;
 volatile UINT set;
 volatile UINT inv;
}REG_SET;

typedef struct
{
 volatile REG_SET mode;
 volatile REG_SET sta;
 volatile REG_SET tx;
 volatile REG_SET rx;
 volatile REG_SET brg;
}UART_REGS;

extern UART_REGS * const uartReg[];
# 103 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{


    UART1 = 0,



    UART3A,



    UART2A,



    UART1B,



    UART3B,



    UART2B,


    UART_NUMBER_OF_MODULES

} UART_MODULE;
# 154 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_DISABLE = 0x00 ,


    UART_ENABLE = 0x80 ,




    UART_PERIPHERAL = 0x01 ,


    UART_RX = 0x02 ,


    UART_TX = 0x04


} UART_ENABLE_MODE;
# 236 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_ENABLE_HIGH_SPEED = 0x00000008 ,


    UART_INVERT_RECEIVE_POLARITY = 0x00000010 ,


    UART_ENABLE_LOOPBACK = 0x00000040 ,


    UART_ENABLE_WAKE_ON_START = 0x00000080 ,



    UART_ENABLE_PINS_BIT_CLOCK = 0x00000300 ,



    UART_ENABLE_PINS_CTS_RTS = 0x00000200 ,



    UART_ENABLE_PINS_RTS = 0x00000100 ,



    UART_ENABLE_PINS_TX_RX_ONLY = 0x00000000 ,




    UART_RTS_WHEN_RX_NOT_FULL = 0x00000000 ,




    UART_RTS_WHEN_TX_NOT_EMPTY = 0x00000800 ,


    UART_ENABLE_IRDA = 0x00001000 ,



    UART_ENABLE_STOP_ON_IDLE = 0x00002000 ,


    UART_INVERT_TRANSMIT_POLARITY = 0x20000000 ,





    UART_SUPPORT_IEEE_485 = 0x00000900

} UART_CONFIGURATION;
# 315 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_INTERRUPT_ON_TX_BUFFER_EMPTY = 0x8000 ,


    UART_INTERRUPT_ON_TX_DONE = 0x4000 ,



    UART_INTERRUPT_ON_TX_NOT_FULL = 0x0000 ,



    UART_INTERRUPT_ON_RX_FULL = 0x00C0 ,



    UART_INTERRUPT_ON_RX_3_QUARTER_FULL = 0x0080 ,



    UART_INTERRUPT_ON_RX_HALF_FULL = 0x0040 ,



    UART_INTERRUPT_ON_RX_NOT_EMPTY = 0x0000

} UART_FIFO_MODE;
# 365 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_DATA_SIZE_8_BITS = 0x0000 ,


    UART_DATA_SIZE_9_BITS = 0x0006 ,


    UART_PARITY_ODD = 0x0004 ,


    UART_PARITY_EVEN = 0x0002 ,


    UART_PARITY_NONE = 0x0000 ,


    UART_STOP_BITS_2 = 0x0001 ,


    UART_STOP_BITS_1 = 0x0000

} UART_LINE_CONTROL_MODE;
# 406 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_TRANSMITTER_NOT_FULL = 0x00000200 ,


    UART_TRANSMITTER_EMPTY = 0x00000100 ,


    UART_RECEIVER_IDLE = 0x00000010 ,


    UART_PARITY_ERROR = 0x00000008 ,




    UART_FRAMING_ERROR = 0x00000004 ,


    UART_OVERRUN_ERROR = 0x00000002 ,


    UART_DATA_READY = 0x00000001

} UART_LINE_STATUS;
# 449 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
typedef union
{

    struct
    {
        UINT16 data8bit : 8;
    };


    struct
    {
        UINT16 data9bit : 9;
    };

    UINT16 __data;
} UART_DATA;
# 506 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTEnable( UART_MODULE id, UART_ENABLE_MODE mode );
# 546 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTConfigure ( UART_MODULE id, UART_CONFIGURATION flags );
# 587 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTSetFifoMode ( UART_MODULE id, UART_FIFO_MODE mode );
# 631 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
UINT32 UARTSetDataRate ( UART_MODULE id, UINT32 sourceClock, UINT32 dataRate );
# 671 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
UINT32 UARTGetDataRate( UART_MODULE id, UINT32 sourceClock );
# 708 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTSetLineControl ( UART_MODULE id, UART_LINE_CONTROL_MODE mode );
# 751 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline UART_LINE_STATUS __attribute__((always_inline)) UARTGetLineStatus ( UART_MODULE id )
{
    return (UART_LINE_STATUS)(uartReg[id]->sta.reg & ((UART_TRANSMITTER_NOT_FULL | UART_TRANSMITTER_EMPTY | UART_RECEIVER_IDLE | UART_PARITY_ERROR | UART_FRAMING_ERROR | UART_OVERRUN_ERROR | UART_DATA_READY)));
}
# 790 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__ ((always_inline)) UARTTransmitterIsReady ( UART_MODULE id )
{
    return (BOOL)(!(uartReg[id]->sta.reg & 0x00000200));
}
# 833 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTSendDataByte ( UART_MODULE id, BYTE data )
{
    uartReg[id]->tx.reg = data;
}
# 876 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTSendData( UART_MODULE id, UART_DATA data )
{
    uartReg[id]->tx.reg = data.__data;
}
# 916 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__((always_inline)) UARTTransmissionHasCompleted ( UART_MODULE id )
{
    return (BOOL)(0x00000100 == (uartReg[id]->sta.reg & 0x00000100));
}
# 958 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__((always_inline)) UARTReceivedDataIsAvailable ( UART_MODULE id )
{
    return (BOOL)(0x00000001 == (uartReg[id]->sta.reg & 0x00000001));
}
# 997 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BYTE __attribute__((always_inline)) UARTGetDataByte ( UART_MODULE id )
{
    return (BYTE)uartReg[id]->rx.reg;
}
# 1036 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline UART_DATA __attribute__((always_inline)) UARTGetData ( UART_MODULE id )
{
    UART_DATA data;

    data.__data = uartReg[id]->rx.reg;

    return data;
}
# 1083 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTSetAddress ( UART_MODULE id, BYTE address, BOOL watch );
# 1128 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTWatchForAddress ( UART_MODULE id, BOOL watch );
# 1165 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTSendBreak ( UART_MODULE id )
{
    uartReg[id]->sta.set = 0x00000800;
}
# 1209 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTStartAutoDataRateDetect ( UART_MODULE id )
{
   uartReg[id]->mode.set = 0x00000020;
}
# 1250 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__((always_inline)) UARTDataRateDetected ( UART_MODULE id )
{
    return (BOOL)(!(uartReg[id]->mode.reg & 0x00000020));
}
# 69 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/wdt.h" 1 3
# 70 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 1 3
# 49 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdlib.h" 1 3
# 20 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 unsigned quot;
 unsigned rem;
} udiv_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 unsigned long quot;
 unsigned long rem;
} uldiv_t;

extern double atof(const char *);
extern long double _datof(const char *);
extern float strtof(const char *, char **);
extern long double strtod(const char *, char **);
extern long double _dstrtod(const char *, char **);
# 50 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdlib.h" 3
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);
extern long strtol(const char *, char **, int);
extern unsigned long strtoul(const char *, char **, int);

extern long long atoll(const char *);
extern long long strtoll(const char *, char **, int);
extern unsigned long long strtoull(const char *, char **, int);


extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);
# 76 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdlib.h" 3
extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

extern void abort(void);
extern void exit(int);
extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int __attribute__((weak)) system(const char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);
extern char * ltoa(char * buf, long val, int base);


extern char * ultoa(char * buf, unsigned long val, int base);
# 50 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 2 3
# 72 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_RES_OK,




    ETH_RES_NO_PACKET,


    ETH_RES_PACKET_QUEUED,




    ETH_RES_OUT_OF_MEMORY,


    ETH_RES_NO_DESCRIPTORS,


    ETH_RES_USPACE_ERR,


    ETH_RES_RX_SIZE_ERR,


    ETH_RES_RX_PKT_SPLIT_ERR,




    ETH_RES_NEGOTIATION_UNABLE,


    ETH_RES_NEGOTIATION_INACTIVE,


    ETH_RES_NEGOTIATION_NOT_STARTED,


    ETH_RES_NEGOTIATION_ACTIVE,


    ETH_RES_NEGOTIATION_LINKDOWN,




    ETH_RES_DTCT_ERR,



    ETH_RES_CPBL_ERR,


    ETH_RES_CFG_ERR,

} eEthRes;
# 164 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{



    ETH_OPEN_AUTO
                             = 0x1 ,


    ETH_OPEN_FDUPLEX
                             = 0x2 ,


    ETH_OPEN_HDUPLEX
                             = 0x4 ,


    ETH_OPEN_100
                             = 0x8 ,


    ETH_OPEN_10
                             = 0x10 ,




    ETH_OPEN_HUGE_PKTS
                             = 0x20 ,


    ETH_OPEN_MAC_LOOPBACK
                             = 0x40 ,


    ETH_OPEN_PHY_LOOPBACK
                             = 0x80 ,




    ETH_OPEN_MDIX_AUTO
                             = 0x100 ,


    ETH_OPEN_MDIX_NORM
                             = 0x0 ,


    ETH_OPEN_MDIX_SWAP
                             = 0x200 ,




    ETH_OPEN_RMII
                             = 0x400 ,


    ETH_OPEN_MII
                             = 0x000 ,



    ETH_OPEN_DEFAULT = (ETH_OPEN_AUTO|ETH_OPEN_FDUPLEX|ETH_OPEN_HDUPLEX|
                        ETH_OPEN_100|ETH_OPEN_10|ETH_OPEN_MDIX_AUTO)

} eEthOpenFlags;
# 247 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_LINK_ST_DOWN
                             = 0x0 ,


    ETH_LINK_ST_UP
                             = 0x1 ,


    ETH_LINK_ST_LP_NEG_UNABLE
                             = 0x2 ,


    ETH_LINK_ST_REMOTE_FAULT
                             = 0x4 ,


    ETH_LINK_ST_PDF
                             = 0x8 ,


    ETH_LINK_ST_LP_PAUSE
                             = 0x10 ,


    ETH_LINK_ST_LP_ASM_DIR
                             = 0x20 ,


    ETH_LINK_ST_NEG_TMO
                             = 0x1000 ,


    ETH_LINK_ST_NEG_FATAL_ERR
                             = 0x2000 ,

} eEthLinkStat;
# 298 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_ST_RXBUSY = 0x1 ,


    ETH_ST_TXBUSY = 0x2 ,


    ETH_ST_BUSY = 0x4 ,

} eEthStat;
# 321 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_CLOSE_GRACEFUL = 0x1 ,


    ETH_CLOSE_DEFAULT = (0)

} eEthCloseFlags;
# 341 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_MAC_PAUSE_TYPE_NONE = 0x0 ,


    ETH_MAC_PAUSE_TYPE_PAUSE = 0x1 ,


    ETH_MAC_PAUSE_TYPE_ASM_DIR = 0x2 ,




    ETH_MAC_PAUSE_TYPE_EN_TX = 0x4 ,


    ETH_MAC_PAUSE_TYPE_EN_RX = 0x8 ,


    ETH_MAC_PAUSE_ALL = (ETH_MAC_PAUSE_TYPE_PAUSE|ETH_MAC_PAUSE_TYPE_ASM_DIR|
                           ETH_MAC_PAUSE_TYPE_EN_TX|ETH_MAC_PAUSE_TYPE_EN_RX),


    ETH_MAC_PAUSE_CPBL_MASK = ETH_MAC_PAUSE_ALL

} eEthMacPauseType;
# 406 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthInit ( void );
# 439 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthClose ( eEthCloseFlags cFlags );
# 489 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMACOpen ( eEthOpenFlags oFlags, eEthMacPauseType pauseType );
# 523 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMACSetAddress ( unsigned char bAddress[6] );
# 556 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMACGetAddress ( unsigned char bAddress[6] );
# 587 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMACSetMaxFrame ( unsigned short maxFrmSz );
# 626 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef void* ( *pEthDcptAlloc )( size_t nitems, size_t size, void* param );
# 658 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef void ( *pEthDcptFree ) ( void* ptr, void* param );
# 675 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_DCPT_TYPE_RX = 0x1 ,


    ETH_DCPT_TYPE_TX = 0x2 ,


    ETH_DCPT_TYPE_ALL = (ETH_DCPT_TYPE_RX|ETH_DCPT_TYPE_TX)

}eEthDcptType;
# 700 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef struct
{

    int dIdle;




    int dUnack;





    int dQueued;

}sEthDcptQuery;
# 729 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{


    ETH_BUFF_FLAG_RX_STICKY = 0x1 ,






    ETH_BUFF_FLAG_RX_UNACK = 0x2 ,
} eEthBuffFlags;
# 797 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthDescriptorsPoolAdd ( int nDescriptors, eEthDcptType dType, pEthDcptAlloc fAlloc, void* fParam );
# 846 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthDescriptorsPoolRemove ( int nDescriptors, eEthDcptType dType, pEthDcptFree fFree, void* fParam );
# 891 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthDescriptorsPoolCleanUp ( eEthDcptType dType, pEthDcptFree fFree, void* fParam );
# 924 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthDescriptorsGetSize ( eEthDcptType dType );
# 972 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthDescriptorsQuery ( eEthDcptType dType, sEthDcptQuery *pQuery );
# 1015 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthDescriptorsGetRxUnack ( void );


extern __inline__ int __attribute__((always_inline)) EthDescriptorsGetRxUnack( void )
{
    return ETHSTATbits.BUFCNT;
}
# 1074 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void* EthDescriptorGetBuffer ( void *pDcpt );
# 1143 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthRxBuffersAppend ( void *ppBuff[], int nBuffs, eEthBuffFlags rxFlags );
# 1183 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthRxSetBufferSize ( int rxBuffSize );
# 1204 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef struct _tag_sEthPktDcpt
{

    struct _tag_sEthPktDcpt *next;


    void *pBuff;


    unsigned short int nBytes;

} __attribute__ ((__packed__)) sEthPktDcpt;
# 1231 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef union
{
    struct
    {

        unsigned short totTxBytes;


        unsigned txCtrl : 1;


        unsigned txPause : 1;


        unsigned txBPres : 1;


        unsigned txVLAN : 1;

        unsigned : 12;


        unsigned short bCount;


        unsigned collCount : 4;


        unsigned crcError : 1;


        unsigned lenError : 1;


        unsigned lenRange : 1;


        unsigned txDone : 1;


        unsigned mcast : 1;


        unsigned bcast : 1;


        unsigned defer : 1;


        unsigned excDefer : 1;


        unsigned maxColl : 1;


        unsigned lateColl : 1;


        unsigned giant : 1;


        unsigned underrun : 1;

    }__attribute__ ((__packed__));


    unsigned long long w;

} sEthTxPktStat;
# 1315 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef union
{
    struct
    {

        unsigned pktChecksum :16;

        unsigned : 8;


        unsigned runtPkt : 1;


        unsigned notMeUcast : 1;


        unsigned htMatch : 1;


        unsigned magicMatch : 1;


        unsigned pmMatch : 1;


        unsigned uMatch : 1;


        unsigned bMatch : 1;


        unsigned mMatch : 1;


        unsigned rxBytes :16;


        unsigned prevIgnore : 1;


        unsigned prevDV : 1;


        unsigned prevCarrier : 1;


        unsigned rxCodeViol : 1;


        unsigned crcError : 1;


        unsigned lenError : 1;


        unsigned lenRange : 1;


        unsigned rxOk : 1;


        unsigned mcast : 1;


        unsigned bcast : 1;


        unsigned dribble : 1;


        unsigned rxCtrl : 1;


        unsigned rxPause : 1;


        unsigned rxCodeErr : 1;


        unsigned rxVLAN : 1;

        unsigned : 1;

    }__attribute__ ((__packed__));


    unsigned long long w;

} sEthRxPktStat;
# 1442 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef void ( *pEthBuffAck ) ( void *pPktBuff, int buffIx, void* param );
# 1491 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthTxSendBuffer ( const void *pBuff, unsigned short int nBytes );
# 1545 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthTxSendPacket ( const sEthPktDcpt *pPkt );
# 1593 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthTxGetBufferStatus ( const void *pBuff, const sEthTxPktStat **pTxStat );
# 1638 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthTxGetPacketStatus(const sEthPktDcpt* pPkt, const sEthTxPktStat** pTxStat);


extern __inline__ eEthRes __attribute__((always_inline)) EthTxGetPacketStatus(const sEthPktDcpt* pPkt, const sEthTxPktStat** pTxStat)
{
    return EthTxGetBufferStatus(pPkt?pPkt->pBuff:0, pTxStat);
}
# 1709 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthTxAcknowledgeBuffer ( const void *pBuff, pEthBuffAck ackFnc, void* fParam );
# 1765 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthTxAcknowledgePacket(const sEthPktDcpt* pPkt, pEthBuffAck ackFnc, void* fParam );


extern __inline__ eEthRes __attribute__((always_inline)) EthTxAcknowledgePacket(const sEthPktDcpt* pPkt, pEthBuffAck ackFnc, void* fParam )
{
    return EthTxAcknowledgeBuffer(pPkt?pPkt->pBuff:0, ackFnc, fParam);
}
# 1842 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthRxGetBuffer ( void **ppBuff, const sEthRxPktStat **pRxStat );
# 1920 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthRxGetPacket ( sEthPktDcpt *pPkt, int *pnBuffs, const sEthRxPktStat **pRxStat );
# 1982 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthRxAcknowledgeBuffer ( const void *pBuff, pEthBuffAck ackFnc, void* fParam );
# 2035 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthRes EthRxAcknowledgePacket ( const sEthPktDcpt* pPkt, pEthBuffAck ackFnc, void* fParam );


extern __inline__ eEthRes __attribute__((always_inline)) EthRxAcknowledgePacket(const sEthPktDcpt* pPkt, pEthBuffAck ackFnc, void* fParam )
{
    return EthRxAcknowledgeBuffer(pPkt?pPkt->pBuff:0, ackFnc, fParam);
}
# 2075 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthStat EthStatusGet ( void );
# 2090 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_FC_AUTO = 0,


    ETH_FC_SOFTWARE

} eEthFc;
# 2138 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthFCSetPauseValue ( unsigned int pauseBytes );
# 2199 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthFCEnable ( eEthFc fcType, int enable );
# 2239 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthFCSetRxWMark ( int fullWM, int emptyWM );
# 2264 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_FILT_CRC_ERR_ACCEPT
                             = 0x00000080 ,


    ETH_FILT_RUNT_ACCEPT
                             = 0x00000020 ,


    ETH_FILT_CRC_ERR_REJECT
                             = 0x00000040 ,


    ETH_FILT_RUNT_REJECT
                             = 0x00000010 ,


    ETH_FILT_ME_UCAST_ACCEPT
                             = 0x00000008 ,


    ETH_FILT_NOTME_UCAST_ACCEPT
                             = 0x00000004 ,


    ETH_FILT_MCAST_ACCEPT
                             = 0x00000002 ,


    ETH_FILT_BCAST_ACCEPT
                             = 0x00000001 ,


    ETH_FILT_HTBL_ACCEPT
                             = 0x00008000 ,


    ETH_FILT_MAGICP_ACCEPT
                             = 0x00004000 ,



    ETH_FILT_ALL_FILTERS = ETH_FILT_CRC_ERR_ACCEPT | ETH_FILT_RUNT_ACCEPT |
                               ETH_FILT_CRC_ERR_REJECT | ETH_FILT_RUNT_REJECT |
                               ETH_FILT_ME_UCAST_ACCEPT | ETH_FILT_NOTME_UCAST_ACCEPT |
                               ETH_FILT_MCAST_ACCEPT | ETH_FILT_BCAST_ACCEPT |
                               ETH_FILT_HTBL_ACCEPT | ETH_FILT_MAGICP_ACCEPT

} eEthRxFilters;
# 2331 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_FILT_PMATCH_ACCEPT = 1,


    ETH_FILT_PMATCH_ME_UCAST_ACCEPT,


    ETH_FILT_PMATCH_NOTME_UCAST_ACCEPT,


    ETH_FILT_PMATCH_MCAST_ACCEPT,


    ETH_FILT_PMATCH_NOT_MCAST_ACCEPT,


    ETH_FILT_PMATCH_BCAST_ACCEPT,


    ETH_FILT_PMATCH_NOT_BCAST_ACCEPT,



    ETH_FILT_PMATCH_HTBL_ACCEPT,


    ETH_FILT_PMATCH_MAGICP_ACCEPT,



    ETH_FILT_PMATCH_INVERT = 0x80000000

} eEthPMatchMode;
# 2406 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthRxFiltersSet ( eEthRxFilters rxFilters );
# 2439 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthRxFiltersClr ( eEthRxFilters rxFilters );
# 2480 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthRxFiltersWrite ( eEthRxFilters rxFilters );
# 2512 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthRxFiltersHTSet ( unsigned long long htable );
# 2554 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthRxFiltersPMSet ( eEthPMatchMode mode, unsigned long long matchMask,
                         unsigned int matchOffs, unsigned int matchChecksum );
# 2586 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthRxFiltersPMClr ( void );
# 2602 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_EV_RXOVFLOW
                             = 0x00000001 ,


    ETH_EV_RXBUFNA
                             = 0x00000002 ,


    ETH_EV_TXABORT
                             = 0x00000004 ,


    ETH_EV_TXDONE
                             = 0x00000008 ,


    ETH_EV_RXACT
                             = 0x00000020 ,


    ETH_EV_PKTPEND
                             = 0x00000040 ,


    ETH_EV_RXDONE
                             = 0x00000080 ,


    ETH_EV_FWMARK
                             = 0x00000100 ,


    ETH_EV_EWMARK
                             = 0x00000200 ,


    ETH_EV_RXBUSERR
                             = 0x00002000 ,


    ETH_EV_TXBUSERR
                             = 0x00004000 ,


    ETH_EV_ALL = (ETH_EV_RXOVFLOW | ETH_EV_RXBUFNA | ETH_EV_TXABORT |
                      ETH_EV_TXDONE | ETH_EV_RXACT | ETH_EV_PKTPEND |
                      ETH_EV_RXDONE | ETH_EV_FWMARK | ETH_EV_EWMARK |
                      ETH_EV_RXBUSERR | ETH_EV_TXBUSERR)
} eEthEvents;
# 2687 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthEventsEnableSet ( eEthEvents eEvents );
# 2721 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthEventsEnableClr ( eEthEvents eEvents );
# 2756 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthEventsEnableWrite ( eEthEvents eEvents );
# 2788 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthEvents EthEventsEnableGet ( void );
# 2829 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthEventsClr ( eEthEvents eEvents );


extern __inline__ void __attribute__((always_inline)) EthEventsClr(eEthEvents eEvents)
{
    ETHIRQCLR=eEvents;
}
# 2867 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
eEthEvents EthEventsGet ( void );


extern __inline__ eEthEvents __attribute__((always_inline)) EthEventsGet(void)
{
    return (eEthEvents)ETHIRQ;
}
# 2912 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthStatRxOvflCnt ( void );
# 2951 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthStatRxOkCnt ( void );
# 2990 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthStatRxFcsErrCnt ( void );
# 3028 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthStatRxAlgnErrCnt ( void );
# 3064 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthStatTxOkCnt ( void );
# 3101 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthStatTxSColCnt ( void );
# 3138 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthStatTxMColCnt( void );
# 3178 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMIIMConfig ( unsigned int hostClock, unsigned int miimClock );
# 3221 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMIIMReadStart ( unsigned int rIx, unsigned int phyAdd );
# 3259 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
unsigned short EthMIIMReadResult ( void );
# 3306 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMIIMWriteStart ( unsigned int rIx, unsigned int phyAdd, unsigned short wData );
# 3349 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMIIMScanStart ( unsigned int rIx, unsigned int phyAdd );
# 3389 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
unsigned short EthMIIMScanResult ( void );
# 3428 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMIIMScanStop ( void );


extern __inline__ void __attribute__((always_inline)) EthMIIMScanStop(void)
{
 EMACxMCMD=0;
}
# 3473 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthMIIMScanValid ( void );


extern __inline__ int __attribute__((always_inline)) EthMIIMScanValid(void)
{
    return EMACxMINDbits.NOTVALID==0;
}
# 3520 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
int EthMIIMBusy ( void );


extern __inline__ int __attribute__((always_inline)) EthMIIMBusy(void)
{
    return EMACxMINDbits.MIIMBUSY!=0;
}
# 3542 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_CONFIG_MANFC
                             = 0x00000010 ,


    ETH_CONFIG_AUTOFC
                             = 0x00000080 ,


    ETH_CONFIG_RXEN
                             = 0x00000100 ,


    ETH_CONFIG_TXRTS
                             = 0x00000200 ,


    ETH_CONFIG_SIDL
                             = 0x00002000 ,


    ETH_CONFIG_ON
                             = 0x00008000

} eEthConfigFlags;
# 3601 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthEnable ( int enable );
# 3635 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthConfig ( eEthConfigFlags cFlags );
# 3669 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthConfigSetFlags ( eEthConfigFlags cFlags );
# 3703 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthConfigClrFlags ( eEthConfigFlags cFlags );
# 3740 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthConfigTxStAddress ( void *address );
# 3777 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthConfigRxStAddress ( void *address );
# 3817 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthAckRxDcpt ( void );


extern __inline__ void __attribute__((always_inline)) EthAckRxDcpt(void)
{
    ETHCON1SET=0x00000001;
}
# 3842 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_MAC_CONFIG1_RXEN
                             = 0x00000001 ,


    ETH_MAC_CONFIG1_PASS_ALL
                             = 0x00000002 ,


    ETH_MAC_CONFIG1_RX_PAUSE
                             = 0x00000004 ,


    ETH_MAC_CONFIG1_TX_PAUSE
                             = 0x00000008 ,


    ETH_MAC_CONFIG1_LOOPBACK
                             = 0x00000010 ,


    ETH_MAC_CONFIG1_RESET_TFUN
                             = 0x00000100 ,


    ETH_MAC_CONFIG1_RESET_TMCS
                             = 0x00000200 ,


    ETH_MAC_CONFIG1_RESET_RFUN
                             = 0x00000400 ,


    ETH_MAC_CONFIG1_RESET_RMCS
                             = 0x00000800 ,


    ETH_MAC_CONFIG1_RESET_SIM
                             = 0x00004000 ,


    ETH_MAC_CONFIG1_RESET_MAC
                             = 0x00008000

} eEthMACConfig1Flags;
# 3907 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_MAC_CONFIG2_FDUPLEX
                             = 0x00000001 ,


    ETH_MAC_CONFIG2_LEN_CHECK
                             = 0x00000002 ,


    ETH_MAC_CONFIG2_HUGE_FRAME
                             = 0x00000004 ,


    ETH_MAC_CONFIG2_DELAY_CRC
                             = 0x00000008 ,


    ETH_MAC_CONFIG2_CRC_ENABLE
                             = 0x00000010 ,



    ETH_MAC_CONFIG2_PAD_ENABLE
                             = 0x00000020 ,


    ETH_MAC_CONFIG2_VLAN_PAD
                             = 0x00000040 ,



    ETH_MAC_CONFIG2_AUTO_PAD
                             = 0x00000080 ,


    ETH_MAC_CONFIG2_PURE_PRE
                             = 0x00000100 ,


    ETH_MAC_CONFIG2_LONG_PRE
                             = 0x00000200 ,



    ETH_MAC_CONFIG2_NO_BACKOFF
                             = 0x00001000 ,



    ETH_MAC_CONFIG2_BP_NO_BACKOFF
                             = 0x00002000 ,


    ETH_MAC_CONFIG2_EXCESS_DEFER
                             = 0x00004000 ,

} eEthMACConfig2Flags;
# 3981 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
typedef enum
{

    ETH_MAC_CONFIG_SUPP_RMII_RESET
                             = 0x00000800 ,


    ETH_MAC_CONFIG_SUPP_RMII_SPEED
                             = 0x00000100

} eEthMACConfigSuppFlags;
# 4031 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMACConfig ( eEthMACConfig1Flags c1Flags, eEthMACConfig2Flags c2Flags,
                    eEthMACConfigSuppFlags sFlags );
# 4073 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMACConfigSetFlags ( eEthMACConfig1Flags c1Flags, eEthMACConfig2Flags c2Flags,
                            eEthMACConfigSuppFlags sFlags );
# 4115 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMACConfigClrFlags ( eEthMACConfig1Flags c1Flags, eEthMACConfig2Flags c2Flags,
                            eEthMACConfigSuppFlags sFlags );
# 4151 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMACConfigB2BIpGap ( unsigned int ipGap );
# 4195 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMACConfigNB2BIpGap ( unsigned int ipgr1, unsigned int ipgr2 );
# 4241 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
void EthMACConfigCollWinRetry ( unsigned int collWin, unsigned int retMax );
# 4251 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 1 3
# 66 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
typedef enum
{
    MAC_PAUSE_TYPE_NONE = 0x0,

    MAC_PAUSE_TYPE_PAUSE = 0x1,

    MAC_PAUSE_TYPE_ASM_DIR = 0x2,

    MAC_PAUSE_TYPE_EN_TX = 0x4,

    MAC_PAUSE_TYPE_EN_RX = 0x8,

    MAC_PAUSE_ALL = (MAC_PAUSE_TYPE_PAUSE|MAC_PAUSE_TYPE_ASM_DIR|
                           MAC_PAUSE_TYPE_EN_TX|MAC_PAUSE_TYPE_EN_RX),

    MAC_PAUSE_CPBL_MASK = MAC_PAUSE_ALL

} eMacPauseType;
# 109 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
void EthMIIMInit(unsigned int hostClock, unsigned int miimClock, eEthOpenFlags oFlags, int isRmii);
# 149 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
unsigned short EthMIIMReadReg ( unsigned int rIx, unsigned int phyAdd );
# 191 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
void EthMIIMWriteReg ( unsigned int rIx, unsigned int phyAdd, unsigned short wData );
# 234 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
void EthMIIMWriteRegWait ( unsigned int rIx, unsigned int phyAdd, unsigned short wData );
# 272 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
unsigned short EthMIIMScanRead ( void );
# 308 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
void EthMIIMScanStopWait ( void );
# 346 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
typedef void* ( *pEthDcptAllocF )( size_t nitems, size_t size );
# 377 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
typedef void ( *pEthDcptFreeF ) ( void* ptr );
# 428 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
int EthDescriptorsAdd ( int nDescriptors, eEthDcptType dType, pEthDcptAllocF fAlloc );
# 476 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
int EthDescriptorsRemove ( int nDescriptors, eEthDcptType dType, pEthDcptFreeF fFree );
# 519 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
void EthDescriptorsCleanUp ( eEthDcptType dType, pEthDcptFreeF fFree );
# 553 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
typedef void ( *pEthPktAckF ) ( void *pPktBuff, int buffIx );
# 610 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
eEthRes EthTxAckBuffer ( const void *pBuff, pEthPktAckF ackFnc );
# 662 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
eEthRes EthTxAckPacket(const sEthPktDcpt* pPkt, pEthPktAckF ackFnc);

extern __inline__ eEthRes __attribute__((always_inline)) EthTxAckPacket(const sEthPktDcpt* pPkt, pEthPktAckF ackFnc)
{
    return EthTxAckBuffer(pPkt?pPkt->pBuff:0, ackFnc);
}
# 720 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
eEthRes EthRxAckBuffer ( const void *pBuff, pEthPktAckF ackFnc );
# 770 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/legacy/eth_legacy.h" 3
eEthRes EthRxAckPacket ( const sEthPktDcpt* pPkt, pEthPktAckF ackFnc );

extern __inline__ eEthRes __attribute__((always_inline)) EthRxAckPacket(const sEthPktDcpt* pPkt, pEthPktAckF ackFnc)
{
    return EthRxAckBuffer(pPkt?pPkt->pBuff:0, ackFnc);
}
# 4252 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/eth.h" 2 3
# 71 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 1 3
# 76 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{

    CAN1,



    CAN2,


    CAN_NUMBER_OF_MODULES

}CAN_MODULE;
# 103 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_CHANNEL0,
 CAN_CHANNEL1,
 CAN_CHANNEL2,
 CAN_CHANNEL3,
 CAN_CHANNEL4,
 CAN_CHANNEL5,
 CAN_CHANNEL6,
 CAN_CHANNEL7,
 CAN_CHANNEL8,
 CAN_CHANNEL9,
 CAN_CHANNEL10,
 CAN_CHANNEL11,
 CAN_CHANNEL12,
 CAN_CHANNEL13,
 CAN_CHANNEL14,
 CAN_CHANNEL15,
 CAN_CHANNEL16,
 CAN_CHANNEL17,
 CAN_CHANNEL18,
 CAN_CHANNEL19,
 CAN_CHANNEL20,
 CAN_CHANNEL21,
 CAN_CHANNEL22,
 CAN_CHANNEL23,
 CAN_CHANNEL24,
 CAN_CHANNEL25,
 CAN_CHANNEL26,
 CAN_CHANNEL27,
 CAN_CHANNEL28,
 CAN_CHANNEL29,
 CAN_CHANNEL30,
 CAN_CHANNEL31,
 CAN_ALL_CHANNELS


}CAN_CHANNEL;
# 155 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{


 CAN_NORMAL_OPERATION,



 CAN_DISABLE,




 CAN_LOOPBACK,




 CAN_LISTEN_ONLY,



 CAN_CONFIGURATION,



 CAN_LISTEN_ALL_MESSAGES = 7

}CAN_OP_MODE;
# 205 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_RX_CHANNEL_NOT_EMPTY = 0x1,
 CAN_RX_CHANNEL_HALF_FULL = 0x2,
 CAN_RX_CHANNEL_FULL = 0x4,
 CAN_RX_CHANNEL_OVERFLOW = 0x8,
 CAN_RX_CHANNEL_ANY_EVENT = 0xF,
 CAN_TX_CHANNEL_EMPTY = 0x100,
 CAN_TX_CHANNEL_HALF_EMPTY = 0x200,
 CAN_TX_CHANNEL_NOT_FULL = 0x400,
 CAN_TX_CHANNEL_ANY_EVENT = 0x700

}CAN_CHANNEL_EVENT;
# 230 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_BIT_1TQ,
 CAN_BIT_2TQ,
 CAN_BIT_3TQ,
 CAN_BIT_4TQ,
 CAN_BIT_5TQ,
 CAN_BIT_6TQ,
 CAN_BIT_7TQ,
 CAN_BIT_8TQ

}CAN_BIT_TQ;
# 258 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{


 CAN_BIT_TQ phaseSeg2Tq;



 CAN_BIT_TQ phaseSeg1Tq;



 CAN_BIT_TQ propagationSegTq;





 BOOL phaseSeg2TimeSelect;





 BOOL sample3Time;



 CAN_BIT_TQ syncJumpWidth;

}CAN_BIT_CONFIG;
# 301 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_CHANNEL0_EVENT,
 CAN_CHANNEL1_EVENT,
 CAN_CHANNEL2_EVENT,
 CAN_CHANNEL3_EVENT,
 CAN_CHANNEL4_EVENT,
 CAN_CHANNEL5_EVENT,
 CAN_CHANNEL6_EVENT,
 CAN_CHANNEL7_EVENT,
 CAN_CHANNEL8_EVENT,
 CAN_CHANNEL9_EVENT,
 CAN_CHANNEL10_EVENT,
 CAN_CHANNEL11_EVENT,
 CAN_CHANNEL12_EVENT,
 CAN_CHANNEL13_EVENT,
 CAN_CHANNEL14_EVENT,
 CAN_CHANNEL15_EVENT,
 CAN_CHANNEL16_EVENT,
 CAN_CHANNEL17_EVENT,
 CAN_CHANNEL18_EVENT,
 CAN_CHANNEL19_EVENT,
 CAN_CHANNEL20_EVENT,
 CAN_CHANNEL21_EVENT,
 CAN_CHANNEL22_EVENT,
 CAN_CHANNEL23_EVENT,
 CAN_CHANNEL24_EVENT,
 CAN_CHANNEL25_EVENT,
 CAN_CHANNEL26_EVENT,
 CAN_CHANNEL27_EVENT,
 CAN_CHANNEL28_EVENT,
 CAN_CHANNEL29_EVENT,
 CAN_CHANNEL30_EVENT,
 CAN_CHANNEL31_EVENT,
 CAN_NO_EVENT = 0x40,
 CAN_ERROR_EVENT,
 CAN_WAKEUP_EVENT,
 CAN_RX_CHANNEL_OVERFLOW_EVENT,
 CAN_ADDRESS_ERROR_EVENT,
 CAN_BUS_BANDWIDTH_ERROR,
 CAN_TIMESTAMP_TIMER_EVENT,
 CAN_MODE_CHANGE_EVENT,
 CAN_INVALID_MESSAGE_RECEIVED_EVENT

}CAN_EVENT_CODE;
# 357 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_FILTER0,
 CAN_FILTER1,
 CAN_FILTER2,
 CAN_FILTER3,
 CAN_FILTER4,
 CAN_FILTER5,
 CAN_FILTER6,
 CAN_FILTER7,
 CAN_FILTER8,
 CAN_FILTER9,
 CAN_FILTER10,
 CAN_FILTER11,
 CAN_FILTER12,
 CAN_FILTER13,
 CAN_FILTER14,
 CAN_FILTER15,
 CAN_FILTER16,
 CAN_FILTER17,
 CAN_FILTER18,
 CAN_FILTER19,
 CAN_FILTER20,
 CAN_FILTER21,
 CAN_FILTER22,
 CAN_FILTER23,
 CAN_FILTER24,
 CAN_FILTER25,
 CAN_FILTER26,
 CAN_FILTER27,
 CAN_FILTER28,
 CAN_FILTER29,
 CAN_FILTER30,
 CAN_FILTER31,




    CAN_NUMBER_OF_FILTERS


}CAN_FILTER;
# 410 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_FILTER_MASK0,
 CAN_FILTER_MASK1,
 CAN_FILTER_MASK2,
 CAN_FILTER_MASK3,




    CAN_NUMBER_OF_FILTER_MASKS

}CAN_FILTER_MASK;
# 436 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_EID,
 CAN_SID

}CAN_ID_TYPE;
# 458 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_TX_RTR_ENABLED,
 CAN_TX_RTR_DISABLED

}CAN_TX_RTR;
# 479 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_RX_DATA_ONLY,
 CAN_RX_FULL_RECEIVE

}CAN_RX_DATA_MODE;
# 502 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_FILTER_MASK_IDE_TYPE,
 CAN_FILTER_MASK_ANY_TYPE

}CAN_FILTER_MASK_TYPE;
# 523 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_LOWEST_PRIORITY,
 CAN_LOW_MEDIUM_PRIORITY,
 CAN_HIGH_MEDIUM_PRIORITY,
 CAN_HIGHEST_PRIORITY

}CAN_TXCHANNEL_PRIORITY;
# 544 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_DNET_FILTER_DISABLE,
 CAN_DNET_FILTER_SIZE_1_BIT,
    CAN_DNET_FILTER_SIZE_2_BIT,
    CAN_DNET_FILTER_SIZE_3_BIT,
 CAN_DNET_FILTER_SIZE_4_BIT,
 CAN_DNET_FILTER_SIZE_5_BIT,
 CAN_DNET_FILTER_SIZE_6_BIT,
 CAN_DNET_FILTER_SIZE_7_BIT,
 CAN_DNET_FILTER_SIZE_8_BIT,
 CAN_DNET_FILTER_SIZE_9_BIT,
 CAN_DNET_FILTER_SIZE_10_BIT,
 CAN_DNET_FILTER_SIZE_11_BIT,
 CAN_DNET_FILTER_SIZE_12_BIT,
 CAN_DNET_FILTER_SIZE_13_BIT,
 CAN_DNET_FILTER_SIZE_14_BIT,
 CAN_DNET_FILTER_SIZE_15_BIT,
 CAN_DNET_FILTER_SIZE_16_BIT,
 CAN_DNET_FILTER_SIZE_17_BIT,
 CAN_DNET_FILTER_SIZE_18_BIT,

}CAN_DNET_FILTER_SIZE;
# 584 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{


 CAN_TX_EVENT = 0x1,



 CAN_RX_EVENT = 0x2,




 CAN_TIMESTAMP_TIMER_OVERFLOW_EVENT = 0x4,




 CAN_OPERATION_MODE_CHANGE_EVENT = 0x8,



    CAN_RX_OVERFLOW_EVENT = 0x800,




 CAN_SYSTEM_ERROR_EVENT = 0x1000,



 CAN_BUS_ERROR_EVENT = 0x2000,




 CAN_BUS_ACTIVITY_WAKEUP_EVENT = 0x4000,



 CAN_INVALID_RX_MESSAGE_EVENT = 0x8000

}CAN_MODULE_EVENT;
# 643 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{

 CAN_TX_RX_WARNING_STATE = 0x10000,


 CAN_RX_WARNING_STATE = 0x20000,


 CAN_TX_WARNING_STATE = 0x40000,


 CAN_RX_BUS_PASSIVE_STATE = 0x80000,


    CAN_TX_BUS_PASSIVE_STATE = 0x100000,


 CAN_TX_BUS_OFF_STATE = 0x200000

}CAN_ERROR_STATE;
# 680 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{


 CAN_STOP_IN_IDLE = 0x2000,



 CAN_RX_TIMESTAMP = 0x100000,



 CAN_WAKEUP_BUS_FILTER = 0x400000

}CAN_MODULE_FEATURES;
# 710 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
 CAN_CHANNEL0_MASK = 0x00000001,
 CAN_CHANNEL1_MASK = 0x00000002,
 CAN_CHANNEL2_MASK = 0x00000004,
 CAN_CHANNEL3_MASK = 0x00000008,
 CAN_CHANNEL4_MASK = 0x00000010,
 CAN_CHANNEL5_MASK = 0x00000020,
 CAN_CHANNEL6_MASK = 0x00000040,
 CAN_CHANNEL7_MASK = 0x00000080,
 CAN_CHANNEL8_MASK = 0x00000100,
 CAN_CHANNEL9_MASK = 0x00000200,
 CAN_CHANNEL10_MASK = 0x00000400,
 CAN_CHANNEL11_MASK = 0x00000800,
 CAN_CHANNEL12_MASK = 0x00001000,
 CAN_CHANNEL13_MASK = 0x00002000,
 CAN_CHANNEL14_MASK = 0x00004000,
 CAN_CHANNEL15_MASK = 0x00008000,
 CAN_CHANNEL16_MASK = 0x00010000,
 CAN_CHANNEL17_MASK = 0x00020000,
 CAN_CHANNEL18_MASK = 0x00040000,
 CAN_CHANNEL19_MASK = 0x00080000,
 CAN_CHANNEL20_MASK = 0x00100000,
 CAN_CHANNEL21_MASK = 0x00200000,
 CAN_CHANNEL22_MASK = 0x00400000,
 CAN_CHANNEL23_MASK = 0x00800000,
 CAN_CHANNEL24_MASK = 0x01000000,
 CAN_CHANNEL25_MASK = 0x02000000,
 CAN_CHANNEL26_MASK = 0x04000000,
 CAN_CHANNEL27_MASK = 0x08000000,
 CAN_CHANNEL28_MASK = 0x10000000,
 CAN_CHANNEL29_MASK = 0x20000000,
 CAN_CHANNEL30_MASK = 0x40000000,
 CAN_CHANNEL31_MASK = 0x80000000,
 CAN_ANYCHANNEL_MASK = 0xFFFFFFFF

}CAN_CHANNEL_MASK;
# 761 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{

 CAN_TX_CHANNEL_TRANSMITTING = 0x8,


 CAN_TX_CHANNEL_ERROR = 0x10,


 CAN_TX_CHANNEL_ARBITRATION_LOST = 0x20

}CAN_TX_CHANNEL_CONDITION;
# 785 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{


 unsigned SID:11;
 unsigned :21;
}CAN_TX_MSG_SID;
# 805 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{



 unsigned DLC:4;


 unsigned RB0:1;
 unsigned :3;


 unsigned RB1:1;



 unsigned RTR:1;



 unsigned EID:18;



 unsigned IDE:1;




 unsigned SRR:1;
 unsigned :2;

}CAN_MSG_EID;
# 857 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef union {

 struct
 {

  CAN_TX_MSG_SID msgSID;


  CAN_MSG_EID msgEID;


  BYTE data[8];
 };



 UINT32 messageWord[4];

}CANTxMessageBuffer;
# 888 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{

 unsigned SID:11;


 unsigned FILHIT:5;



 unsigned CMSGTS:16;

}CAN_RX_MSG_SID;
# 920 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef union {

 struct
 {

  CAN_RX_MSG_SID msgSID;


  CAN_MSG_EID msgEID;



  BYTE data[8];
 };



    BYTE dataOnlyMsgData[8];



 UINT32 messageWord[4];

}CANRxMessageBuffer;
# 991 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANAssignMemoryBuffer(CAN_MODULE module, void * buffer, UINT sizeInBytes);
# 1029 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetOperatingMode(CAN_MODULE module, CAN_OP_MODE opmode);
# 1064 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_OP_MODE CANGetOperatingMode(CAN_MODULE module);
# 1111 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableFeature (CAN_MODULE module, CAN_MODULE_FEATURES features, BOOL enable);
# 1154 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANDeviceNetFilter(CAN_MODULE module, CAN_DNET_FILTER_SIZE dncnt);
# 1195 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetTimeStampValue(CAN_MODULE module, UINT value);
# 1230 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANGetTimeStampValue(CAN_MODULE module);
# 1271 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetTimeStampPrescalar(CAN_MODULE module, UINT prescalar);
# 1313 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableModule(CAN_MODULE module, BOOL enable );
# 1375 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetSpeed (CAN_MODULE module, const CAN_BIT_CONFIG * canBitConfig,
                        UINT32 sysClock, UINT32 canBusSpeed );
# 1422 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsActive (CAN_MODULE module);
# 1467 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANResetChannel(CAN_MODULE module, CAN_CHANNEL channel );
# 1509 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsChannelReset (CAN_MODULE module, CAN_CHANNEL channel );
# 1592 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANUpdateChannel(CAN_MODULE module, CAN_CHANNEL channel);
# 1645 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableModuleEvent(CAN_MODULE module, CAN_MODULE_EVENT flags, BOOL enable);
# 1685 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANClearModuleEvent (CAN_MODULE module, CAN_MODULE_EVENT flags);
# 1741 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableChannelEvent(CAN_MODULE module, CAN_CHANNEL channel,CAN_CHANNEL_EVENT flags, BOOL enable);
# 1795 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_MODULE_EVENT CANGetModuleEvent (CAN_MODULE module);
# 1852 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_EVENT_CODE CANGetPendingEventCode (CAN_MODULE module);
# 1912 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_CHANNEL_MASK CANGetAllChannelEventStatus (CAN_MODULE module);
# 1973 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_CHANNEL_MASK CANGetAllChannelOverflowStatus (CAN_MODULE module);
# 2046 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_CHANNEL_EVENT CANGetChannelEvent (CAN_MODULE module, CAN_CHANNEL channel);
# 2087 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANClearChannelEvent(CAN_MODULE module, CAN_CHANNEL channel, CAN_CHANNEL_EVENT events);
# 2150 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureChannelForTx(CAN_MODULE module,CAN_CHANNEL channel, UINT channelSize,
                             CAN_TX_RTR rtren, CAN_TXCHANNEL_PRIORITY priority);
# 2199 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANAbortPendingTx(CAN_MODULE module, CAN_CHANNEL channel );
# 2239 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANFlushTxChannel(CAN_MODULE module, CAN_CHANNEL channel);
# 2299 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_TX_CHANNEL_CONDITION CANGetTxChannelCondition(CAN_MODULE module, CAN_CHANNEL channel);
# 2363 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CANTxMessageBuffer * CANGetTxMessageBuffer(CAN_MODULE module, CAN_CHANNEL channel);
# 2420 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsTxAborted(CAN_MODULE module, CAN_CHANNEL channel);
# 2514 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CANRxMessageBuffer * CANGetRxMessage(CAN_MODULE module, CAN_CHANNEL channel);
# 2576 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureChannelForRx(CAN_MODULE module, CAN_CHANNEL channel, UINT32 channelSize,
        CAN_RX_DATA_MODE dataOnly);
# 2657 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureFilterMask(CAN_MODULE module, CAN_FILTER_MASK mask, UINT32 maskbits,
                                CAN_ID_TYPE idType, CAN_FILTER_MASK_TYPE mide);
# 2714 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureFilter(CAN_MODULE module, CAN_FILTER filter, UINT32 id, CAN_ID_TYPE filterType);
# 2765 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableFilter(CAN_MODULE module, CAN_FILTER filter, BOOL enable);
# 2810 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_FILTER CANGetLatestFilterHit(CAN_MODULE module);
# 2873 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANLinkFilterToChannel(CAN_MODULE module, CAN_FILTER filter, CAN_FILTER_MASK mask, CAN_CHANNEL channel);
# 2916 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsFilterDisabled(CAN_MODULE module, CAN_FILTER filter);
# 2969 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANGetRxErrorCount(CAN_MODULE module);
# 3015 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANGetTxErrorCount(CAN_MODULE module);
# 3072 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_ERROR_STATE CANGetErrorState(CAN_MODULE module);
# 3103 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalModules(void);
# 3128 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalChannels(void);
# 3153 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalFilters(void);
# 3178 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalMasks(void);
# 72 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/plib.h" 2 3
# 112 "../Compiler.h" 2
# 50 "../uart2.c" 2
# 1 "../HardwareProfile.h" 1
# 51 "../uart2.c" 2
# 1 "../uart2.h" 1
# 65 "../uart2.h"
char UART2GetBaudError();
# 83 "../uart2.h"
char UART2GetChar();
# 100 "../uart2.h"
void UART2PutChar( char ch );
# 117 "../uart2.h"
void UART2Init();
# 135 "../uart2.h"
char UART2IsPressed();
# 151 "../uart2.h"
void UART2PrintString( char *str );
# 170 "../uart2.h"
void UART2PutDec( unsigned char dec );
# 189 "../uart2.h"
void UART2PutHex( int toPrint );
# 209 "../uart2.h"
void UART2PutHexWord( unsigned int toPrint );
void UART2PutHexDWord( unsigned long int toPrint );
# 229 "../uart2.h"
char UART2Char2Hex(char ch);
# 247 "../uart2.h"
char UART2Hex2Char(char hex);
# 265 "../uart2.h"
void UART2ClrError(void);
# 52 "../uart2.c" 2
# 117 "../uart2.c"
char UART2GetBaudError()
{




 return 0;
}
# 141 "../uart2.c"
char UART2GetChar()
{
    char Temp;
    while(IFS1bits.U2RXIF == 0);
    Temp = U2RXREG;
    IFS1bits.U2RXIF = 0;
    return Temp;
}
# 167 "../uart2.c"
void UART2Init()
{

    U2BRG = ((((80000000ul)/1)+(4/2*115200))/4/115200 -1);
    U2MODE = 0;
    U2MODEbits.BRGH = 1;
    U2STA = 0;
    U2MODEbits.UARTEN = 1;
    U2STAbits.UTXEN = 1;
    IFS1bits.U2RXIF = 0;


        U2STAbits.URXEN = 1;

}
# 199 "../uart2.c"
char UART2IsPressed()
{
    if(IFS1bits.U2RXIF == 1)
        return 1;
    return 0;
}
# 220 "../uart2.c"
void UART2PrintString( char *str )
{
    unsigned char c;

    while( (c = *str++) )
        UART2PutChar(c);
}
# 243 "../uart2.c"
void UART2PutChar( char ch )
{

    U2TXREG = ch;



    while(U2STAbits.TRMT == 0);

}
# 268 "../uart2.c"
void UART2PutDec(unsigned char dec)
{
    unsigned char res;
    unsigned char printed_already = 0;

    res = dec;

    if (res/100)
    {
        UART2PutChar( res/100 + '0' );
        printed_already = 1;
    }
    res = res - (res/100)*100;

    if ((res/10) || (printed_already == 1))
    {
        UART2PutChar( res/10 + '0' );
    }
    res = res - (res/10)*10;

    UART2PutChar( res + '0' );
}
# 306 "../uart2.c"
const unsigned char CharacterArray[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

void UART2PutHex( int toPrint )
{
    int printVar;

    printVar = toPrint;
    toPrint = (toPrint>>4) & 0x0F;
    UART2PutChar( CharacterArray[toPrint] );

    toPrint = printVar & 0x0F;
    UART2PutChar( CharacterArray[toPrint] );

    return;
}
# 337 "../uart2.c"
void UART2PutHexWord( unsigned int toPrint )
{
    unsigned int printVar;

    printVar = (toPrint>>12) & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    printVar = (toPrint>>8) & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    printVar = (toPrint>>4) & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    printVar = toPrint & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    return;
}

void UART2PutHexDWord( unsigned long toPrint )
{
    unsigned long printVar;

    printVar = (toPrint>>28) & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    printVar = (toPrint>>24) & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    printVar = (toPrint>>20) & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    printVar = (toPrint>>16) & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    printVar = (toPrint>>12) & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    printVar = (toPrint>>8) & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    printVar = (toPrint>>4) & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    printVar = toPrint & 0x0F;
    UART2PutChar( CharacterArray[printVar] );

    return;
}
# 405 "../uart2.c"
char UART2Char2Hex(char ch){

  if(ch > 102)
    return 0;


  if(ch > 96)
    return (ch-87);


  if(ch > 70)
    return 0;


  if(ch > 64)
    return (ch-55);


  if(ch > 57)
    return 0;


  if(ch > 47)
    return(ch-48);
  else

    return 0;
}
# 450 "../uart2.c"
char UART2Hex2Char(char hex){
char h;
  h = hex&0x0f;

  if(h>9)
    return (h+55);
  else
    return (h+48);
}
# 476 "../uart2.c"
void UART2ClrError(void){

    if(U2STAbits.OERR)
  U2STAbits.OERR = 0;
}
