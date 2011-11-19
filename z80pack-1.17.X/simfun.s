	.file	1 "simfun.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed simfun.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/664612396/simfun.o -O1
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
	.globl	exatoi
	.set	nomips16
	.set	nomicromips
	.ent	exatoi
	.type	exatoi, @function
exatoi:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32	 #,,
	sw	$31,28($sp)	 #,
	sw	$18,24($sp)	 #,
	sw	$17,20($sp)	 #,
	sw	$16,16($sp)	 #,
	move	$16,$4	 # str, str
	lb	$4,0($4)	 # D.6773,* str
	lui	$2,%hi(_ctype)	 # tmp274,
	addiu	$2,$2,%lo(_ctype)	 # tmp276, tmp274,
	addu	$2,$4,$2	 # tmp275, D.6773, tmp276
	lbu	$3,1($2)	 # tmp277, _ctype
	andi	$3,$3,0x44	 # tmp278, tmp277,
	beq	$3,$0,.L2	 #, tmp278,,
	move	$2,$0	 # num,

	lui	$18,%hi(_ctype)	 # tmp286,
	addiu	$18,$18,%lo(_ctype)	 # tmp287, tmp286,
	sll	$17,$2,4	 # num, num,
.L8:
	slt	$2,$4,58	 # tmp279, D.6773,
	beq	$2,$0,.L3
	nop
	 #, tmp279,,
	addu	$17,$17,$4	 # D.6777, num, D.6773
	j	.L4	 #
	addiu	$2,$17,-48	 # num, D.6777,

.L3:
	jal	toupper	 #
	addiu	$17,$17,-55	 # D.6780, num,

	addu	$2,$17,$2	 # num, D.6780,
.L4:
	addiu	$16,$16,1	 # str, str,
	lb	$4,0($16)	 # D.6773,* str
	addu	$3,$4,$18	 # tmp281, D.6773, tmp287
	lbu	$3,1($3)	 # tmp283, _ctype
	andi	$3,$3,0x44	 # tmp284, tmp283,
	bne	$3,$0,.L8	 #, tmp284,,
	sll	$17,$2,4	 # num, num,

.L2:
	lw	$31,28($sp)	 #,
	lw	$18,24($sp)	 #,
	lw	$17,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	exatoi
	.size	exatoi, .-exatoi
	.align	2
	.globl	getkey
	.set	nomips16
	.set	nomicromips
	.ent	getkey
	.type	getkey, @function
getkey:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lui	$4,%hi(_iob)	 # tmp220,
	jal	fgetc	 #
	addiu	$4,$4,%lo(_iob)	 #, tmp220,

	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	getkey
	.size	getkey, .-getkey
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
