	.file	1 "sim0.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed sim0.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/664612396/sim0.o -O1
 # options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
 # -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
 # -fdelayed-branch -fdelete-null-pointer-checks -fearly-inlining
 # -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
 # -fgcse-lm -fguess-branch-probability -fident -fif-conversion
 # -fif-conversion2 -finline -finline-functions-called-once
 # -fipa-pure-const -fipa-reference -fira-share-save-slots
 # -fira-share-spill-slots -fivopts -fkeep-static-consts
 # -fleading-underscore -fmath-errno -fmerge-constants
 # -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 # -fpcc-struct-return -fpeephole -fsched-critical-path-heuristic
 # -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
 # -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
 # -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fshow-column
 # -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
 # -fstrict-volatile-bitfields -ftoplevel-reorder -ftrapping-math
 # -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim
 # -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
 # -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
 # -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
 # -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-ter
 # -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
 # -fzero-initialized-in-bss -mbranch-likely -mcheck-zero-division
 # -mdivide-traps -mel -membedded-data -mexplicit-relocs -mextern-sdata
 # -mfused-madd -mgpopt -minterlink-mips16 -mjals -mlocal-sdata -mlong32
 # -mno-mips16 -mshared -msoft-float -msplit-addresses

 # Compiler executable checksum: cbb1061997676f59e035156ba46de89e

	.section	.text,code
	.align	2
	.globl	_mon_putc
	.set	nomips16
	.set	nomicromips
	.ent	_mon_putc
	.type	_mon_putc, @function
_mon_putc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	seb	$4,$4	 # c, c
	lui	$3,%hi(U2STA)	 # tmp231,
.L2:
	lw	$2,%lo(U2STA)($3)	 # D.28835,
	andi	$2,$2,0x100	 # tmp226, D.28835,
	beq	$2,$0,.L2	 #, tmp226,,
	lui	$2,%hi(U2TXREG)	 # tmp227,

	sw	$4,%lo(U2TXREG)($2)	 # c, U2TXREG
	lui	$3,%hi(U2STA)	 # tmp230,
.L3:
	lw	$2,%lo(U2STA)($3)	 # D.28838,
	andi	$2,$2,0x100	 # tmp229, D.28838,
	beq	$2,$0,.L3
	nop
	 #, tmp229,,
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	_mon_putc
	.size	_mon_putc, .-_mon_putc
	.align	2
	.globl	_mon_getc
	.set	nomips16
	.set	nomicromips
	.ent	_mon_getc
	.type	_mon_getc, @function
_mon_getc:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	beq	$4,$0,.L7	 #, canblock,,
	sw	$16,16($sp)	 #,

	lui	$2,%hi(uartReg+4)	 # tmp233,
	lw	$3,%lo(uartReg+4)($2)	 # D.28926, uartReg
.L8:
	lw	$2,16($3)	 # D.28920, D.28926_14->sta.reg
	andi	$2,$2,0x1	 # tmp234, D.28920,
	beq	$2,$0,.L8
	nop
	 #, tmp234,,
	lw	$16,48($3)	 # D.28925, D.28926_14->rx.reg
	seb	$16,$16	 # D.28821, D.28925
	jal	UART2PutChar	 #
	move	$4,$16	 #, D.28821

	j	.L12	 #
	move	$2,$16	 #, D.28821

.L7:
	lui	$2,%hi(uartReg+4)	 # tmp236,
	lw	$2,%lo(uartReg+4)($2)	 # D.28931, uartReg
	lw	$3,16($2)	 # D.28930, D.28931_20->sta.reg
	andi	$3,$3,0x1	 # tmp237, D.28930,
	beq	$3,$0,.L9	 #, tmp237,,
	li	$16,-1			# 0xffffffff	 # D.28821,

	lw	$16,48($2)	 # D.28935, D.28931_20->rx.reg
	andi	$16,$16,0x00ff	 # D.28821, D.28935
.L9:
	move	$2,$16	 #, D.28821
.L12:
	lw	$31,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	_mon_getc
	.size	_mon_getc, .-_mon_getc
	.align	2
	.globl	load_core
	.set	nomips16
	.set	nomicromips
	.ent	load_core
	.type	load_core, @function
load_core:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	move	$2,$0	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	load_core
	.size	load_core, .-load_core
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"#######  #####    ###            #####    ###   #     #\000"
	.align	2
.LC1:
	.ascii	"     #  #     #  #   #          #     #    #    ##   ##\000"
	.align	2
.LC2:
	.ascii	"    #   #     # #     #         #          #    # # # #\000"
	.align	2
.LC3:
	.ascii	"   #     #####  #     #  #####   #####     #    #  #  #\000"
	.align	2
.LC4:
	.ascii	"  #     #     # #     #               #    #    #     #\000"
	.align	2
.LC5:
	.ascii	" #      #     #  #   #          #     #    #    #     #\000"
	.align	2
.LC6:
	.ascii	"\012Release %s, %s\012\000"
	.align	2
.LC7:
	.ascii	"1.17\000"
	.align	2
.LC8:
	.ascii	"Copyright (C) 1987-2008 by Udo Munk\000"
	.align	2
.LC9:
	.ascii	"\012CPU speed is %d MHz\012\000"
	.align	2
.LC10:
	.ascii	"\012CPU speed is unlimited\000"
	.section	.text,code
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32	 #,,
	sw	$31,28($sp)	 #,
	sw	$17,24($sp)	 #,
	sw	$16,20($sp)	 #,
	li	$3,65535			# 0xffff	 # tmp259,
	lui	$2,%hi(AD1PCFG)	 # tmp258,
	sw	$3,%lo(AD1PCFG)($2)	 # tmp259, AD1PCFG
	lui	$2,%hi(DDPCON)	 # tmp260,
	lw	$3,%lo(DDPCON)($2)	 # tmp261,
	ins	$3,$0,3,1	 # tmp261,,,
	sw	$3,%lo(DDPCON)($2)	 # tmp261,
	jal	INTDisableInterrupts
	nop
	 #
	lui	$3,%hi(DMACON)	 # tmp262,
	lw	$3,%lo(DMACON)($3)	 # tmp263,
	ext	$3,$3,12,1	 # D.28957, tmp263,,
	bne	$3,$0,.L15	 #, D.28957,,
	lui	$5,%hi(SYSKEY)	 # tmp269,

	li	$4,4096			# 0x1000	 # tmp266,
	lui	$3,%hi(DMACONSET)	 # tmp265,
	sw	$4,%lo(DMACONSET)($3)	 # tmp266, DMACONSET
	lui	$5,%hi(DMACON)	 # tmp383,
.L16:
	lw	$3,%lo(DMACON)($5)	 # D.28956,
	andi	$3,$3,0x800	 # tmp268, D.28956,
	bne	$3,$0,.L16
	nop
	 #, tmp268,,
	j	.L36	 #
	lui	$5,%hi(SYSKEY)	 # tmp351,

.L15:
	sw	$0,%lo(SYSKEY)($5)	 #, SYSKEY
	li	$3,-1432813568			# 0xaa990000	 # tmp272,
	addiu	$3,$3,26197	 # tmp271, tmp272,
	sw	$3,%lo(SYSKEY)($5)	 # tmp271, SYSKEY
	li	$3,1432748032			# 0x55660000	 # tmp275,
	ori	$3,$3,0x99aa	 # tmp274, tmp275,
	sw	$3,%lo(SYSKEY)($5)	 # tmp274, SYSKEY
	lui	$4,%hi(OSCCON)	 # tmp276,
	lw	$3,%lo(OSCCON)($4)	 # OSCCON.34, OSCCON
	ins	$3,$0,19,2	 # oscBits,,,
	sw	$3,%lo(OSCCON)($4)	 # oscBits, OSCCON
	lw	$3,%lo(OSCCON)($4)	 # OSCCON.36, OSCCON
	li	$3,858980352			# 0x33330000	 # tmp281,
	addiu	$3,$3,13107	 # tmp280, tmp281,
	sw	$3,%lo(SYSKEY)($5)	 # tmp280, SYSKEY
	lui	$3,%hi(DMACON)	 # tmp282,
	lw	$3,%lo(DMACON)($3)	 # tmp283,
	ext	$3,$3,12,1	 # D.28958, tmp283,,
	bne	$3,$0,.L18	 #, D.28958,,
	li	$4,4096			# 0x1000	 # tmp286,

	lui	$3,%hi(DMACONSET)	 # tmp285,
	sw	$4,%lo(DMACONSET)($3)	 # tmp286, DMACONSET
	lui	$5,%hi(DMACON)	 # tmp384,
.L19:
	lw	$3,%lo(DMACON)($5)	 # D.28959,
	andi	$3,$3,0x800	 # tmp288, D.28959,
	bne	$3,$0,.L19
	nop
	 #, tmp288,,
.L18:
	jal	INTRestoreInterrupts	 #
	move	$4,$2	 #, int_status

	jal	INTDisableInterrupts	 #
	lui	$16,%hi(CHECON)	 # tmp289,

	li	$3,2			# 0x2	 # tmp290,
	sw	$3,%lo(CHECON)($16)	 # tmp290, CHECON
	jal	INTRestoreInterrupts	 #
	move	$4,$2	 #,

	jal	INTDisableInterrupts
	nop
	 #
	move	$17,$2	 # int_status,
	li	$3,64			# 0x40	 # tmp292,
	lui	$2,%hi(BMXCONCLR)	 # tmp291,
	sw	$3,%lo(BMXCONCLR)($2)	 # tmp292, BMXCONCLR
	lw	$2,%lo(CHECON)($16)	 # cache_status, CHECON
	ori	$2,$2,0x30	 # cache_status, cache_status,
	sw	$2,%lo(CHECON)($16)	 # cache_status, CHECON
	jal	CheKseg0CacheOn
	nop
	 #
	jal	INTRestoreInterrupts	 #
	move	$4,$17	 #, int_status

	jal	INTDisableInterrupts
	nop
	 #
	lui	$3,%hi(DMACON)	 # tmp295,
	lw	$3,%lo(DMACON)($3)	 # tmp296,
	ext	$3,$3,12,1	 # D.28968, tmp296,,
	bne	$3,$0,.L20	 #, D.28968,,
	lui	$5,%hi(SYSKEY)	 # tmp302,

	li	$4,4096			# 0x1000	 # tmp299,
	lui	$3,%hi(DMACONSET)	 # tmp298,
	sw	$4,%lo(DMACONSET)($3)	 # tmp299, DMACONSET
	lui	$5,%hi(DMACON)	 # tmp381,
.L21:
	lw	$3,%lo(DMACON)($5)	 # D.28969,
	andi	$3,$3,0x800	 # tmp301, D.28969,
	bne	$3,$0,.L21
	nop
	 #, tmp301,,
	j	.L37	 #
	lui	$5,%hi(SYSKEY)	 # tmp366,

.L20:
	sw	$0,%lo(SYSKEY)($5)	 #, SYSKEY
	li	$3,-1432813568			# 0xaa990000	 # tmp305,
	addiu	$3,$3,26197	 # tmp304, tmp305,
	sw	$3,%lo(SYSKEY)($5)	 # tmp304, SYSKEY
	li	$3,1432748032			# 0x55660000	 # tmp308,
	ori	$3,$3,0x99aa	 # tmp307, tmp308,
	sw	$3,%lo(SYSKEY)($5)	 # tmp307, SYSKEY
	lui	$4,%hi(OSCCON)	 # tmp309,
	lw	$3,%lo(OSCCON)($4)	 # OSCCON.34, OSCCON
	ins	$3,$0,19,2	 # oscBits,,,
	sw	$3,%lo(OSCCON)($4)	 # oscBits, OSCCON
	lw	$3,%lo(OSCCON)($4)	 # OSCCON.36, OSCCON
	li	$3,858980352			# 0x33330000	 # tmp314,
	addiu	$3,$3,13107	 # tmp313, tmp314,
	sw	$3,%lo(SYSKEY)($5)	 # tmp313, SYSKEY
	lui	$3,%hi(DMACON)	 # tmp315,
	lw	$3,%lo(DMACON)($3)	 # tmp316,
	ext	$3,$3,12,1	 # D.28967, tmp316,,
	bne	$3,$0,.L23	 #, D.28967,,
	lui	$3,%hi(DMACONSET)	 # tmp318,

	li	$4,4096			# 0x1000	 # tmp319,
	sw	$4,%lo(DMACONSET)($3)	 # tmp319, DMACONSET
	lui	$5,%hi(DMACON)	 # tmp382,
.L24:
	lw	$3,%lo(DMACON)($5)	 # D.28966,
	andi	$3,$3,0x800	 # tmp321, D.28966,
	bne	$3,$0,.L24
	nop
	 #, tmp321,,
.L23:
	jal	INTRestoreInterrupts	 #
	move	$4,$2	 #, int_status

	jal	INTEnableSystemMultiVectoredInt
	nop
	 #
	lui	$2,%hi(TRISB)	 # tmp322,
	lw	$3,%lo(TRISB)($2)	 # tmp323,
	ins	$3,$0,15,1	 # tmp323,,,
	sw	$3,%lo(TRISB)($2)	 # tmp323,
	li	$4,1			# 0x1	 #,
	jal	UARTConfigure	 #
	move	$5,$0	 #,

	li	$4,1			# 0x1	 #,
	jal	UARTSetLineControl	 #
	move	$5,$0	 #,

	li	$4,1			# 0x1	 #,
	li	$5,79953920			# 0x4c40000	 # tmp324,
	ori	$5,$5,0xb400	 #, tmp324,
	li	$6,65536			# 0x10000	 # tmp325,
	jal	UARTSetDataRate	 #
	ori	$6,$6,0xc200	 #, tmp325,

	li	$4,1			# 0x1	 #,
	jal	UARTEnable	 #
	li	$5,135			# 0x87	 #,

	jal	MDD_SDSPI_InitIO	 #
	lui	$16,%hi(.LC0)	 # tmp327,

	sw	$0,%gp_rel(f_flag)($28)	 #, f_flag
	sw	$0,%gp_rel(tmax)($28)	 #, tmax
	li	$4,10			# 0xa	 #,
	lui	$5,%hi(_iob+20)	 # tmp326,
	jal	fputc	 #
	addiu	$5,$5,%lo(_iob+20)	 #, tmp326,

	jal	puts	 #
	addiu	$4,$16,%lo(.LC0)	 #, tmp327,

	lui	$4,%hi(.LC1)	 # tmp328,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC1)	 #, tmp328,

	lui	$4,%hi(.LC2)	 # tmp329,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC2)	 #, tmp329,

	lui	$4,%hi(.LC3)	 # tmp330,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC3)	 #, tmp330,

	lui	$4,%hi(.LC4)	 # tmp331,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC4)	 #, tmp331,

	lui	$4,%hi(.LC5)	 # tmp332,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC5)	 #, tmp332,

	jal	puts	 #
	addiu	$4,$16,%lo(.LC0)	 #, tmp327,

	lui	$4,%hi(.LC6)	 # tmp334,
	addiu	$4,$4,%lo(.LC6)	 #, tmp334,
	lui	$5,%hi(.LC7)	 # tmp335,
	addiu	$5,$5,%lo(.LC7)	 #, tmp335,
	lui	$6,%hi(.LC8)	 # tmp336,
	jal	_printf_cdnopsuxX	 #
	addiu	$6,$6,%lo(.LC8)	 #, tmp336,

	lw	$5,%gp_rel(f_flag)($28)	 # f_flag.28, f_flag
	blezl	$5,.L25	 #, f_flag.28,
	lui	$4,%hi(.LC10)	 # tmp338,

	lui	$4,%hi(.LC9)	 # tmp337,
	jal	_printf_cdnopsuxX	 #
	addiu	$4,$4,%lo(.LC9)	 #, tmp337,

	j	.L38	 #
	lui	$4,%hi(_iob+20)	 # tmp339,

.L25:
	jal	puts	 #
	addiu	$4,$4,%lo(.LC10)	 #, tmp338,

	lui	$4,%hi(_iob+20)	 # tmp339,
.L38:
	jal	fflush	 #
	addiu	$4,$4,%lo(_iob+20)	 #, tmp339,

	lui	$4,%hi(ram)	 # tmp341,
	addiu	$4,$4,%lo(ram)	 # tmp340, tmp341,
	sw	$4,%gp_rel(PC)($28)	 # tmp340, PC
	sw	$4,%gp_rel(wrk_ram)($28)	 # tmp340, wrk_ram
	lui	$2,%hi(ram+65535)	 # tmp345,
	addiu	$2,$2,%lo(ram+65535)	 # tmp344, tmp345,
	sw	$2,%gp_rel(STACK)($28)	 # tmp344, STACK
	lw	$5,%gp_rel(m_flag)($28)	 #, m_flag
	jal	memset	 #
	li	$6,65536			# 0x10000	 #,

	lw	$2,%gp_rel(l_flag)($28)	 # l_flag, l_flag
	beq	$2,$0,.L27
	nop
	 #, l_flag,,
	jal	load_core
	nop
	 #
	bne	$2,$0,.L28	 #,,,
	li	$3,1			# 0x1	 # D.28786,

.L27:
	jal	int_on
	nop
	 #
	jal	init_io
	nop
	 #
	jal	mon
	nop
	 #
	jal	exit_io
	nop
	 #
	jal	int_off
	nop
	 #
	move	$3,$0	 # D.28786,
.L28:
	move	$2,$3	 #, D.28786
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

.L36:
	sw	$0,%lo(SYSKEY)($5)	 #, SYSKEY
	li	$3,-1432813568			# 0xaa990000	 # tmp354,
	addiu	$3,$3,26197	 # tmp353, tmp354,
	sw	$3,%lo(SYSKEY)($5)	 # tmp353, SYSKEY
	li	$3,1432748032			# 0x55660000	 # tmp357,
	ori	$3,$3,0x99aa	 # tmp356, tmp357,
	sw	$3,%lo(SYSKEY)($5)	 # tmp356, SYSKEY
	lui	$6,%hi(OSCCON)	 # tmp358,
	lw	$3,%lo(OSCCON)($6)	 # OSCCON.34, OSCCON
	ins	$3,$0,19,2	 # oscBits,,,
	sw	$3,%lo(OSCCON)($6)	 # oscBits, OSCCON
	lw	$3,%lo(OSCCON)($6)	 # OSCCON.36, OSCCON
	li	$3,858980352			# 0x33330000	 # tmp363,
	addiu	$3,$3,13107	 # tmp362, tmp363,
	sw	$3,%lo(SYSKEY)($5)	 # tmp362, SYSKEY
	li	$4,4096			# 0x1000	 # tmp365,
	lui	$3,%hi(DMACONCLR)	 # tmp364,
	sw	$4,%lo(DMACONCLR)($3)	 # tmp365, DMACONCLR
	j	.L18
	nop
	 #
.L37:
	sw	$0,%lo(SYSKEY)($5)	 #, SYSKEY
	li	$3,-1432813568			# 0xaa990000	 # tmp369,
	addiu	$3,$3,26197	 # tmp368, tmp369,
	sw	$3,%lo(SYSKEY)($5)	 # tmp368, SYSKEY
	li	$3,1432748032			# 0x55660000	 # tmp372,
	ori	$3,$3,0x99aa	 # tmp371, tmp372,
	sw	$3,%lo(SYSKEY)($5)	 # tmp371, SYSKEY
	lui	$6,%hi(OSCCON)	 # tmp373,
	lw	$3,%lo(OSCCON)($6)	 # OSCCON.34, OSCCON
	ins	$3,$0,19,2	 # oscBits,,,
	sw	$3,%lo(OSCCON)($6)	 # oscBits, OSCCON
	lw	$3,%lo(OSCCON)($6)	 # OSCCON.36, OSCCON
	li	$3,858980352			# 0x33330000	 # tmp378,
	addiu	$3,$3,13107	 # tmp377, tmp378,
	sw	$3,%lo(SYSKEY)($5)	 # tmp377, SYSKEY
	li	$4,4096			# 0x1000	 # tmp380,
	lui	$3,%hi(DMACONCLR)	 # tmp379,
	sw	$4,%lo(DMACONCLR)($3)	 # tmp380, DMACONCLR
	j	.L23
	nop
	 #
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	main
	.size	main, .-main
	.section	.rodata,code
	.align	2
.LC11:
	.ascii	"Can't Init FS\012\015\000"
	.align	2
.LC12:
	.ascii	"no input file given\000"
	.align	2
.LC13:
	.ascii	"R\000"
	.align	2
.LC14:
	.ascii	"can't open file %s\012\000"
	.align	2
.LC15:
	.ascii	"Too much to load, stopped at 0xffff\000"
	.align	2
.LC16:
	.ascii	"\012Loader statistics for file %s:\012\000"
	.align	2
.LC17:
	.ascii	"START : %04x\012\000"
	.align	2
.LC18:
	.ascii	"END   : %04x\012\000"
	.align	2
.LC19:
	.ascii	"LOADED: %04x\012\012\000"
	.align	2
.LC20:
	.ascii	"r\000"
	.align	2
.LC21:
	.ascii	"invalid checksum in hex record: %s\012\000"
	.section	.text,code
	.align	2
	.globl	load_file
	.set	nomips16
	.set	nomicromips
	.ent	load_file
	.type	load_file, @function
load_file:
	.frame	$sp,392,$31		# vars= 344, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-392	 #,,
	sw	$31,388($sp)	 #,
	sw	$21,384($sp)	 #,
	sw	$20,380($sp)	 #,
	sw	$19,376($sp)	 #,
	sw	$18,372($sp)	 #,
	sw	$17,368($sp)	 #,
	sw	$16,364($sp)	 #,
	jal	FSInit	 #
	move	$16,$4	 # s, s

	bnel	$2,$0,.L100	 #,,,
	lb	$3,0($16)	 # tmp417,* s

	lui	$4,%hi(.LC11)	 # tmp415,
	jal	_printf_cdnopsuxX	 #
	addiu	$4,$4,%lo(.LC11)	 #, tmp415,

	lb	$3,0($16)	 # tmp417,* s
.L100:
	lui	$2,%hi(_ctype)	 # tmp416,
	addiu	$2,$2,%lo(_ctype)	 # tmp419, tmp416,
	addu	$2,$3,$2	 # tmp418, tmp417, tmp419
	lb	$2,1($2)	 # tmp420, _ctype
	andi	$2,$2,0x88	 # tmp421, tmp420,
	beq	$2,$0,.L41	 #, tmp421,,
	lui	$3,%hi(_ctype)	 # tmp553,

	addiu	$3,$3,%lo(_ctype)	 # tmp554, tmp553,
	addiu	$16,$16,1	 # s, s,
.L101:
	lb	$2,0($16)	 # tmp423,* s
	addu	$2,$2,$3	 # tmp424, tmp423, tmp554
	lb	$2,1($2)	 # tmp426, _ctype
	andi	$2,$2,0x88	 # tmp427, tmp426,
	bnel	$2,$0,.L101	 #, tmp427,,
	addiu	$16,$16,1	 # s, s,

.L41:
	lb	$2,0($16)	 # D.28619,* s
	li	$4,44			# 0x2c	 # tmp428,
	beq	$2,$4,.L43	 #, D.28619, tmp428,
	addiu	$3,$sp,16	 # pfn,,

	li	$4,10			# 0xa	 # tmp429,
	beql	$2,$4,.L102	 #, D.28619, tmp429,
	sb	$0,0($3)	 #,* pfn

	beql	$2,$0,.L102	 #, D.28619,,
	sb	$0,0($3)	 #,* pfn

	li	$4,44			# 0x2c	 # tmp551,
	li	$5,10			# 0xa	 # tmp552,
	sb	$2,0($3)	 # D.28619,* pfn
.L103:
	addiu	$16,$16,1	 # s, s,
	lb	$2,0($16)	 # D.28619,* s
	beq	$2,$4,.L43	 #, D.28619, tmp551,
	addiu	$3,$3,1	 # pfn, pfn,

	beql	$2,$5,.L102	 #, D.28619, tmp552,
	sb	$0,0($3)	 #,* pfn

	bnel	$2,$0,.L103	 #, D.28619,,
	sb	$2,0($3)	 # D.28619,* pfn

.L43:
	sb	$0,0($3)	 #,* pfn
.L102:
	lb	$2,16($sp)	 # fn, fn
	bnel	$2,$0,.L45	 #, fn,,
	addiu	$4,$sp,16	 #,,

	lui	$4,%hi(.LC12)	 # tmp433,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC12)	 #, tmp433,

	j	.L46	 #
	li	$16,1			# 0x1	 # rc,

.L45:
	lui	$5,%hi(.LC13)	 # tmp434,
	jal	FSfopen	 #
	addiu	$5,$5,%lo(.LC13)	 #, tmp434,

	bne	$2,$0,.L47	 #, fd,,
	move	$17,$2	 # fd,

	lui	$4,%hi(.LC14)	 # tmp435,
	addiu	$4,$4,%lo(.LC14)	 #, tmp435,
	jal	_printf_cdnopsuxX	 #
	addiu	$5,$sp,16	 #,,

	j	.L46	 #
	li	$16,1			# 0x1	 # rc,

.L47:
	lb	$3,0($16)	 # tmp436,* s
	li	$2,44			# 0x2c	 # tmp437,
	bnel	$3,$2,.L48	 #, tmp436, tmp437,
	sw	$0,%gp_rel(wrk_ram)($28)	 #, wrk_ram

	jal	exatoi	 #
	addiu	$4,$16,1	 #, s,

	lui	$3,%hi(ram)	 # tmp440,
	addiu	$3,$3,%lo(ram)	 # tmp439, tmp440,
	addu	$2,$3,$2	 # tmp441, tmp439,
	sw	$2,%gp_rel(wrk_ram)($28)	 # tmp441, wrk_ram
.L48:
	addiu	$4,$sp,96	 #,,
	li	$5,5			# 0x5	 #,
	li	$6,1			# 0x1	 #,
	jal	FSfread	 #
	move	$7,$17	 #, fd

	lbu	$3,96($sp)	 # fileb, fileb
	li	$2,255			# 0xff	 # tmp444,
	bne	$3,$2,.L50	 #, fileb, tmp444,
	move	$4,$17	 #, fd

	move	$5,$0	 #,
	jal	FSfseek	 #
	move	$6,$0	 #,

	move	$4,$17	 #, fd
	addiu	$5,$sp,104	 #,,
	jal	read	 #
	li	$6,3			# 0x3	 #,

	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	bne	$2,$0,.L104	 #, wrk_ram,,
	lw	$5,%gp_rel(wrk_ram)($28)	 # wrk_ram.3, wrk_ram

	lbu	$3,106($sp)	 # fileb, fileb
	sll	$3,$3,8	 # tmp448, fileb,
	lbu	$2,105($sp)	 # fileb, fileb
	addu	$3,$3,$2	 # tmp450, tmp448, fileb
	lui	$2,%hi(ram)	 # tmp452,
	addiu	$2,$2,%lo(ram)	 # tmp451, tmp452,
	addu	$2,$2,$3	 # tmp453, tmp451, tmp450
	sw	$2,%gp_rel(wrk_ram)($28)	 # tmp453, wrk_ram
	lw	$5,%gp_rel(wrk_ram)($28)	 # wrk_ram.3, wrk_ram
.L104:
	lui	$19,%hi(ram+65535)	 # tmp455,
	addiu	$19,$19,%lo(ram+65535)	 # tmp454, tmp455,
	subu	$19,$19,$5	 # count, tmp454, wrk_ram.3
	move	$4,$17	 #, fd
	jal	read	 #
	move	$6,$19	 #, count

	move	$18,$2	 # readed,
	bne	$19,$2,.L52	 #, count, readed,
	move	$16,$0	 # rc,

	lui	$4,%hi(.LC15)	 # tmp456,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC15)	 #, tmp456,

	li	$16,1			# 0x1	 # rc,
.L52:
	jal	close	 #
	move	$4,$17	 #, fd

	lui	$4,%hi(.LC16)	 # tmp457,
	addiu	$4,$4,%lo(.LC16)	 #, tmp457,
	jal	_printf_cdnopsuxX	 #
	addiu	$5,$sp,16	 #,,

	lui	$17,%hi(ram)	 # tmp460,
	addiu	$17,$17,%lo(ram)	 # tmp459, tmp460,
	lui	$4,%hi(.LC17)	 # tmp462,
	addiu	$4,$4,%lo(.LC17)	 #, tmp462,
	lw	$5,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	jal	_printf_cdnopsuxX	 #
	subu	$5,$5,$17	 #, wrk_ram, tmp459

	nor	$17,$0,$17	 # tmp463, tmp459
	lw	$5,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	addu	$5,$5,$17	 # tmp466, wrk_ram, tmp463
	lui	$4,%hi(.LC18)	 # tmp469,
	addiu	$4,$4,%lo(.LC18)	 #, tmp469,
	jal	_printf_cdnopsuxX	 #
	addu	$5,$5,$18	 #, tmp466, readed

	lui	$4,%hi(.LC19)	 # tmp470,
	addiu	$4,$4,%lo(.LC19)	 #, tmp470,
	jal	_printf_cdnopsuxX	 #
	move	$5,$18	 #, readed

	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	j	.L46	 #
	sw	$2,%gp_rel(PC)($28)	 # wrk_ram, PC

.L50:
	jal	close	 #
	move	$4,$17	 #, fd

	addiu	$4,$sp,16	 #,,
	lui	$5,%hi(.LC20)	 # tmp472,
	jal	FSfopen	 #
	addiu	$5,$5,%lo(.LC20)	 #, tmp472,

	bne	$2,$0,.L88	 #, fd,,
	move	$17,$2	 # fd,

	lui	$4,%hi(.LC14)	 # tmp473,
	addiu	$4,$4,%lo(.LC14)	 #, tmp473,
	jal	_printf_cdnopsuxX	 #
	addiu	$5,$sp,16	 #,,

	j	.L46	 #
	li	$16,1			# 0x1	 # rc,

.L91:
	addiu	$5,$5,1	 # s, s,
.L105:
	lb	$2,0($5)	 # D.29055,* s
	addu	$3,$2,$16	 # tmp475, D.29055, tmp548
	lb	$3,1($3)	 # tmp477, _ctype
	andi	$3,$3,0x88	 # tmp478, tmp477,
	bnel	$3,$0,.L105	 #, tmp478,,
	addiu	$5,$5,1	 # s, s,

	li	$3,58			# 0x3a	 # tmp479,
.L99:
	bnel	$2,$3,.L106	 #, D.29055, tmp479,
	move	$18,$17	 # fd.20, fd

	lb	$10,1($5)	 # D.29066,
	li	$2,10			# 0xa	 # tmp480,
	beq	$10,$2,.L57	 #, D.29066, tmp480,
	addiu	$11,$5,1	 # s, s,

	move	$3,$10	 # D.29066, D.29066
	move	$2,$11	 # s, s
	move	$6,$0	 # chk,
	li	$9,10			# 0xa	 # tmp543,
	slt	$4,$3,58	 # tmp481, D.29066,
.L107:
	beql	$4,$0,.L58	 #, tmp481,,
	addiu	$3,$3,-55	 # tmp483, D.29066,

	addiu	$3,$3,-48	 # tmp482, D.29066,
	j	.L59	 #
	sll	$3,$3,4	 # iftmp.24, tmp482,

.L58:
	sll	$3,$3,4	 # iftmp.24, tmp483,
.L59:
	lb	$4,1($2)	 # D.29066,
	slt	$8,$4,58	 # tmp484, D.29066,
	addiu	$7,$4,-48	 # tmp533, D.29066,
	addiu	$4,$4,-55	 # tmp534, D.29066,
	movn	$4,$7,$8	 #, iftmp.25, tmp533, tmp484
	addu	$3,$3,$4	 # chk, iftmp.24, iftmp.25
	addu	$6,$6,$3	 # chk, chk, chk
	addiu	$2,$2,2	 # s, s,
	lb	$3,0($2)	 # D.29066,* s
	bnel	$3,$9,.L107	 #, D.29066, tmp543,
	slt	$4,$3,58	 # tmp481, D.29066,

	andi	$6,$6,0xff	 # tmp486, chk,
	beq	$6,$0,.L63	 #, tmp486,,
	slt	$2,$10,58	 # tmp488, D.29066,

	lui	$4,%hi(.LC21)	 # tmp487,
	jal	_printf_cdnopsuxX	 #
	addiu	$4,$4,%lo(.LC21)	 #, tmp487,

	j	.L46	 #
	li	$16,1			# 0x1	 # rc,

.L63:
	beql	$2,$0,.L64	 #, tmp488,,
	addiu	$10,$10,-55	 # tmp490, D.29066,

.L57:
	addiu	$10,$10,-48	 # tmp489, D.29066,
	j	.L65	 #
	sll	$10,$10,4	 # count, tmp489,

.L64:
	sll	$10,$10,4	 # count, tmp490,
.L65:
	lb	$2,1($11)	 # D.29055,
	slt	$5,$2,58	 # tmp491, D.29055,
	addiu	$4,$2,-48	 # tmp535, D.29055,
	addiu	$2,$2,-55	 # tmp536, D.29055,
	movz	$4,$2,$5	 #, tmp535, tmp536, tmp491
	addu	$5,$4,$10	 # count, iftmp.11, count
	beq	$5,$0,.L68
	nop
	 #, count,,
	lb	$3,2($11)	 # D.29055,
	slt	$4,$3,58	 # tmp492, D.29055,
	beq	$4,$0,.L69	 #, tmp492,,
	addiu	$2,$11,2	 # s, s,

	addiu	$6,$3,-48	 # tmp493, D.29055,
	j	.L70	 #
	sll	$6,$6,4	 # addr, tmp493,

.L69:
	addiu	$6,$3,-55	 # tmp494, D.29055,
	sll	$6,$6,4	 # addr, tmp494,
.L70:
	addiu	$4,$2,1	 # s, s,
	lb	$2,1($2)	 # D.29055,
	slt	$8,$2,58	 # tmp495, D.29055,
	addiu	$7,$2,-48	 # tmp537, D.29055,
	addiu	$2,$2,-55	 # tmp538, D.29055,
	movn	$2,$7,$8	 #, iftmp.13, tmp537, tmp495
	addu	$6,$2,$6	 # addr, iftmp.13, addr
	addiu	$2,$4,1	 # s, s,
	lb	$4,1($4)	 # D.29055,
	slt	$3,$4,58	 # tmp496, D.29055,
	beq	$3,$0,.L73	 #, tmp496,,
	sll	$6,$6,8	 # addr, addr,

	addiu	$3,$4,-48	 # tmp497, D.29055,
	j	.L74	 #
	sll	$3,$3,4	 # iftmp.14, tmp497,

.L73:
	addiu	$3,$4,-55	 # tmp498, D.29055,
	sll	$3,$3,4	 # iftmp.14, tmp498,
.L74:
	addu	$3,$3,$6	 # addr, iftmp.14, addr
	addiu	$4,$2,1	 # s, s,
	lb	$2,1($2)	 # D.29055,
	slt	$7,$2,58	 # tmp499, D.29055,
	addiu	$6,$2,-48	 # tmp539, D.29055,
	addiu	$2,$2,-55	 # tmp540, D.29055,
	movn	$2,$6,$7	 #, iftmp.15, tmp539, tmp499
	addu	$3,$3,$2	 # saddr, addr, iftmp.15
	slt	$2,$3,$19	 # tmp500, saddr, saddr
	movn	$19,$3,$2	 #, saddr, saddr, tmp500
	addiu	$21,$5,-1	 # tmp501, count,
	blez	$5,.L98	 #, count,
	addu	$21,$21,$3	 # eaddr, tmp501, saddr

	addiu	$4,$4,3	 # s, s,
	addu	$2,$20,$3	 # ivtmp.62, tmp550, saddr
	addu	$5,$20,$5	 # tmp504, tmp550, count
	addu	$9,$5,$3	 # D.29097, tmp504, saddr
	lb	$3,0($4)	 # D.29055,* s
.L108:
	slt	$5,$3,58	 # tmp507, D.29055,
	beql	$5,$0,.L78	 #, tmp507,,
	addiu	$3,$3,-55	 # tmp509, D.29055,

	addiu	$3,$3,-48	 # tmp508, D.29055,
	j	.L79	 #
	sll	$8,$3,4	 # data, tmp508,

.L78:
	sll	$8,$3,4	 # data, tmp509,
.L79:
	lb	$3,1($4)	 # D.29055,
	slt	$7,$3,58	 # tmp510, D.29055,
	addiu	$5,$3,-48	 # tmp541, D.29055,
	addiu	$6,$3,-55	 # tmp542, D.29055,
	move	$3,$5	 # iftmp.17, tmp541
	movz	$3,$6,$7	 #, iftmp.17, tmp542, tmp510
	addu	$3,$3,$8	 # tmp511, iftmp.17, data
	sb	$3,0($2)	 # tmp511, ram
	addiu	$2,$2,1	 # ivtmp.62, ivtmp.62,
	beq	$2,$9,.L98	 #, ivtmp.62, D.29097,
	addiu	$4,$4,2	 # s, s,

	j	.L108	 #
	lb	$3,0($4)	 # D.29055,* s

.L88:
	move	$21,$0	 # eaddr,
	li	$19,65535			# 0xffff	 # saddr,
	lui	$16,%hi(_ctype)	 # tmp547,
	addiu	$16,$16,%lo(_ctype)	 # tmp548, tmp547,
	lui	$20,%hi(ram)	 # tmp549,
	addiu	$20,$20,%lo(ram)	 # tmp550, tmp549,
.L98:
	move	$18,$17	 # fd.20, fd
.L106:
	addiu	$4,$sp,104	 #,,
	li	$5,256			# 0x100	 #,
	jal	fgets	 #
	move	$6,$17	 #, fd

	beq	$2,$0,.L68	 #,,,
	lb	$2,104($sp)	 # D.29055, buf

	addu	$3,$2,$16	 # tmp514, D.29055, tmp548
	lb	$3,1($3)	 # tmp516, _ctype
	andi	$3,$3,0x88	 # tmp517, tmp516,
	bne	$3,$0,.L91	 #, tmp517,,
	addiu	$5,$sp,104	 # s,,

	j	.L99	 #
	li	$3,58			# 0x3a	 # tmp479,

.L68:
	jal	fclose	 #
	move	$4,$18	 #, fd.20

	lui	$4,%hi(.LC16)	 # tmp518,
	addiu	$4,$4,%lo(.LC16)	 #, tmp518,
	jal	_printf_cdnopsuxX	 #
	addiu	$5,$sp,16	 #,,

	lui	$4,%hi(.LC17)	 # tmp519,
	addiu	$4,$4,%lo(.LC17)	 #, tmp519,
	jal	_printf_cdnopsuxX	 #
	move	$5,$19	 #, saddr

	lui	$4,%hi(.LC18)	 # tmp520,
	addiu	$4,$4,%lo(.LC18)	 #, tmp520,
	jal	_printf_cdnopsuxX	 #
	move	$5,$21	 #, eaddr

	addiu	$5,$21,1	 # tmp521, eaddr,
	lui	$4,%hi(.LC19)	 # tmp523,
	addiu	$4,$4,%lo(.LC19)	 #, tmp523,
	jal	_printf_cdnopsuxX	 #
	subu	$5,$5,$19	 #, tmp521, saddr

	lui	$2,%hi(ram)	 # tmp525,
	addiu	$2,$2,%lo(ram)	 # tmp524, tmp525,
	addu	$19,$2,$19	 # wrk_ram.22, tmp524, saddr
	sw	$19,%gp_rel(wrk_ram)($28)	 # wrk_ram.22, wrk_ram
	sw	$19,%gp_rel(PC)($28)	 # wrk_ram.22, PC
	move	$16,$0	 # rc,
.L46:
	move	$2,$16	 #, rc
	lw	$31,388($sp)	 #,
	lw	$21,384($sp)	 #,
	lw	$20,380($sp)	 #,
	lw	$19,376($sp)	 #,
	lw	$18,372($sp)	 #,
	lw	$17,368($sp)	 #,
	lw	$16,364($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,392	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	load_file
	.size	load_file, .-load_file
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
# Configuration word @ 0xbfc02ffc
	.section	.config_BFC02FFC, code
	.type	__config_BFC02FFC, @object
	.size	__config_BFC02FFC, 4
__config_BFC02FFC:
	.word	2147483639
# Configuration word @ 0xbfc02ff8
	.section	.config_BFC02FF8, code
	.type	__config_BFC02FF8, @object
	.size	__config_BFC02FF8, 4
__config_BFC02FF8:
	.word	4284538587
# Configuration word @ 0xbfc02ff4
	.section	.config_BFC02FF4, code
	.type	__config_BFC02FF4, @object
	.size	__config_BFC02FF4, 4
__config_BFC02FF4:
	.word	4294474201
# Configuration word @ 0xbfc02ff0
	.section	.config_BFC02FF0, code
	.type	__config_BFC02FF0, @object
	.size	__config_BFC02FF0, 4
__config_BFC02FF0:
	.word	3204448255
