	.file	1 "sim1.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed sim1.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/664612396/sim1.o -O1
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
	.set	nomips16
	.set	nomicromips
	.ent	op_nop
	.type	op_nop, @function
op_nop:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_nop
	.size	op_nop, .-op_nop
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_halt
	.type	op_halt, @function
op_halt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(IFF)($28)	 # IFF, IFF
	beq	$2,$0,.L3	 #, IFF,,
	li	$2,1			# 0x1	 # tmp236,

	lw	$2,%gp_rel(int_type)($28)	 # int_type, int_type
	bne	$2,$0,.L4	 #, int_type,,
	lbu	$3,%gp_rel(cpu_state)($28)	 # cpu_state, cpu_state

	li	$2,1			# 0x1	 # tmp235,
	beq	$3,$2,.L6	 #, cpu_state, tmp235,
	lui	$2,%hi(busy_loop_cnt)	 # tmp237,

	j	.L8	 #
	sw	$0,%lo(busy_loop_cnt)($2)	 #, busy_loop_cnt

.L3:
	sw	$2,%gp_rel(cpu_error)($28)	 # tmp236, cpu_error
	sb	$0,%gp_rel(cpu_state)($28)	 #, cpu_state
.L4:
	lui	$2,%hi(busy_loop_cnt)	 # tmp237,
	sw	$0,%lo(busy_loop_cnt)($2)	 #, busy_loop_cnt
.L8:
	j	$31
	move	$2,$0	 #,

.L6:
	j	.L6
	nop
	 #
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_halt
	.size	op_halt, .-op_halt
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_scf
	.type	op_scf, @function
op_scf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x1	 # tmp222, F,
	li	$3,-19			# 0xffffffed	 # tmp224,
	and	$2,$2,$3	 # tmp225, tmp222, tmp224
	sw	$2,%gp_rel(F)($28)	 # tmp225, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_scf
	.size	op_scf, .-op_scf
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ccf
	.type	op_ccf, @function
op_ccf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F.1788, F
	andi	$3,$2,0x1	 # tmp227, F.1788,
	beq	$3,$0,.L11	 #, tmp227,,
	li	$3,-17			# 0xffffffef	 # tmp232,

	ori	$2,$2,0x10	 # tmp228, F.1788,
	li	$3,-2			# 0xfffffffe	 # tmp229,
	and	$2,$2,$3	 # tmp230, tmp228, tmp229
	j	.L12	 #
	sw	$2,%gp_rel(F)($28)	 # tmp230, F

.L11:
	and	$2,$2,$3	 # tmp231, F.1788, tmp232
	ori	$2,$2,0x1	 # tmp233, tmp231,
	sw	$2,%gp_rel(F)($28)	 # tmp233, F
.L12:
	li	$2,-3			# 0xfffffffd	 # tmp235,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp236, F, tmp235
	sw	$2,%gp_rel(F)($28)	 # tmp236, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ccf
	.size	op_ccf, .-op_ccf
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpl
	.type	op_cpl, @function
op_cpl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	nor	$2,$0,$2	 # tmp224, A
	sb	$2,%gp_rel(A)($28)	 # tmp224, A
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x12	 # tmp226, F,
	sw	$2,%gp_rel(F)($28)	 # tmp226, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpl
	.size	op_cpl, .-op_cpl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_daa
	.type	op_daa, @function
op_daa:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1976, F
	andi	$4,$3,0x2	 # tmp268, F.1976,
	beq	$4,$0,.L15	 #, tmp268,,
	lbu	$2,%gp_rel(A)($28)	 # old_a, A

	andi	$4,$2,0xf	 # D.12883, old_a,
	slt	$5,$4,10	 # tmp269, D.12883,
	beql	$5,$0,.L34	 #, tmp269,,
	addiu	$4,$4,-6	 # tmp271, D.12883,

	andi	$5,$3,0x10	 # tmp270, F.1976,
	beql	$5,$0,.L35	 #, tmp270,,
	lbu	$3,%gp_rel(A)($28)	 # A.1975, A

	addiu	$4,$4,-6	 # tmp271, D.12883,
.L34:
	bgez	$4,.L18	 #, tmp271,
	li	$4,-17			# 0xffffffef	 # tmp273,

	ori	$3,$3,0x10	 # tmp272, F.1976,
	j	.L19	 #
	sw	$3,%gp_rel(F)($28)	 # tmp272, F

.L18:
	and	$3,$3,$4	 # tmp274, F.1976, tmp273
	sw	$3,%gp_rel(F)($28)	 # tmp274, F
.L19:
	addiu	$2,$2,-6	 # old_a, old_a,
	sb	$2,%gp_rel(A)($28)	 # old_a, A
	lbu	$3,%gp_rel(A)($28)	 # A.1975, A
.L35:
	andi	$4,$3,0xf0	 # tmp275, A.1975,
	slt	$4,$4,145	 # tmp276, tmp275,
	beql	$4,$0,.L36	 #, tmp276,,
	addiu	$3,$3,-96	 # tmp279, A.1975,

	lw	$4,%gp_rel(F)($28)	 # F, F
	andi	$4,$4,0x1	 # tmp277, F,
	beql	$4,$0,.L37	 #, tmp277,,
	lbu	$2,%gp_rel(A)($28)	 # A.1975, A

	addiu	$3,$3,-96	 # tmp279, A.1975,
.L36:
	addiu	$2,$2,-96	 # tmp280, old_a,
	bgez	$2,.L21	 #, tmp280,
	sb	$3,%gp_rel(A)($28)	 # tmp279, A

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x1	 # tmp282, F,
	j	.L21	 #
	sw	$2,%gp_rel(F)($28)	 # tmp282, F

.L15:
	andi	$4,$2,0xf	 # D.12883, old_a,
	slt	$5,$4,10	 # tmp283, D.12883,
	beql	$5,$0,.L38	 #, tmp283,,
	addiu	$4,$4,6	 # tmp285, D.12883,

	andi	$5,$3,0x10	 # tmp284, F.1976,
	beql	$5,$0,.L39	 #, tmp284,,
	lbu	$3,%gp_rel(A)($28)	 # A.1975, A

	addiu	$4,$4,6	 # tmp285, D.12883,
.L38:
	slt	$4,$4,16	 # tmp286, tmp285,
	bne	$4,$0,.L24	 #, tmp286,,
	li	$4,-17			# 0xffffffef	 # tmp288,

	ori	$3,$3,0x10	 # tmp287, F.1976,
	j	.L25	 #
	sw	$3,%gp_rel(F)($28)	 # tmp287, F

.L24:
	and	$3,$3,$4	 # tmp289, F.1976, tmp288
	sw	$3,%gp_rel(F)($28)	 # tmp289, F
.L25:
	addiu	$2,$2,6	 # old_a, old_a,
	sb	$2,%gp_rel(A)($28)	 # old_a, A
	lbu	$3,%gp_rel(A)($28)	 # A.1975, A
.L39:
	andi	$4,$3,0xf0	 # tmp290, A.1975,
	slt	$4,$4,145	 # tmp291, tmp290,
	beql	$4,$0,.L40	 #, tmp291,,
	addiu	$3,$3,96	 # tmp294, A.1975,

	lw	$4,%gp_rel(F)($28)	 # F, F
	andi	$4,$4,0x1	 # tmp292, F,
	beql	$4,$0,.L37	 #, tmp292,,
	lbu	$2,%gp_rel(A)($28)	 # A.1975, A

	addiu	$3,$3,96	 # tmp294, A.1975,
.L40:
	addiu	$2,$2,96	 # tmp295, old_a,
	slt	$2,$2,256	 # tmp296, tmp295,
	bne	$2,$0,.L21	 #, tmp296,,
	sb	$3,%gp_rel(A)($28)	 # tmp294, A

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x1	 # tmp298, F,
	sw	$2,%gp_rel(F)($28)	 # tmp298, F
.L21:
	lbu	$2,%gp_rel(A)($28)	 # A.1975, A
.L37:
	beq	$2,$0,.L27	 #, A.1975,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp300,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.1986, F, tmp300
	seb	$4,$2	 # A.1975, A.1975
	bltz	$4,.L28	 #, A.1975,
	sw	$3,%gp_rel(F)($28)	 # F.1986, F

	j	.L33	 #
	li	$3,-129			# 0xffffff7f	 # tmp306,

.L27:
	ori	$3,$3,0x40	 # tmp303, F,
	j	.L29	 #
	sw	$3,%gp_rel(F)($28)	 # tmp303, F

.L28:
	ori	$3,$3,0x80	 # tmp304, F.1986,
	j	.L30	 #
	sw	$3,%gp_rel(F)($28)	 # tmp304, F

.L29:
	li	$3,-129			# 0xffffff7f	 # tmp306,
.L33:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp307, F, tmp306
	sw	$3,%gp_rel(F)($28)	 # tmp307, F
.L30:
	sll	$2,$2,2	 # tmp309, A.1975,
	lui	$3,%hi(parrity)	 # tmp308,
	addiu	$3,$3,%lo(parrity)	 # tmp311, tmp308,
	addu	$2,$2,$3	 # tmp310, tmp309, tmp311
	lw	$2,0($2)	 # tmp312, parrity
	beql	$2,$0,.L31	 #, tmp312,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp314,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp315, F, tmp314
	j	.L32	 #
	sw	$2,%gp_rel(F)($28)	 # tmp315, F

.L31:
	ori	$2,$2,0x4	 # tmp317, F,
	sw	$2,%gp_rel(F)($28)	 # tmp317, F
.L32:
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_daa
	.size	op_daa, .-op_daa
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ei
	.type	op_ei, @function
op_ei:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,3			# 0x3	 # tmp219,
	sb	$2,%gp_rel(IFF)($28)	 # tmp219, IFF
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ei
	.size	op_ei, .-op_ei
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_di
	.type	op_di, @function
op_di:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	sb	$0,%gp_rel(IFF)($28)	 #, IFF
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_di
	.size	op_di, .-op_di
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldan
	.type	op_ldan, @function
op_ldan:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.1794, PC
	lbu	$3,0($2)	 #,* PC.1794
	sb	$3,%gp_rel(A)($28)	 # tmp222, A
	addiu	$2,$2,1	 # tmp223, PC.1794,
	sw	$2,%gp_rel(PC)($28)	 # tmp223, PC
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldan
	.size	op_ldan, .-op_ldan
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbn
	.type	op_ldbn, @function
op_ldbn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.2257, PC
	lbu	$3,0($2)	 #,* PC.2257
	sb	$3,%gp_rel(B)($28)	 # tmp222, B
	addiu	$2,$2,1	 # tmp223, PC.2257,
	sw	$2,%gp_rel(PC)($28)	 # tmp223, PC
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbn
	.size	op_ldbn, .-op_ldbn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldcn
	.type	op_ldcn, @function
op_ldcn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.2184, PC
	lbu	$3,0($2)	 #,* PC.2184
	sb	$3,%gp_rel(C)($28)	 # tmp222, C
	addiu	$2,$2,1	 # tmp223, PC.2184,
	sw	$2,%gp_rel(PC)($28)	 # tmp223, PC
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldcn
	.size	op_ldcn, .-op_ldcn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddn
	.type	op_lddn, @function
op_lddn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.2124, PC
	lbu	$3,0($2)	 #,* PC.2124
	sb	$3,%gp_rel(D)($28)	 # tmp222, D
	addiu	$2,$2,1	 # tmp223, PC.2124,
	sw	$2,%gp_rel(PC)($28)	 # tmp223, PC
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddn
	.size	op_lddn, .-op_lddn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lden
	.type	op_lden, @function
op_lden:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.2055, PC
	lbu	$3,0($2)	 #,* PC.2055
	sb	$3,%gp_rel(E)($28)	 # tmp222, E
	addiu	$2,$2,1	 # tmp223, PC.2055,
	sw	$2,%gp_rel(PC)($28)	 # tmp223, PC
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lden
	.size	op_lden, .-op_lden
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhn
	.type	op_ldhn, @function
op_ldhn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.1995, PC
	lbu	$3,0($2)	 #,* PC.1995
	sb	$3,%gp_rel(H)($28)	 # tmp222, H
	addiu	$2,$2,1	 # tmp223, PC.1995,
	sw	$2,%gp_rel(PC)($28)	 # tmp223, PC
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhn
	.size	op_ldhn, .-op_ldhn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldln
	.type	op_ldln, @function
op_ldln:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.1914, PC
	lbu	$3,0($2)	 #,* PC.1914
	sb	$3,%gp_rel(L)($28)	 # tmp222, L
	addiu	$2,$2,1	 # tmp223, PC.1914,
	sw	$2,%gp_rel(PC)($28)	 # tmp223, PC
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldln
	.size	op_ldln, .-op_ldln
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldabc
	.type	op_ldabc, @function
op_ldabc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # B, B
	sll	$2,$2,8	 # tmp229, B,
	lbu	$3,%gp_rel(C)($28)	 # C, C
	addu	$2,$2,$3	 # tmp231, tmp229, C
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$2,0($2)	 #, ram
	sb	$2,%gp_rel(A)($28)	 # tmp234, A
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldabc
	.size	op_ldabc, .-op_ldabc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldade
	.type	op_ldade, @function
op_ldade:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # D, D
	sll	$2,$2,8	 # tmp229, D,
	lbu	$3,%gp_rel(E)($28)	 # E, E
	addu	$2,$2,$3	 # tmp231, tmp229, E
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$2,0($2)	 #, ram
	sb	$2,%gp_rel(A)($28)	 # tmp234, A
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldade
	.size	op_ldade, .-op_ldade
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldann
	.type	op_ldann, @function
op_ldann:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.1833, PC
	lbu	$3,0($2)	 # i,* PC.1833
	addiu	$4,$2,1	 # PC.1834, PC.1833,
	sw	$4,%gp_rel(PC)($28)	 # PC.1834, PC
	lbu	$4,1($2)	 # tmp230,
	sll	$4,$4,8	 # tmp231, tmp230,
	addu	$4,$4,$3	 # i, tmp231, i
	addiu	$2,$2,2	 # tmp232, PC.1833,
	sw	$2,%gp_rel(PC)($28)	 # tmp232, PC
	lui	$3,%hi(ram)	 # tmp233,
	addiu	$3,$3,%lo(ram)	 # tmp235, tmp233,
	addu	$2,$4,$3	 # tmp234, i, tmp235
	lbu	$2,0($2)	 #, ram
	sb	$2,%gp_rel(A)($28)	 # tmp236, A
	j	$31
	li	$2,13			# 0xd	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldann
	.size	op_ldann, .-op_ldann
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbca
	.type	op_ldbca, @function
op_ldbca:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # B, B
	sll	$2,$2,8	 # tmp229, B,
	lbu	$3,%gp_rel(C)($28)	 # C, C
	addu	$2,$2,$3	 # tmp231, tmp229, C
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$3,%gp_rel(A)($28)	 #, A
	sb	$3,0($2)	 # A, ram
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbca
	.size	op_ldbca, .-op_ldbca
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddea
	.type	op_lddea, @function
op_lddea:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # D, D
	sll	$2,$2,8	 # tmp229, D,
	lbu	$3,%gp_rel(E)($28)	 # E, E
	addu	$2,$2,$3	 # tmp231, tmp229, E
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$3,%gp_rel(A)($28)	 #, A
	sb	$3,0($2)	 # A, ram
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddea
	.size	op_lddea, .-op_lddea
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldnna
	.type	op_ldnna, @function
op_ldnna:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.1898, PC
	lbu	$3,0($2)	 # i,* PC.1898
	addiu	$4,$2,1	 # PC.1899, PC.1898,
	sw	$4,%gp_rel(PC)($28)	 # PC.1899, PC
	lbu	$4,1($2)	 # tmp230,
	sll	$4,$4,8	 # tmp231, tmp230,
	addu	$4,$4,$3	 # i, tmp231, i
	addiu	$2,$2,2	 # tmp232, PC.1898,
	sw	$2,%gp_rel(PC)($28)	 # tmp232, PC
	lui	$3,%hi(ram)	 # tmp233,
	addiu	$3,$3,%lo(ram)	 # tmp235, tmp233,
	addu	$2,$4,$3	 # tmp234, i, tmp235
	lbu	$3,%gp_rel(A)($28)	 #, A
	sb	$3,0($2)	 # A, ram
	j	$31
	li	$2,13			# 0xd	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldnna
	.size	op_ldnna, .-op_ldnna
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhla
	.type	op_ldhla, @function
op_ldhla:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$3,%gp_rel(A)($28)	 #, A
	sb	$3,0($2)	 # A, ram
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhla
	.size	op_ldhla, .-op_ldhla
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhlb
	.type	op_ldhlb, @function
op_ldhlb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$3,%gp_rel(B)($28)	 #, B
	sb	$3,0($2)	 # B, ram
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhlb
	.size	op_ldhlb, .-op_ldhlb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhlc
	.type	op_ldhlc, @function
op_ldhlc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$3,%gp_rel(C)($28)	 #, C
	sb	$3,0($2)	 # C, ram
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhlc
	.size	op_ldhlc, .-op_ldhlc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhld
	.type	op_ldhld, @function
op_ldhld:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$3,%gp_rel(D)($28)	 #, D
	sb	$3,0($2)	 # D, ram
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhld
	.size	op_ldhld, .-op_ldhld
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhle
	.type	op_ldhle, @function
op_ldhle:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$3,%gp_rel(E)($28)	 #, E
	sb	$3,0($2)	 # E, ram
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhle
	.size	op_ldhle, .-op_ldhle
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhlh
	.type	op_ldhlh, @function
op_ldhlh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H.1720, H
	sll	$4,$2,8	 # tmp227, H.1720,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$3,$4,$3	 # tmp229, tmp227, L
	lui	$4,%hi(ram)	 # tmp226,
	addiu	$4,$4,%lo(ram)	 # tmp231, tmp226,
	addu	$3,$3,$4	 # tmp230, tmp229, tmp231
	sb	$2,0($3)	 # H.1720, ram
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhlh
	.size	op_ldhlh, .-op_ldhlh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhll
	.type	op_ldhll, @function
op_ldhll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # L.1719, L
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp228, H,
	addu	$3,$3,$2	 # tmp229, tmp228, L.1719
	lui	$4,%hi(ram)	 # tmp226,
	addiu	$4,$4,%lo(ram)	 # tmp231, tmp226,
	addu	$3,$3,$4	 # tmp230, tmp229, tmp231
	sb	$2,0($3)	 # L.1719, ram
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhll
	.size	op_ldhll, .-op_ldhll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhl1
	.type	op_ldhl1, @function
op_ldhl1:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.1862, PC
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp231, H,
	lbu	$4,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$4	 # tmp233, tmp231, L
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp235, tmp229,
	addu	$3,$3,$4	 # tmp234, tmp233, tmp235
	lbu	$4,0($2)	 #,* PC.1862
	sb	$4,0($3)	 # tmp236, ram
	addiu	$2,$2,1	 # tmp237, PC.1862,
	sw	$2,%gp_rel(PC)($28)	 # tmp237, PC
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhl1
	.size	op_ldhl1, .-op_ldhl1
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldaa
	.type	op_ldaa, @function
op_ldaa:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldaa
	.size	op_ldaa, .-op_ldaa
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldab
	.type	op_ldab, @function
op_ldab:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	sb	$2,%gp_rel(A)($28)	 # B, A
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldab
	.size	op_ldab, .-op_ldab
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldac
	.type	op_ldac, @function
op_ldac:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	sb	$2,%gp_rel(A)($28)	 # C, A
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldac
	.size	op_ldac, .-op_ldac
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldad
	.type	op_ldad, @function
op_ldad:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	sb	$2,%gp_rel(A)($28)	 # D, A
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldad
	.size	op_ldad, .-op_ldad
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldae
	.type	op_ldae, @function
op_ldae:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	sb	$2,%gp_rel(A)($28)	 # E, A
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldae
	.size	op_ldae, .-op_ldae
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldah
	.type	op_ldah, @function
op_ldah:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	sb	$2,%gp_rel(A)($28)	 # H, A
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldah
	.size	op_ldah, .-op_ldah
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldal
	.type	op_ldal, @function
op_ldal:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	sb	$2,%gp_rel(A)($28)	 # L, A
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldal
	.size	op_ldal, .-op_ldal
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldahl
	.type	op_ldahl, @function
op_ldahl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$2,0($2)	 #, ram
	sb	$2,%gp_rel(A)($28)	 # tmp234, A
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldahl
	.size	op_ldahl, .-op_ldahl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldba
	.type	op_ldba, @function
op_ldba:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	sb	$2,%gp_rel(B)($28)	 # A, B
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldba
	.size	op_ldba, .-op_ldba
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbb
	.type	op_ldbb, @function
op_ldbb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbb
	.size	op_ldbb, .-op_ldbb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbc
	.type	op_ldbc, @function
op_ldbc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	sb	$2,%gp_rel(B)($28)	 # C, B
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbc
	.size	op_ldbc, .-op_ldbc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbd
	.type	op_ldbd, @function
op_ldbd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	sb	$2,%gp_rel(B)($28)	 # D, B
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbd
	.size	op_ldbd, .-op_ldbd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbe
	.type	op_ldbe, @function
op_ldbe:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	sb	$2,%gp_rel(B)($28)	 # E, B
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbe
	.size	op_ldbe, .-op_ldbe
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbh
	.type	op_ldbh, @function
op_ldbh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	sb	$2,%gp_rel(B)($28)	 # H, B
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbh
	.size	op_ldbh, .-op_ldbh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbl
	.type	op_ldbl, @function
op_ldbl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	sb	$2,%gp_rel(B)($28)	 # L, B
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbl
	.size	op_ldbl, .-op_ldbl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbhl
	.type	op_ldbhl, @function
op_ldbhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$2,0($2)	 #, ram
	sb	$2,%gp_rel(B)($28)	 # tmp234, B
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbhl
	.size	op_ldbhl, .-op_ldbhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldca
	.type	op_ldca, @function
op_ldca:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	sb	$2,%gp_rel(C)($28)	 # A, C
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldca
	.size	op_ldca, .-op_ldca
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldcb
	.type	op_ldcb, @function
op_ldcb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	sb	$2,%gp_rel(C)($28)	 # B, C
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldcb
	.size	op_ldcb, .-op_ldcb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldcc
	.type	op_ldcc, @function
op_ldcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldcc
	.size	op_ldcc, .-op_ldcc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldcd
	.type	op_ldcd, @function
op_ldcd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	sb	$2,%gp_rel(C)($28)	 # D, C
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldcd
	.size	op_ldcd, .-op_ldcd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldce
	.type	op_ldce, @function
op_ldce:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	sb	$2,%gp_rel(C)($28)	 # E, C
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldce
	.size	op_ldce, .-op_ldce
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldch
	.type	op_ldch, @function
op_ldch:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	sb	$2,%gp_rel(C)($28)	 # H, C
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldch
	.size	op_ldch, .-op_ldch
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldcl
	.type	op_ldcl, @function
op_ldcl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	sb	$2,%gp_rel(C)($28)	 # L, C
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldcl
	.size	op_ldcl, .-op_ldcl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldchl
	.type	op_ldchl, @function
op_ldchl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$2,0($2)	 #, ram
	sb	$2,%gp_rel(C)($28)	 # tmp234, C
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldchl
	.size	op_ldchl, .-op_ldchl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldda
	.type	op_ldda, @function
op_ldda:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	sb	$2,%gp_rel(D)($28)	 # A, D
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldda
	.size	op_ldda, .-op_ldda
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddb
	.type	op_lddb, @function
op_lddb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	sb	$2,%gp_rel(D)($28)	 # B, D
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddb
	.size	op_lddb, .-op_lddb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddc
	.type	op_lddc, @function
op_lddc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	sb	$2,%gp_rel(D)($28)	 # C, D
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddc
	.size	op_lddc, .-op_lddc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddd
	.type	op_lddd, @function
op_lddd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddd
	.size	op_lddd, .-op_lddd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldde
	.type	op_ldde, @function
op_ldde:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	sb	$2,%gp_rel(D)($28)	 # E, D
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldde
	.size	op_ldde, .-op_ldde
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddh
	.type	op_lddh, @function
op_lddh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	sb	$2,%gp_rel(D)($28)	 # H, D
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddh
	.size	op_lddh, .-op_lddh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddl
	.type	op_lddl, @function
op_lddl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	sb	$2,%gp_rel(D)($28)	 # L, D
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddl
	.size	op_lddl, .-op_lddl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddhl
	.type	op_lddhl, @function
op_lddhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$2,0($2)	 #, ram
	sb	$2,%gp_rel(D)($28)	 # tmp234, D
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddhl
	.size	op_lddhl, .-op_lddhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldea
	.type	op_ldea, @function
op_ldea:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	sb	$2,%gp_rel(E)($28)	 # A, E
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldea
	.size	op_ldea, .-op_ldea
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldeb
	.type	op_ldeb, @function
op_ldeb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	sb	$2,%gp_rel(E)($28)	 # B, E
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldeb
	.size	op_ldeb, .-op_ldeb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldec
	.type	op_ldec, @function
op_ldec:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	sb	$2,%gp_rel(E)($28)	 # C, E
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldec
	.size	op_ldec, .-op_ldec
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lded
	.type	op_lded, @function
op_lded:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	sb	$2,%gp_rel(E)($28)	 # D, E
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lded
	.size	op_lded, .-op_lded
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldee
	.type	op_ldee, @function
op_ldee:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldee
	.size	op_ldee, .-op_ldee
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldeh
	.type	op_ldeh, @function
op_ldeh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	sb	$2,%gp_rel(E)($28)	 # H, E
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldeh
	.size	op_ldeh, .-op_ldeh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldel
	.type	op_ldel, @function
op_ldel:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	sb	$2,%gp_rel(E)($28)	 # L, E
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldel
	.size	op_ldel, .-op_ldel
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldehl
	.type	op_ldehl, @function
op_ldehl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$2,0($2)	 #, ram
	sb	$2,%gp_rel(E)($28)	 # tmp234, E
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldehl
	.size	op_ldehl, .-op_ldehl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldha
	.type	op_ldha, @function
op_ldha:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	sb	$2,%gp_rel(H)($28)	 # A, H
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldha
	.size	op_ldha, .-op_ldha
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhb
	.type	op_ldhb, @function
op_ldhb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	sb	$2,%gp_rel(H)($28)	 # B, H
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhb
	.size	op_ldhb, .-op_ldhb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhc
	.type	op_ldhc, @function
op_ldhc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	sb	$2,%gp_rel(H)($28)	 # C, H
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhc
	.size	op_ldhc, .-op_ldhc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhd
	.type	op_ldhd, @function
op_ldhd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	sb	$2,%gp_rel(H)($28)	 # D, H
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhd
	.size	op_ldhd, .-op_ldhd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhe
	.type	op_ldhe, @function
op_ldhe:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	sb	$2,%gp_rel(H)($28)	 # E, H
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhe
	.size	op_ldhe, .-op_ldhe
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhh
	.type	op_ldhh, @function
op_ldhh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhh
	.size	op_ldhh, .-op_ldhh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhl
	.type	op_ldhl, @function
op_ldhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	sb	$2,%gp_rel(H)($28)	 # L, H
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhl
	.size	op_ldhl, .-op_ldhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhhl
	.type	op_ldhhl, @function
op_ldhhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$2,0($2)	 #, ram
	sb	$2,%gp_rel(H)($28)	 # tmp234, H
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhhl
	.size	op_ldhhl, .-op_ldhhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldla
	.type	op_ldla, @function
op_ldla:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	sb	$2,%gp_rel(L)($28)	 # A, L
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldla
	.size	op_ldla, .-op_ldla
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldlb
	.type	op_ldlb, @function
op_ldlb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	sb	$2,%gp_rel(L)($28)	 # B, L
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldlb
	.size	op_ldlb, .-op_ldlb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldlc
	.type	op_ldlc, @function
op_ldlc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	sb	$2,%gp_rel(L)($28)	 # C, L
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldlc
	.size	op_ldlc, .-op_ldlc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldld
	.type	op_ldld, @function
op_ldld:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	sb	$2,%gp_rel(L)($28)	 # D, L
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldld
	.size	op_ldld, .-op_ldld
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldle
	.type	op_ldle, @function
op_ldle:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	sb	$2,%gp_rel(L)($28)	 # E, L
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldle
	.size	op_ldle, .-op_ldle
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldlh
	.type	op_ldlh, @function
op_ldlh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	sb	$2,%gp_rel(L)($28)	 # H, L
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldlh
	.size	op_ldlh, .-op_ldlh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldll
	.type	op_ldll, @function
op_ldll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldll
	.size	op_ldll, .-op_ldll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldlhl
	.type	op_ldlhl, @function
op_ldlhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp229, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp231, tmp229, L
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp227,
	addu	$2,$2,$3	 # tmp232, tmp231, tmp233
	lbu	$2,0($2)	 #, ram
	sb	$2,%gp_rel(L)($28)	 # tmp234, L
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldlhl
	.size	op_ldlhl, .-op_ldlhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbcnn
	.type	op_ldbcnn, @function
op_ldbcnn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.2301, PC
	lbu	$3,0($2)	 #,* PC.2301
	sb	$3,%gp_rel(C)($28)	 # tmp224, C
	addiu	$3,$2,1	 # PC.2302, PC.2301,
	sw	$3,%gp_rel(PC)($28)	 # PC.2302, PC
	lbu	$3,1($2)	 #,
	sb	$3,%gp_rel(B)($28)	 # tmp225, B
	addiu	$2,$2,2	 # tmp226, PC.2301,
	sw	$2,%gp_rel(PC)($28)	 # tmp226, PC
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbcnn
	.size	op_ldbcnn, .-op_ldbcnn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddenn
	.type	op_lddenn, @function
op_lddenn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.2168, PC
	lbu	$3,0($2)	 #,* PC.2168
	sb	$3,%gp_rel(E)($28)	 # tmp224, E
	addiu	$3,$2,1	 # PC.2169, PC.2168,
	sw	$3,%gp_rel(PC)($28)	 # PC.2169, PC
	lbu	$3,1($2)	 #,
	sb	$3,%gp_rel(D)($28)	 # tmp225, D
	addiu	$2,$2,2	 # tmp226, PC.2168,
	sw	$2,%gp_rel(PC)($28)	 # tmp226, PC
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddenn
	.size	op_lddenn, .-op_lddenn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhlnn
	.type	op_ldhlnn, @function
op_ldhlnn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.2040, PC
	lbu	$3,0($2)	 #,* PC.2040
	sb	$3,%gp_rel(L)($28)	 # tmp224, L
	addiu	$3,$2,1	 # PC.2041, PC.2040,
	sw	$3,%gp_rel(PC)($28)	 # PC.2041, PC
	lbu	$3,1($2)	 #,
	sb	$3,%gp_rel(H)($28)	 # tmp225, H
	addiu	$2,$2,2	 # tmp226, PC.2040,
	sw	$2,%gp_rel(PC)($28)	 # tmp226, PC
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhlnn
	.size	op_ldhlnn, .-op_ldhlnn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldspnn
	.type	op_ldspnn, @function
op_ldspnn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.1901, PC
	lbu	$4,0($2)	 # tmp230,* PC.1901
	lui	$3,%hi(ram)	 # tmp232,
	addiu	$3,$3,%lo(ram)	 # tmp231, tmp232,
	addu	$3,$3,$4	 # STACK.1903, tmp231, tmp230
	sw	$3,%gp_rel(STACK)($28)	 # STACK.1903, STACK
	addiu	$4,$2,1	 # PC.1902, PC.1901,
	sw	$4,%gp_rel(PC)($28)	 # PC.1902, PC
	lbu	$4,1($2)	 # tmp233,
	sll	$4,$4,8	 # tmp234, tmp233,
	addu	$3,$3,$4	 # tmp235, STACK.1903, tmp234
	sw	$3,%gp_rel(STACK)($28)	 # tmp235, STACK
	addiu	$2,$2,2	 # tmp236, PC.1901,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldspnn
	.size	op_ldspnn, .-op_ldspnn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldsphl
	.type	op_ldsphl, @function
op_ldsphl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp228, H,
	lbu	$4,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$4	 # tmp230, tmp228, L
	lui	$2,%hi(ram)	 # tmp232,
	addiu	$2,$2,%lo(ram)	 # tmp231, tmp232,
	addu	$2,$2,$3	 # tmp233, tmp231, tmp230
	sw	$2,%gp_rel(STACK)($28)	 # tmp233, STACK
	j	$31
	li	$2,6			# 0x6	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldsphl
	.size	op_ldsphl, .-op_ldsphl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhlin
	.type	op_ldhlin, @function
op_ldhlin:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.1955, PC
	lbu	$3,0($2)	 # i,* PC.1955
	addiu	$4,$2,1	 # PC.1956, PC.1955,
	sw	$4,%gp_rel(PC)($28)	 # PC.1956, PC
	lbu	$4,1($2)	 # tmp232,
	sll	$4,$4,8	 # tmp233, tmp232,
	addu	$4,$4,$3	 # i, tmp233, i
	addiu	$2,$2,2	 # tmp234, PC.1955,
	sw	$2,%gp_rel(PC)($28)	 # tmp234, PC
	lui	$3,%hi(ram)	 # tmp235,
	addiu	$3,$3,%lo(ram)	 # tmp237, tmp235,
	addu	$2,$4,$3	 # tmp236, i, tmp237
	lbu	$3,0($2)	 #, ram
	sb	$3,%gp_rel(L)($28)	 # tmp238, L
	lbu	$2,1($2)	 #, ram
	sb	$2,%gp_rel(H)($28)	 # tmp242, H
	j	$31
	li	$2,16			# 0x10	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhlin
	.size	op_ldhlin, .-op_ldhlin
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldinhl
	.type	op_ldinhl, @function
op_ldinhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.2036, PC
	lbu	$3,0($2)	 # i,* PC.2036
	addiu	$4,$2,1	 # PC.2037, PC.2036,
	sw	$4,%gp_rel(PC)($28)	 # PC.2037, PC
	lbu	$4,1($2)	 # tmp232,
	sll	$4,$4,8	 # tmp233, tmp232,
	addu	$4,$4,$3	 # i, tmp233, i
	addiu	$2,$2,2	 # tmp234, PC.2036,
	sw	$2,%gp_rel(PC)($28)	 # tmp234, PC
	lui	$3,%hi(ram)	 # tmp235,
	addiu	$3,$3,%lo(ram)	 # tmp237, tmp235,
	addu	$2,$4,$3	 # tmp236, i, tmp237
	lbu	$3,%gp_rel(L)($28)	 #, L
	sb	$3,0($2)	 # L, ram
	lbu	$3,%gp_rel(H)($28)	 #, H
	sb	$3,1($2)	 # H, ram
	j	$31
	li	$2,16			# 0x10	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldinhl
	.size	op_ldinhl, .-op_ldinhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_incbc
	.type	op_incbc, @function
op_incbc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	addiu	$2,$2,1	 # tmp224, C,
	andi	$2,$2,0x00ff	 # C.2295, tmp224
	bne	$2,$0,.L128	 #, C.2295,,
	sb	$2,%gp_rel(C)($28)	 # C.2295, C

	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,1	 # tmp226, B,
	sb	$2,%gp_rel(B)($28)	 # tmp226, B
.L128:
	j	$31
	li	$2,6			# 0x6	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_incbc
	.size	op_incbc, .-op_incbc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_incde
	.type	op_incde, @function
op_incde:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	addiu	$2,$2,1	 # tmp224, E,
	andi	$2,$2,0x00ff	 # E.2162, tmp224
	bne	$2,$0,.L130	 #, E.2162,,
	sb	$2,%gp_rel(E)($28)	 # E.2162, E

	lbu	$2,%gp_rel(D)($28)	 #, D
	addiu	$2,$2,1	 # tmp226, D,
	sb	$2,%gp_rel(D)($28)	 # tmp226, D
.L130:
	j	$31
	li	$2,6			# 0x6	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_incde
	.size	op_incde, .-op_incde
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_inchl
	.type	op_inchl, @function
op_inchl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	addiu	$2,$2,1	 # tmp224, L,
	andi	$2,$2,0x00ff	 # L.2033, tmp224
	bne	$2,$0,.L132	 #, L.2033,,
	sb	$2,%gp_rel(L)($28)	 # L.2033, L

	lbu	$2,%gp_rel(H)($28)	 #, H
	addiu	$2,$2,1	 # tmp226, H,
	sb	$2,%gp_rel(H)($28)	 # tmp226, H
.L132:
	j	$31
	li	$2,6			# 0x6	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_inchl
	.size	op_inchl, .-op_inchl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_incsp
	.type	op_incsp, @function
op_incsp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$2,1	 # STACK.1897, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.1897, STACK
	lui	$3,%hi(ram+65535)	 # tmp224,
	addiu	$3,$3,%lo(ram+65535)	 # tmp223, tmp224,
	sltu	$2,$3,$2	 # tmp222, tmp223, STACK.1897
	beq	$2,$0,.L134
	nop
	 #, tmp222,,
	lui	$2,%hi(ram)	 # tmp226,
	addiu	$2,$2,%lo(ram)	 # tmp225, tmp226,
	sw	$2,%gp_rel(STACK)($28)	 # tmp225, STACK
.L134:
	j	$31
	li	$2,6			# 0x6	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_incsp
	.size	op_incsp, .-op_incsp
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_decbc
	.type	op_decbc, @function
op_decbc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	addiu	$2,$2,-1	 # tmp224, C,
	andi	$2,$2,0x00ff	 # C.2222, tmp224
	li	$3,255			# 0xff	 # tmp225,
	bne	$2,$3,.L136	 #, C.2222, tmp225,
	sb	$2,%gp_rel(C)($28)	 # C.2222, C

	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp227, B,
	sb	$2,%gp_rel(B)($28)	 # tmp227, B
.L136:
	j	$31
	li	$2,6			# 0x6	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_decbc
	.size	op_decbc, .-op_decbc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_decde
	.type	op_decde, @function
op_decde:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	addiu	$2,$2,-1	 # tmp224, E,
	andi	$2,$2,0x00ff	 # E.2093, tmp224
	li	$3,255			# 0xff	 # tmp225,
	bne	$2,$3,.L138	 #, E.2093, tmp225,
	sb	$2,%gp_rel(E)($28)	 # E.2093, E

	lbu	$2,%gp_rel(D)($28)	 #, D
	addiu	$2,$2,-1	 # tmp227, D,
	sb	$2,%gp_rel(D)($28)	 # tmp227, D
.L138:
	j	$31
	li	$2,6			# 0x6	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_decde
	.size	op_decde, .-op_decde
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_dechl
	.type	op_dechl, @function
op_dechl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	addiu	$2,$2,-1	 # tmp224, L,
	andi	$2,$2,0x00ff	 # L.1952, tmp224
	li	$3,255			# 0xff	 # tmp225,
	bne	$2,$3,.L140	 #, L.1952, tmp225,
	sb	$2,%gp_rel(L)($28)	 # L.1952, L

	lbu	$2,%gp_rel(H)($28)	 #, H
	addiu	$2,$2,-1	 # tmp227, H,
	sb	$2,%gp_rel(H)($28)	 # tmp227, H
.L140:
	j	$31
	li	$2,6			# 0x6	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_dechl
	.size	op_dechl, .-op_dechl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_decsp
	.type	op_decsp, @function
op_decsp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$2,-1	 # STACK.1832, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.1832, STACK
	lui	$3,%hi(ram)	 # tmp224,
	addiu	$3,$3,%lo(ram)	 # tmp223, tmp224,
	sltu	$2,$2,$3	 # tmp222, STACK.1832, tmp223
	beq	$2,$0,.L142
	nop
	 #, tmp222,,
	lui	$2,%hi(ram+65535)	 # tmp226,
	addiu	$2,$2,%lo(ram+65535)	 # tmp225, tmp226,
	sw	$2,%gp_rel(STACK)($28)	 # tmp225, STACK
.L142:
	j	$31
	li	$2,6			# 0x6	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_decsp
	.size	op_decsp, .-op_decsp
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adhlbc
	.type	op_adhlbc, @function
op_adhlbc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # L.2228, L
	lbu	$3,%gp_rel(C)($28)	 # C.2229, C
	addu	$3,$3,$2	 # tmp249, C.2229, L.2228
	slt	$2,$3,256	 # tmp251, tmp249,
	xori	$2,$2,0x1	 # carry, tmp251,
	sb	$3,%gp_rel(L)($28)	 # tmp249, L
	lbu	$3,%gp_rel(H)($28)	 # H.2232, H
	lbu	$4,%gp_rel(B)($28)	 # B.2233, B
	andi	$6,$4,0xf	 # tmp253, B.2233,
	andi	$5,$3,0xf	 # tmp254, H.2232,
	addu	$5,$6,$5	 # tmp255, tmp253, tmp254
	addu	$5,$5,$2	 # tmp256, tmp255, carry
	slt	$5,$5,16	 # tmp257, tmp256,
	bne	$5,$0,.L144	 #, tmp257,,
	li	$5,-17			# 0xffffffef	 # tmp261,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x10	 # tmp259, F,
	j	.L145	 #
	sw	$5,%gp_rel(F)($28)	 # tmp259, F

.L144:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp262, F, tmp261
	sw	$5,%gp_rel(F)($28)	 # tmp262, F
.L145:
	addu	$5,$4,$3	 # tmp263, B.2233, H.2232
	addu	$5,$5,$2	 # tmp264, tmp263, carry
	slt	$5,$5,256	 # tmp265, tmp264,
	bne	$5,$0,.L146	 #, tmp265,,
	li	$5,-2			# 0xfffffffe	 # tmp269,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp267, F,
	j	.L147	 #
	sw	$5,%gp_rel(F)($28)	 # tmp267, F

.L146:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp270, F, tmp269
	sw	$5,%gp_rel(F)($28)	 # tmp270, F
.L147:
	addu	$3,$4,$3	 # tmp271, B.2233, H.2232
	addu	$2,$3,$2	 # tmp274, tmp271, carry
	sb	$2,%gp_rel(H)($28)	 # tmp274, H
	li	$2,-3			# 0xfffffffd	 # tmp276,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp277, F, tmp276
	sw	$2,%gp_rel(F)($28)	 # tmp277, F
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adhlbc
	.size	op_adhlbc, .-op_adhlbc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adhlde
	.type	op_adhlde, @function
op_adhlde:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # L.2099, L
	lbu	$3,%gp_rel(E)($28)	 # E.2100, E
	addu	$3,$3,$2	 # tmp249, E.2100, L.2099
	slt	$2,$3,256	 # tmp251, tmp249,
	xori	$2,$2,0x1	 # carry, tmp251,
	sb	$3,%gp_rel(L)($28)	 # tmp249, L
	lbu	$3,%gp_rel(H)($28)	 # H.2103, H
	lbu	$4,%gp_rel(D)($28)	 # D.2104, D
	andi	$6,$4,0xf	 # tmp253, D.2104,
	andi	$5,$3,0xf	 # tmp254, H.2103,
	addu	$5,$6,$5	 # tmp255, tmp253, tmp254
	addu	$5,$5,$2	 # tmp256, tmp255, carry
	slt	$5,$5,16	 # tmp257, tmp256,
	bne	$5,$0,.L149	 #, tmp257,,
	li	$5,-17			# 0xffffffef	 # tmp261,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x10	 # tmp259, F,
	j	.L150	 #
	sw	$5,%gp_rel(F)($28)	 # tmp259, F

.L149:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp262, F, tmp261
	sw	$5,%gp_rel(F)($28)	 # tmp262, F
.L150:
	addu	$5,$4,$3	 # tmp263, D.2104, H.2103
	addu	$5,$5,$2	 # tmp264, tmp263, carry
	slt	$5,$5,256	 # tmp265, tmp264,
	bne	$5,$0,.L151	 #, tmp265,,
	li	$5,-2			# 0xfffffffe	 # tmp269,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp267, F,
	j	.L152	 #
	sw	$5,%gp_rel(F)($28)	 # tmp267, F

.L151:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp270, F, tmp269
	sw	$5,%gp_rel(F)($28)	 # tmp270, F
.L152:
	addu	$3,$4,$3	 # tmp271, D.2104, H.2103
	addu	$2,$3,$2	 # tmp274, tmp271, carry
	sb	$2,%gp_rel(H)($28)	 # tmp274, H
	li	$2,-3			# 0xfffffffd	 # tmp276,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp277, F, tmp276
	sw	$2,%gp_rel(F)($28)	 # tmp277, F
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adhlde
	.size	op_adhlde, .-op_adhlde
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adhlhl
	.type	op_adhlhl, @function
op_adhlhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(L)($28)	 # L.1959, L
	sll	$3,$3,1	 # tmp244, L.1959,
	slt	$2,$3,256	 # tmp246, tmp244,
	xori	$2,$2,0x1	 # carry, tmp246,
	sb	$3,%gp_rel(L)($28)	 # tmp244, L
	lbu	$3,%gp_rel(H)($28)	 # H.1962, H
	andi	$4,$3,0xf	 # D.12839, H.1962,
	sll	$4,$4,1	 # tmp248, D.12839,
	addu	$4,$4,$2	 # tmp249, tmp248, carry
	slt	$4,$4,16	 # tmp250, tmp249,
	bne	$4,$0,.L154	 #, tmp250,,
	li	$4,-17			# 0xffffffef	 # tmp254,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp252, F,
	j	.L155	 #
	sw	$4,%gp_rel(F)($28)	 # tmp252, F

.L154:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp255, F, tmp254
	sw	$4,%gp_rel(F)($28)	 # tmp255, F
.L155:
	sll	$4,$3,1	 # tmp256, H.1962,
	addu	$4,$4,$2	 # tmp257, tmp256, carry
	slt	$4,$4,256	 # tmp258, tmp257,
	bne	$4,$0,.L156	 #, tmp258,,
	li	$4,-2			# 0xfffffffe	 # tmp262,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp260, F,
	j	.L157	 #
	sw	$4,%gp_rel(F)($28)	 # tmp260, F

.L156:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp263, F, tmp262
	sw	$4,%gp_rel(F)($28)	 # tmp263, F
.L157:
	sll	$3,$3,1	 # tmp264, H.1962,
	addu	$2,$3,$2	 # tmp267, tmp264, carry
	sb	$2,%gp_rel(H)($28)	 # tmp267, H
	li	$2,-3			# 0xfffffffd	 # tmp269,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp270, F, tmp269
	sw	$2,%gp_rel(F)($28)	 # tmp270, F
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adhlhl
	.size	op_adhlhl, .-op_adhlhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adhlsp
	.type	op_adhlsp, @function
op_adhlsp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK.1836, STACK
	lui	$4,%hi(ram)	 # tmp260,
	addiu	$4,$4,%lo(ram)	 # tmp259, tmp260,
	subu	$3,$2,$4	 # tmp262, STACK.1836, tmp259
	andi	$3,$3,0x00ff	 # spl, tmp262
	subu	$4,$2,$4	 # tmp263, STACK.1836, tmp259
	ext	$4,$4,8,8	 # sph, tmp263,,
	lbu	$2,%gp_rel(L)($28)	 # L.1841, L
	addu	$3,$3,$2	 # tmp267, spl, L.1841
	slt	$2,$3,256	 # tmp269, tmp267,
	xori	$2,$2,0x1	 # carry, tmp269,
	sb	$3,%gp_rel(L)($28)	 # tmp267, L
	lbu	$3,%gp_rel(H)($28)	 # H.1844, H
	andi	$5,$4,0xf	 # tmp271, sph,
	addu	$5,$2,$5	 # tmp272, carry, tmp271
	andi	$6,$3,0xf	 # tmp273, H.1844,
	addu	$5,$5,$6	 # tmp274, tmp272, tmp273
	slt	$5,$5,16	 # tmp275, tmp274,
	bne	$5,$0,.L159	 #, tmp275,,
	li	$5,-17			# 0xffffffef	 # tmp279,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x10	 # tmp277, F,
	j	.L160	 #
	sw	$5,%gp_rel(F)($28)	 # tmp277, F

.L159:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp280, F, tmp279
	sw	$5,%gp_rel(F)($28)	 # tmp280, F
.L160:
	addu	$5,$4,$3	 # tmp281, sph, H.1844
	addu	$5,$5,$2	 # tmp282, tmp281, carry
	slt	$5,$5,256	 # tmp283, tmp282,
	bne	$5,$0,.L161	 #, tmp283,,
	li	$5,-2			# 0xfffffffe	 # tmp287,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp285, F,
	j	.L162	 #
	sw	$5,%gp_rel(F)($28)	 # tmp285, F

.L161:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp288, F, tmp287
	sw	$5,%gp_rel(F)($28)	 # tmp288, F
.L162:
	addu	$3,$4,$3	 # tmp289, sph, H.1844
	addu	$2,$3,$2	 # tmp292, tmp289, carry
	sb	$2,%gp_rel(H)($28)	 # tmp292, H
	li	$2,-3			# 0xfffffffd	 # tmp294,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp295, F, tmp294
	sw	$2,%gp_rel(F)($28)	 # tmp295, F
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adhlsp
	.size	op_adhlsp, .-op_adhlsp
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_anda
	.type	op_anda, @function
op_anda:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.877, A
	seb	$3,$2	 # A.877, A.877
	bgez	$3,.L164	 #, A.877,
	li	$3,-129			# 0xffffff7f	 # tmp241,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp239, F,
	j	.L165	 #
	sw	$3,%gp_rel(F)($28)	 # tmp239, F

.L164:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp242, F, tmp241
	sw	$3,%gp_rel(F)($28)	 # tmp242, F
.L165:
	beql	$2,$0,.L166	 #, A.877,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp244,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp245, F, tmp244
	j	.L167	 #
	sw	$3,%gp_rel(F)($28)	 # tmp245, F

.L166:
	ori	$3,$3,0x40	 # tmp247, F,
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L167:
	lw	$3,%gp_rel(F)($28)	 # F, F
	sll	$2,$2,2	 # tmp250, A.877,
	lui	$4,%hi(parrity)	 # tmp249,
	addiu	$4,$4,%lo(parrity)	 # tmp252, tmp249,
	addu	$2,$2,$4	 # tmp251, tmp250, tmp252
	lw	$2,0($2)	 # tmp253, parrity
	beq	$2,$0,.L168	 #, tmp253,,
	ori	$3,$3,0x10	 # F.885, F,

	li	$2,-5			# 0xfffffffb	 # tmp254,
	and	$3,$3,$2	 # tmp255, F.885, tmp254
	j	.L169	 #
	sw	$3,%gp_rel(F)($28)	 # tmp255, F

.L168:
	ori	$3,$3,0x4	 # tmp256, F.885,
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
.L169:
	li	$2,-4			# 0xfffffffc	 # tmp258,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp259, F, tmp258
	sw	$2,%gp_rel(F)($28)	 # tmp259, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_anda
	.size	op_anda, .-op_anda
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_andb
	.type	op_andb, @function
op_andb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(B)($28)	 # tmp241, B
	lbu	$2,%gp_rel(A)($28)	 #, A
	and	$2,$3,$2	 # A.989, tmp241, A
	seb	$3,$2	 # A.989, A.989
	bgez	$3,.L171	 #, A.989,
	sb	$2,%gp_rel(A)($28)	 # A.989, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L172	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L171:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L172:
	beql	$2,$0,.L173	 #, A.989,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L174	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L173:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L174:
	lw	$3,%gp_rel(F)($28)	 # F, F
	sll	$2,$2,2	 # tmp255, A.989,
	lui	$4,%hi(parrity)	 # tmp254,
	addiu	$4,$4,%lo(parrity)	 # tmp257, tmp254,
	addu	$2,$2,$4	 # tmp256, tmp255, tmp257
	lw	$2,0($2)	 # tmp258, parrity
	beq	$2,$0,.L175	 #, tmp258,,
	ori	$3,$3,0x10	 # F.998, F,

	li	$2,-5			# 0xfffffffb	 # tmp259,
	and	$3,$3,$2	 # tmp260, F.998, tmp259
	j	.L176	 #
	sw	$3,%gp_rel(F)($28)	 # tmp260, F

.L175:
	ori	$3,$3,0x4	 # tmp261, F.998,
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L176:
	li	$2,-4			# 0xfffffffc	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	sw	$2,%gp_rel(F)($28)	 # tmp264, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_andb
	.size	op_andb, .-op_andb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_andc
	.type	op_andc, @function
op_andc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(C)($28)	 # tmp241, C
	lbu	$2,%gp_rel(A)($28)	 #, A
	and	$2,$3,$2	 # A.973, tmp241, A
	seb	$3,$2	 # A.973, A.973
	bgez	$3,.L178	 #, A.973,
	sb	$2,%gp_rel(A)($28)	 # A.973, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L179	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L178:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L179:
	beql	$2,$0,.L180	 #, A.973,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L181	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L180:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L181:
	lw	$3,%gp_rel(F)($28)	 # F, F
	sll	$2,$2,2	 # tmp255, A.973,
	lui	$4,%hi(parrity)	 # tmp254,
	addiu	$4,$4,%lo(parrity)	 # tmp257, tmp254,
	addu	$2,$2,$4	 # tmp256, tmp255, tmp257
	lw	$2,0($2)	 # tmp258, parrity
	beq	$2,$0,.L182	 #, tmp258,,
	ori	$3,$3,0x10	 # F.982, F,

	li	$2,-5			# 0xfffffffb	 # tmp259,
	and	$3,$3,$2	 # tmp260, F.982, tmp259
	j	.L183	 #
	sw	$3,%gp_rel(F)($28)	 # tmp260, F

.L182:
	ori	$3,$3,0x4	 # tmp261, F.982,
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L183:
	li	$2,-4			# 0xfffffffc	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	sw	$2,%gp_rel(F)($28)	 # tmp264, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_andc
	.size	op_andc, .-op_andc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_andd
	.type	op_andd, @function
op_andd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(D)($28)	 # tmp241, D
	lbu	$2,%gp_rel(A)($28)	 #, A
	and	$2,$3,$2	 # A.957, tmp241, A
	seb	$3,$2	 # A.957, A.957
	bgez	$3,.L185	 #, A.957,
	sb	$2,%gp_rel(A)($28)	 # A.957, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L186	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L185:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L186:
	beql	$2,$0,.L187	 #, A.957,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L188	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L187:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L188:
	lw	$3,%gp_rel(F)($28)	 # F, F
	sll	$2,$2,2	 # tmp255, A.957,
	lui	$4,%hi(parrity)	 # tmp254,
	addiu	$4,$4,%lo(parrity)	 # tmp257, tmp254,
	addu	$2,$2,$4	 # tmp256, tmp255, tmp257
	lw	$2,0($2)	 # tmp258, parrity
	beq	$2,$0,.L189	 #, tmp258,,
	ori	$3,$3,0x10	 # F.966, F,

	li	$2,-5			# 0xfffffffb	 # tmp259,
	and	$3,$3,$2	 # tmp260, F.966, tmp259
	j	.L190	 #
	sw	$3,%gp_rel(F)($28)	 # tmp260, F

.L189:
	ori	$3,$3,0x4	 # tmp261, F.966,
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L190:
	li	$2,-4			# 0xfffffffc	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	sw	$2,%gp_rel(F)($28)	 # tmp264, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_andd
	.size	op_andd, .-op_andd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ande
	.type	op_ande, @function
op_ande:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(E)($28)	 # tmp241, E
	lbu	$2,%gp_rel(A)($28)	 #, A
	and	$2,$3,$2	 # A.941, tmp241, A
	seb	$3,$2	 # A.941, A.941
	bgez	$3,.L192	 #, A.941,
	sb	$2,%gp_rel(A)($28)	 # A.941, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L193	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L192:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L193:
	beql	$2,$0,.L194	 #, A.941,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L195	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L194:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L195:
	lw	$3,%gp_rel(F)($28)	 # F, F
	sll	$2,$2,2	 # tmp255, A.941,
	lui	$4,%hi(parrity)	 # tmp254,
	addiu	$4,$4,%lo(parrity)	 # tmp257, tmp254,
	addu	$2,$2,$4	 # tmp256, tmp255, tmp257
	lw	$2,0($2)	 # tmp258, parrity
	beq	$2,$0,.L196	 #, tmp258,,
	ori	$3,$3,0x10	 # F.950, F,

	li	$2,-5			# 0xfffffffb	 # tmp259,
	and	$3,$3,$2	 # tmp260, F.950, tmp259
	j	.L197	 #
	sw	$3,%gp_rel(F)($28)	 # tmp260, F

.L196:
	ori	$3,$3,0x4	 # tmp261, F.950,
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L197:
	li	$2,-4			# 0xfffffffc	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	sw	$2,%gp_rel(F)($28)	 # tmp264, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ande
	.size	op_ande, .-op_ande
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_andh
	.type	op_andh, @function
op_andh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(H)($28)	 # tmp241, H
	lbu	$2,%gp_rel(A)($28)	 #, A
	and	$2,$3,$2	 # A.925, tmp241, A
	seb	$3,$2	 # A.925, A.925
	bgez	$3,.L199	 #, A.925,
	sb	$2,%gp_rel(A)($28)	 # A.925, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L200	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L199:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L200:
	beql	$2,$0,.L201	 #, A.925,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L202	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L201:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L202:
	lw	$3,%gp_rel(F)($28)	 # F, F
	sll	$2,$2,2	 # tmp255, A.925,
	lui	$4,%hi(parrity)	 # tmp254,
	addiu	$4,$4,%lo(parrity)	 # tmp257, tmp254,
	addu	$2,$2,$4	 # tmp256, tmp255, tmp257
	lw	$2,0($2)	 # tmp258, parrity
	beq	$2,$0,.L203	 #, tmp258,,
	ori	$3,$3,0x10	 # F.934, F,

	li	$2,-5			# 0xfffffffb	 # tmp259,
	and	$3,$3,$2	 # tmp260, F.934, tmp259
	j	.L204	 #
	sw	$3,%gp_rel(F)($28)	 # tmp260, F

.L203:
	ori	$3,$3,0x4	 # tmp261, F.934,
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L204:
	li	$2,-4			# 0xfffffffc	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	sw	$2,%gp_rel(F)($28)	 # tmp264, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_andh
	.size	op_andh, .-op_andh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_andl
	.type	op_andl, @function
op_andl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(L)($28)	 # tmp241, L
	lbu	$2,%gp_rel(A)($28)	 #, A
	and	$2,$3,$2	 # A.909, tmp241, A
	seb	$3,$2	 # A.909, A.909
	bgez	$3,.L206	 #, A.909,
	sb	$2,%gp_rel(A)($28)	 # A.909, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L207	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L206:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L207:
	beql	$2,$0,.L208	 #, A.909,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L209	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L208:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L209:
	lw	$3,%gp_rel(F)($28)	 # F, F
	sll	$2,$2,2	 # tmp255, A.909,
	lui	$4,%hi(parrity)	 # tmp254,
	addiu	$4,$4,%lo(parrity)	 # tmp257, tmp254,
	addu	$2,$2,$4	 # tmp256, tmp255, tmp257
	lw	$2,0($2)	 # tmp258, parrity
	beq	$2,$0,.L210	 #, tmp258,,
	ori	$3,$3,0x10	 # F.918, F,

	li	$2,-5			# 0xfffffffb	 # tmp259,
	and	$3,$3,$2	 # tmp260, F.918, tmp259
	j	.L211	 #
	sw	$3,%gp_rel(F)($28)	 # tmp260, F

.L210:
	ori	$3,$3,0x4	 # tmp261, F.918,
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L211:
	li	$2,-4			# 0xfffffffc	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	sw	$2,%gp_rel(F)($28)	 # tmp264, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_andl
	.size	op_andl, .-op_andl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_andhl
	.type	op_andhl, @function
op_andhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp248, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp250, tmp248, L
	lui	$3,%hi(ram)	 # tmp246,
	addiu	$3,$3,%lo(ram)	 # tmp252, tmp246,
	addu	$2,$2,$3	 # tmp251, tmp250, tmp252
	lbu	$3,0($2)	 # tmp255, ram
	lbu	$2,%gp_rel(A)($28)	 #, A
	and	$2,$3,$2	 # A.893, tmp255, A
	seb	$3,$2	 # A.893, A.893
	bgez	$3,.L213	 #, A.893,
	sb	$2,%gp_rel(A)($28)	 # A.893, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp258, F,
	j	.L214	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L213:
	li	$3,-129			# 0xffffff7f	 # tmp260,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp261, F, tmp260
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L214:
	beql	$2,$0,.L215	 #, A.893,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp263,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp264, F, tmp263
	j	.L216	 #
	sw	$3,%gp_rel(F)($28)	 # tmp264, F

.L215:
	ori	$3,$3,0x40	 # tmp266, F,
	sw	$3,%gp_rel(F)($28)	 # tmp266, F
.L216:
	lw	$3,%gp_rel(F)($28)	 # F, F
	sll	$2,$2,2	 # tmp269, A.893,
	lui	$4,%hi(parrity)	 # tmp268,
	addiu	$4,$4,%lo(parrity)	 # tmp271, tmp268,
	addu	$2,$2,$4	 # tmp270, tmp269, tmp271
	lw	$2,0($2)	 # tmp272, parrity
	beq	$2,$0,.L217	 #, tmp272,,
	ori	$3,$3,0x10	 # F.902, F,

	li	$2,-5			# 0xfffffffb	 # tmp273,
	and	$3,$3,$2	 # tmp274, F.902, tmp273
	j	.L218	 #
	sw	$3,%gp_rel(F)($28)	 # tmp274, F

.L217:
	ori	$3,$3,0x4	 # tmp275, F.902,
	sw	$3,%gp_rel(F)($28)	 # tmp275, F
.L218:
	li	$2,-4			# 0xfffffffc	 # tmp277,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp278, F, tmp277
	sw	$2,%gp_rel(F)($28)	 # tmp278, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_andhl
	.size	op_andhl, .-op_andhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_andn
	.type	op_andn, @function
op_andn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(PC)($28)	 # PC.190, PC
	lbu	$4,0($3)	 # tmp243,* PC.190
	lbu	$2,%gp_rel(A)($28)	 #, A
	and	$2,$4,$2	 # A.193, tmp243, A
	sb	$2,%gp_rel(A)($28)	 # A.193, A
	addiu	$3,$3,1	 # tmp244, PC.190,
	sw	$3,%gp_rel(PC)($28)	 # tmp244, PC
	seb	$3,$2	 # A.193, A.193
	bgez	$3,.L220	 #, A.193,
	li	$3,-129			# 0xffffff7f	 # tmp249,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp247, F,
	j	.L221	 #
	sw	$3,%gp_rel(F)($28)	 # tmp247, F

.L220:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	sw	$3,%gp_rel(F)($28)	 # tmp250, F
.L221:
	beql	$2,$0,.L222	 #, A.193,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp252,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp253, F, tmp252
	j	.L223	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L222:
	ori	$3,$3,0x40	 # tmp255, F,
	sw	$3,%gp_rel(F)($28)	 # tmp255, F
.L223:
	lw	$3,%gp_rel(F)($28)	 # F, F
	sll	$2,$2,2	 # tmp258, A.193,
	lui	$4,%hi(parrity)	 # tmp257,
	addiu	$4,$4,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$4	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beq	$2,$0,.L224	 #, tmp261,,
	ori	$3,$3,0x10	 # F.202, F,

	li	$2,-5			# 0xfffffffb	 # tmp262,
	and	$3,$3,$2	 # tmp263, F.202, tmp262
	j	.L225	 #
	sw	$3,%gp_rel(F)($28)	 # tmp263, F

.L224:
	ori	$3,$3,0x4	 # tmp264, F.202,
	sw	$3,%gp_rel(F)($28)	 # tmp264, F
.L225:
	li	$2,-4			# 0xfffffffc	 # tmp266,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp267, F, tmp266
	sw	$2,%gp_rel(F)($28)	 # tmp267, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_andn
	.size	op_andn, .-op_andn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ora
	.type	op_ora, @function
op_ora:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.649, A
	seb	$3,$2	 # A.649, A.649
	bgez	$3,.L227	 #, A.649,
	li	$3,-129			# 0xffffff7f	 # tmp241,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp239, F,
	j	.L228	 #
	sw	$3,%gp_rel(F)($28)	 # tmp239, F

.L227:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp242, F, tmp241
	sw	$3,%gp_rel(F)($28)	 # tmp242, F
.L228:
	beq	$2,$0,.L229	 #, A.649,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp244,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp245, F, tmp244
	j	.L230	 #
	sw	$3,%gp_rel(F)($28)	 # tmp245, F

.L229:
	ori	$3,$3,0x40	 # tmp247, F,
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L230:
	sll	$2,$2,2	 # tmp249, A.649,
	lui	$3,%hi(parrity)	 # tmp248,
	addiu	$3,$3,%lo(parrity)	 # tmp251, tmp248,
	addu	$2,$2,$3	 # tmp250, tmp249, tmp251
	lw	$2,0($2)	 # tmp252, parrity
	beql	$2,$0,.L231	 #, tmp252,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp254,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp255, F, tmp254
	j	.L232	 #
	sw	$2,%gp_rel(F)($28)	 # tmp255, F

.L231:
	ori	$2,$2,0x4	 # tmp257, F,
	sw	$2,%gp_rel(F)($28)	 # tmp257, F
.L232:
	li	$2,-20			# 0xffffffec	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	sw	$2,%gp_rel(F)($28)	 # tmp260, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ora
	.size	op_ora, .-op_ora
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_orb
	.type	op_orb, @function
op_orb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(B)($28)	 #, B
	or	$2,$3,$2	 # tmp241, B, A
	andi	$2,$2,0x00ff	 # A.754, tmp241
	seb	$3,$2	 # A.754, A.754
	bgez	$3,.L234	 #, A.754,
	sb	$2,%gp_rel(A)($28)	 # A.754, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L235	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L234:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L235:
	beq	$2,$0,.L236	 #, A.754,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L237	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L236:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L237:
	sll	$2,$2,2	 # tmp254, A.754,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L238	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L239	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L238:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L239:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_orb
	.size	op_orb, .-op_orb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_orc
	.type	op_orc, @function
op_orc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(C)($28)	 #, C
	or	$2,$3,$2	 # tmp241, C, A
	andi	$2,$2,0x00ff	 # A.739, tmp241
	seb	$3,$2	 # A.739, A.739
	bgez	$3,.L241	 #, A.739,
	sb	$2,%gp_rel(A)($28)	 # A.739, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L242	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L241:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L242:
	beq	$2,$0,.L243	 #, A.739,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L244	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L243:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L244:
	sll	$2,$2,2	 # tmp254, A.739,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L245	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L246	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L245:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L246:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_orc
	.size	op_orc, .-op_orc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ord
	.type	op_ord, @function
op_ord:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(D)($28)	 #, D
	or	$2,$3,$2	 # tmp241, D, A
	andi	$2,$2,0x00ff	 # A.724, tmp241
	seb	$3,$2	 # A.724, A.724
	bgez	$3,.L248	 #, A.724,
	sb	$2,%gp_rel(A)($28)	 # A.724, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L249	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L248:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L249:
	beq	$2,$0,.L250	 #, A.724,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L251	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L250:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L251:
	sll	$2,$2,2	 # tmp254, A.724,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L252	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L253	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L252:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L253:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ord
	.size	op_ord, .-op_ord
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ore
	.type	op_ore, @function
op_ore:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(E)($28)	 #, E
	or	$2,$3,$2	 # tmp241, E, A
	andi	$2,$2,0x00ff	 # A.709, tmp241
	seb	$3,$2	 # A.709, A.709
	bgez	$3,.L255	 #, A.709,
	sb	$2,%gp_rel(A)($28)	 # A.709, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L256	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L255:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L256:
	beq	$2,$0,.L257	 #, A.709,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L258	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L257:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L258:
	sll	$2,$2,2	 # tmp254, A.709,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L259	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L260	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L259:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L260:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ore
	.size	op_ore, .-op_ore
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_orh
	.type	op_orh, @function
op_orh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(H)($28)	 #, H
	or	$2,$3,$2	 # tmp241, H, A
	andi	$2,$2,0x00ff	 # A.694, tmp241
	seb	$3,$2	 # A.694, A.694
	bgez	$3,.L262	 #, A.694,
	sb	$2,%gp_rel(A)($28)	 # A.694, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L263	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L262:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L263:
	beq	$2,$0,.L264	 #, A.694,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L265	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L264:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L265:
	sll	$2,$2,2	 # tmp254, A.694,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L266	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L267	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L266:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L267:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_orh
	.size	op_orh, .-op_orh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_orl
	.type	op_orl, @function
op_orl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(L)($28)	 #, L
	or	$2,$3,$2	 # tmp241, L, A
	andi	$2,$2,0x00ff	 # A.679, tmp241
	seb	$3,$2	 # A.679, A.679
	bgez	$3,.L269	 #, A.679,
	sb	$2,%gp_rel(A)($28)	 # A.679, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L270	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L269:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L270:
	beq	$2,$0,.L271	 #, A.679,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L272	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L271:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L272:
	sll	$2,$2,2	 # tmp254, A.679,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L273	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L274	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L273:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L274:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_orl
	.size	op_orl, .-op_orl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_orhl
	.type	op_orhl, @function
op_orhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp248, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp250, tmp248, L
	lui	$3,%hi(ram)	 # tmp246,
	addiu	$3,$3,%lo(ram)	 # tmp252, tmp246,
	addu	$2,$2,$3	 # tmp251, tmp250, tmp252
	lbu	$3,0($2)	 #, ram
	lbu	$2,%gp_rel(A)($28)	 #, A
	or	$2,$3,$2	 # tmp255, tmp253, A
	andi	$2,$2,0x00ff	 # A.664, tmp255
	seb	$3,$2	 # A.664, A.664
	bgez	$3,.L276	 #, A.664,
	sb	$2,%gp_rel(A)($28)	 # A.664, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp258, F,
	j	.L277	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L276:
	li	$3,-129			# 0xffffff7f	 # tmp260,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp261, F, tmp260
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L277:
	beq	$2,$0,.L278	 #, A.664,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp263,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp264, F, tmp263
	j	.L279	 #
	sw	$3,%gp_rel(F)($28)	 # tmp264, F

.L278:
	ori	$3,$3,0x40	 # tmp266, F,
	sw	$3,%gp_rel(F)($28)	 # tmp266, F
.L279:
	sll	$2,$2,2	 # tmp268, A.664,
	lui	$3,%hi(parrity)	 # tmp267,
	addiu	$3,$3,%lo(parrity)	 # tmp270, tmp267,
	addu	$2,$2,$3	 # tmp269, tmp268, tmp270
	lw	$2,0($2)	 # tmp271, parrity
	beql	$2,$0,.L280	 #, tmp271,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp273,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp274, F, tmp273
	j	.L281	 #
	sw	$2,%gp_rel(F)($28)	 # tmp274, F

.L280:
	ori	$2,$2,0x4	 # tmp276, F,
	sw	$2,%gp_rel(F)($28)	 # tmp276, F
.L281:
	li	$2,-20			# 0xffffffec	 # tmp278,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp279, F, tmp278
	sw	$2,%gp_rel(F)($28)	 # tmp279, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_orhl
	.size	op_orhl, .-op_orhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_orn
	.type	op_orn, @function
op_orn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(PC)($28)	 # PC.88, PC
	lbu	$4,0($3)	 #,* PC.88
	lbu	$2,%gp_rel(A)($28)	 #, A
	or	$2,$4,$2	 # tmp243, tmp241, A
	andi	$2,$2,0x00ff	 # A.91, tmp243
	sb	$2,%gp_rel(A)($28)	 # A.91, A
	addiu	$3,$3,1	 # tmp244, PC.88,
	sw	$3,%gp_rel(PC)($28)	 # tmp244, PC
	seb	$3,$2	 # A.91, A.91
	bgez	$3,.L283	 #, A.91,
	li	$3,-129			# 0xffffff7f	 # tmp249,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp247, F,
	j	.L284	 #
	sw	$3,%gp_rel(F)($28)	 # tmp247, F

.L283:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	sw	$3,%gp_rel(F)($28)	 # tmp250, F
.L284:
	beq	$2,$0,.L285	 #, A.91,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp252,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp253, F, tmp252
	j	.L286	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L285:
	ori	$3,$3,0x40	 # tmp255, F,
	sw	$3,%gp_rel(F)($28)	 # tmp255, F
.L286:
	sll	$2,$2,2	 # tmp257, A.91,
	lui	$3,%hi(parrity)	 # tmp256,
	addiu	$3,$3,%lo(parrity)	 # tmp259, tmp256,
	addu	$2,$2,$3	 # tmp258, tmp257, tmp259
	lw	$2,0($2)	 # tmp260, parrity
	beql	$2,$0,.L287	 #, tmp260,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L288	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L287:
	ori	$2,$2,0x4	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L288:
	li	$2,-20			# 0xffffffec	 # tmp267,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp268, F, tmp267
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_orn
	.size	op_orn, .-op_orn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_xora
	.type	op_xora, @function
op_xora:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	sb	$0,%gp_rel(A)($28)	 #, A
	li	$2,-148			# 0xffffff6c	 # tmp224,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp222, F, tmp224
	ori	$2,$2,0x44	 # tmp225, tmp222,
	sw	$2,%gp_rel(F)($28)	 # tmp225, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_xora
	.size	op_xora, .-op_xora
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_xorb
	.type	op_xorb, @function
op_xorb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(B)($28)	 #, B
	xor	$2,$3,$2	 # tmp241, B, A
	andi	$2,$2,0x00ff	 # A.863, tmp241
	seb	$3,$2	 # A.863, A.863
	bgez	$3,.L291	 #, A.863,
	sb	$2,%gp_rel(A)($28)	 # A.863, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L292	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L291:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L292:
	beq	$2,$0,.L293	 #, A.863,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L294	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L293:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L294:
	sll	$2,$2,2	 # tmp254, A.863,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L295	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L296	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L295:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L296:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_xorb
	.size	op_xorb, .-op_xorb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_xorc
	.type	op_xorc, @function
op_xorc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(C)($28)	 #, C
	xor	$2,$3,$2	 # tmp241, C, A
	andi	$2,$2,0x00ff	 # A.848, tmp241
	seb	$3,$2	 # A.848, A.848
	bgez	$3,.L298	 #, A.848,
	sb	$2,%gp_rel(A)($28)	 # A.848, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L299	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L298:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L299:
	beq	$2,$0,.L300	 #, A.848,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L301	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L300:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L301:
	sll	$2,$2,2	 # tmp254, A.848,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L302	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L303	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L302:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L303:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_xorc
	.size	op_xorc, .-op_xorc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_xord
	.type	op_xord, @function
op_xord:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(D)($28)	 #, D
	xor	$2,$3,$2	 # tmp241, D, A
	andi	$2,$2,0x00ff	 # A.833, tmp241
	seb	$3,$2	 # A.833, A.833
	bgez	$3,.L305	 #, A.833,
	sb	$2,%gp_rel(A)($28)	 # A.833, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L306	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L305:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L306:
	beq	$2,$0,.L307	 #, A.833,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L308	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L307:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L308:
	sll	$2,$2,2	 # tmp254, A.833,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L309	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L310	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L309:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L310:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_xord
	.size	op_xord, .-op_xord
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_xore
	.type	op_xore, @function
op_xore:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(E)($28)	 #, E
	xor	$2,$3,$2	 # tmp241, E, A
	andi	$2,$2,0x00ff	 # A.818, tmp241
	seb	$3,$2	 # A.818, A.818
	bgez	$3,.L312	 #, A.818,
	sb	$2,%gp_rel(A)($28)	 # A.818, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L313	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L312:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L313:
	beq	$2,$0,.L314	 #, A.818,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L315	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L314:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L315:
	sll	$2,$2,2	 # tmp254, A.818,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L316	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L317	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L316:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L317:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_xore
	.size	op_xore, .-op_xore
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_xorh
	.type	op_xorh, @function
op_xorh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(H)($28)	 #, H
	xor	$2,$3,$2	 # tmp241, H, A
	andi	$2,$2,0x00ff	 # A.803, tmp241
	seb	$3,$2	 # A.803, A.803
	bgez	$3,.L319	 #, A.803,
	sb	$2,%gp_rel(A)($28)	 # A.803, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L320	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L319:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L320:
	beq	$2,$0,.L321	 #, A.803,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L322	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L321:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L322:
	sll	$2,$2,2	 # tmp254, A.803,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L323	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L324	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L323:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L324:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_xorh
	.size	op_xorh, .-op_xorh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_xorl
	.type	op_xorl, @function
op_xorl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	lbu	$3,%gp_rel(L)($28)	 #, L
	xor	$2,$3,$2	 # tmp241, L, A
	andi	$2,$2,0x00ff	 # A.788, tmp241
	seb	$3,$2	 # A.788, A.788
	bgez	$3,.L326	 #, A.788,
	sb	$2,%gp_rel(A)($28)	 # A.788, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp244, F,
	j	.L327	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L326:
	li	$3,-129			# 0xffffff7f	 # tmp246,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp247, F, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L327:
	beq	$2,$0,.L328	 #, A.788,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	j	.L329	 #
	sw	$3,%gp_rel(F)($28)	 # tmp250, F

.L328:
	ori	$3,$3,0x40	 # tmp252, F,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L329:
	sll	$2,$2,2	 # tmp254, A.788,
	lui	$3,%hi(parrity)	 # tmp253,
	addiu	$3,$3,%lo(parrity)	 # tmp256, tmp253,
	addu	$2,$2,$3	 # tmp255, tmp254, tmp256
	lw	$2,0($2)	 # tmp257, parrity
	beql	$2,$0,.L330	 #, tmp257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp259,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp260, F, tmp259
	j	.L331	 #
	sw	$2,%gp_rel(F)($28)	 # tmp260, F

.L330:
	ori	$2,$2,0x4	 # tmp262, F,
	sw	$2,%gp_rel(F)($28)	 # tmp262, F
.L331:
	li	$2,-20			# 0xffffffec	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp265, F, tmp264
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_xorl
	.size	op_xorl, .-op_xorl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_xorhl
	.type	op_xorhl, @function
op_xorhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp248, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp250, tmp248, L
	lui	$3,%hi(ram)	 # tmp246,
	addiu	$3,$3,%lo(ram)	 # tmp252, tmp246,
	addu	$2,$2,$3	 # tmp251, tmp250, tmp252
	lbu	$3,0($2)	 #, ram
	lbu	$2,%gp_rel(A)($28)	 #, A
	xor	$2,$3,$2	 # tmp255, tmp253, A
	andi	$2,$2,0x00ff	 # A.773, tmp255
	seb	$3,$2	 # A.773, A.773
	bgez	$3,.L333	 #, A.773,
	sb	$2,%gp_rel(A)($28)	 # A.773, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp258, F,
	j	.L334	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L333:
	li	$3,-129			# 0xffffff7f	 # tmp260,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp261, F, tmp260
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L334:
	beq	$2,$0,.L335	 #, A.773,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp263,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp264, F, tmp263
	j	.L336	 #
	sw	$3,%gp_rel(F)($28)	 # tmp264, F

.L335:
	ori	$3,$3,0x40	 # tmp266, F,
	sw	$3,%gp_rel(F)($28)	 # tmp266, F
.L336:
	sll	$2,$2,2	 # tmp268, A.773,
	lui	$3,%hi(parrity)	 # tmp267,
	addiu	$3,$3,%lo(parrity)	 # tmp270, tmp267,
	addu	$2,$2,$3	 # tmp269, tmp268, tmp270
	lw	$2,0($2)	 # tmp271, parrity
	beql	$2,$0,.L337	 #, tmp271,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp273,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp274, F, tmp273
	j	.L338	 #
	sw	$2,%gp_rel(F)($28)	 # tmp274, F

.L337:
	ori	$2,$2,0x4	 # tmp276, F,
	sw	$2,%gp_rel(F)($28)	 # tmp276, F
.L338:
	li	$2,-20			# 0xffffffec	 # tmp278,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp279, F, tmp278
	sw	$2,%gp_rel(F)($28)	 # tmp279, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_xorhl
	.size	op_xorhl, .-op_xorhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_xorn
	.type	op_xorn, @function
op_xorn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(PC)($28)	 # PC.139, PC
	lbu	$4,0($3)	 #,* PC.139
	lbu	$2,%gp_rel(A)($28)	 #, A
	xor	$2,$4,$2	 # tmp243, tmp241, A
	andi	$2,$2,0x00ff	 # A.142, tmp243
	sb	$2,%gp_rel(A)($28)	 # A.142, A
	addiu	$3,$3,1	 # tmp244, PC.139,
	sw	$3,%gp_rel(PC)($28)	 # tmp244, PC
	seb	$3,$2	 # A.142, A.142
	bgez	$3,.L340	 #, A.142,
	li	$3,-129			# 0xffffff7f	 # tmp249,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp247, F,
	j	.L341	 #
	sw	$3,%gp_rel(F)($28)	 # tmp247, F

.L340:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	sw	$3,%gp_rel(F)($28)	 # tmp250, F
.L341:
	beq	$2,$0,.L342	 #, A.142,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp252,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp253, F, tmp252
	j	.L343	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L342:
	ori	$3,$3,0x40	 # tmp255, F,
	sw	$3,%gp_rel(F)($28)	 # tmp255, F
.L343:
	sll	$2,$2,2	 # tmp257, A.142,
	lui	$3,%hi(parrity)	 # tmp256,
	addiu	$3,$3,%lo(parrity)	 # tmp259, tmp256,
	addu	$2,$2,$3	 # tmp258, tmp257, tmp259
	lw	$2,0($2)	 # tmp260, parrity
	beql	$2,$0,.L344	 #, tmp260,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L345	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L344:
	ori	$2,$2,0x4	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L345:
	li	$2,-20			# 0xffffffec	 # tmp267,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp268, F, tmp267
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_xorn
	.size	op_xorn, .-op_xorn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adda
	.type	op_adda, @function
op_adda:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.1519, A
	andi	$3,$2,0xf	 # D.11731, A.1519,
	sll	$3,$3,1	 # tmp253, D.11731,
	slt	$3,$3,16	 # tmp254, tmp253,
	bne	$3,$0,.L347	 #, tmp254,,
	li	$3,-17			# 0xffffffef	 # tmp258,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp256, F,
	j	.L348	 #
	sw	$3,%gp_rel(F)($28)	 # tmp256, F

.L347:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp259, F, tmp258
	sw	$3,%gp_rel(F)($28)	 # tmp259, F
.L348:
	sll	$3,$2,1	 # tmp260, A.1519,
	slt	$3,$3,256	 # tmp261, tmp260,
	bne	$3,$0,.L349	 #, tmp261,,
	li	$3,-2			# 0xfffffffe	 # tmp265,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp263, F,
	j	.L350	 #
	sw	$3,%gp_rel(F)($28)	 # tmp263, F

.L349:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp266, F, tmp265
	sw	$3,%gp_rel(F)($28)	 # tmp266, F
.L350:
	seb	$2,$2	 # A.1519, A.1519
	sll	$2,$2,1	 # i, A.1519,
	andi	$3,$2,0x00ff	 # A.1527, i
	addiu	$4,$2,128	 # tmp268, i,
	sltu	$4,$4,256	 # tmp269, tmp268,
	bne	$4,$0,.L351	 #, tmp269,,
	sb	$3,%gp_rel(A)($28)	 # A.1527, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp271, F,
	j	.L352	 #
	sw	$4,%gp_rel(F)($28)	 # tmp271, F

.L351:
	li	$4,-5			# 0xfffffffb	 # tmp273,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp274, F, tmp273
	sw	$4,%gp_rel(F)($28)	 # tmp274, F
.L352:
	andi	$2,$2,0x80	 # tmp275, i,
	beq	$2,$0,.L353	 #, tmp275,,
	li	$2,-129			# 0xffffff7f	 # tmp279,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp277, F,
	j	.L354	 #
	sw	$2,%gp_rel(F)($28)	 # tmp277, F

.L353:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp280, F, tmp279
	sw	$2,%gp_rel(F)($28)	 # tmp280, F
.L354:
	beql	$3,$0,.L355	 #, A.1527,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp282,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp283, F, tmp282
	j	.L356	 #
	sw	$2,%gp_rel(F)($28)	 # tmp283, F

.L355:
	ori	$2,$2,0x40	 # tmp285, F,
	sw	$2,%gp_rel(F)($28)	 # tmp285, F
.L356:
	li	$2,-3			# 0xfffffffd	 # tmp287,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adda
	.size	op_adda, .-op_adda
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addb
	.type	op_addb, @function
op_addb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(A)($28)	 # A.1679, A
	lbu	$2,%gp_rel(B)($28)	 # B.1680, B
	andi	$5,$2,0xf	 # tmp258, B.1680,
	andi	$4,$3,0xf	 # tmp259, A.1679,
	addu	$4,$5,$4	 # tmp260, tmp258, tmp259
	slt	$4,$4,16	 # tmp261, tmp260,
	bne	$4,$0,.L358	 #, tmp261,,
	li	$4,-17			# 0xffffffef	 # tmp265,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp263, F,
	j	.L359	 #
	sw	$4,%gp_rel(F)($28)	 # tmp263, F

.L358:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp266, F, tmp265
	sw	$4,%gp_rel(F)($28)	 # tmp266, F
.L359:
	addu	$4,$2,$3	 # tmp267, B.1680, A.1679
	slt	$4,$4,256	 # tmp268, tmp267,
	bne	$4,$0,.L360	 #, tmp268,,
	li	$4,-2			# 0xfffffffe	 # tmp272,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp270, F,
	j	.L361	 #
	sw	$4,%gp_rel(F)($28)	 # tmp270, F

.L360:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp273, F, tmp272
	sw	$4,%gp_rel(F)($28)	 # tmp273, F
.L361:
	seb	$2,$2	 # B.1680, B.1680
	seb	$3,$3	 # A.1679, A.1679
	addu	$2,$2,$3	 # i, B.1680, A.1679
	andi	$3,$2,0x00ff	 # A.1689, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L362	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1689, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L363	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L362:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L363:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L364	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L365	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L364:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L365:
	beql	$3,$0,.L366	 #, A.1689,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L367	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L366:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L367:
	li	$2,-3			# 0xfffffffd	 # tmp295,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp296, F, tmp295
	sw	$2,%gp_rel(F)($28)	 # tmp296, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addb
	.size	op_addb, .-op_addb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addc
	.type	op_addc, @function
op_addc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(A)($28)	 # A.1656, A
	lbu	$2,%gp_rel(C)($28)	 # C.1657, C
	andi	$5,$2,0xf	 # tmp258, C.1657,
	andi	$4,$3,0xf	 # tmp259, A.1656,
	addu	$4,$5,$4	 # tmp260, tmp258, tmp259
	slt	$4,$4,16	 # tmp261, tmp260,
	bne	$4,$0,.L369	 #, tmp261,,
	li	$4,-17			# 0xffffffef	 # tmp265,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp263, F,
	j	.L370	 #
	sw	$4,%gp_rel(F)($28)	 # tmp263, F

.L369:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp266, F, tmp265
	sw	$4,%gp_rel(F)($28)	 # tmp266, F
.L370:
	addu	$4,$2,$3	 # tmp267, C.1657, A.1656
	slt	$4,$4,256	 # tmp268, tmp267,
	bne	$4,$0,.L371	 #, tmp268,,
	li	$4,-2			# 0xfffffffe	 # tmp272,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp270, F,
	j	.L372	 #
	sw	$4,%gp_rel(F)($28)	 # tmp270, F

.L371:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp273, F, tmp272
	sw	$4,%gp_rel(F)($28)	 # tmp273, F
.L372:
	seb	$2,$2	 # C.1657, C.1657
	seb	$3,$3	 # A.1656, A.1656
	addu	$2,$2,$3	 # i, C.1657, A.1656
	andi	$3,$2,0x00ff	 # A.1666, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L373	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1666, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L374	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L373:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L374:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L375	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L376	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L375:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L376:
	beql	$3,$0,.L377	 #, A.1666,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L378	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L377:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L378:
	li	$2,-3			# 0xfffffffd	 # tmp295,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp296, F, tmp295
	sw	$2,%gp_rel(F)($28)	 # tmp296, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addc
	.size	op_addc, .-op_addc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addd
	.type	op_addd, @function
op_addd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(A)($28)	 # A.1633, A
	lbu	$2,%gp_rel(D)($28)	 # D.1634, D
	andi	$5,$2,0xf	 # tmp258, D.1634,
	andi	$4,$3,0xf	 # tmp259, A.1633,
	addu	$4,$5,$4	 # tmp260, tmp258, tmp259
	slt	$4,$4,16	 # tmp261, tmp260,
	bne	$4,$0,.L380	 #, tmp261,,
	li	$4,-17			# 0xffffffef	 # tmp265,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp263, F,
	j	.L381	 #
	sw	$4,%gp_rel(F)($28)	 # tmp263, F

.L380:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp266, F, tmp265
	sw	$4,%gp_rel(F)($28)	 # tmp266, F
.L381:
	addu	$4,$2,$3	 # tmp267, D.1634, A.1633
	slt	$4,$4,256	 # tmp268, tmp267,
	bne	$4,$0,.L382	 #, tmp268,,
	li	$4,-2			# 0xfffffffe	 # tmp272,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp270, F,
	j	.L383	 #
	sw	$4,%gp_rel(F)($28)	 # tmp270, F

.L382:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp273, F, tmp272
	sw	$4,%gp_rel(F)($28)	 # tmp273, F
.L383:
	seb	$2,$2	 # D.1634, D.1634
	seb	$3,$3	 # A.1633, A.1633
	addu	$2,$2,$3	 # i, D.1634, A.1633
	andi	$3,$2,0x00ff	 # A.1643, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L384	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1643, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L385	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L384:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L385:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L386	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L387	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L386:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L387:
	beql	$3,$0,.L388	 #, A.1643,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L389	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L388:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L389:
	li	$2,-3			# 0xfffffffd	 # tmp295,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp296, F, tmp295
	sw	$2,%gp_rel(F)($28)	 # tmp296, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addd
	.size	op_addd, .-op_addd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adde
	.type	op_adde, @function
op_adde:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(A)($28)	 # A.1610, A
	lbu	$2,%gp_rel(E)($28)	 # E.1611, E
	andi	$5,$2,0xf	 # tmp258, E.1611,
	andi	$4,$3,0xf	 # tmp259, A.1610,
	addu	$4,$5,$4	 # tmp260, tmp258, tmp259
	slt	$4,$4,16	 # tmp261, tmp260,
	bne	$4,$0,.L391	 #, tmp261,,
	li	$4,-17			# 0xffffffef	 # tmp265,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp263, F,
	j	.L392	 #
	sw	$4,%gp_rel(F)($28)	 # tmp263, F

.L391:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp266, F, tmp265
	sw	$4,%gp_rel(F)($28)	 # tmp266, F
.L392:
	addu	$4,$2,$3	 # tmp267, E.1611, A.1610
	slt	$4,$4,256	 # tmp268, tmp267,
	bne	$4,$0,.L393	 #, tmp268,,
	li	$4,-2			# 0xfffffffe	 # tmp272,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp270, F,
	j	.L394	 #
	sw	$4,%gp_rel(F)($28)	 # tmp270, F

.L393:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp273, F, tmp272
	sw	$4,%gp_rel(F)($28)	 # tmp273, F
.L394:
	seb	$2,$2	 # E.1611, E.1611
	seb	$3,$3	 # A.1610, A.1610
	addu	$2,$2,$3	 # i, E.1611, A.1610
	andi	$3,$2,0x00ff	 # A.1620, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L395	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1620, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L396	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L395:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L396:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L397	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L398	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L397:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L398:
	beql	$3,$0,.L399	 #, A.1620,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L400	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L399:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L400:
	li	$2,-3			# 0xfffffffd	 # tmp295,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp296, F, tmp295
	sw	$2,%gp_rel(F)($28)	 # tmp296, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adde
	.size	op_adde, .-op_adde
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addh
	.type	op_addh, @function
op_addh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(A)($28)	 # A.1587, A
	lbu	$2,%gp_rel(H)($28)	 # H.1588, H
	andi	$5,$2,0xf	 # tmp258, H.1588,
	andi	$4,$3,0xf	 # tmp259, A.1587,
	addu	$4,$5,$4	 # tmp260, tmp258, tmp259
	slt	$4,$4,16	 # tmp261, tmp260,
	bne	$4,$0,.L402	 #, tmp261,,
	li	$4,-17			# 0xffffffef	 # tmp265,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp263, F,
	j	.L403	 #
	sw	$4,%gp_rel(F)($28)	 # tmp263, F

.L402:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp266, F, tmp265
	sw	$4,%gp_rel(F)($28)	 # tmp266, F
.L403:
	addu	$4,$2,$3	 # tmp267, H.1588, A.1587
	slt	$4,$4,256	 # tmp268, tmp267,
	bne	$4,$0,.L404	 #, tmp268,,
	li	$4,-2			# 0xfffffffe	 # tmp272,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp270, F,
	j	.L405	 #
	sw	$4,%gp_rel(F)($28)	 # tmp270, F

.L404:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp273, F, tmp272
	sw	$4,%gp_rel(F)($28)	 # tmp273, F
.L405:
	seb	$2,$2	 # H.1588, H.1588
	seb	$3,$3	 # A.1587, A.1587
	addu	$2,$2,$3	 # i, H.1588, A.1587
	andi	$3,$2,0x00ff	 # A.1597, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L406	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1597, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L407	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L406:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L407:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L408	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L409	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L408:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L409:
	beql	$3,$0,.L410	 #, A.1597,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L411	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L410:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L411:
	li	$2,-3			# 0xfffffffd	 # tmp295,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp296, F, tmp295
	sw	$2,%gp_rel(F)($28)	 # tmp296, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addh
	.size	op_addh, .-op_addh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addl
	.type	op_addl, @function
op_addl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(A)($28)	 # A.1564, A
	lbu	$2,%gp_rel(L)($28)	 # L.1565, L
	andi	$5,$2,0xf	 # tmp258, L.1565,
	andi	$4,$3,0xf	 # tmp259, A.1564,
	addu	$4,$5,$4	 # tmp260, tmp258, tmp259
	slt	$4,$4,16	 # tmp261, tmp260,
	bne	$4,$0,.L413	 #, tmp261,,
	li	$4,-17			# 0xffffffef	 # tmp265,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp263, F,
	j	.L414	 #
	sw	$4,%gp_rel(F)($28)	 # tmp263, F

.L413:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp266, F, tmp265
	sw	$4,%gp_rel(F)($28)	 # tmp266, F
.L414:
	addu	$4,$2,$3	 # tmp267, L.1565, A.1564
	slt	$4,$4,256	 # tmp268, tmp267,
	bne	$4,$0,.L415	 #, tmp268,,
	li	$4,-2			# 0xfffffffe	 # tmp272,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp270, F,
	j	.L416	 #
	sw	$4,%gp_rel(F)($28)	 # tmp270, F

.L415:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp273, F, tmp272
	sw	$4,%gp_rel(F)($28)	 # tmp273, F
.L416:
	seb	$2,$2	 # L.1565, L.1565
	seb	$3,$3	 # A.1564, A.1564
	addu	$2,$2,$3	 # i, L.1565, A.1564
	andi	$3,$2,0x00ff	 # A.1574, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L417	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1574, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L418	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L417:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L418:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L419	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L420	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L419:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L420:
	beql	$3,$0,.L421	 #, A.1574,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L422	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L421:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L422:
	li	$2,-3			# 0xfffffffd	 # tmp295,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp296, F, tmp295
	sw	$2,%gp_rel(F)($28)	 # tmp296, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addl
	.size	op_addl, .-op_addl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addhl
	.type	op_addhl, @function
op_addhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp267, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp269, tmp267, L
	lui	$3,%hi(ram)	 # tmp265,
	addiu	$3,$3,%lo(ram)	 # tmp271, tmp265,
	addu	$2,$2,$3	 # tmp270, tmp269, tmp271
	lbu	$2,0($2)	 # P, ram
	lbu	$3,%gp_rel(A)($28)	 # A.1542, A
	andi	$5,$2,0xf	 # tmp272, P,
	andi	$4,$3,0xf	 # tmp273, A.1542,
	addu	$4,$5,$4	 # tmp274, tmp272, tmp273
	slt	$4,$4,16	 # tmp275, tmp274,
	bne	$4,$0,.L424	 #, tmp275,,
	li	$4,-17			# 0xffffffef	 # tmp279,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp277, F,
	j	.L425	 #
	sw	$4,%gp_rel(F)($28)	 # tmp277, F

.L424:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp280, F, tmp279
	sw	$4,%gp_rel(F)($28)	 # tmp280, F
.L425:
	addu	$4,$2,$3	 # tmp281, P, A.1542
	slt	$4,$4,256	 # tmp282, tmp281,
	bne	$4,$0,.L426	 #, tmp282,,
	li	$4,-2			# 0xfffffffe	 # tmp286,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp284, F,
	j	.L427	 #
	sw	$4,%gp_rel(F)($28)	 # tmp284, F

.L426:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp287, F, tmp286
	sw	$4,%gp_rel(F)($28)	 # tmp287, F
.L427:
	seb	$2,$2	 # P, P
	seb	$3,$3	 # A.1542, A.1542
	addu	$2,$2,$3	 # i, P, A.1542
	andi	$3,$2,0x00ff	 # A.1551, i
	addiu	$4,$2,128	 # tmp290, i,
	sltu	$4,$4,256	 # tmp291, tmp290,
	bne	$4,$0,.L428	 #, tmp291,,
	sb	$3,%gp_rel(A)($28)	 # A.1551, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp293, F,
	j	.L429	 #
	sw	$4,%gp_rel(F)($28)	 # tmp293, F

.L428:
	li	$4,-5			# 0xfffffffb	 # tmp295,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp296, F, tmp295
	sw	$4,%gp_rel(F)($28)	 # tmp296, F
.L429:
	andi	$2,$2,0x80	 # tmp297, i,
	beq	$2,$0,.L430	 #, tmp297,,
	li	$2,-129			# 0xffffff7f	 # tmp301,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp299, F,
	j	.L431	 #
	sw	$2,%gp_rel(F)($28)	 # tmp299, F

.L430:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp302, F, tmp301
	sw	$2,%gp_rel(F)($28)	 # tmp302, F
.L431:
	beql	$3,$0,.L432	 #, A.1551,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp304,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp305, F, tmp304
	j	.L433	 #
	sw	$2,%gp_rel(F)($28)	 # tmp305, F

.L432:
	ori	$2,$2,0x40	 # tmp307, F,
	sw	$2,%gp_rel(F)($28)	 # tmp307, F
.L433:
	li	$2,-3			# 0xfffffffd	 # tmp309,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp310, F, tmp309
	sw	$2,%gp_rel(F)($28)	 # tmp310, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addhl
	.size	op_addhl, .-op_addhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addn
	.type	op_addn, @function
op_addn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(PC)($28)	 # PC.436, PC
	lbu	$2,0($3)	 # P,* PC.436
	addiu	$3,$3,1	 # tmp260, PC.436,
	sw	$3,%gp_rel(PC)($28)	 # tmp260, PC
	lbu	$3,%gp_rel(A)($28)	 # A.439, A
	andi	$5,$2,0xf	 # tmp261, P,
	andi	$4,$3,0xf	 # tmp262, A.439,
	addu	$4,$5,$4	 # tmp263, tmp261, tmp262
	slt	$4,$4,16	 # tmp264, tmp263,
	bne	$4,$0,.L435	 #, tmp264,,
	li	$4,-17			# 0xffffffef	 # tmp268,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp266, F,
	j	.L436	 #
	sw	$4,%gp_rel(F)($28)	 # tmp266, F

.L435:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp269, F, tmp268
	sw	$4,%gp_rel(F)($28)	 # tmp269, F
.L436:
	addu	$4,$2,$3	 # tmp270, P, A.439
	slt	$4,$4,256	 # tmp271, tmp270,
	bne	$4,$0,.L437	 #, tmp271,,
	li	$4,-2			# 0xfffffffe	 # tmp275,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp273, F,
	j	.L438	 #
	sw	$4,%gp_rel(F)($28)	 # tmp273, F

.L437:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp276, F, tmp275
	sw	$4,%gp_rel(F)($28)	 # tmp276, F
.L438:
	seb	$2,$2	 # P, P
	seb	$3,$3	 # A.439, A.439
	addu	$2,$2,$3	 # i, P, A.439
	andi	$3,$2,0x00ff	 # A.448, i
	addiu	$4,$2,128	 # tmp279, i,
	sltu	$4,$4,256	 # tmp280, tmp279,
	bne	$4,$0,.L439	 #, tmp280,,
	sb	$3,%gp_rel(A)($28)	 # A.448, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp282, F,
	j	.L440	 #
	sw	$4,%gp_rel(F)($28)	 # tmp282, F

.L439:
	li	$4,-5			# 0xfffffffb	 # tmp284,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp285, F, tmp284
	sw	$4,%gp_rel(F)($28)	 # tmp285, F
.L440:
	andi	$2,$2,0x80	 # tmp286, i,
	beq	$2,$0,.L441	 #, tmp286,,
	li	$2,-129			# 0xffffff7f	 # tmp290,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp288, F,
	j	.L442	 #
	sw	$2,%gp_rel(F)($28)	 # tmp288, F

.L441:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp291, F, tmp290
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
.L442:
	beql	$3,$0,.L443	 #, A.448,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp293,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp294, F, tmp293
	j	.L444	 #
	sw	$2,%gp_rel(F)($28)	 # tmp294, F

.L443:
	ori	$2,$2,0x40	 # tmp296, F,
	sw	$2,%gp_rel(F)($28)	 # tmp296, F
.L444:
	li	$2,-3			# 0xfffffffd	 # tmp298,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp299, F, tmp298
	sw	$2,%gp_rel(F)($28)	 # tmp299, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addn
	.size	op_addn, .-op_addn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adca
	.type	op_adca, @function
op_adca:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$4,%gp_rel(F)($28)	 # F.1335, F
	andi	$3,$4,0x1	 # carry, F.1335,
	lbu	$2,%gp_rel(A)($28)	 # A.1337, A
	andi	$5,$2,0xf	 # D.11306, A.1337,
	sll	$5,$5,1	 # tmp256, D.11306,
	addu	$5,$5,$3	 # tmp257, tmp256, carry
	slt	$5,$5,16	 # tmp258, tmp257,
	bne	$5,$0,.L446	 #, tmp258,,
	li	$5,-17			# 0xffffffef	 # tmp260,

	ori	$4,$4,0x10	 # tmp259, F.1335,
	j	.L447	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L446:
	and	$4,$4,$5	 # tmp261, F.1335, tmp260
	sw	$4,%gp_rel(F)($28)	 # tmp261, F
.L447:
	sll	$4,$2,1	 # tmp262, A.1337,
	addu	$4,$4,$3	 # tmp263, tmp262, carry
	slt	$4,$4,256	 # tmp264, tmp263,
	bne	$4,$0,.L448	 #, tmp264,,
	li	$4,-2			# 0xfffffffe	 # tmp268,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp266, F,
	j	.L449	 #
	sw	$4,%gp_rel(F)($28)	 # tmp266, F

.L448:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp269, F, tmp268
	sw	$4,%gp_rel(F)($28)	 # tmp269, F
.L449:
	seb	$2,$2	 # A.1337, A.1337
	sll	$2,$2,1	 # tmp271, A.1337,
	addu	$2,$2,$3	 # i, tmp271, carry
	andi	$3,$2,0x00ff	 # A.1344, i
	addiu	$4,$2,128	 # tmp272, i,
	sltu	$4,$4,256	 # tmp273, tmp272,
	bne	$4,$0,.L450	 #, tmp273,,
	sb	$3,%gp_rel(A)($28)	 # A.1344, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp275, F,
	j	.L451	 #
	sw	$4,%gp_rel(F)($28)	 # tmp275, F

.L450:
	li	$4,-5			# 0xfffffffb	 # tmp277,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp278, F, tmp277
	sw	$4,%gp_rel(F)($28)	 # tmp278, F
.L451:
	andi	$2,$2,0x80	 # tmp279, i,
	beq	$2,$0,.L452	 #, tmp279,,
	li	$2,-129			# 0xffffff7f	 # tmp283,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp281, F,
	j	.L453	 #
	sw	$2,%gp_rel(F)($28)	 # tmp281, F

.L452:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp284, F, tmp283
	sw	$2,%gp_rel(F)($28)	 # tmp284, F
.L453:
	beql	$3,$0,.L454	 #, A.1344,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp286,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp287, F, tmp286
	j	.L455	 #
	sw	$2,%gp_rel(F)($28)	 # tmp287, F

.L454:
	ori	$2,$2,0x40	 # tmp289, F,
	sw	$2,%gp_rel(F)($28)	 # tmp289, F
.L455:
	li	$2,-3			# 0xfffffffd	 # tmp291,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp292, F, tmp291
	sw	$2,%gp_rel(F)($28)	 # tmp292, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adca
	.size	op_adca, .-op_adca
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adcb
	.type	op_adcb, @function
op_adcb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1495, F
	andi	$3,$5,0x1	 # carry, F.1495,
	lbu	$2,%gp_rel(A)($28)	 # A.1497, A
	lbu	$4,%gp_rel(B)($28)	 # B.1498, B
	andi	$7,$2,0xf	 # tmp261, A.1497,
	andi	$6,$4,0xf	 # tmp262, B.1498,
	addu	$6,$7,$6	 # tmp263, tmp261, tmp262
	addu	$6,$6,$3	 # tmp264, tmp263, carry
	slt	$6,$6,16	 # tmp265, tmp264,
	bne	$6,$0,.L457	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp267,

	ori	$5,$5,0x10	 # tmp266, F.1495,
	j	.L458	 #
	sw	$5,%gp_rel(F)($28)	 # tmp266, F

.L457:
	and	$5,$5,$6	 # tmp268, F.1495, tmp267
	sw	$5,%gp_rel(F)($28)	 # tmp268, F
.L458:
	addu	$5,$2,$3	 # tmp269, A.1497, carry
	addu	$5,$5,$4	 # tmp270, tmp269, B.1498
	slt	$5,$5,256	 # tmp271, tmp270,
	bne	$5,$0,.L459	 #, tmp271,,
	li	$5,-2			# 0xfffffffe	 # tmp275,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp273, F,
	j	.L460	 #
	sw	$5,%gp_rel(F)($28)	 # tmp273, F

.L459:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp276, F, tmp275
	sw	$5,%gp_rel(F)($28)	 # tmp276, F
.L460:
	seb	$2,$2	 # A.1497, A.1497
	seb	$4,$4	 # B.1498, B.1498
	addu	$2,$2,$4	 # tmp279, A.1497, B.1498
	addu	$2,$2,$3	 # i, tmp279, carry
	andi	$3,$2,0x00ff	 # A.1506, i
	addiu	$4,$2,128	 # tmp280, i,
	sltu	$4,$4,256	 # tmp281, tmp280,
	bne	$4,$0,.L461	 #, tmp281,,
	sb	$3,%gp_rel(A)($28)	 # A.1506, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp283, F,
	j	.L462	 #
	sw	$4,%gp_rel(F)($28)	 # tmp283, F

.L461:
	li	$4,-5			# 0xfffffffb	 # tmp285,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp286, F, tmp285
	sw	$4,%gp_rel(F)($28)	 # tmp286, F
.L462:
	andi	$2,$2,0x80	 # tmp287, i,
	beq	$2,$0,.L463	 #, tmp287,,
	li	$2,-129			# 0xffffff7f	 # tmp291,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp289, F,
	j	.L464	 #
	sw	$2,%gp_rel(F)($28)	 # tmp289, F

.L463:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp292, F, tmp291
	sw	$2,%gp_rel(F)($28)	 # tmp292, F
.L464:
	beql	$3,$0,.L465	 #, A.1506,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp294,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp295, F, tmp294
	j	.L466	 #
	sw	$2,%gp_rel(F)($28)	 # tmp295, F

.L465:
	ori	$2,$2,0x40	 # tmp297, F,
	sw	$2,%gp_rel(F)($28)	 # tmp297, F
.L466:
	li	$2,-3			# 0xfffffffd	 # tmp299,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp300, F, tmp299
	sw	$2,%gp_rel(F)($28)	 # tmp300, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adcb
	.size	op_adcb, .-op_adcb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adcc
	.type	op_adcc, @function
op_adcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1472, F
	andi	$3,$5,0x1	 # carry, F.1472,
	lbu	$2,%gp_rel(A)($28)	 # A.1474, A
	lbu	$4,%gp_rel(C)($28)	 # C.1475, C
	andi	$7,$2,0xf	 # tmp261, A.1474,
	andi	$6,$4,0xf	 # tmp262, C.1475,
	addu	$6,$7,$6	 # tmp263, tmp261, tmp262
	addu	$6,$6,$3	 # tmp264, tmp263, carry
	slt	$6,$6,16	 # tmp265, tmp264,
	bne	$6,$0,.L468	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp267,

	ori	$5,$5,0x10	 # tmp266, F.1472,
	j	.L469	 #
	sw	$5,%gp_rel(F)($28)	 # tmp266, F

.L468:
	and	$5,$5,$6	 # tmp268, F.1472, tmp267
	sw	$5,%gp_rel(F)($28)	 # tmp268, F
.L469:
	addu	$5,$2,$3	 # tmp269, A.1474, carry
	addu	$5,$5,$4	 # tmp270, tmp269, C.1475
	slt	$5,$5,256	 # tmp271, tmp270,
	bne	$5,$0,.L470	 #, tmp271,,
	li	$5,-2			# 0xfffffffe	 # tmp275,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp273, F,
	j	.L471	 #
	sw	$5,%gp_rel(F)($28)	 # tmp273, F

.L470:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp276, F, tmp275
	sw	$5,%gp_rel(F)($28)	 # tmp276, F
.L471:
	seb	$2,$2	 # A.1474, A.1474
	seb	$4,$4	 # C.1475, C.1475
	addu	$2,$2,$4	 # tmp279, A.1474, C.1475
	addu	$2,$2,$3	 # i, tmp279, carry
	andi	$3,$2,0x00ff	 # A.1483, i
	addiu	$4,$2,128	 # tmp280, i,
	sltu	$4,$4,256	 # tmp281, tmp280,
	bne	$4,$0,.L472	 #, tmp281,,
	sb	$3,%gp_rel(A)($28)	 # A.1483, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp283, F,
	j	.L473	 #
	sw	$4,%gp_rel(F)($28)	 # tmp283, F

.L472:
	li	$4,-5			# 0xfffffffb	 # tmp285,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp286, F, tmp285
	sw	$4,%gp_rel(F)($28)	 # tmp286, F
.L473:
	andi	$2,$2,0x80	 # tmp287, i,
	beq	$2,$0,.L474	 #, tmp287,,
	li	$2,-129			# 0xffffff7f	 # tmp291,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp289, F,
	j	.L475	 #
	sw	$2,%gp_rel(F)($28)	 # tmp289, F

.L474:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp292, F, tmp291
	sw	$2,%gp_rel(F)($28)	 # tmp292, F
.L475:
	beql	$3,$0,.L476	 #, A.1483,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp294,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp295, F, tmp294
	j	.L477	 #
	sw	$2,%gp_rel(F)($28)	 # tmp295, F

.L476:
	ori	$2,$2,0x40	 # tmp297, F,
	sw	$2,%gp_rel(F)($28)	 # tmp297, F
.L477:
	li	$2,-3			# 0xfffffffd	 # tmp299,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp300, F, tmp299
	sw	$2,%gp_rel(F)($28)	 # tmp300, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adcc
	.size	op_adcc, .-op_adcc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adcd
	.type	op_adcd, @function
op_adcd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1449, F
	andi	$3,$5,0x1	 # carry, F.1449,
	lbu	$2,%gp_rel(A)($28)	 # A.1451, A
	lbu	$4,%gp_rel(D)($28)	 # D.1452, D
	andi	$7,$2,0xf	 # tmp261, A.1451,
	andi	$6,$4,0xf	 # tmp262, D.1452,
	addu	$6,$7,$6	 # tmp263, tmp261, tmp262
	addu	$6,$6,$3	 # tmp264, tmp263, carry
	slt	$6,$6,16	 # tmp265, tmp264,
	bne	$6,$0,.L479	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp267,

	ori	$5,$5,0x10	 # tmp266, F.1449,
	j	.L480	 #
	sw	$5,%gp_rel(F)($28)	 # tmp266, F

.L479:
	and	$5,$5,$6	 # tmp268, F.1449, tmp267
	sw	$5,%gp_rel(F)($28)	 # tmp268, F
.L480:
	addu	$5,$2,$3	 # tmp269, A.1451, carry
	addu	$5,$5,$4	 # tmp270, tmp269, D.1452
	slt	$5,$5,256	 # tmp271, tmp270,
	bne	$5,$0,.L481	 #, tmp271,,
	li	$5,-2			# 0xfffffffe	 # tmp275,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp273, F,
	j	.L482	 #
	sw	$5,%gp_rel(F)($28)	 # tmp273, F

.L481:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp276, F, tmp275
	sw	$5,%gp_rel(F)($28)	 # tmp276, F
.L482:
	seb	$2,$2	 # A.1451, A.1451
	seb	$4,$4	 # D.1452, D.1452
	addu	$2,$2,$4	 # tmp279, A.1451, D.1452
	addu	$2,$2,$3	 # i, tmp279, carry
	andi	$3,$2,0x00ff	 # A.1460, i
	addiu	$4,$2,128	 # tmp280, i,
	sltu	$4,$4,256	 # tmp281, tmp280,
	bne	$4,$0,.L483	 #, tmp281,,
	sb	$3,%gp_rel(A)($28)	 # A.1460, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp283, F,
	j	.L484	 #
	sw	$4,%gp_rel(F)($28)	 # tmp283, F

.L483:
	li	$4,-5			# 0xfffffffb	 # tmp285,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp286, F, tmp285
	sw	$4,%gp_rel(F)($28)	 # tmp286, F
.L484:
	andi	$2,$2,0x80	 # tmp287, i,
	beq	$2,$0,.L485	 #, tmp287,,
	li	$2,-129			# 0xffffff7f	 # tmp291,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp289, F,
	j	.L486	 #
	sw	$2,%gp_rel(F)($28)	 # tmp289, F

.L485:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp292, F, tmp291
	sw	$2,%gp_rel(F)($28)	 # tmp292, F
.L486:
	beql	$3,$0,.L487	 #, A.1460,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp294,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp295, F, tmp294
	j	.L488	 #
	sw	$2,%gp_rel(F)($28)	 # tmp295, F

.L487:
	ori	$2,$2,0x40	 # tmp297, F,
	sw	$2,%gp_rel(F)($28)	 # tmp297, F
.L488:
	li	$2,-3			# 0xfffffffd	 # tmp299,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp300, F, tmp299
	sw	$2,%gp_rel(F)($28)	 # tmp300, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adcd
	.size	op_adcd, .-op_adcd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adce
	.type	op_adce, @function
op_adce:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1426, F
	andi	$3,$5,0x1	 # carry, F.1426,
	lbu	$2,%gp_rel(A)($28)	 # A.1428, A
	lbu	$4,%gp_rel(E)($28)	 # E.1429, E
	andi	$7,$2,0xf	 # tmp261, A.1428,
	andi	$6,$4,0xf	 # tmp262, E.1429,
	addu	$6,$7,$6	 # tmp263, tmp261, tmp262
	addu	$6,$6,$3	 # tmp264, tmp263, carry
	slt	$6,$6,16	 # tmp265, tmp264,
	bne	$6,$0,.L490	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp267,

	ori	$5,$5,0x10	 # tmp266, F.1426,
	j	.L491	 #
	sw	$5,%gp_rel(F)($28)	 # tmp266, F

.L490:
	and	$5,$5,$6	 # tmp268, F.1426, tmp267
	sw	$5,%gp_rel(F)($28)	 # tmp268, F
.L491:
	addu	$5,$2,$3	 # tmp269, A.1428, carry
	addu	$5,$5,$4	 # tmp270, tmp269, E.1429
	slt	$5,$5,256	 # tmp271, tmp270,
	bne	$5,$0,.L492	 #, tmp271,,
	li	$5,-2			# 0xfffffffe	 # tmp275,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp273, F,
	j	.L493	 #
	sw	$5,%gp_rel(F)($28)	 # tmp273, F

.L492:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp276, F, tmp275
	sw	$5,%gp_rel(F)($28)	 # tmp276, F
.L493:
	seb	$2,$2	 # A.1428, A.1428
	seb	$4,$4	 # E.1429, E.1429
	addu	$2,$2,$4	 # tmp279, A.1428, E.1429
	addu	$2,$2,$3	 # i, tmp279, carry
	andi	$3,$2,0x00ff	 # A.1437, i
	addiu	$4,$2,128	 # tmp280, i,
	sltu	$4,$4,256	 # tmp281, tmp280,
	bne	$4,$0,.L494	 #, tmp281,,
	sb	$3,%gp_rel(A)($28)	 # A.1437, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp283, F,
	j	.L495	 #
	sw	$4,%gp_rel(F)($28)	 # tmp283, F

.L494:
	li	$4,-5			# 0xfffffffb	 # tmp285,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp286, F, tmp285
	sw	$4,%gp_rel(F)($28)	 # tmp286, F
.L495:
	andi	$2,$2,0x80	 # tmp287, i,
	beq	$2,$0,.L496	 #, tmp287,,
	li	$2,-129			# 0xffffff7f	 # tmp291,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp289, F,
	j	.L497	 #
	sw	$2,%gp_rel(F)($28)	 # tmp289, F

.L496:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp292, F, tmp291
	sw	$2,%gp_rel(F)($28)	 # tmp292, F
.L497:
	beql	$3,$0,.L498	 #, A.1437,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp294,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp295, F, tmp294
	j	.L499	 #
	sw	$2,%gp_rel(F)($28)	 # tmp295, F

.L498:
	ori	$2,$2,0x40	 # tmp297, F,
	sw	$2,%gp_rel(F)($28)	 # tmp297, F
.L499:
	li	$2,-3			# 0xfffffffd	 # tmp299,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp300, F, tmp299
	sw	$2,%gp_rel(F)($28)	 # tmp300, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adce
	.size	op_adce, .-op_adce
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adch
	.type	op_adch, @function
op_adch:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1403, F
	andi	$3,$5,0x1	 # carry, F.1403,
	lbu	$2,%gp_rel(A)($28)	 # A.1405, A
	lbu	$4,%gp_rel(H)($28)	 # H.1406, H
	andi	$7,$2,0xf	 # tmp261, A.1405,
	andi	$6,$4,0xf	 # tmp262, H.1406,
	addu	$6,$7,$6	 # tmp263, tmp261, tmp262
	addu	$6,$6,$3	 # tmp264, tmp263, carry
	slt	$6,$6,16	 # tmp265, tmp264,
	bne	$6,$0,.L501	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp267,

	ori	$5,$5,0x10	 # tmp266, F.1403,
	j	.L502	 #
	sw	$5,%gp_rel(F)($28)	 # tmp266, F

.L501:
	and	$5,$5,$6	 # tmp268, F.1403, tmp267
	sw	$5,%gp_rel(F)($28)	 # tmp268, F
.L502:
	addu	$5,$2,$3	 # tmp269, A.1405, carry
	addu	$5,$5,$4	 # tmp270, tmp269, H.1406
	slt	$5,$5,256	 # tmp271, tmp270,
	bne	$5,$0,.L503	 #, tmp271,,
	li	$5,-2			# 0xfffffffe	 # tmp275,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp273, F,
	j	.L504	 #
	sw	$5,%gp_rel(F)($28)	 # tmp273, F

.L503:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp276, F, tmp275
	sw	$5,%gp_rel(F)($28)	 # tmp276, F
.L504:
	seb	$2,$2	 # A.1405, A.1405
	seb	$4,$4	 # H.1406, H.1406
	addu	$2,$2,$4	 # tmp279, A.1405, H.1406
	addu	$2,$2,$3	 # i, tmp279, carry
	andi	$3,$2,0x00ff	 # A.1414, i
	addiu	$4,$2,128	 # tmp280, i,
	sltu	$4,$4,256	 # tmp281, tmp280,
	bne	$4,$0,.L505	 #, tmp281,,
	sb	$3,%gp_rel(A)($28)	 # A.1414, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp283, F,
	j	.L506	 #
	sw	$4,%gp_rel(F)($28)	 # tmp283, F

.L505:
	li	$4,-5			# 0xfffffffb	 # tmp285,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp286, F, tmp285
	sw	$4,%gp_rel(F)($28)	 # tmp286, F
.L506:
	andi	$2,$2,0x80	 # tmp287, i,
	beq	$2,$0,.L507	 #, tmp287,,
	li	$2,-129			# 0xffffff7f	 # tmp291,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp289, F,
	j	.L508	 #
	sw	$2,%gp_rel(F)($28)	 # tmp289, F

.L507:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp292, F, tmp291
	sw	$2,%gp_rel(F)($28)	 # tmp292, F
.L508:
	beql	$3,$0,.L509	 #, A.1414,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp294,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp295, F, tmp294
	j	.L510	 #
	sw	$2,%gp_rel(F)($28)	 # tmp295, F

.L509:
	ori	$2,$2,0x40	 # tmp297, F,
	sw	$2,%gp_rel(F)($28)	 # tmp297, F
.L510:
	li	$2,-3			# 0xfffffffd	 # tmp299,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp300, F, tmp299
	sw	$2,%gp_rel(F)($28)	 # tmp300, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adch
	.size	op_adch, .-op_adch
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adcl
	.type	op_adcl, @function
op_adcl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1380, F
	andi	$3,$5,0x1	 # carry, F.1380,
	lbu	$2,%gp_rel(A)($28)	 # A.1382, A
	lbu	$4,%gp_rel(L)($28)	 # L.1383, L
	andi	$7,$2,0xf	 # tmp261, A.1382,
	andi	$6,$4,0xf	 # tmp262, L.1383,
	addu	$6,$7,$6	 # tmp263, tmp261, tmp262
	addu	$6,$6,$3	 # tmp264, tmp263, carry
	slt	$6,$6,16	 # tmp265, tmp264,
	bne	$6,$0,.L512	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp267,

	ori	$5,$5,0x10	 # tmp266, F.1380,
	j	.L513	 #
	sw	$5,%gp_rel(F)($28)	 # tmp266, F

.L512:
	and	$5,$5,$6	 # tmp268, F.1380, tmp267
	sw	$5,%gp_rel(F)($28)	 # tmp268, F
.L513:
	addu	$5,$2,$3	 # tmp269, A.1382, carry
	addu	$5,$5,$4	 # tmp270, tmp269, L.1383
	slt	$5,$5,256	 # tmp271, tmp270,
	bne	$5,$0,.L514	 #, tmp271,,
	li	$5,-2			# 0xfffffffe	 # tmp275,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp273, F,
	j	.L515	 #
	sw	$5,%gp_rel(F)($28)	 # tmp273, F

.L514:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp276, F, tmp275
	sw	$5,%gp_rel(F)($28)	 # tmp276, F
.L515:
	seb	$2,$2	 # A.1382, A.1382
	seb	$4,$4	 # L.1383, L.1383
	addu	$2,$2,$4	 # tmp279, A.1382, L.1383
	addu	$2,$2,$3	 # i, tmp279, carry
	andi	$3,$2,0x00ff	 # A.1391, i
	addiu	$4,$2,128	 # tmp280, i,
	sltu	$4,$4,256	 # tmp281, tmp280,
	bne	$4,$0,.L516	 #, tmp281,,
	sb	$3,%gp_rel(A)($28)	 # A.1391, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp283, F,
	j	.L517	 #
	sw	$4,%gp_rel(F)($28)	 # tmp283, F

.L516:
	li	$4,-5			# 0xfffffffb	 # tmp285,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp286, F, tmp285
	sw	$4,%gp_rel(F)($28)	 # tmp286, F
.L517:
	andi	$2,$2,0x80	 # tmp287, i,
	beq	$2,$0,.L518	 #, tmp287,,
	li	$2,-129			# 0xffffff7f	 # tmp291,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp289, F,
	j	.L519	 #
	sw	$2,%gp_rel(F)($28)	 # tmp289, F

.L518:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp292, F, tmp291
	sw	$2,%gp_rel(F)($28)	 # tmp292, F
.L519:
	beql	$3,$0,.L520	 #, A.1391,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp294,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp295, F, tmp294
	j	.L521	 #
	sw	$2,%gp_rel(F)($28)	 # tmp295, F

.L520:
	ori	$2,$2,0x40	 # tmp297, F,
	sw	$2,%gp_rel(F)($28)	 # tmp297, F
.L521:
	li	$2,-3			# 0xfffffffd	 # tmp299,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp300, F, tmp299
	sw	$2,%gp_rel(F)($28)	 # tmp300, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adcl
	.size	op_adcl, .-op_adcl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adchl
	.type	op_adchl, @function
op_adchl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp270, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp272, tmp270, L
	lui	$3,%hi(ram)	 # tmp268,
	addiu	$3,$3,%lo(ram)	 # tmp274, tmp268,
	addu	$2,$2,$3	 # tmp273, tmp272, tmp274
	lbu	$3,0($2)	 # P, ram
	lw	$5,%gp_rel(F)($28)	 # F.1358, F
	andi	$4,$5,0x1	 # carry, F.1358,
	lbu	$2,%gp_rel(A)($28)	 # A.1360, A
	andi	$6,$2,0xf	 # tmp275, A.1360,
	addu	$6,$6,$4	 # tmp276, tmp275, carry
	andi	$7,$3,0xf	 # tmp277, P,
	addu	$6,$6,$7	 # tmp278, tmp276, tmp277
	slt	$6,$6,16	 # tmp279, tmp278,
	bne	$6,$0,.L523	 #, tmp279,,
	li	$6,-17			# 0xffffffef	 # tmp281,

	ori	$5,$5,0x10	 # tmp280, F.1358,
	j	.L524	 #
	sw	$5,%gp_rel(F)($28)	 # tmp280, F

.L523:
	and	$5,$5,$6	 # tmp282, F.1358, tmp281
	sw	$5,%gp_rel(F)($28)	 # tmp282, F
.L524:
	addu	$5,$2,$4	 # tmp283, A.1360, carry
	addu	$5,$5,$3	 # tmp284, tmp283, P
	slt	$5,$5,256	 # tmp285, tmp284,
	bne	$5,$0,.L525	 #, tmp285,,
	li	$5,-2			# 0xfffffffe	 # tmp289,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp287, F,
	j	.L526	 #
	sw	$5,%gp_rel(F)($28)	 # tmp287, F

.L525:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp290, F, tmp289
	sw	$5,%gp_rel(F)($28)	 # tmp290, F
.L526:
	seb	$2,$2	 # A.1360, A.1360
	addu	$2,$2,$4	 # tmp292, A.1360, carry
	seb	$3,$3	 # P, P
	addu	$2,$2,$3	 # i, tmp292, P
	andi	$3,$2,0x00ff	 # A.1368, i
	addiu	$4,$2,128	 # tmp294, i,
	sltu	$4,$4,256	 # tmp295, tmp294,
	bne	$4,$0,.L527	 #, tmp295,,
	sb	$3,%gp_rel(A)($28)	 # A.1368, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp297, F,
	j	.L528	 #
	sw	$4,%gp_rel(F)($28)	 # tmp297, F

.L527:
	li	$4,-5			# 0xfffffffb	 # tmp299,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp300, F, tmp299
	sw	$4,%gp_rel(F)($28)	 # tmp300, F
.L528:
	andi	$2,$2,0x80	 # tmp301, i,
	beq	$2,$0,.L529	 #, tmp301,,
	li	$2,-129			# 0xffffff7f	 # tmp305,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp303, F,
	j	.L530	 #
	sw	$2,%gp_rel(F)($28)	 # tmp303, F

.L529:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp306, F, tmp305
	sw	$2,%gp_rel(F)($28)	 # tmp306, F
.L530:
	beql	$3,$0,.L531	 #, A.1368,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp308,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp309, F, tmp308
	j	.L532	 #
	sw	$2,%gp_rel(F)($28)	 # tmp309, F

.L531:
	ori	$2,$2,0x40	 # tmp311, F,
	sw	$2,%gp_rel(F)($28)	 # tmp311, F
.L532:
	li	$2,-3			# 0xfffffffd	 # tmp313,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp314, F, tmp313
	sw	$2,%gp_rel(F)($28)	 # tmp314, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adchl
	.size	op_adchl, .-op_adchl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adcn
	.type	op_adcn, @function
op_adcn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.373, F
	andi	$4,$5,0x1	 # carry, F.373,
	lw	$2,%gp_rel(PC)($28)	 # PC.374, PC
	lbu	$3,0($2)	 # P,* PC.374
	addiu	$2,$2,1	 # tmp263, PC.374,
	sw	$2,%gp_rel(PC)($28)	 # tmp263, PC
	lbu	$2,%gp_rel(A)($28)	 # A.377, A
	andi	$6,$2,0xf	 # tmp264, A.377,
	addu	$6,$6,$4	 # tmp265, tmp264, carry
	andi	$7,$3,0xf	 # tmp266, P,
	addu	$6,$6,$7	 # tmp267, tmp265, tmp266
	slt	$6,$6,16	 # tmp268, tmp267,
	bne	$6,$0,.L534	 #, tmp268,,
	li	$6,-17			# 0xffffffef	 # tmp270,

	ori	$5,$5,0x10	 # tmp269, F.373,
	j	.L535	 #
	sw	$5,%gp_rel(F)($28)	 # tmp269, F

.L534:
	and	$5,$5,$6	 # tmp271, F.373, tmp270
	sw	$5,%gp_rel(F)($28)	 # tmp271, F
.L535:
	addu	$5,$2,$4	 # tmp272, A.377, carry
	addu	$5,$5,$3	 # tmp273, tmp272, P
	slt	$5,$5,256	 # tmp274, tmp273,
	bne	$5,$0,.L536	 #, tmp274,,
	li	$5,-2			# 0xfffffffe	 # tmp278,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp276, F,
	j	.L537	 #
	sw	$5,%gp_rel(F)($28)	 # tmp276, F

.L536:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp279, F, tmp278
	sw	$5,%gp_rel(F)($28)	 # tmp279, F
.L537:
	seb	$2,$2	 # A.377, A.377
	addu	$2,$2,$4	 # tmp281, A.377, carry
	seb	$3,$3	 # P, P
	addu	$2,$2,$3	 # i, tmp281, P
	andi	$3,$2,0x00ff	 # A.385, i
	addiu	$4,$2,128	 # tmp283, i,
	sltu	$4,$4,256	 # tmp284, tmp283,
	bne	$4,$0,.L538	 #, tmp284,,
	sb	$3,%gp_rel(A)($28)	 # A.385, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp286, F,
	j	.L539	 #
	sw	$4,%gp_rel(F)($28)	 # tmp286, F

.L538:
	li	$4,-5			# 0xfffffffb	 # tmp288,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp289, F, tmp288
	sw	$4,%gp_rel(F)($28)	 # tmp289, F
.L539:
	andi	$2,$2,0x80	 # tmp290, i,
	beq	$2,$0,.L540	 #, tmp290,,
	li	$2,-129			# 0xffffff7f	 # tmp294,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp292, F,
	j	.L541	 #
	sw	$2,%gp_rel(F)($28)	 # tmp292, F

.L540:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp295, F, tmp294
	sw	$2,%gp_rel(F)($28)	 # tmp295, F
.L541:
	beql	$3,$0,.L542	 #, A.385,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp297,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp298, F, tmp297
	j	.L543	 #
	sw	$2,%gp_rel(F)($28)	 # tmp298, F

.L542:
	ori	$2,$2,0x40	 # tmp300, F,
	sw	$2,%gp_rel(F)($28)	 # tmp300, F
.L543:
	li	$2,-3			# 0xfffffffd	 # tmp302,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp303, F, tmp302
	sw	$2,%gp_rel(F)($28)	 # tmp303, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adcn
	.size	op_adcn, .-op_adcn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_suba
	.type	op_suba, @function
op_suba:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	sb	$0,%gp_rel(A)($28)	 #, A
	li	$2,-150			# 0xffffff6a	 # tmp224,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp222, F, tmp224
	ori	$2,$2,0x42	 # tmp225, tmp222,
	sw	$2,%gp_rel(F)($28)	 # tmp225, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_suba
	.size	op_suba, .-op_suba
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_subb
	.type	op_subb, @function
op_subb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(B)($28)	 # B.1313, B
	lbu	$2,%gp_rel(A)($28)	 # A.1314, A
	andi	$5,$3,0xf	 # tmp256, B.1313,
	andi	$4,$2,0xf	 # tmp257, A.1314,
	slt	$4,$4,$5	 # tmp258, tmp257, tmp256
	beq	$4,$0,.L546	 #, tmp258,,
	li	$4,-17			# 0xffffffef	 # tmp262,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp260, F,
	j	.L547	 #
	sw	$4,%gp_rel(F)($28)	 # tmp260, F

.L546:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp263, F, tmp262
	sw	$4,%gp_rel(F)($28)	 # tmp263, F
.L547:
	sltu	$4,$2,$3	 # tmp264, A.1314, B.1313
	beq	$4,$0,.L548	 #, tmp264,,
	li	$4,-2			# 0xfffffffe	 # tmp268,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp266, F,
	j	.L549	 #
	sw	$4,%gp_rel(F)($28)	 # tmp266, F

.L548:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp269, F, tmp268
	sw	$4,%gp_rel(F)($28)	 # tmp269, F
.L549:
	seb	$2,$2	 # A.1314, A.1314
	seb	$3,$3	 # B.1313, B.1313
	subu	$2,$2,$3	 # i, A.1314, B.1313
	andi	$3,$2,0x00ff	 # A.1323, i
	addiu	$4,$2,128	 # tmp272, i,
	sltu	$4,$4,256	 # tmp273, tmp272,
	bne	$4,$0,.L550	 #, tmp273,,
	sb	$3,%gp_rel(A)($28)	 # A.1323, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp275, F,
	j	.L551	 #
	sw	$4,%gp_rel(F)($28)	 # tmp275, F

.L550:
	li	$4,-5			# 0xfffffffb	 # tmp277,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp278, F, tmp277
	sw	$4,%gp_rel(F)($28)	 # tmp278, F
.L551:
	andi	$2,$2,0x80	 # tmp279, i,
	beq	$2,$0,.L552	 #, tmp279,,
	li	$2,-129			# 0xffffff7f	 # tmp283,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp281, F,
	j	.L553	 #
	sw	$2,%gp_rel(F)($28)	 # tmp281, F

.L552:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp284, F, tmp283
	sw	$2,%gp_rel(F)($28)	 # tmp284, F
.L553:
	beql	$3,$0,.L554	 #, A.1323,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp286,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp287, F, tmp286
	j	.L555	 #
	sw	$2,%gp_rel(F)($28)	 # tmp287, F

.L554:
	ori	$2,$2,0x40	 # tmp289, F,
	sw	$2,%gp_rel(F)($28)	 # tmp289, F
.L555:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp291, F,
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_subb
	.size	op_subb, .-op_subb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_subc
	.type	op_subc, @function
op_subc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(C)($28)	 # C.1290, C
	lbu	$2,%gp_rel(A)($28)	 # A.1291, A
	andi	$5,$3,0xf	 # tmp256, C.1290,
	andi	$4,$2,0xf	 # tmp257, A.1291,
	slt	$4,$4,$5	 # tmp258, tmp257, tmp256
	beq	$4,$0,.L557	 #, tmp258,,
	li	$4,-17			# 0xffffffef	 # tmp262,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp260, F,
	j	.L558	 #
	sw	$4,%gp_rel(F)($28)	 # tmp260, F

.L557:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp263, F, tmp262
	sw	$4,%gp_rel(F)($28)	 # tmp263, F
.L558:
	sltu	$4,$2,$3	 # tmp264, A.1291, C.1290
	beq	$4,$0,.L559	 #, tmp264,,
	li	$4,-2			# 0xfffffffe	 # tmp268,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp266, F,
	j	.L560	 #
	sw	$4,%gp_rel(F)($28)	 # tmp266, F

.L559:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp269, F, tmp268
	sw	$4,%gp_rel(F)($28)	 # tmp269, F
.L560:
	seb	$2,$2	 # A.1291, A.1291
	seb	$3,$3	 # C.1290, C.1290
	subu	$2,$2,$3	 # i, A.1291, C.1290
	andi	$3,$2,0x00ff	 # A.1300, i
	addiu	$4,$2,128	 # tmp272, i,
	sltu	$4,$4,256	 # tmp273, tmp272,
	bne	$4,$0,.L561	 #, tmp273,,
	sb	$3,%gp_rel(A)($28)	 # A.1300, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp275, F,
	j	.L562	 #
	sw	$4,%gp_rel(F)($28)	 # tmp275, F

.L561:
	li	$4,-5			# 0xfffffffb	 # tmp277,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp278, F, tmp277
	sw	$4,%gp_rel(F)($28)	 # tmp278, F
.L562:
	andi	$2,$2,0x80	 # tmp279, i,
	beq	$2,$0,.L563	 #, tmp279,,
	li	$2,-129			# 0xffffff7f	 # tmp283,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp281, F,
	j	.L564	 #
	sw	$2,%gp_rel(F)($28)	 # tmp281, F

.L563:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp284, F, tmp283
	sw	$2,%gp_rel(F)($28)	 # tmp284, F
.L564:
	beql	$3,$0,.L565	 #, A.1300,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp286,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp287, F, tmp286
	j	.L566	 #
	sw	$2,%gp_rel(F)($28)	 # tmp287, F

.L565:
	ori	$2,$2,0x40	 # tmp289, F,
	sw	$2,%gp_rel(F)($28)	 # tmp289, F
.L566:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp291, F,
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_subc
	.size	op_subc, .-op_subc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_subd
	.type	op_subd, @function
op_subd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(D)($28)	 # D.1267, D
	lbu	$2,%gp_rel(A)($28)	 # A.1268, A
	andi	$5,$3,0xf	 # tmp256, D.1267,
	andi	$4,$2,0xf	 # tmp257, A.1268,
	slt	$4,$4,$5	 # tmp258, tmp257, tmp256
	beq	$4,$0,.L568	 #, tmp258,,
	li	$4,-17			# 0xffffffef	 # tmp262,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp260, F,
	j	.L569	 #
	sw	$4,%gp_rel(F)($28)	 # tmp260, F

.L568:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp263, F, tmp262
	sw	$4,%gp_rel(F)($28)	 # tmp263, F
.L569:
	sltu	$4,$2,$3	 # tmp264, A.1268, D.1267
	beq	$4,$0,.L570	 #, tmp264,,
	li	$4,-2			# 0xfffffffe	 # tmp268,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp266, F,
	j	.L571	 #
	sw	$4,%gp_rel(F)($28)	 # tmp266, F

.L570:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp269, F, tmp268
	sw	$4,%gp_rel(F)($28)	 # tmp269, F
.L571:
	seb	$2,$2	 # A.1268, A.1268
	seb	$3,$3	 # D.1267, D.1267
	subu	$2,$2,$3	 # i, A.1268, D.1267
	andi	$3,$2,0x00ff	 # A.1277, i
	addiu	$4,$2,128	 # tmp272, i,
	sltu	$4,$4,256	 # tmp273, tmp272,
	bne	$4,$0,.L572	 #, tmp273,,
	sb	$3,%gp_rel(A)($28)	 # A.1277, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp275, F,
	j	.L573	 #
	sw	$4,%gp_rel(F)($28)	 # tmp275, F

.L572:
	li	$4,-5			# 0xfffffffb	 # tmp277,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp278, F, tmp277
	sw	$4,%gp_rel(F)($28)	 # tmp278, F
.L573:
	andi	$2,$2,0x80	 # tmp279, i,
	beq	$2,$0,.L574	 #, tmp279,,
	li	$2,-129			# 0xffffff7f	 # tmp283,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp281, F,
	j	.L575	 #
	sw	$2,%gp_rel(F)($28)	 # tmp281, F

.L574:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp284, F, tmp283
	sw	$2,%gp_rel(F)($28)	 # tmp284, F
.L575:
	beql	$3,$0,.L576	 #, A.1277,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp286,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp287, F, tmp286
	j	.L577	 #
	sw	$2,%gp_rel(F)($28)	 # tmp287, F

.L576:
	ori	$2,$2,0x40	 # tmp289, F,
	sw	$2,%gp_rel(F)($28)	 # tmp289, F
.L577:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp291, F,
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_subd
	.size	op_subd, .-op_subd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sube
	.type	op_sube, @function
op_sube:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(E)($28)	 # E.1244, E
	lbu	$2,%gp_rel(A)($28)	 # A.1245, A
	andi	$5,$3,0xf	 # tmp256, E.1244,
	andi	$4,$2,0xf	 # tmp257, A.1245,
	slt	$4,$4,$5	 # tmp258, tmp257, tmp256
	beq	$4,$0,.L579	 #, tmp258,,
	li	$4,-17			# 0xffffffef	 # tmp262,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp260, F,
	j	.L580	 #
	sw	$4,%gp_rel(F)($28)	 # tmp260, F

.L579:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp263, F, tmp262
	sw	$4,%gp_rel(F)($28)	 # tmp263, F
.L580:
	sltu	$4,$2,$3	 # tmp264, A.1245, E.1244
	beq	$4,$0,.L581	 #, tmp264,,
	li	$4,-2			# 0xfffffffe	 # tmp268,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp266, F,
	j	.L582	 #
	sw	$4,%gp_rel(F)($28)	 # tmp266, F

.L581:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp269, F, tmp268
	sw	$4,%gp_rel(F)($28)	 # tmp269, F
.L582:
	seb	$2,$2	 # A.1245, A.1245
	seb	$3,$3	 # E.1244, E.1244
	subu	$2,$2,$3	 # i, A.1245, E.1244
	andi	$3,$2,0x00ff	 # A.1254, i
	addiu	$4,$2,128	 # tmp272, i,
	sltu	$4,$4,256	 # tmp273, tmp272,
	bne	$4,$0,.L583	 #, tmp273,,
	sb	$3,%gp_rel(A)($28)	 # A.1254, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp275, F,
	j	.L584	 #
	sw	$4,%gp_rel(F)($28)	 # tmp275, F

.L583:
	li	$4,-5			# 0xfffffffb	 # tmp277,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp278, F, tmp277
	sw	$4,%gp_rel(F)($28)	 # tmp278, F
.L584:
	andi	$2,$2,0x80	 # tmp279, i,
	beq	$2,$0,.L585	 #, tmp279,,
	li	$2,-129			# 0xffffff7f	 # tmp283,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp281, F,
	j	.L586	 #
	sw	$2,%gp_rel(F)($28)	 # tmp281, F

.L585:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp284, F, tmp283
	sw	$2,%gp_rel(F)($28)	 # tmp284, F
.L586:
	beql	$3,$0,.L587	 #, A.1254,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp286,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp287, F, tmp286
	j	.L588	 #
	sw	$2,%gp_rel(F)($28)	 # tmp287, F

.L587:
	ori	$2,$2,0x40	 # tmp289, F,
	sw	$2,%gp_rel(F)($28)	 # tmp289, F
.L588:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp291, F,
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sube
	.size	op_sube, .-op_sube
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_subh
	.type	op_subh, @function
op_subh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(H)($28)	 # H.1221, H
	lbu	$2,%gp_rel(A)($28)	 # A.1222, A
	andi	$5,$3,0xf	 # tmp256, H.1221,
	andi	$4,$2,0xf	 # tmp257, A.1222,
	slt	$4,$4,$5	 # tmp258, tmp257, tmp256
	beq	$4,$0,.L590	 #, tmp258,,
	li	$4,-17			# 0xffffffef	 # tmp262,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp260, F,
	j	.L591	 #
	sw	$4,%gp_rel(F)($28)	 # tmp260, F

.L590:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp263, F, tmp262
	sw	$4,%gp_rel(F)($28)	 # tmp263, F
.L591:
	sltu	$4,$2,$3	 # tmp264, A.1222, H.1221
	beq	$4,$0,.L592	 #, tmp264,,
	li	$4,-2			# 0xfffffffe	 # tmp268,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp266, F,
	j	.L593	 #
	sw	$4,%gp_rel(F)($28)	 # tmp266, F

.L592:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp269, F, tmp268
	sw	$4,%gp_rel(F)($28)	 # tmp269, F
.L593:
	seb	$2,$2	 # A.1222, A.1222
	seb	$3,$3	 # H.1221, H.1221
	subu	$2,$2,$3	 # i, A.1222, H.1221
	andi	$3,$2,0x00ff	 # A.1231, i
	addiu	$4,$2,128	 # tmp272, i,
	sltu	$4,$4,256	 # tmp273, tmp272,
	bne	$4,$0,.L594	 #, tmp273,,
	sb	$3,%gp_rel(A)($28)	 # A.1231, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp275, F,
	j	.L595	 #
	sw	$4,%gp_rel(F)($28)	 # tmp275, F

.L594:
	li	$4,-5			# 0xfffffffb	 # tmp277,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp278, F, tmp277
	sw	$4,%gp_rel(F)($28)	 # tmp278, F
.L595:
	andi	$2,$2,0x80	 # tmp279, i,
	beq	$2,$0,.L596	 #, tmp279,,
	li	$2,-129			# 0xffffff7f	 # tmp283,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp281, F,
	j	.L597	 #
	sw	$2,%gp_rel(F)($28)	 # tmp281, F

.L596:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp284, F, tmp283
	sw	$2,%gp_rel(F)($28)	 # tmp284, F
.L597:
	beql	$3,$0,.L598	 #, A.1231,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp286,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp287, F, tmp286
	j	.L599	 #
	sw	$2,%gp_rel(F)($28)	 # tmp287, F

.L598:
	ori	$2,$2,0x40	 # tmp289, F,
	sw	$2,%gp_rel(F)($28)	 # tmp289, F
.L599:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp291, F,
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_subh
	.size	op_subh, .-op_subh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_subl
	.type	op_subl, @function
op_subl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(L)($28)	 # L.1198, L
	lbu	$2,%gp_rel(A)($28)	 # A.1199, A
	andi	$5,$3,0xf	 # tmp256, L.1198,
	andi	$4,$2,0xf	 # tmp257, A.1199,
	slt	$4,$4,$5	 # tmp258, tmp257, tmp256
	beq	$4,$0,.L601	 #, tmp258,,
	li	$4,-17			# 0xffffffef	 # tmp262,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp260, F,
	j	.L602	 #
	sw	$4,%gp_rel(F)($28)	 # tmp260, F

.L601:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp263, F, tmp262
	sw	$4,%gp_rel(F)($28)	 # tmp263, F
.L602:
	sltu	$4,$2,$3	 # tmp264, A.1199, L.1198
	beq	$4,$0,.L603	 #, tmp264,,
	li	$4,-2			# 0xfffffffe	 # tmp268,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp266, F,
	j	.L604	 #
	sw	$4,%gp_rel(F)($28)	 # tmp266, F

.L603:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp269, F, tmp268
	sw	$4,%gp_rel(F)($28)	 # tmp269, F
.L604:
	seb	$2,$2	 # A.1199, A.1199
	seb	$3,$3	 # L.1198, L.1198
	subu	$2,$2,$3	 # i, A.1199, L.1198
	andi	$3,$2,0x00ff	 # A.1208, i
	addiu	$4,$2,128	 # tmp272, i,
	sltu	$4,$4,256	 # tmp273, tmp272,
	bne	$4,$0,.L605	 #, tmp273,,
	sb	$3,%gp_rel(A)($28)	 # A.1208, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp275, F,
	j	.L606	 #
	sw	$4,%gp_rel(F)($28)	 # tmp275, F

.L605:
	li	$4,-5			# 0xfffffffb	 # tmp277,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp278, F, tmp277
	sw	$4,%gp_rel(F)($28)	 # tmp278, F
.L606:
	andi	$2,$2,0x80	 # tmp279, i,
	beq	$2,$0,.L607	 #, tmp279,,
	li	$2,-129			# 0xffffff7f	 # tmp283,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp281, F,
	j	.L608	 #
	sw	$2,%gp_rel(F)($28)	 # tmp281, F

.L607:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp284, F, tmp283
	sw	$2,%gp_rel(F)($28)	 # tmp284, F
.L608:
	beql	$3,$0,.L609	 #, A.1208,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp286,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp287, F, tmp286
	j	.L610	 #
	sw	$2,%gp_rel(F)($28)	 # tmp287, F

.L609:
	ori	$2,$2,0x40	 # tmp289, F,
	sw	$2,%gp_rel(F)($28)	 # tmp289, F
.L610:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp291, F,
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_subl
	.size	op_subl, .-op_subl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_subhl
	.type	op_subhl, @function
op_subhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp265, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp267, tmp265, L
	lui	$3,%hi(ram)	 # tmp263,
	addiu	$3,$3,%lo(ram)	 # tmp269, tmp263,
	addu	$2,$2,$3	 # tmp268, tmp267, tmp269
	lbu	$3,0($2)	 # P, ram
	lbu	$2,%gp_rel(A)($28)	 # A.1176, A
	andi	$5,$3,0xf	 # tmp270, P,
	andi	$4,$2,0xf	 # tmp271, A.1176,
	slt	$4,$4,$5	 # tmp272, tmp271, tmp270
	beq	$4,$0,.L612	 #, tmp272,,
	li	$4,-17			# 0xffffffef	 # tmp276,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp274, F,
	j	.L613	 #
	sw	$4,%gp_rel(F)($28)	 # tmp274, F

.L612:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp277, F, tmp276
	sw	$4,%gp_rel(F)($28)	 # tmp277, F
.L613:
	sltu	$4,$2,$3	 # tmp278, A.1176, P
	beq	$4,$0,.L614	 #, tmp278,,
	li	$4,-2			# 0xfffffffe	 # tmp282,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp280, F,
	j	.L615	 #
	sw	$4,%gp_rel(F)($28)	 # tmp280, F

.L614:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp283, F, tmp282
	sw	$4,%gp_rel(F)($28)	 # tmp283, F
.L615:
	seb	$2,$2	 # A.1176, A.1176
	seb	$3,$3	 # P, P
	subu	$2,$2,$3	 # i, A.1176, P
	andi	$3,$2,0x00ff	 # A.1185, i
	addiu	$4,$2,128	 # tmp286, i,
	sltu	$4,$4,256	 # tmp287, tmp286,
	bne	$4,$0,.L616	 #, tmp287,,
	sb	$3,%gp_rel(A)($28)	 # A.1185, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp289, F,
	j	.L617	 #
	sw	$4,%gp_rel(F)($28)	 # tmp289, F

.L616:
	li	$4,-5			# 0xfffffffb	 # tmp291,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp292, F, tmp291
	sw	$4,%gp_rel(F)($28)	 # tmp292, F
.L617:
	andi	$2,$2,0x80	 # tmp293, i,
	beq	$2,$0,.L618	 #, tmp293,,
	li	$2,-129			# 0xffffff7f	 # tmp297,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp295, F,
	j	.L619	 #
	sw	$2,%gp_rel(F)($28)	 # tmp295, F

.L618:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp298, F, tmp297
	sw	$2,%gp_rel(F)($28)	 # tmp298, F
.L619:
	beql	$3,$0,.L620	 #, A.1185,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp300,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp301, F, tmp300
	j	.L621	 #
	sw	$2,%gp_rel(F)($28)	 # tmp301, F

.L620:
	ori	$2,$2,0x40	 # tmp303, F,
	sw	$2,%gp_rel(F)($28)	 # tmp303, F
.L621:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp305, F,
	sw	$2,%gp_rel(F)($28)	 # tmp305, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_subhl
	.size	op_subhl, .-op_subhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_subn
	.type	op_subn, @function
op_subn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.312, PC
	lbu	$3,0($2)	 # P,* PC.312
	addiu	$2,$2,1	 # tmp258, PC.312,
	sw	$2,%gp_rel(PC)($28)	 # tmp258, PC
	lbu	$2,%gp_rel(A)($28)	 # A.315, A
	andi	$5,$3,0xf	 # tmp259, P,
	andi	$4,$2,0xf	 # tmp260, A.315,
	slt	$4,$4,$5	 # tmp261, tmp260, tmp259
	beq	$4,$0,.L623	 #, tmp261,,
	li	$4,-17			# 0xffffffef	 # tmp265,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp263, F,
	j	.L624	 #
	sw	$4,%gp_rel(F)($28)	 # tmp263, F

.L623:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp266, F, tmp265
	sw	$4,%gp_rel(F)($28)	 # tmp266, F
.L624:
	sltu	$4,$2,$3	 # tmp267, A.315, P
	beq	$4,$0,.L625	 #, tmp267,,
	li	$4,-2			# 0xfffffffe	 # tmp271,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp269, F,
	j	.L626	 #
	sw	$4,%gp_rel(F)($28)	 # tmp269, F

.L625:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp272, F, tmp271
	sw	$4,%gp_rel(F)($28)	 # tmp272, F
.L626:
	seb	$2,$2	 # A.315, A.315
	seb	$3,$3	 # P, P
	subu	$2,$2,$3	 # i, A.315, P
	andi	$3,$2,0x00ff	 # A.324, i
	addiu	$4,$2,128	 # tmp275, i,
	sltu	$4,$4,256	 # tmp276, tmp275,
	bne	$4,$0,.L627	 #, tmp276,,
	sb	$3,%gp_rel(A)($28)	 # A.324, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp278, F,
	j	.L628	 #
	sw	$4,%gp_rel(F)($28)	 # tmp278, F

.L627:
	li	$4,-5			# 0xfffffffb	 # tmp280,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp281, F, tmp280
	sw	$4,%gp_rel(F)($28)	 # tmp281, F
.L628:
	andi	$2,$2,0x80	 # tmp282, i,
	beq	$2,$0,.L629	 #, tmp282,,
	li	$2,-129			# 0xffffff7f	 # tmp286,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp284, F,
	j	.L630	 #
	sw	$2,%gp_rel(F)($28)	 # tmp284, F

.L629:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp287, F, tmp286
	sw	$2,%gp_rel(F)($28)	 # tmp287, F
.L630:
	beql	$3,$0,.L631	 #, A.324,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp289,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp290, F, tmp289
	j	.L632	 #
	sw	$2,%gp_rel(F)($28)	 # tmp290, F

.L631:
	ori	$2,$2,0x40	 # tmp292, F,
	sw	$2,%gp_rel(F)($28)	 # tmp292, F
.L632:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp294, F,
	sw	$2,%gp_rel(F)($28)	 # tmp294, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_subn
	.size	op_subn, .-op_subn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbca
	.type	op_sbca, @function
op_sbca:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F.1003, F
	andi	$3,$2,0x1	 # tmp225, F.1003,
	beql	$3,$0,.L634	 #, tmp225,,
	ori	$2,$2,0x42	 # tmp230, F.1003,

	ori	$2,$2,0x93	 # tmp226, F.1003,
	li	$3,-69			# 0xffffffbb	 # tmp227,
	and	$2,$2,$3	 # tmp228, tmp226, tmp227
	sw	$2,%gp_rel(F)($28)	 # tmp228, F
	li	$2,-1			# 0xffffffff	 # tmp229,
	j	.L635	 #
	sb	$2,%gp_rel(A)($28)	 # tmp229, A

.L634:
	li	$3,-150			# 0xffffff6a	 # tmp231,
	and	$2,$2,$3	 # tmp232, tmp230, tmp231
	sw	$2,%gp_rel(F)($28)	 # tmp232, F
	sb	$0,%gp_rel(A)($28)	 #, A
.L635:
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbca
	.size	op_sbca, .-op_sbca
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbcb
	.type	op_sbcb, @function
op_sbcb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1147, F
	andi	$3,$5,0x1	 # carry, F.1147,
	lbu	$4,%gp_rel(B)($28)	 # B.1149, B
	lbu	$2,%gp_rel(A)($28)	 # A.1150, A
	andi	$6,$4,0xf	 # tmp259, B.1149,
	addu	$6,$6,$3	 # tmp260, tmp259, carry
	andi	$7,$2,0xf	 # tmp261, A.1150,
	slt	$6,$7,$6	 # tmp262, tmp261, tmp260
	beq	$6,$0,.L637	 #, tmp262,,
	li	$6,-17			# 0xffffffef	 # tmp264,

	ori	$5,$5,0x10	 # tmp263, F.1147,
	j	.L638	 #
	sw	$5,%gp_rel(F)($28)	 # tmp263, F

.L637:
	and	$5,$5,$6	 # tmp265, F.1147, tmp264
	sw	$5,%gp_rel(F)($28)	 # tmp265, F
.L638:
	addu	$5,$4,$3	 # tmp266, B.1149, carry
	slt	$5,$2,$5	 # tmp267, A.1150, tmp266
	beq	$5,$0,.L639	 #, tmp267,,
	li	$5,-2			# 0xfffffffe	 # tmp271,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp269, F,
	j	.L640	 #
	sw	$5,%gp_rel(F)($28)	 # tmp269, F

.L639:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp272, F, tmp271
	sw	$5,%gp_rel(F)($28)	 # tmp272, F
.L640:
	seb	$2,$2	 # A.1150, A.1150
	seb	$4,$4	 # B.1149, B.1149
	subu	$2,$2,$4	 # tmp275, A.1150, B.1149
	subu	$2,$2,$3	 # i, tmp275, carry
	andi	$3,$2,0x00ff	 # A.1158, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L641	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1158, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L642	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L641:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L642:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L643	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L644	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L643:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L644:
	beql	$3,$0,.L645	 #, A.1158,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L646	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L645:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L646:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp295, F,
	sw	$2,%gp_rel(F)($28)	 # tmp295, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbcb
	.size	op_sbcb, .-op_sbcb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbcc
	.type	op_sbcc, @function
op_sbcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1124, F
	andi	$3,$5,0x1	 # carry, F.1124,
	lbu	$4,%gp_rel(C)($28)	 # C.1126, C
	lbu	$2,%gp_rel(A)($28)	 # A.1127, A
	andi	$6,$4,0xf	 # tmp259, C.1126,
	addu	$6,$6,$3	 # tmp260, tmp259, carry
	andi	$7,$2,0xf	 # tmp261, A.1127,
	slt	$6,$7,$6	 # tmp262, tmp261, tmp260
	beq	$6,$0,.L648	 #, tmp262,,
	li	$6,-17			# 0xffffffef	 # tmp264,

	ori	$5,$5,0x10	 # tmp263, F.1124,
	j	.L649	 #
	sw	$5,%gp_rel(F)($28)	 # tmp263, F

.L648:
	and	$5,$5,$6	 # tmp265, F.1124, tmp264
	sw	$5,%gp_rel(F)($28)	 # tmp265, F
.L649:
	addu	$5,$4,$3	 # tmp266, C.1126, carry
	slt	$5,$2,$5	 # tmp267, A.1127, tmp266
	beq	$5,$0,.L650	 #, tmp267,,
	li	$5,-2			# 0xfffffffe	 # tmp271,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp269, F,
	j	.L651	 #
	sw	$5,%gp_rel(F)($28)	 # tmp269, F

.L650:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp272, F, tmp271
	sw	$5,%gp_rel(F)($28)	 # tmp272, F
.L651:
	seb	$2,$2	 # A.1127, A.1127
	seb	$4,$4	 # C.1126, C.1126
	subu	$2,$2,$4	 # tmp275, A.1127, C.1126
	subu	$2,$2,$3	 # i, tmp275, carry
	andi	$3,$2,0x00ff	 # A.1135, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L652	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1135, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L653	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L652:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L653:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L654	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L655	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L654:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L655:
	beql	$3,$0,.L656	 #, A.1135,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L657	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L656:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L657:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp295, F,
	sw	$2,%gp_rel(F)($28)	 # tmp295, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbcc
	.size	op_sbcc, .-op_sbcc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbcd
	.type	op_sbcd, @function
op_sbcd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1101, F
	andi	$3,$5,0x1	 # carry, F.1101,
	lbu	$4,%gp_rel(D)($28)	 # D.1103, D
	lbu	$2,%gp_rel(A)($28)	 # A.1104, A
	andi	$6,$4,0xf	 # tmp259, D.1103,
	addu	$6,$6,$3	 # tmp260, tmp259, carry
	andi	$7,$2,0xf	 # tmp261, A.1104,
	slt	$6,$7,$6	 # tmp262, tmp261, tmp260
	beq	$6,$0,.L659	 #, tmp262,,
	li	$6,-17			# 0xffffffef	 # tmp264,

	ori	$5,$5,0x10	 # tmp263, F.1101,
	j	.L660	 #
	sw	$5,%gp_rel(F)($28)	 # tmp263, F

.L659:
	and	$5,$5,$6	 # tmp265, F.1101, tmp264
	sw	$5,%gp_rel(F)($28)	 # tmp265, F
.L660:
	addu	$5,$4,$3	 # tmp266, D.1103, carry
	slt	$5,$2,$5	 # tmp267, A.1104, tmp266
	beq	$5,$0,.L661	 #, tmp267,,
	li	$5,-2			# 0xfffffffe	 # tmp271,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp269, F,
	j	.L662	 #
	sw	$5,%gp_rel(F)($28)	 # tmp269, F

.L661:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp272, F, tmp271
	sw	$5,%gp_rel(F)($28)	 # tmp272, F
.L662:
	seb	$2,$2	 # A.1104, A.1104
	seb	$4,$4	 # D.1103, D.1103
	subu	$2,$2,$4	 # tmp275, A.1104, D.1103
	subu	$2,$2,$3	 # i, tmp275, carry
	andi	$3,$2,0x00ff	 # A.1112, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L663	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1112, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L664	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L663:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L664:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L665	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L666	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L665:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L666:
	beql	$3,$0,.L667	 #, A.1112,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L668	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L667:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L668:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp295, F,
	sw	$2,%gp_rel(F)($28)	 # tmp295, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbcd
	.size	op_sbcd, .-op_sbcd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbce
	.type	op_sbce, @function
op_sbce:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1078, F
	andi	$3,$5,0x1	 # carry, F.1078,
	lbu	$4,%gp_rel(E)($28)	 # E.1080, E
	lbu	$2,%gp_rel(A)($28)	 # A.1081, A
	andi	$6,$4,0xf	 # tmp259, E.1080,
	addu	$6,$6,$3	 # tmp260, tmp259, carry
	andi	$7,$2,0xf	 # tmp261, A.1081,
	slt	$6,$7,$6	 # tmp262, tmp261, tmp260
	beq	$6,$0,.L670	 #, tmp262,,
	li	$6,-17			# 0xffffffef	 # tmp264,

	ori	$5,$5,0x10	 # tmp263, F.1078,
	j	.L671	 #
	sw	$5,%gp_rel(F)($28)	 # tmp263, F

.L670:
	and	$5,$5,$6	 # tmp265, F.1078, tmp264
	sw	$5,%gp_rel(F)($28)	 # tmp265, F
.L671:
	addu	$5,$4,$3	 # tmp266, E.1080, carry
	slt	$5,$2,$5	 # tmp267, A.1081, tmp266
	beq	$5,$0,.L672	 #, tmp267,,
	li	$5,-2			# 0xfffffffe	 # tmp271,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp269, F,
	j	.L673	 #
	sw	$5,%gp_rel(F)($28)	 # tmp269, F

.L672:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp272, F, tmp271
	sw	$5,%gp_rel(F)($28)	 # tmp272, F
.L673:
	seb	$2,$2	 # A.1081, A.1081
	seb	$4,$4	 # E.1080, E.1080
	subu	$2,$2,$4	 # tmp275, A.1081, E.1080
	subu	$2,$2,$3	 # i, tmp275, carry
	andi	$3,$2,0x00ff	 # A.1089, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L674	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1089, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L675	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L674:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L675:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L676	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L677	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L676:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L677:
	beql	$3,$0,.L678	 #, A.1089,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L679	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L678:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L679:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp295, F,
	sw	$2,%gp_rel(F)($28)	 # tmp295, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbce
	.size	op_sbce, .-op_sbce
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbch
	.type	op_sbch, @function
op_sbch:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1055, F
	andi	$3,$5,0x1	 # carry, F.1055,
	lbu	$4,%gp_rel(H)($28)	 # H.1057, H
	lbu	$2,%gp_rel(A)($28)	 # A.1058, A
	andi	$6,$4,0xf	 # tmp259, H.1057,
	addu	$6,$6,$3	 # tmp260, tmp259, carry
	andi	$7,$2,0xf	 # tmp261, A.1058,
	slt	$6,$7,$6	 # tmp262, tmp261, tmp260
	beq	$6,$0,.L681	 #, tmp262,,
	li	$6,-17			# 0xffffffef	 # tmp264,

	ori	$5,$5,0x10	 # tmp263, F.1055,
	j	.L682	 #
	sw	$5,%gp_rel(F)($28)	 # tmp263, F

.L681:
	and	$5,$5,$6	 # tmp265, F.1055, tmp264
	sw	$5,%gp_rel(F)($28)	 # tmp265, F
.L682:
	addu	$5,$4,$3	 # tmp266, H.1057, carry
	slt	$5,$2,$5	 # tmp267, A.1058, tmp266
	beq	$5,$0,.L683	 #, tmp267,,
	li	$5,-2			# 0xfffffffe	 # tmp271,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp269, F,
	j	.L684	 #
	sw	$5,%gp_rel(F)($28)	 # tmp269, F

.L683:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp272, F, tmp271
	sw	$5,%gp_rel(F)($28)	 # tmp272, F
.L684:
	seb	$2,$2	 # A.1058, A.1058
	seb	$4,$4	 # H.1057, H.1057
	subu	$2,$2,$4	 # tmp275, A.1058, H.1057
	subu	$2,$2,$3	 # i, tmp275, carry
	andi	$3,$2,0x00ff	 # A.1066, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L685	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1066, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L686	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L685:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L686:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L687	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L688	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L687:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L688:
	beql	$3,$0,.L689	 #, A.1066,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L690	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L689:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L690:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp295, F,
	sw	$2,%gp_rel(F)($28)	 # tmp295, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbch
	.size	op_sbch, .-op_sbch
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbcl
	.type	op_sbcl, @function
op_sbcl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.1032, F
	andi	$3,$5,0x1	 # carry, F.1032,
	lbu	$4,%gp_rel(L)($28)	 # L.1034, L
	lbu	$2,%gp_rel(A)($28)	 # A.1035, A
	andi	$6,$4,0xf	 # tmp259, L.1034,
	addu	$6,$6,$3	 # tmp260, tmp259, carry
	andi	$7,$2,0xf	 # tmp261, A.1035,
	slt	$6,$7,$6	 # tmp262, tmp261, tmp260
	beq	$6,$0,.L692	 #, tmp262,,
	li	$6,-17			# 0xffffffef	 # tmp264,

	ori	$5,$5,0x10	 # tmp263, F.1032,
	j	.L693	 #
	sw	$5,%gp_rel(F)($28)	 # tmp263, F

.L692:
	and	$5,$5,$6	 # tmp265, F.1032, tmp264
	sw	$5,%gp_rel(F)($28)	 # tmp265, F
.L693:
	addu	$5,$4,$3	 # tmp266, L.1034, carry
	slt	$5,$2,$5	 # tmp267, A.1035, tmp266
	beq	$5,$0,.L694	 #, tmp267,,
	li	$5,-2			# 0xfffffffe	 # tmp271,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp269, F,
	j	.L695	 #
	sw	$5,%gp_rel(F)($28)	 # tmp269, F

.L694:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp272, F, tmp271
	sw	$5,%gp_rel(F)($28)	 # tmp272, F
.L695:
	seb	$2,$2	 # A.1035, A.1035
	seb	$4,$4	 # L.1034, L.1034
	subu	$2,$2,$4	 # tmp275, A.1035, L.1034
	subu	$2,$2,$3	 # i, tmp275, carry
	andi	$3,$2,0x00ff	 # A.1043, i
	addiu	$4,$2,128	 # tmp276, i,
	sltu	$4,$4,256	 # tmp277, tmp276,
	bne	$4,$0,.L696	 #, tmp277,,
	sb	$3,%gp_rel(A)($28)	 # A.1043, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp279, F,
	j	.L697	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L696:
	li	$4,-5			# 0xfffffffb	 # tmp281,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L697:
	andi	$2,$2,0x80	 # tmp283, i,
	beq	$2,$0,.L698	 #, tmp283,,
	li	$2,-129			# 0xffffff7f	 # tmp287,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp285, F,
	j	.L699	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L698:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L699:
	beql	$3,$0,.L700	 #, A.1043,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L701	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L700:
	ori	$2,$2,0x40	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L701:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp295, F,
	sw	$2,%gp_rel(F)($28)	 # tmp295, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbcl
	.size	op_sbcl, .-op_sbcl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbchl
	.type	op_sbchl, @function
op_sbchl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp268, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp270, tmp268, L
	lui	$3,%hi(ram)	 # tmp266,
	addiu	$3,$3,%lo(ram)	 # tmp272, tmp266,
	addu	$2,$2,$3	 # tmp271, tmp270, tmp272
	lbu	$4,0($2)	 # P, ram
	lw	$5,%gp_rel(F)($28)	 # F.1010, F
	andi	$3,$5,0x1	 # carry, F.1010,
	lbu	$2,%gp_rel(A)($28)	 # A.1012, A
	andi	$6,$4,0xf	 # tmp273, P,
	addu	$6,$6,$3	 # tmp274, tmp273, carry
	andi	$7,$2,0xf	 # tmp275, A.1012,
	slt	$6,$7,$6	 # tmp276, tmp275, tmp274
	beq	$6,$0,.L703	 #, tmp276,,
	li	$6,-17			# 0xffffffef	 # tmp278,

	ori	$5,$5,0x10	 # tmp277, F.1010,
	j	.L704	 #
	sw	$5,%gp_rel(F)($28)	 # tmp277, F

.L703:
	and	$5,$5,$6	 # tmp279, F.1010, tmp278
	sw	$5,%gp_rel(F)($28)	 # tmp279, F
.L704:
	addu	$5,$4,$3	 # tmp280, P, carry
	slt	$5,$2,$5	 # tmp281, A.1012, tmp280
	beq	$5,$0,.L705	 #, tmp281,,
	li	$5,-2			# 0xfffffffe	 # tmp285,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp283, F,
	j	.L706	 #
	sw	$5,%gp_rel(F)($28)	 # tmp283, F

.L705:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp286, F, tmp285
	sw	$5,%gp_rel(F)($28)	 # tmp286, F
.L706:
	seb	$2,$2	 # A.1012, A.1012
	seb	$4,$4	 # P, P
	subu	$2,$2,$4	 # tmp289, A.1012, P
	subu	$2,$2,$3	 # i, tmp289, carry
	andi	$3,$2,0x00ff	 # A.1020, i
	addiu	$4,$2,128	 # tmp290, i,
	sltu	$4,$4,256	 # tmp291, tmp290,
	bne	$4,$0,.L707	 #, tmp291,,
	sb	$3,%gp_rel(A)($28)	 # A.1020, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp293, F,
	j	.L708	 #
	sw	$4,%gp_rel(F)($28)	 # tmp293, F

.L707:
	li	$4,-5			# 0xfffffffb	 # tmp295,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp296, F, tmp295
	sw	$4,%gp_rel(F)($28)	 # tmp296, F
.L708:
	andi	$2,$2,0x80	 # tmp297, i,
	beq	$2,$0,.L709	 #, tmp297,,
	li	$2,-129			# 0xffffff7f	 # tmp301,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp299, F,
	j	.L710	 #
	sw	$2,%gp_rel(F)($28)	 # tmp299, F

.L709:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp302, F, tmp301
	sw	$2,%gp_rel(F)($28)	 # tmp302, F
.L710:
	beql	$3,$0,.L711	 #, A.1020,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp304,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp305, F, tmp304
	j	.L712	 #
	sw	$2,%gp_rel(F)($28)	 # tmp305, F

.L711:
	ori	$2,$2,0x40	 # tmp307, F,
	sw	$2,%gp_rel(F)($28)	 # tmp307, F
.L712:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp309, F,
	sw	$2,%gp_rel(F)($28)	 # tmp309, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbchl
	.size	op_sbchl, .-op_sbchl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbcn
	.type	op_sbcn, @function
op_sbcn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.245, PC
	lbu	$4,0($2)	 # P,* PC.245
	addiu	$2,$2,1	 # tmp261, PC.245,
	sw	$2,%gp_rel(PC)($28)	 # tmp261, PC
	lw	$5,%gp_rel(F)($28)	 # F.247, F
	andi	$3,$5,0x1	 # carry, F.247,
	lbu	$2,%gp_rel(A)($28)	 # A.249, A
	andi	$6,$4,0xf	 # tmp262, P,
	addu	$6,$6,$3	 # tmp263, tmp262, carry
	andi	$7,$2,0xf	 # tmp264, A.249,
	slt	$6,$7,$6	 # tmp265, tmp264, tmp263
	beq	$6,$0,.L714	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp267,

	ori	$5,$5,0x10	 # tmp266, F.247,
	j	.L715	 #
	sw	$5,%gp_rel(F)($28)	 # tmp266, F

.L714:
	and	$5,$5,$6	 # tmp268, F.247, tmp267
	sw	$5,%gp_rel(F)($28)	 # tmp268, F
.L715:
	addu	$5,$4,$3	 # tmp269, P, carry
	slt	$5,$2,$5	 # tmp270, A.249, tmp269
	beq	$5,$0,.L716	 #, tmp270,,
	li	$5,-2			# 0xfffffffe	 # tmp274,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp272, F,
	j	.L717	 #
	sw	$5,%gp_rel(F)($28)	 # tmp272, F

.L716:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp275, F, tmp274
	sw	$5,%gp_rel(F)($28)	 # tmp275, F
.L717:
	seb	$2,$2	 # A.249, A.249
	seb	$4,$4	 # P, P
	subu	$2,$2,$4	 # tmp278, A.249, P
	subu	$2,$2,$3	 # i, tmp278, carry
	andi	$3,$2,0x00ff	 # A.257, i
	addiu	$4,$2,128	 # tmp279, i,
	sltu	$4,$4,256	 # tmp280, tmp279,
	bne	$4,$0,.L718	 #, tmp280,,
	sb	$3,%gp_rel(A)($28)	 # A.257, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp282, F,
	j	.L719	 #
	sw	$4,%gp_rel(F)($28)	 # tmp282, F

.L718:
	li	$4,-5			# 0xfffffffb	 # tmp284,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp285, F, tmp284
	sw	$4,%gp_rel(F)($28)	 # tmp285, F
.L719:
	andi	$2,$2,0x80	 # tmp286, i,
	beq	$2,$0,.L720	 #, tmp286,,
	li	$2,-129			# 0xffffff7f	 # tmp290,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp288, F,
	j	.L721	 #
	sw	$2,%gp_rel(F)($28)	 # tmp288, F

.L720:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp291, F, tmp290
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
.L721:
	beql	$3,$0,.L722	 #, A.257,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp293,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp294, F, tmp293
	j	.L723	 #
	sw	$2,%gp_rel(F)($28)	 # tmp294, F

.L722:
	ori	$2,$2,0x40	 # tmp296, F,
	sw	$2,%gp_rel(F)($28)	 # tmp296, F
.L723:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp298, F,
	sw	$2,%gp_rel(F)($28)	 # tmp298, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbcn
	.size	op_sbcn, .-op_sbcn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpa
	.type	op_cpa, @function
op_cpa:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-150			# 0xffffff6a	 # tmp224,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp222, F, tmp224
	ori	$2,$2,0x42	 # tmp225, tmp222,
	sw	$2,%gp_rel(F)($28)	 # tmp225, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpa
	.size	op_cpa, .-op_cpa
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpb
	.type	op_cpb, @function
op_cpb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(B)($28)	 # B.627, B
	lbu	$2,%gp_rel(A)($28)	 # A.628, A
	andi	$5,$3,0xf	 # tmp255, B.627,
	andi	$4,$2,0xf	 # tmp256, A.628,
	slt	$4,$4,$5	 # tmp257, tmp256, tmp255
	beq	$4,$0,.L726	 #, tmp257,,
	li	$4,-17			# 0xffffffef	 # tmp261,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp259, F,
	j	.L727	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L726:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp262, F, tmp261
	sw	$4,%gp_rel(F)($28)	 # tmp262, F
.L727:
	sltu	$4,$2,$3	 # tmp263, A.628, B.627
	beq	$4,$0,.L728	 #, tmp263,,
	li	$4,-2			# 0xfffffffe	 # tmp267,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp265, F,
	j	.L729	 #
	sw	$4,%gp_rel(F)($28)	 # tmp265, F

.L728:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp268, F, tmp267
	sw	$4,%gp_rel(F)($28)	 # tmp268, F
.L729:
	seb	$2,$2	 # A.628, A.628
	seb	$3,$3	 # B.627, B.627
	subu	$2,$2,$3	 # i, A.628, B.627
	addiu	$3,$2,128	 # tmp271, i,
	sltu	$3,$3,256	 # tmp272, tmp271,
	bne	$3,$0,.L730	 #, tmp272,,
	li	$3,-5			# 0xfffffffb	 # tmp276,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp274, F,
	j	.L731	 #
	sw	$3,%gp_rel(F)($28)	 # tmp274, F

.L730:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp277, F, tmp276
	sw	$3,%gp_rel(F)($28)	 # tmp277, F
.L731:
	andi	$3,$2,0x80	 # tmp278, i,
	beq	$3,$0,.L732	 #, tmp278,,
	li	$3,-129			# 0xffffff7f	 # tmp282,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp280, F,
	j	.L733	 #
	sw	$3,%gp_rel(F)($28)	 # tmp280, F

.L732:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp283, F, tmp282
	sw	$3,%gp_rel(F)($28)	 # tmp283, F
.L733:
	beql	$2,$0,.L734	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp285,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp286, F, tmp285
	j	.L735	 #
	sw	$2,%gp_rel(F)($28)	 # tmp286, F

.L734:
	ori	$2,$2,0x40	 # tmp288, F,
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L735:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp290, F,
	sw	$2,%gp_rel(F)($28)	 # tmp290, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpb
	.size	op_cpb, .-op_cpb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpc
	.type	op_cpc, @function
op_cpc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(C)($28)	 # C.605, C
	lbu	$2,%gp_rel(A)($28)	 # A.606, A
	andi	$5,$3,0xf	 # tmp255, C.605,
	andi	$4,$2,0xf	 # tmp256, A.606,
	slt	$4,$4,$5	 # tmp257, tmp256, tmp255
	beq	$4,$0,.L737	 #, tmp257,,
	li	$4,-17			# 0xffffffef	 # tmp261,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp259, F,
	j	.L738	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L737:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp262, F, tmp261
	sw	$4,%gp_rel(F)($28)	 # tmp262, F
.L738:
	sltu	$4,$2,$3	 # tmp263, A.606, C.605
	beq	$4,$0,.L739	 #, tmp263,,
	li	$4,-2			# 0xfffffffe	 # tmp267,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp265, F,
	j	.L740	 #
	sw	$4,%gp_rel(F)($28)	 # tmp265, F

.L739:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp268, F, tmp267
	sw	$4,%gp_rel(F)($28)	 # tmp268, F
.L740:
	seb	$2,$2	 # A.606, A.606
	seb	$3,$3	 # C.605, C.605
	subu	$2,$2,$3	 # i, A.606, C.605
	addiu	$3,$2,128	 # tmp271, i,
	sltu	$3,$3,256	 # tmp272, tmp271,
	bne	$3,$0,.L741	 #, tmp272,,
	li	$3,-5			# 0xfffffffb	 # tmp276,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp274, F,
	j	.L742	 #
	sw	$3,%gp_rel(F)($28)	 # tmp274, F

.L741:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp277, F, tmp276
	sw	$3,%gp_rel(F)($28)	 # tmp277, F
.L742:
	andi	$3,$2,0x80	 # tmp278, i,
	beq	$3,$0,.L743	 #, tmp278,,
	li	$3,-129			# 0xffffff7f	 # tmp282,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp280, F,
	j	.L744	 #
	sw	$3,%gp_rel(F)($28)	 # tmp280, F

.L743:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp283, F, tmp282
	sw	$3,%gp_rel(F)($28)	 # tmp283, F
.L744:
	beql	$2,$0,.L745	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp285,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp286, F, tmp285
	j	.L746	 #
	sw	$2,%gp_rel(F)($28)	 # tmp286, F

.L745:
	ori	$2,$2,0x40	 # tmp288, F,
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L746:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp290, F,
	sw	$2,%gp_rel(F)($28)	 # tmp290, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpc
	.size	op_cpc, .-op_cpc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpd
	.type	op_cpd, @function
op_cpd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(D)($28)	 # D.583, D
	lbu	$2,%gp_rel(A)($28)	 # A.584, A
	andi	$5,$3,0xf	 # tmp255, D.583,
	andi	$4,$2,0xf	 # tmp256, A.584,
	slt	$4,$4,$5	 # tmp257, tmp256, tmp255
	beq	$4,$0,.L748	 #, tmp257,,
	li	$4,-17			# 0xffffffef	 # tmp261,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp259, F,
	j	.L749	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L748:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp262, F, tmp261
	sw	$4,%gp_rel(F)($28)	 # tmp262, F
.L749:
	sltu	$4,$2,$3	 # tmp263, A.584, D.583
	beq	$4,$0,.L750	 #, tmp263,,
	li	$4,-2			# 0xfffffffe	 # tmp267,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp265, F,
	j	.L751	 #
	sw	$4,%gp_rel(F)($28)	 # tmp265, F

.L750:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp268, F, tmp267
	sw	$4,%gp_rel(F)($28)	 # tmp268, F
.L751:
	seb	$2,$2	 # A.584, A.584
	seb	$3,$3	 # D.583, D.583
	subu	$2,$2,$3	 # i, A.584, D.583
	addiu	$3,$2,128	 # tmp271, i,
	sltu	$3,$3,256	 # tmp272, tmp271,
	bne	$3,$0,.L752	 #, tmp272,,
	li	$3,-5			# 0xfffffffb	 # tmp276,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp274, F,
	j	.L753	 #
	sw	$3,%gp_rel(F)($28)	 # tmp274, F

.L752:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp277, F, tmp276
	sw	$3,%gp_rel(F)($28)	 # tmp277, F
.L753:
	andi	$3,$2,0x80	 # tmp278, i,
	beq	$3,$0,.L754	 #, tmp278,,
	li	$3,-129			# 0xffffff7f	 # tmp282,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp280, F,
	j	.L755	 #
	sw	$3,%gp_rel(F)($28)	 # tmp280, F

.L754:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp283, F, tmp282
	sw	$3,%gp_rel(F)($28)	 # tmp283, F
.L755:
	beql	$2,$0,.L756	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp285,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp286, F, tmp285
	j	.L757	 #
	sw	$2,%gp_rel(F)($28)	 # tmp286, F

.L756:
	ori	$2,$2,0x40	 # tmp288, F,
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L757:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp290, F,
	sw	$2,%gp_rel(F)($28)	 # tmp290, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpd
	.size	op_cpd, .-op_cpd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpe
	.type	op_cpe, @function
op_cpe:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(E)($28)	 # E.561, E
	lbu	$2,%gp_rel(A)($28)	 # A.562, A
	andi	$5,$3,0xf	 # tmp255, E.561,
	andi	$4,$2,0xf	 # tmp256, A.562,
	slt	$4,$4,$5	 # tmp257, tmp256, tmp255
	beq	$4,$0,.L759	 #, tmp257,,
	li	$4,-17			# 0xffffffef	 # tmp261,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp259, F,
	j	.L760	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L759:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp262, F, tmp261
	sw	$4,%gp_rel(F)($28)	 # tmp262, F
.L760:
	sltu	$4,$2,$3	 # tmp263, A.562, E.561
	beq	$4,$0,.L761	 #, tmp263,,
	li	$4,-2			# 0xfffffffe	 # tmp267,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp265, F,
	j	.L762	 #
	sw	$4,%gp_rel(F)($28)	 # tmp265, F

.L761:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp268, F, tmp267
	sw	$4,%gp_rel(F)($28)	 # tmp268, F
.L762:
	seb	$2,$2	 # A.562, A.562
	seb	$3,$3	 # E.561, E.561
	subu	$2,$2,$3	 # i, A.562, E.561
	addiu	$3,$2,128	 # tmp271, i,
	sltu	$3,$3,256	 # tmp272, tmp271,
	bne	$3,$0,.L763	 #, tmp272,,
	li	$3,-5			# 0xfffffffb	 # tmp276,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp274, F,
	j	.L764	 #
	sw	$3,%gp_rel(F)($28)	 # tmp274, F

.L763:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp277, F, tmp276
	sw	$3,%gp_rel(F)($28)	 # tmp277, F
.L764:
	andi	$3,$2,0x80	 # tmp278, i,
	beq	$3,$0,.L765	 #, tmp278,,
	li	$3,-129			# 0xffffff7f	 # tmp282,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp280, F,
	j	.L766	 #
	sw	$3,%gp_rel(F)($28)	 # tmp280, F

.L765:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp283, F, tmp282
	sw	$3,%gp_rel(F)($28)	 # tmp283, F
.L766:
	beql	$2,$0,.L767	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp285,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp286, F, tmp285
	j	.L768	 #
	sw	$2,%gp_rel(F)($28)	 # tmp286, F

.L767:
	ori	$2,$2,0x40	 # tmp288, F,
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L768:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp290, F,
	sw	$2,%gp_rel(F)($28)	 # tmp290, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpe
	.size	op_cpe, .-op_cpe
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cph
	.type	op_cph, @function
op_cph:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(H)($28)	 # H.539, H
	lbu	$2,%gp_rel(A)($28)	 # A.540, A
	andi	$5,$3,0xf	 # tmp255, H.539,
	andi	$4,$2,0xf	 # tmp256, A.540,
	slt	$4,$4,$5	 # tmp257, tmp256, tmp255
	beq	$4,$0,.L770	 #, tmp257,,
	li	$4,-17			# 0xffffffef	 # tmp261,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp259, F,
	j	.L771	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L770:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp262, F, tmp261
	sw	$4,%gp_rel(F)($28)	 # tmp262, F
.L771:
	sltu	$4,$2,$3	 # tmp263, A.540, H.539
	beq	$4,$0,.L772	 #, tmp263,,
	li	$4,-2			# 0xfffffffe	 # tmp267,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp265, F,
	j	.L773	 #
	sw	$4,%gp_rel(F)($28)	 # tmp265, F

.L772:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp268, F, tmp267
	sw	$4,%gp_rel(F)($28)	 # tmp268, F
.L773:
	seb	$2,$2	 # A.540, A.540
	seb	$3,$3	 # H.539, H.539
	subu	$2,$2,$3	 # i, A.540, H.539
	addiu	$3,$2,128	 # tmp271, i,
	sltu	$3,$3,256	 # tmp272, tmp271,
	bne	$3,$0,.L774	 #, tmp272,,
	li	$3,-5			# 0xfffffffb	 # tmp276,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp274, F,
	j	.L775	 #
	sw	$3,%gp_rel(F)($28)	 # tmp274, F

.L774:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp277, F, tmp276
	sw	$3,%gp_rel(F)($28)	 # tmp277, F
.L775:
	andi	$3,$2,0x80	 # tmp278, i,
	beq	$3,$0,.L776	 #, tmp278,,
	li	$3,-129			# 0xffffff7f	 # tmp282,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp280, F,
	j	.L777	 #
	sw	$3,%gp_rel(F)($28)	 # tmp280, F

.L776:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp283, F, tmp282
	sw	$3,%gp_rel(F)($28)	 # tmp283, F
.L777:
	beql	$2,$0,.L778	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp285,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp286, F, tmp285
	j	.L779	 #
	sw	$2,%gp_rel(F)($28)	 # tmp286, F

.L778:
	ori	$2,$2,0x40	 # tmp288, F,
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L779:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp290, F,
	sw	$2,%gp_rel(F)($28)	 # tmp290, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cph
	.size	op_cph, .-op_cph
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cplr
	.type	op_cplr, @function
op_cplr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(L)($28)	 # L.517, L
	lbu	$2,%gp_rel(A)($28)	 # A.518, A
	andi	$5,$3,0xf	 # tmp255, L.517,
	andi	$4,$2,0xf	 # tmp256, A.518,
	slt	$4,$4,$5	 # tmp257, tmp256, tmp255
	beq	$4,$0,.L781	 #, tmp257,,
	li	$4,-17			# 0xffffffef	 # tmp261,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp259, F,
	j	.L782	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L781:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp262, F, tmp261
	sw	$4,%gp_rel(F)($28)	 # tmp262, F
.L782:
	sltu	$4,$2,$3	 # tmp263, A.518, L.517
	beq	$4,$0,.L783	 #, tmp263,,
	li	$4,-2			# 0xfffffffe	 # tmp267,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp265, F,
	j	.L784	 #
	sw	$4,%gp_rel(F)($28)	 # tmp265, F

.L783:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp268, F, tmp267
	sw	$4,%gp_rel(F)($28)	 # tmp268, F
.L784:
	seb	$2,$2	 # A.518, A.518
	seb	$3,$3	 # L.517, L.517
	subu	$2,$2,$3	 # i, A.518, L.517
	addiu	$3,$2,128	 # tmp271, i,
	sltu	$3,$3,256	 # tmp272, tmp271,
	bne	$3,$0,.L785	 #, tmp272,,
	li	$3,-5			# 0xfffffffb	 # tmp276,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp274, F,
	j	.L786	 #
	sw	$3,%gp_rel(F)($28)	 # tmp274, F

.L785:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp277, F, tmp276
	sw	$3,%gp_rel(F)($28)	 # tmp277, F
.L786:
	andi	$3,$2,0x80	 # tmp278, i,
	beq	$3,$0,.L787	 #, tmp278,,
	li	$3,-129			# 0xffffff7f	 # tmp282,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp280, F,
	j	.L788	 #
	sw	$3,%gp_rel(F)($28)	 # tmp280, F

.L787:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp283, F, tmp282
	sw	$3,%gp_rel(F)($28)	 # tmp283, F
.L788:
	beql	$2,$0,.L789	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp285,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp286, F, tmp285
	j	.L790	 #
	sw	$2,%gp_rel(F)($28)	 # tmp286, F

.L789:
	ori	$2,$2,0x40	 # tmp288, F,
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L790:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp290, F,
	sw	$2,%gp_rel(F)($28)	 # tmp290, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cplr
	.size	op_cplr, .-op_cplr
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cphl
	.type	op_cphl, @function
op_cphl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp264, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp266, tmp264, L
	lui	$3,%hi(ram)	 # tmp262,
	addiu	$3,$3,%lo(ram)	 # tmp268, tmp262,
	addu	$2,$2,$3	 # tmp267, tmp266, tmp268
	lbu	$3,0($2)	 # P, ram
	lbu	$2,%gp_rel(A)($28)	 # A.496, A
	andi	$5,$3,0xf	 # tmp269, P,
	andi	$4,$2,0xf	 # tmp270, A.496,
	slt	$4,$4,$5	 # tmp271, tmp270, tmp269
	beq	$4,$0,.L792	 #, tmp271,,
	li	$4,-17			# 0xffffffef	 # tmp275,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp273, F,
	j	.L793	 #
	sw	$4,%gp_rel(F)($28)	 # tmp273, F

.L792:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp276, F, tmp275
	sw	$4,%gp_rel(F)($28)	 # tmp276, F
.L793:
	sltu	$4,$2,$3	 # tmp277, A.496, P
	beq	$4,$0,.L794	 #, tmp277,,
	li	$4,-2			# 0xfffffffe	 # tmp281,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp279, F,
	j	.L795	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L794:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp282, F, tmp281
	sw	$4,%gp_rel(F)($28)	 # tmp282, F
.L795:
	seb	$2,$2	 # A.496, A.496
	seb	$3,$3	 # P, P
	subu	$2,$2,$3	 # i, A.496, P
	addiu	$3,$2,128	 # tmp285, i,
	sltu	$3,$3,256	 # tmp286, tmp285,
	bne	$3,$0,.L796	 #, tmp286,,
	li	$3,-5			# 0xfffffffb	 # tmp290,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp288, F,
	j	.L797	 #
	sw	$3,%gp_rel(F)($28)	 # tmp288, F

.L796:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp291, F, tmp290
	sw	$3,%gp_rel(F)($28)	 # tmp291, F
.L797:
	andi	$3,$2,0x80	 # tmp292, i,
	beq	$3,$0,.L798	 #, tmp292,,
	li	$3,-129			# 0xffffff7f	 # tmp296,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp294, F,
	j	.L799	 #
	sw	$3,%gp_rel(F)($28)	 # tmp294, F

.L798:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp297, F, tmp296
	sw	$3,%gp_rel(F)($28)	 # tmp297, F
.L799:
	beql	$2,$0,.L800	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp299,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp300, F, tmp299
	j	.L801	 #
	sw	$2,%gp_rel(F)($28)	 # tmp300, F

.L800:
	ori	$2,$2,0x40	 # tmp302, F,
	sw	$2,%gp_rel(F)($28)	 # tmp302, F
.L801:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp304, F,
	sw	$2,%gp_rel(F)($28)	 # tmp304, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cphl
	.size	op_cphl, .-op_cphl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpn
	.type	op_cpn, @function
op_cpn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.35, PC
	lbu	$3,0($2)	 # P,* PC.35
	addiu	$2,$2,1	 # tmp257, PC.35,
	sw	$2,%gp_rel(PC)($28)	 # tmp257, PC
	lbu	$2,%gp_rel(A)($28)	 # A.38, A
	andi	$5,$3,0xf	 # tmp258, P,
	andi	$4,$2,0xf	 # tmp259, A.38,
	slt	$4,$4,$5	 # tmp260, tmp259, tmp258
	beq	$4,$0,.L803	 #, tmp260,,
	li	$4,-17			# 0xffffffef	 # tmp264,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp262, F,
	j	.L804	 #
	sw	$4,%gp_rel(F)($28)	 # tmp262, F

.L803:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp265, F, tmp264
	sw	$4,%gp_rel(F)($28)	 # tmp265, F
.L804:
	sltu	$4,$2,$3	 # tmp266, A.38, P
	beq	$4,$0,.L805	 #, tmp266,,
	li	$4,-2			# 0xfffffffe	 # tmp270,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp268, F,
	j	.L806	 #
	sw	$4,%gp_rel(F)($28)	 # tmp268, F

.L805:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp271, F, tmp270
	sw	$4,%gp_rel(F)($28)	 # tmp271, F
.L806:
	seb	$2,$2	 # A.38, A.38
	seb	$3,$3	 # P, P
	subu	$2,$2,$3	 # i, A.38, P
	addiu	$3,$2,128	 # tmp274, i,
	sltu	$3,$3,256	 # tmp275, tmp274,
	bne	$3,$0,.L807	 #, tmp275,,
	li	$3,-5			# 0xfffffffb	 # tmp279,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp277, F,
	j	.L808	 #
	sw	$3,%gp_rel(F)($28)	 # tmp277, F

.L807:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp280, F, tmp279
	sw	$3,%gp_rel(F)($28)	 # tmp280, F
.L808:
	andi	$3,$2,0x80	 # tmp281, i,
	beq	$3,$0,.L809	 #, tmp281,,
	li	$3,-129			# 0xffffff7f	 # tmp285,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp283, F,
	j	.L810	 #
	sw	$3,%gp_rel(F)($28)	 # tmp283, F

.L809:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp286, F, tmp285
	sw	$3,%gp_rel(F)($28)	 # tmp286, F
.L810:
	beql	$2,$0,.L811	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp288,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp289, F, tmp288
	j	.L812	 #
	sw	$2,%gp_rel(F)($28)	 # tmp289, F

.L811:
	ori	$2,$2,0x40	 # tmp291, F,
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
.L812:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
	j	$31
	li	$2,7			# 0x7	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpn
	.size	op_cpn, .-op_cpn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_inca
	.type	op_inca, @function
op_inca:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.1815, A
	andi	$3,$2,0xf	 # tmp242, A.1815,
	addiu	$3,$3,1	 # tmp243, tmp242,
	slt	$3,$3,16	 # tmp244, tmp243,
	bne	$3,$0,.L814	 #, tmp244,,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L815	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L814:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L815:
	addiu	$2,$2,1	 # tmp250, A.1815,
	andi	$2,$2,0x00ff	 # A.1819, tmp250
	li	$3,128			# 0x80	 # tmp251,
	bne	$2,$3,.L816	 #, A.1819, tmp251,
	sb	$2,%gp_rel(A)($28)	 # A.1819, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L817	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L816:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.1822, F, tmp255
	seb	$4,$2	 # A.1819, A.1819
	bgez	$4,.L818	 #, A.1819,
	sw	$3,%gp_rel(F)($28)	 # F.1822, F

.L817:
	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp258, F,
	j	.L819	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L818:
	li	$4,-129			# 0xffffff7f	 # tmp259,
	and	$3,$3,$4	 # tmp260, F.1822, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L819:
	beql	$2,$0,.L820	 #, A.1819,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L821	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L820:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L821:
	li	$2,-3			# 0xfffffffd	 # tmp267,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp268, F, tmp267
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_inca
	.size	op_inca, .-op_inca
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_incb
	.type	op_incb, @function
op_incb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # B.2278, B
	andi	$3,$2,0xf	 # tmp242, B.2278,
	addiu	$3,$3,1	 # tmp243, tmp242,
	slt	$3,$3,16	 # tmp244, tmp243,
	bne	$3,$0,.L823	 #, tmp244,,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L824	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L823:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L824:
	addiu	$2,$2,1	 # tmp250, B.2278,
	andi	$2,$2,0x00ff	 # B.2282, tmp250
	li	$3,128			# 0x80	 # tmp251,
	bne	$2,$3,.L825	 #, B.2282, tmp251,
	sb	$2,%gp_rel(B)($28)	 # B.2282, B

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L826	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L825:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.2285, F, tmp255
	seb	$4,$2	 # B.2282, B.2282
	bgez	$4,.L827	 #, B.2282,
	sw	$3,%gp_rel(F)($28)	 # F.2285, F

.L826:
	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp258, F,
	j	.L828	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L827:
	li	$4,-129			# 0xffffff7f	 # tmp259,
	and	$3,$3,$4	 # tmp260, F.2285, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L828:
	beql	$2,$0,.L829	 #, B.2282,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L830	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L829:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L830:
	li	$2,-3			# 0xfffffffd	 # tmp267,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp268, F, tmp267
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_incb
	.size	op_incb, .-op_incb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_incc
	.type	op_incc, @function
op_incc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # C.2205, C
	andi	$3,$2,0xf	 # tmp242, C.2205,
	addiu	$3,$3,1	 # tmp243, tmp242,
	slt	$3,$3,16	 # tmp244, tmp243,
	bne	$3,$0,.L832	 #, tmp244,,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L833	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L832:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L833:
	addiu	$2,$2,1	 # tmp250, C.2205,
	andi	$2,$2,0x00ff	 # C.2209, tmp250
	li	$3,128			# 0x80	 # tmp251,
	bne	$2,$3,.L834	 #, C.2209, tmp251,
	sb	$2,%gp_rel(C)($28)	 # C.2209, C

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L835	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L834:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.2212, F, tmp255
	seb	$4,$2	 # C.2209, C.2209
	bgez	$4,.L836	 #, C.2209,
	sw	$3,%gp_rel(F)($28)	 # F.2212, F

.L835:
	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp258, F,
	j	.L837	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L836:
	li	$4,-129			# 0xffffff7f	 # tmp259,
	and	$3,$3,$4	 # tmp260, F.2212, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L837:
	beql	$2,$0,.L838	 #, C.2209,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L839	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L838:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L839:
	li	$2,-3			# 0xfffffffd	 # tmp267,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp268, F, tmp267
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_incc
	.size	op_incc, .-op_incc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_incd
	.type	op_incd, @function
op_incd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # D.2145, D
	andi	$3,$2,0xf	 # tmp242, D.2145,
	addiu	$3,$3,1	 # tmp243, tmp242,
	slt	$3,$3,16	 # tmp244, tmp243,
	bne	$3,$0,.L841	 #, tmp244,,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L842	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L841:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L842:
	addiu	$2,$2,1	 # tmp250, D.2145,
	andi	$2,$2,0x00ff	 # D.2149, tmp250
	li	$3,128			# 0x80	 # tmp251,
	bne	$2,$3,.L843	 #, D.2149, tmp251,
	sb	$2,%gp_rel(D)($28)	 # D.2149, D

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L844	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L843:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.2152, F, tmp255
	seb	$4,$2	 # D.2149, D.2149
	bgez	$4,.L845	 #, D.2149,
	sw	$3,%gp_rel(F)($28)	 # F.2152, F

.L844:
	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp258, F,
	j	.L846	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L845:
	li	$4,-129			# 0xffffff7f	 # tmp259,
	and	$3,$3,$4	 # tmp260, F.2152, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L846:
	beql	$2,$0,.L847	 #, D.2149,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L848	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L847:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L848:
	li	$2,-3			# 0xfffffffd	 # tmp267,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp268, F, tmp267
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_incd
	.size	op_incd, .-op_incd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ince
	.type	op_ince, @function
op_ince:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # E.2076, E
	andi	$3,$2,0xf	 # tmp242, E.2076,
	addiu	$3,$3,1	 # tmp243, tmp242,
	slt	$3,$3,16	 # tmp244, tmp243,
	bne	$3,$0,.L850	 #, tmp244,,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L851	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L850:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L851:
	addiu	$2,$2,1	 # tmp250, E.2076,
	andi	$2,$2,0x00ff	 # E.2080, tmp250
	li	$3,128			# 0x80	 # tmp251,
	bne	$2,$3,.L852	 #, E.2080, tmp251,
	sb	$2,%gp_rel(E)($28)	 # E.2080, E

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L853	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L852:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.2083, F, tmp255
	seb	$4,$2	 # E.2080, E.2080
	bgez	$4,.L854	 #, E.2080,
	sw	$3,%gp_rel(F)($28)	 # F.2083, F

.L853:
	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp258, F,
	j	.L855	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L854:
	li	$4,-129			# 0xffffff7f	 # tmp259,
	and	$3,$3,$4	 # tmp260, F.2083, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L855:
	beql	$2,$0,.L856	 #, E.2080,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L857	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L856:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L857:
	li	$2,-3			# 0xfffffffd	 # tmp267,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp268, F, tmp267
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ince
	.size	op_ince, .-op_ince
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_inch
	.type	op_inch, @function
op_inch:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H.2016, H
	andi	$3,$2,0xf	 # tmp242, H.2016,
	addiu	$3,$3,1	 # tmp243, tmp242,
	slt	$3,$3,16	 # tmp244, tmp243,
	bne	$3,$0,.L859	 #, tmp244,,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L860	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L859:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L860:
	addiu	$2,$2,1	 # tmp250, H.2016,
	andi	$2,$2,0x00ff	 # H.2020, tmp250
	li	$3,128			# 0x80	 # tmp251,
	bne	$2,$3,.L861	 #, H.2020, tmp251,
	sb	$2,%gp_rel(H)($28)	 # H.2020, H

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L862	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L861:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.2023, F, tmp255
	seb	$4,$2	 # H.2020, H.2020
	bgez	$4,.L863	 #, H.2020,
	sw	$3,%gp_rel(F)($28)	 # F.2023, F

.L862:
	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp258, F,
	j	.L864	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L863:
	li	$4,-129			# 0xffffff7f	 # tmp259,
	and	$3,$3,$4	 # tmp260, F.2023, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L864:
	beql	$2,$0,.L865	 #, H.2020,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L866	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L865:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L866:
	li	$2,-3			# 0xfffffffd	 # tmp267,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp268, F, tmp267
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_inch
	.size	op_inch, .-op_inch
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_incl
	.type	op_incl, @function
op_incl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # L.1935, L
	andi	$3,$2,0xf	 # tmp242, L.1935,
	addiu	$3,$3,1	 # tmp243, tmp242,
	slt	$3,$3,16	 # tmp244, tmp243,
	bne	$3,$0,.L868	 #, tmp244,,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L869	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L868:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L869:
	addiu	$2,$2,1	 # tmp250, L.1935,
	andi	$2,$2,0x00ff	 # L.1939, tmp250
	li	$3,128			# 0x80	 # tmp251,
	bne	$2,$3,.L870	 #, L.1939, tmp251,
	sb	$2,%gp_rel(L)($28)	 # L.1939, L

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L871	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L870:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.1942, F, tmp255
	seb	$4,$2	 # L.1939, L.1939
	bgez	$4,.L872	 #, L.1939,
	sw	$3,%gp_rel(F)($28)	 # F.1942, F

.L871:
	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp258, F,
	j	.L873	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L872:
	li	$4,-129			# 0xffffff7f	 # tmp259,
	and	$3,$3,$4	 # tmp260, F.1942, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L873:
	beql	$2,$0,.L874	 #, L.1939,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L875	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L874:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L875:
	li	$2,-3			# 0xfffffffd	 # tmp267,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp268, F, tmp267
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_incl
	.size	op_incl, .-op_incl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_incihl
	.type	op_incihl, @function
op_incihl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp250, H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$2	 # D.12656, tmp250, L
	lui	$2,%hi(ram)	 # tmp252,
	addiu	$2,$2,%lo(ram)	 # tmp254, tmp252,
	addu	$2,$3,$2	 # tmp253, D.12656, tmp254
	lbu	$2,0($2)	 # D.12658, ram
	andi	$4,$2,0xf	 # tmp255, D.12658,
	addiu	$4,$4,1	 # tmp256, tmp255,
	slt	$4,$4,16	 # tmp257, tmp256,
	bne	$4,$0,.L877	 #, tmp257,,
	li	$4,-17			# 0xffffffef	 # tmp261,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp259, F,
	j	.L878	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L877:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp262, F, tmp261
	sw	$4,%gp_rel(F)($28)	 # tmp262, F
.L878:
	addiu	$2,$2,1	 # tmp263, D.12658,
	andi	$2,$2,0x00ff	 # D.12668, tmp263
	lui	$4,%hi(ram)	 # tmp264,
	addiu	$4,$4,%lo(ram)	 # tmp266, tmp264,
	addu	$3,$3,$4	 # tmp265, D.12656, tmp266
	sb	$2,0($3)	 # D.12668, ram
	li	$3,128			# 0x80	 # tmp267,
	bne	$2,$3,.L879	 #, D.12668, tmp267,
	li	$3,-5			# 0xfffffffb	 # tmp271,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp269, F,
	j	.L880	 #
	sw	$3,%gp_rel(F)($28)	 # tmp269, F

.L879:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.1888, F, tmp271
	seb	$4,$2	 # D.12668, D.12668
	bgez	$4,.L881	 #, D.12668,
	sw	$3,%gp_rel(F)($28)	 # F.1888, F

.L880:
	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp274, F,
	j	.L882	 #
	sw	$3,%gp_rel(F)($28)	 # tmp274, F

.L881:
	li	$4,-129			# 0xffffff7f	 # tmp275,
	and	$3,$3,$4	 # tmp276, F.1888, tmp275
	sw	$3,%gp_rel(F)($28)	 # tmp276, F
.L882:
	beql	$2,$0,.L883	 #, D.12668,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp278,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp279, F, tmp278
	j	.L884	 #
	sw	$2,%gp_rel(F)($28)	 # tmp279, F

.L883:
	ori	$2,$2,0x40	 # tmp281, F,
	sw	$2,%gp_rel(F)($28)	 # tmp281, F
.L884:
	li	$2,-3			# 0xfffffffd	 # tmp283,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp284, F, tmp283
	sw	$2,%gp_rel(F)($28)	 # tmp284, F
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_incihl
	.size	op_incihl, .-op_incihl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_deca
	.type	op_deca, @function
op_deca:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.1798, A
	addiu	$4,$2,-1	 # tmp242, A.1798,
	andi	$4,$4,0xf	 # tmp243, tmp242,
	li	$3,15			# 0xf	 # tmp244,
	bne	$4,$3,.L886	 #, tmp243, tmp244,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L887	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L886:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L887:
	addiu	$2,$2,-1	 # tmp250, A.1798,
	andi	$2,$2,0x00ff	 # A.1802, tmp250
	li	$3,127			# 0x7f	 # tmp251,
	bne	$2,$3,.L888	 #, A.1802, tmp251,
	sb	$2,%gp_rel(A)($28)	 # A.1802, A

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L889	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L888:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.1805, F, tmp255
	seb	$4,$2	 # A.1802, A.1802
	bgez	$4,.L889	 #, A.1802,
	sw	$3,%gp_rel(F)($28)	 # F.1805, F

	ori	$3,$3,0x80	 # tmp257, F.1805,
	j	.L890	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L889:
	li	$3,-129			# 0xffffff7f	 # tmp259,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp260, F, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L890:
	beql	$2,$0,.L891	 #, A.1802,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L892	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L891:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L892:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp267, F,
	sw	$2,%gp_rel(F)($28)	 # tmp267, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_deca
	.size	op_deca, .-op_deca
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_decb
	.type	op_decb, @function
op_decb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # B.2261, B
	addiu	$4,$2,-1	 # tmp242, B.2261,
	andi	$4,$4,0xf	 # tmp243, tmp242,
	li	$3,15			# 0xf	 # tmp244,
	bne	$4,$3,.L894	 #, tmp243, tmp244,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L895	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L894:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L895:
	addiu	$2,$2,-1	 # tmp250, B.2261,
	andi	$2,$2,0x00ff	 # B.2265, tmp250
	li	$3,127			# 0x7f	 # tmp251,
	bne	$2,$3,.L896	 #, B.2265, tmp251,
	sb	$2,%gp_rel(B)($28)	 # B.2265, B

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L897	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L896:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.2268, F, tmp255
	seb	$4,$2	 # B.2265, B.2265
	bgez	$4,.L897	 #, B.2265,
	sw	$3,%gp_rel(F)($28)	 # F.2268, F

	ori	$3,$3,0x80	 # tmp257, F.2268,
	j	.L898	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L897:
	li	$3,-129			# 0xffffff7f	 # tmp259,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp260, F, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L898:
	beql	$2,$0,.L899	 #, B.2265,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L900	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L899:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L900:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp267, F,
	sw	$2,%gp_rel(F)($28)	 # tmp267, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_decb
	.size	op_decb, .-op_decb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_decc
	.type	op_decc, @function
op_decc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # C.2188, C
	addiu	$4,$2,-1	 # tmp242, C.2188,
	andi	$4,$4,0xf	 # tmp243, tmp242,
	li	$3,15			# 0xf	 # tmp244,
	bne	$4,$3,.L902	 #, tmp243, tmp244,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L903	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L902:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L903:
	addiu	$2,$2,-1	 # tmp250, C.2188,
	andi	$2,$2,0x00ff	 # C.2192, tmp250
	li	$3,127			# 0x7f	 # tmp251,
	bne	$2,$3,.L904	 #, C.2192, tmp251,
	sb	$2,%gp_rel(C)($28)	 # C.2192, C

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L905	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L904:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.2195, F, tmp255
	seb	$4,$2	 # C.2192, C.2192
	bgez	$4,.L905	 #, C.2192,
	sw	$3,%gp_rel(F)($28)	 # F.2195, F

	ori	$3,$3,0x80	 # tmp257, F.2195,
	j	.L906	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L905:
	li	$3,-129			# 0xffffff7f	 # tmp259,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp260, F, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L906:
	beql	$2,$0,.L907	 #, C.2192,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L908	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L907:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L908:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp267, F,
	sw	$2,%gp_rel(F)($28)	 # tmp267, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_decc
	.size	op_decc, .-op_decc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_decd
	.type	op_decd, @function
op_decd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # D.2128, D
	addiu	$4,$2,-1	 # tmp242, D.2128,
	andi	$4,$4,0xf	 # tmp243, tmp242,
	li	$3,15			# 0xf	 # tmp244,
	bne	$4,$3,.L910	 #, tmp243, tmp244,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L911	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L910:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L911:
	addiu	$2,$2,-1	 # tmp250, D.2128,
	andi	$2,$2,0x00ff	 # D.2132, tmp250
	li	$3,127			# 0x7f	 # tmp251,
	bne	$2,$3,.L912	 #, D.2132, tmp251,
	sb	$2,%gp_rel(D)($28)	 # D.2132, D

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L913	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L912:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.2135, F, tmp255
	seb	$4,$2	 # D.2132, D.2132
	bgez	$4,.L913	 #, D.2132,
	sw	$3,%gp_rel(F)($28)	 # F.2135, F

	ori	$3,$3,0x80	 # tmp257, F.2135,
	j	.L914	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L913:
	li	$3,-129			# 0xffffff7f	 # tmp259,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp260, F, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L914:
	beql	$2,$0,.L915	 #, D.2132,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L916	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L915:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L916:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp267, F,
	sw	$2,%gp_rel(F)($28)	 # tmp267, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_decd
	.size	op_decd, .-op_decd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_dece
	.type	op_dece, @function
op_dece:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # E.2059, E
	addiu	$4,$2,-1	 # tmp242, E.2059,
	andi	$4,$4,0xf	 # tmp243, tmp242,
	li	$3,15			# 0xf	 # tmp244,
	bne	$4,$3,.L918	 #, tmp243, tmp244,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L919	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L918:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L919:
	addiu	$2,$2,-1	 # tmp250, E.2059,
	andi	$2,$2,0x00ff	 # E.2063, tmp250
	li	$3,127			# 0x7f	 # tmp251,
	bne	$2,$3,.L920	 #, E.2063, tmp251,
	sb	$2,%gp_rel(E)($28)	 # E.2063, E

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L921	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L920:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.2066, F, tmp255
	seb	$4,$2	 # E.2063, E.2063
	bgez	$4,.L921	 #, E.2063,
	sw	$3,%gp_rel(F)($28)	 # F.2066, F

	ori	$3,$3,0x80	 # tmp257, F.2066,
	j	.L922	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L921:
	li	$3,-129			# 0xffffff7f	 # tmp259,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp260, F, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L922:
	beql	$2,$0,.L923	 #, E.2063,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L924	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L923:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L924:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp267, F,
	sw	$2,%gp_rel(F)($28)	 # tmp267, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_dece
	.size	op_dece, .-op_dece
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_dech
	.type	op_dech, @function
op_dech:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H.1999, H
	addiu	$4,$2,-1	 # tmp242, H.1999,
	andi	$4,$4,0xf	 # tmp243, tmp242,
	li	$3,15			# 0xf	 # tmp244,
	bne	$4,$3,.L926	 #, tmp243, tmp244,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L927	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L926:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L927:
	addiu	$2,$2,-1	 # tmp250, H.1999,
	andi	$2,$2,0x00ff	 # H.2003, tmp250
	li	$3,127			# 0x7f	 # tmp251,
	bne	$2,$3,.L928	 #, H.2003, tmp251,
	sb	$2,%gp_rel(H)($28)	 # H.2003, H

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L929	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L928:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.2006, F, tmp255
	seb	$4,$2	 # H.2003, H.2003
	bgez	$4,.L929	 #, H.2003,
	sw	$3,%gp_rel(F)($28)	 # F.2006, F

	ori	$3,$3,0x80	 # tmp257, F.2006,
	j	.L930	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L929:
	li	$3,-129			# 0xffffff7f	 # tmp259,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp260, F, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L930:
	beql	$2,$0,.L931	 #, H.2003,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L932	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L931:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L932:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp267, F,
	sw	$2,%gp_rel(F)($28)	 # tmp267, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_dech
	.size	op_dech, .-op_dech
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_decl
	.type	op_decl, @function
op_decl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # L.1918, L
	addiu	$4,$2,-1	 # tmp242, L.1918,
	andi	$4,$4,0xf	 # tmp243, tmp242,
	li	$3,15			# 0xf	 # tmp244,
	bne	$4,$3,.L934	 #, tmp243, tmp244,
	li	$3,-17			# 0xffffffef	 # tmp248,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x10	 # tmp246, F,
	j	.L935	 #
	sw	$3,%gp_rel(F)($28)	 # tmp246, F

.L934:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp249, F, tmp248
	sw	$3,%gp_rel(F)($28)	 # tmp249, F
.L935:
	addiu	$2,$2,-1	 # tmp250, L.1918,
	andi	$2,$2,0x00ff	 # L.1922, tmp250
	li	$3,127			# 0x7f	 # tmp251,
	bne	$2,$3,.L936	 #, L.1922, tmp251,
	sb	$2,%gp_rel(L)($28)	 # L.1922, L

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp253, F,
	j	.L937	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L936:
	li	$3,-5			# 0xfffffffb	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.1925, F, tmp255
	seb	$4,$2	 # L.1922, L.1922
	bgez	$4,.L937	 #, L.1922,
	sw	$3,%gp_rel(F)($28)	 # F.1925, F

	ori	$3,$3,0x80	 # tmp257, F.1925,
	j	.L938	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L937:
	li	$3,-129			# 0xffffff7f	 # tmp259,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp260, F, tmp259
	sw	$3,%gp_rel(F)($28)	 # tmp260, F
.L938:
	beql	$2,$0,.L939	 #, L.1922,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L940	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L939:
	ori	$2,$2,0x40	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L940:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp267, F,
	sw	$2,%gp_rel(F)($28)	 # tmp267, F
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_decl
	.size	op_decl, .-op_decl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_decihl
	.type	op_decihl, @function
op_decihl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp250, H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$2	 # D.12615, tmp250, L
	lui	$2,%hi(ram)	 # tmp252,
	addiu	$2,$2,%lo(ram)	 # tmp254, tmp252,
	addu	$2,$3,$2	 # tmp253, D.12615, tmp254
	lbu	$2,0($2)	 # D.12617, ram
	addiu	$5,$2,-1	 # tmp255, D.12617,
	andi	$5,$5,0xf	 # tmp256, tmp255,
	li	$4,15			# 0xf	 # tmp257,
	bne	$5,$4,.L942	 #, tmp256, tmp257,
	li	$4,-17			# 0xffffffef	 # tmp261,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp259, F,
	j	.L943	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L942:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp262, F, tmp261
	sw	$4,%gp_rel(F)($28)	 # tmp262, F
.L943:
	addiu	$2,$2,-1	 # tmp263, D.12617,
	andi	$2,$2,0x00ff	 # D.12627, tmp263
	lui	$4,%hi(ram)	 # tmp264,
	addiu	$4,$4,%lo(ram)	 # tmp266, tmp264,
	addu	$3,$3,$4	 # tmp265, D.12615, tmp266
	sb	$2,0($3)	 # D.12627, ram
	li	$3,127			# 0x7f	 # tmp267,
	bne	$2,$3,.L944	 #, D.12627, tmp267,
	li	$3,-5			# 0xfffffffb	 # tmp271,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp269, F,
	j	.L945	 #
	sw	$3,%gp_rel(F)($28)	 # tmp269, F

.L944:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.1872, F, tmp271
	seb	$4,$2	 # D.12627, D.12627
	bgez	$4,.L945	 #, D.12627,
	sw	$3,%gp_rel(F)($28)	 # F.1872, F

	ori	$3,$3,0x80	 # tmp273, F.1872,
	j	.L946	 #
	sw	$3,%gp_rel(F)($28)	 # tmp273, F

.L945:
	li	$3,-129			# 0xffffff7f	 # tmp275,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp276, F, tmp275
	sw	$3,%gp_rel(F)($28)	 # tmp276, F
.L946:
	beql	$2,$0,.L947	 #, D.12627,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp278,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp279, F, tmp278
	j	.L948	 #
	sw	$2,%gp_rel(F)($28)	 # tmp279, F

.L947:
	ori	$2,$2,0x40	 # tmp281, F,
	sw	$2,%gp_rel(F)($28)	 # tmp281, F
.L948:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp283, F,
	sw	$2,%gp_rel(F)($28)	 # tmp283, F
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_decihl
	.size	op_decihl, .-op_decihl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlca
	.type	op_rlca, @function
op_rlca:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(A)($28)	 # A.2248, A
	srl	$2,$3,7	 # i, A.2248,
	beq	$2,$0,.L950	 #, i,,
	li	$4,-2			# 0xfffffffe	 # tmp237,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp235, F,
	j	.L951	 #
	sw	$4,%gp_rel(F)($28)	 # tmp235, F

.L950:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp238, F, tmp237
	sw	$4,%gp_rel(F)($28)	 # tmp238, F
.L951:
	li	$4,-19			# 0xffffffed	 # tmp240,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp241, F, tmp240
	sw	$4,%gp_rel(F)($28)	 # tmp241, F
	sll	$3,$3,1	 # tmp242, A.2248,
	or	$2,$2,$3	 # tmp245, i, tmp242
	sb	$2,%gp_rel(A)($28)	 # tmp245, A
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlca
	.size	op_rlca, .-op_rlca
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrca
	.type	op_rrca, @function
op_rrca:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.2176, A
	andi	$3,$2,0x1	 # tmp231, A.2176,
	beq	$3,$0,.L953	 #, tmp231,,
	li	$3,-2			# 0xfffffffe	 # tmp242,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp232, F,
	li	$4,-19			# 0xffffffed	 # tmp234,
	and	$3,$3,$4	 # tmp235, tmp232, tmp234
	sw	$3,%gp_rel(F)($28)	 # tmp235, F
	srl	$2,$2,1	 # tmp236, A.2176,
	li	$3,-128			# 0xffffff80	 # tmp239,
	or	$2,$2,$3	 # tmp238, tmp236, tmp239
	j	.L954	 #
	sb	$2,%gp_rel(A)($28)	 # tmp238, A

.L953:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp240, F, tmp242
	li	$4,-19			# 0xffffffed	 # tmp243,
	and	$3,$3,$4	 # tmp244, tmp240, tmp243
	sw	$3,%gp_rel(F)($28)	 # tmp244, F
	srl	$2,$2,1	 # tmp245, A.2176,
	sb	$2,%gp_rel(A)($28)	 # tmp245, A
.L954:
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrca
	.size	op_rrca, .-op_rrca
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rla
	.type	op_rla, @function
op_rla:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.2115, F
	lbu	$2,%gp_rel(A)($28)	 # A.2117, A
	seb	$5,$2	 # A.2117, A.2117
	bgez	$5,.L956	 #, A.2117,
	andi	$4,$3,0x1	 # old_c_flag, F.2115,

	ori	$3,$3,0x1	 # tmp230, F.2115,
	j	.L957	 #
	sw	$3,%gp_rel(F)($28)	 # tmp230, F

.L956:
	li	$5,-2			# 0xfffffffe	 # tmp231,
	and	$3,$3,$5	 # tmp232, F.2115, tmp231
	sw	$3,%gp_rel(F)($28)	 # tmp232, F
.L957:
	li	$3,-19			# 0xffffffed	 # tmp234,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$3,$5,$3	 # tmp235, F, tmp234
	sw	$3,%gp_rel(F)($28)	 # tmp235, F
	sll	$2,$2,1	 # tmp236, A.2117,
	andi	$2,$2,0x00ff	 # A.2122, tmp236
	beq	$4,$0,.L958	 #, old_c_flag,,
	sb	$2,%gp_rel(A)($28)	 # A.2122, A

	ori	$2,$2,0x1	 # tmp237, A.2122,
	sb	$2,%gp_rel(A)($28)	 # tmp237, A
.L958:
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rla
	.size	op_rla, .-op_rla
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rra
	.type	op_rra, @function
op_rra:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.2047, F
	lbu	$2,%gp_rel(A)($28)	 # A.2048, A
	andi	$5,$2,0x1	 # tmp230, A.2048,
	beq	$5,$0,.L960	 #, tmp230,,
	andi	$4,$3,0x1	 # old_c_flag, F.2047,

	ori	$3,$3,0x1	 # tmp231, F.2047,
	j	.L961	 #
	sw	$3,%gp_rel(F)($28)	 # tmp231, F

.L960:
	li	$5,-2			# 0xfffffffe	 # tmp232,
	and	$3,$3,$5	 # tmp233, F.2047, tmp232
	sw	$3,%gp_rel(F)($28)	 # tmp233, F
.L961:
	li	$3,-19			# 0xffffffed	 # tmp235,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$3,$5,$3	 # tmp236, F, tmp235
	sw	$3,%gp_rel(F)($28)	 # tmp236, F
	srl	$2,$2,1	 # A.2053, A.2048,
	beq	$4,$0,.L962	 #, old_c_flag,,
	sb	$2,%gp_rel(A)($28)	 # A.2053, A

	li	$3,-128			# 0xffffff80	 # tmp239,
	or	$2,$2,$3	 # tmp238, A.2053, tmp239
	sb	$2,%gp_rel(A)($28)	 # tmp238, A
.L962:
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rra
	.size	op_rra, .-op_rra
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_exdehl
	.type	op_exdehl, @function
op_exdehl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # D.166, D
	lbu	$3,%gp_rel(H)($28)	 #, H
	sb	$3,%gp_rel(D)($28)	 # H, D
	sb	$2,%gp_rel(H)($28)	 # D.166, H
	lbu	$2,%gp_rel(E)($28)	 # E.169, E
	lbu	$3,%gp_rel(L)($28)	 #, L
	sb	$3,%gp_rel(E)($28)	 # L, E
	sb	$2,%gp_rel(L)($28)	 # E.169, L
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_exdehl
	.size	op_exdehl, .-op_exdehl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_exafaf
	.type	op_exafaf, @function
op_exafaf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.2242, A
	lbu	$3,%gp_rel(A_)($28)	 #, A_
	sb	$3,%gp_rel(A)($28)	 # A_, A
	sb	$2,%gp_rel(A_)($28)	 # A.2242, A_
	lw	$2,%gp_rel(F)($28)	 # F.2245, F
	lw	$3,%gp_rel(F_)($28)	 # F_, F_
	sw	$3,%gp_rel(F)($28)	 # F_, F
	sw	$2,%gp_rel(F_)($28)	 # F.2245, F_
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_exafaf
	.size	op_exafaf, .-op_exafaf
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_exx
	.type	op_exx, @function
op_exx:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # B.288, B
	lbu	$3,%gp_rel(B_)($28)	 #, B_
	sb	$3,%gp_rel(B)($28)	 # B_, B
	sb	$2,%gp_rel(B_)($28)	 # B.288, B_
	lbu	$2,%gp_rel(C)($28)	 # C.291, C
	lbu	$3,%gp_rel(C_)($28)	 #, C_
	sb	$3,%gp_rel(C)($28)	 # C_, C
	sb	$2,%gp_rel(C_)($28)	 # C.291, C_
	lbu	$2,%gp_rel(D)($28)	 # D.293, D
	lbu	$3,%gp_rel(D_)($28)	 #, D_
	sb	$3,%gp_rel(D)($28)	 # D_, D
	sb	$2,%gp_rel(D_)($28)	 # D.293, D_
	lbu	$2,%gp_rel(E)($28)	 # E.295, E
	lbu	$3,%gp_rel(E_)($28)	 #, E_
	sb	$3,%gp_rel(E)($28)	 # E_, E
	sb	$2,%gp_rel(E_)($28)	 # E.295, E_
	lbu	$2,%gp_rel(H)($28)	 # H.297, H
	lbu	$3,%gp_rel(H_)($28)	 #, H_
	sb	$3,%gp_rel(H)($28)	 # H_, H
	sb	$2,%gp_rel(H_)($28)	 # H.297, H_
	lbu	$2,%gp_rel(L)($28)	 # L.299, L
	lbu	$3,%gp_rel(L_)($28)	 #, L_
	sb	$3,%gp_rel(L)($28)	 # L_, L
	sb	$2,%gp_rel(L_)($28)	 # L.299, L_
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_exx
	.size	op_exx, .-op_exx
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_exsphl
	.type	op_exsphl, @function
op_exsphl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK.222, STACK
	lbu	$3,0($2)	 # D.8863,* STACK.222
	lbu	$4,%gp_rel(L)($28)	 #, L
	sb	$4,0($2)	 # L,* STACK.222
	sb	$3,%gp_rel(L)($28)	 # D.8863, L
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	lbu	$3,1($2)	 # D.8867,
	lbu	$4,%gp_rel(H)($28)	 #, H
	sb	$4,1($2)	 # H,
	sb	$3,%gp_rel(H)($28)	 # D.8867, H
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_exsphl
	.size	op_exsphl, .-op_exsphl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_pushaf
	.type	op_pushaf, @function
op_pushaf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp231,
	addiu	$2,$2,%lo(ram)	 # tmp230, tmp231,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp229, tmp230, STACK
	bne	$2,$0,.L970	 #, tmp229,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp233,
	addiu	$2,$2,%lo(ram+65536)	 # tmp232, tmp233,
	sw	$2,%gp_rel(STACK)($28)	 # tmp232, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L970:
	addiu	$3,$2,-1	 # STACK.105, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.105, STACK
	lbu	$3,%gp_rel(A)($28)	 #, A
	sb	$3,-1($2)	 # A,
	lui	$2,%hi(ram)	 # tmp239,
	addiu	$2,$2,%lo(ram)	 # tmp238, tmp239,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp237, tmp238, STACK
	bnel	$2,$0,.L971	 #, tmp237,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp241,
	addiu	$2,$2,%lo(ram+65536)	 # tmp240, tmp241,
	sw	$2,%gp_rel(STACK)($28)	 # tmp240, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L971:
	addiu	$3,$2,-1	 # STACK.105, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.105, STACK
	lw	$3,%gp_rel(F)($28)	 # F, F
	sb	$3,-1($2)	 # F,
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_pushaf
	.size	op_pushaf, .-op_pushaf
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_pushbc
	.type	op_pushbc, @function
op_pushbc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp230,
	addiu	$2,$2,%lo(ram)	 # tmp229, tmp230,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp228, tmp229, STACK
	bne	$2,$0,.L975	 #, tmp228,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp232,
	addiu	$2,$2,%lo(ram+65536)	 # tmp231, tmp232,
	sw	$2,%gp_rel(STACK)($28)	 # tmp231, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L975:
	addiu	$3,$2,-1	 # STACK.461, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.461, STACK
	lbu	$3,%gp_rel(B)($28)	 #, B
	sb	$3,-1($2)	 # B,
	lui	$2,%hi(ram)	 # tmp238,
	addiu	$2,$2,%lo(ram)	 # tmp237, tmp238,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp236, tmp237, STACK
	bnel	$2,$0,.L976	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp240,
	addiu	$2,$2,%lo(ram+65536)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L976:
	addiu	$3,$2,-1	 # STACK.461, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.461, STACK
	lbu	$3,%gp_rel(C)($28)	 #, C
	sb	$3,-1($2)	 # C,
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_pushbc
	.size	op_pushbc, .-op_pushbc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_pushde
	.type	op_pushde, @function
op_pushde:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp230,
	addiu	$2,$2,%lo(ram)	 # tmp229, tmp230,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp228, tmp229, STACK
	bne	$2,$0,.L980	 #, tmp228,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp232,
	addiu	$2,$2,%lo(ram+65536)	 # tmp231, tmp232,
	sw	$2,%gp_rel(STACK)($28)	 # tmp231, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L980:
	addiu	$3,$2,-1	 # STACK.337, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.337, STACK
	lbu	$3,%gp_rel(D)($28)	 #, D
	sb	$3,-1($2)	 # D,
	lui	$2,%hi(ram)	 # tmp238,
	addiu	$2,$2,%lo(ram)	 # tmp237, tmp238,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp236, tmp237, STACK
	bnel	$2,$0,.L981	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp240,
	addiu	$2,$2,%lo(ram+65536)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L981:
	addiu	$3,$2,-1	 # STACK.337, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.337, STACK
	lbu	$3,%gp_rel(E)($28)	 #, E
	sb	$3,-1($2)	 # E,
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_pushde
	.size	op_pushde, .-op_pushde
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_pushhl
	.type	op_pushhl, @function
op_pushhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp230,
	addiu	$2,$2,%lo(ram)	 # tmp229, tmp230,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp228, tmp229, STACK
	bne	$2,$0,.L985	 #, tmp228,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp232,
	addiu	$2,$2,%lo(ram+65536)	 # tmp231, tmp232,
	sw	$2,%gp_rel(STACK)($28)	 # tmp231, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L985:
	addiu	$3,$2,-1	 # STACK.208, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.208, STACK
	lbu	$3,%gp_rel(H)($28)	 #, H
	sb	$3,-1($2)	 # H,
	lui	$2,%hi(ram)	 # tmp238,
	addiu	$2,$2,%lo(ram)	 # tmp237, tmp238,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp236, tmp237, STACK
	bnel	$2,$0,.L986	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp240,
	addiu	$2,$2,%lo(ram+65536)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L986:
	addiu	$3,$2,-1	 # STACK.208, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.208, STACK
	lbu	$3,%gp_rel(L)($28)	 #, L
	sb	$3,-1($2)	 # L,
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_pushhl
	.size	op_pushhl, .-op_pushhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_popaf
	.type	op_popaf, @function
op_popaf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK.124, STACK
	lbu	$3,0($2)	 # tmp226,* STACK.124
	sw	$3,%gp_rel(F)($28)	 # tmp226, F
	addiu	$2,$2,1	 # STACK.125, STACK.124,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.125, STACK
	lui	$3,%hi(ram+65536)	 # tmp229,
	addiu	$3,$3,%lo(ram+65536)	 # tmp228, tmp229,
	sltu	$2,$2,$3	 # tmp227, STACK.125, tmp228
	bne	$2,$0,.L990	 #, tmp227,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.124, STACK

	lui	$2,%hi(ram)	 # tmp231,
	addiu	$2,$2,%lo(ram)	 # tmp230, tmp231,
	sw	$2,%gp_rel(STACK)($28)	 # tmp230, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.124, STACK
.L990:
	lbu	$3,0($2)	 #,* STACK.124
	sb	$3,%gp_rel(A)($28)	 # tmp232, A
	addiu	$2,$2,1	 # STACK.125, STACK.124,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.125, STACK
	lui	$3,%hi(ram+65536)	 # tmp235,
	addiu	$3,$3,%lo(ram+65536)	 # tmp234, tmp235,
	sltu	$2,$2,$3	 # tmp233, STACK.125, tmp234
	bne	$2,$0,.L989
	nop
	 #, tmp233,,
	lui	$2,%hi(ram)	 # tmp237,
	addiu	$2,$2,%lo(ram)	 # tmp236, tmp237,
	sw	$2,%gp_rel(STACK)($28)	 # tmp236, STACK
.L989:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_popaf
	.size	op_popaf, .-op_popaf
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_popbc
	.type	op_popbc, @function
op_popbc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK.483, STACK
	lbu	$3,0($2)	 #,* STACK.483
	sb	$3,%gp_rel(C)($28)	 # tmp225, C
	addiu	$2,$2,1	 # STACK.484, STACK.483,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.484, STACK
	lui	$3,%hi(ram+65536)	 # tmp228,
	addiu	$3,$3,%lo(ram+65536)	 # tmp227, tmp228,
	sltu	$2,$2,$3	 # tmp226, STACK.484, tmp227
	bne	$2,$0,.L994	 #, tmp226,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.483, STACK

	lui	$2,%hi(ram)	 # tmp230,
	addiu	$2,$2,%lo(ram)	 # tmp229, tmp230,
	sw	$2,%gp_rel(STACK)($28)	 # tmp229, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.483, STACK
.L994:
	lbu	$3,0($2)	 #,* STACK.483
	sb	$3,%gp_rel(B)($28)	 # tmp231, B
	addiu	$2,$2,1	 # STACK.484, STACK.483,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.484, STACK
	lui	$3,%hi(ram+65536)	 # tmp234,
	addiu	$3,$3,%lo(ram+65536)	 # tmp233, tmp234,
	sltu	$2,$2,$3	 # tmp232, STACK.484, tmp233
	bne	$2,$0,.L993
	nop
	 #, tmp232,,
	lui	$2,%hi(ram)	 # tmp236,
	addiu	$2,$2,%lo(ram)	 # tmp235, tmp236,
	sw	$2,%gp_rel(STACK)($28)	 # tmp235, STACK
.L993:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_popbc
	.size	op_popbc, .-op_popbc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_popde
	.type	op_popde, @function
op_popde:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK.359, STACK
	lbu	$3,0($2)	 #,* STACK.359
	sb	$3,%gp_rel(E)($28)	 # tmp225, E
	addiu	$2,$2,1	 # STACK.360, STACK.359,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.360, STACK
	lui	$3,%hi(ram+65536)	 # tmp228,
	addiu	$3,$3,%lo(ram+65536)	 # tmp227, tmp228,
	sltu	$2,$2,$3	 # tmp226, STACK.360, tmp227
	bne	$2,$0,.L998	 #, tmp226,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.359, STACK

	lui	$2,%hi(ram)	 # tmp230,
	addiu	$2,$2,%lo(ram)	 # tmp229, tmp230,
	sw	$2,%gp_rel(STACK)($28)	 # tmp229, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.359, STACK
.L998:
	lbu	$3,0($2)	 #,* STACK.359
	sb	$3,%gp_rel(D)($28)	 # tmp231, D
	addiu	$2,$2,1	 # STACK.360, STACK.359,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.360, STACK
	lui	$3,%hi(ram+65536)	 # tmp234,
	addiu	$3,$3,%lo(ram+65536)	 # tmp233, tmp234,
	sltu	$2,$2,$3	 # tmp232, STACK.360, tmp233
	bne	$2,$0,.L997
	nop
	 #, tmp232,,
	lui	$2,%hi(ram)	 # tmp236,
	addiu	$2,$2,%lo(ram)	 # tmp235, tmp236,
	sw	$2,%gp_rel(STACK)($28)	 # tmp235, STACK
.L997:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_popde
	.size	op_popde, .-op_popde
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_pophl
	.type	op_pophl, @function
op_pophl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK.231, STACK
	lbu	$3,0($2)	 #,* STACK.231
	sb	$3,%gp_rel(L)($28)	 # tmp225, L
	addiu	$2,$2,1	 # STACK.232, STACK.231,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.232, STACK
	lui	$3,%hi(ram+65536)	 # tmp228,
	addiu	$3,$3,%lo(ram+65536)	 # tmp227, tmp228,
	sltu	$2,$2,$3	 # tmp226, STACK.232, tmp227
	bne	$2,$0,.L1002	 #, tmp226,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.231, STACK

	lui	$2,%hi(ram)	 # tmp230,
	addiu	$2,$2,%lo(ram)	 # tmp229, tmp230,
	sw	$2,%gp_rel(STACK)($28)	 # tmp229, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.231, STACK
.L1002:
	lbu	$3,0($2)	 #,* STACK.231
	sb	$3,%gp_rel(H)($28)	 # tmp231, H
	addiu	$2,$2,1	 # STACK.232, STACK.231,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.232, STACK
	lui	$3,%hi(ram+65536)	 # tmp234,
	addiu	$3,$3,%lo(ram+65536)	 # tmp233, tmp234,
	sltu	$2,$2,$3	 # tmp232, STACK.232, tmp233
	bne	$2,$0,.L1001
	nop
	 #, tmp232,,
	lui	$2,%hi(ram)	 # tmp236,
	addiu	$2,$2,%lo(ram)	 # tmp235, tmp236,
	sw	$2,%gp_rel(STACK)($28)	 # tmp235, STACK
.L1001:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_pophl
	.size	op_pophl, .-op_pophl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jp
	.type	op_jp, @function
op_jp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.475, PC
	lbu	$4,0($2)	 # i,* PC.475
	addiu	$3,$2,1	 # PC.476, PC.475,
	sw	$3,%gp_rel(PC)($28)	 # PC.476, PC
	lbu	$3,1($2)	 # tmp229,
	sll	$3,$3,8	 # tmp230, tmp229,
	addu	$3,$3,$4	 # tmp231, tmp230, i
	lui	$2,%hi(ram)	 # tmp233,
	addiu	$2,$2,%lo(ram)	 # tmp232, tmp233,
	addu	$2,$2,$3	 # tmp234, tmp232, tmp231
	sw	$2,%gp_rel(PC)($28)	 # tmp234, PC
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jp
	.size	op_jp, .-op_jp
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jphl
	.type	op_jphl, @function
op_jphl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp228, H,
	lbu	$4,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$4	 # tmp230, tmp228, L
	lui	$2,%hi(ram)	 # tmp232,
	addiu	$2,$2,%lo(ram)	 # tmp231, tmp232,
	addu	$2,$2,$3	 # tmp233, tmp231, tmp230
	sw	$2,%gp_rel(PC)($28)	 # tmp233, PC
	j	$31
	li	$2,4			# 0x4	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jphl
	.size	op_jphl, .-op_jphl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jr
	.type	op_jr, @function
op_jr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.2113, PC
	lb	$3,0($2)	 # tmp225,* PC.2113
	addiu	$3,$3,1	 # tmp226, tmp225,
	addu	$2,$2,$3	 # tmp227, PC.2113, tmp226
	sw	$2,%gp_rel(PC)($28)	 # tmp227, PC
	j	$31
	li	$2,12			# 0xc	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jr
	.size	op_jr, .-op_jr
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_djnz
	.type	op_djnz, @function
op_djnz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp231, B,
	andi	$2,$2,0x00ff	 # B.2172, tmp231
	beq	$2,$0,.L1007	 #, B.2172,,
	sb	$2,%gp_rel(B)($28)	 # B.2172, B

	lw	$2,%gp_rel(PC)($28)	 # PC.2173, PC
	lb	$3,0($2)	 # tmp232,* PC.2173
	addiu	$3,$3,1	 # tmp233, tmp232,
	addu	$2,$2,$3	 # tmp234, PC.2173, tmp233
	sw	$2,%gp_rel(PC)($28)	 # tmp234, PC
	j	$31
	li	$2,13			# 0xd	 # D.13330,

.L1007:
	lw	$2,%gp_rel(PC)($28)	 # PC, PC
	addiu	$2,$2,1	 # tmp236, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,8			# 0x8	 # D.13330,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_djnz
	.size	op_djnz, .-op_djnz
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_call
	.type	op_call, @function
op_call:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.397, PC
	lbu	$3,0($2)	 # i,* PC.397
	addiu	$4,$2,1	 # PC.398, PC.397,
	sw	$4,%gp_rel(PC)($28)	 # PC.398, PC
	lbu	$5,1($2)	 # tmp247,
	sll	$5,$5,8	 # tmp248, tmp247,
	addu	$5,$5,$3	 # i, tmp248, i
	addiu	$2,$2,2	 # PC.398, PC.397,
	sw	$2,%gp_rel(PC)($28)	 # PC.398, PC
	lui	$3,%hi(ram)	 # tmp252,
	addiu	$3,$3,%lo(ram)	 # tmp251, tmp252,
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$4	 # tmp250, tmp251, STACK
	bne	$3,$0,.L1012	 #, tmp250,,
	addiu	$3,$4,-1	 # STACK.400, STACK,

	lui	$3,%hi(ram+65536)	 # tmp254,
	addiu	$3,$3,%lo(ram+65536)	 # tmp253, tmp254,
	sw	$3,%gp_rel(STACK)($28)	 # tmp253, STACK
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$3,$4,-1	 # STACK.400, STACK,
.L1012:
	sw	$3,%gp_rel(STACK)($28)	 # STACK.400, STACK
	lui	$3,%hi(ram)	 # tmp258,
	addiu	$3,$3,%lo(ram)	 # tmp257, tmp258,
	subu	$2,$2,$3	 # tmp256, PC.398, tmp257
	sra	$2,$2,8	 # tmp259, tmp256,
	sb	$2,-1($4)	 # tmp259,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$2	 # tmp261, tmp257, STACK
	bne	$3,$0,.L1013	 #, tmp261,,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp265,
	addiu	$2,$2,%lo(ram+65536)	 # tmp264, tmp265,
	sw	$2,%gp_rel(STACK)($28)	 # tmp264, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
.L1013:
	addiu	$2,$3,-1	 # STACK.400, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.400, STACK
	lui	$2,%hi(ram)	 # tmp270,
	addiu	$2,$2,%lo(ram)	 # tmp269, tmp270,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp272, PC, tmp269
	sb	$4,-1($3)	 # tmp272,
	addu	$2,$2,$5	 # tmp275, tmp269, i
	sw	$2,%gp_rel(PC)($28)	 # tmp275, PC
	j	$31
	li	$2,17			# 0x11	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_call
	.size	op_call, .-op_call
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ret
	.type	op_ret, @function
op_ret:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK.422, STACK
	lbu	$4,0($2)	 # i,* STACK.422
	addiu	$2,$2,1	 # STACK.423, STACK.422,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.423, STACK
	lui	$3,%hi(ram+65536)	 # tmp233,
	addiu	$3,$3,%lo(ram+65536)	 # tmp232, tmp233,
	sltu	$2,$2,$3	 # tmp231, STACK.423, tmp232
	bne	$2,$0,.L1017	 #, tmp231,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.422, STACK

	lui	$2,%hi(ram)	 # tmp235,
	addiu	$2,$2,%lo(ram)	 # tmp234, tmp235,
	sw	$2,%gp_rel(STACK)($28)	 # tmp234, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.422, STACK
.L1017:
	lbu	$3,0($2)	 # tmp236,* STACK.422
	sll	$3,$3,8	 # tmp237, tmp236,
	addu	$3,$3,$4	 # i, tmp237, i
	addiu	$2,$2,1	 # STACK.423, STACK.422,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.423, STACK
	lui	$4,%hi(ram+65536)	 # tmp240,
	addiu	$4,$4,%lo(ram+65536)	 # tmp239, tmp240,
	sltu	$2,$2,$4	 # tmp238, STACK.423, tmp239
	bne	$2,$0,.L1018	 #, tmp238,,
	lui	$2,%hi(ram)	 # tmp244,

	addiu	$2,$2,%lo(ram)	 # tmp241, tmp242,
	sw	$2,%gp_rel(STACK)($28)	 # tmp241, STACK
	lui	$2,%hi(ram)	 # tmp244,
.L1018:
	addiu	$2,$2,%lo(ram)	 # tmp243, tmp244,
	addu	$2,$2,$3	 # tmp245, tmp243, i
	sw	$2,%gp_rel(PC)($28)	 # tmp245, PC
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ret
	.size	op_ret, .-op_ret
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jpz
	.type	op_jpz, @function
op_jpz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x40	 # tmp233, F,
	beq	$2,$0,.L1020	 #, tmp233,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$4,0($2)	 # i,* PC.418
	addiu	$3,$2,1	 # PC.419, PC.418,
	sw	$3,%gp_rel(PC)($28)	 # PC.419, PC
	lbu	$3,1($2)	 # tmp235,
	sll	$3,$3,8	 # tmp236, tmp235,
	addu	$3,$3,$4	 # tmp237, tmp236, i
	lui	$2,%hi(ram)	 # tmp239,
	addiu	$2,$2,%lo(ram)	 # tmp238, tmp239,
	addu	$2,$2,$3	 # tmp240, tmp238, tmp237
	j	.L1021	 #
	sw	$2,%gp_rel(PC)($28)	 # tmp240, PC

.L1020:
	addiu	$2,$2,2	 # tmp242, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp242, PC
.L1021:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jpz
	.size	op_jpz, .-op_jpz
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jpnz
	.type	op_jpnz, @function
op_jpnz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x40	 # tmp233, F,
	bne	$2,$0,.L1023	 #, tmp233,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$4,0($2)	 # i,* PC.479
	addiu	$3,$2,1	 # PC.480, PC.479,
	sw	$3,%gp_rel(PC)($28)	 # PC.480, PC
	lbu	$3,1($2)	 # tmp235,
	sll	$3,$3,8	 # tmp236, tmp235,
	addu	$3,$3,$4	 # tmp237, tmp236, i
	lui	$2,%hi(ram)	 # tmp239,
	addiu	$2,$2,%lo(ram)	 # tmp238, tmp239,
	addu	$2,$2,$3	 # tmp240, tmp238, tmp237
	j	.L1024	 #
	sw	$2,%gp_rel(PC)($28)	 # tmp240, PC

.L1023:
	addiu	$2,$2,2	 # tmp242, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp242, PC
.L1024:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jpnz
	.size	op_jpnz, .-op_jpnz
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jpc
	.type	op_jpc, @function
op_jpc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x1	 # tmp233, F,
	beq	$2,$0,.L1026	 #, tmp233,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$4,0($2)	 # i,* PC.284
	addiu	$3,$2,1	 # PC.285, PC.284,
	sw	$3,%gp_rel(PC)($28)	 # PC.285, PC
	lbu	$3,1($2)	 # tmp235,
	sll	$3,$3,8	 # tmp236, tmp235,
	addu	$3,$3,$4	 # tmp237, tmp236, i
	lui	$2,%hi(ram)	 # tmp239,
	addiu	$2,$2,%lo(ram)	 # tmp238, tmp239,
	addu	$2,$2,$3	 # tmp240, tmp238, tmp237
	j	.L1027	 #
	sw	$2,%gp_rel(PC)($28)	 # tmp240, PC

.L1026:
	addiu	$2,$2,2	 # tmp242, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp242, PC
.L1027:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jpc
	.size	op_jpc, .-op_jpc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jpnc
	.type	op_jpnc, @function
op_jpnc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x1	 # tmp233, F,
	bne	$2,$0,.L1029	 #, tmp233,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$4,0($2)	 # i,* PC.355
	addiu	$3,$2,1	 # PC.356, PC.355,
	sw	$3,%gp_rel(PC)($28)	 # PC.356, PC
	lbu	$3,1($2)	 # tmp235,
	sll	$3,$3,8	 # tmp236, tmp235,
	addu	$3,$3,$4	 # tmp237, tmp236, i
	lui	$2,%hi(ram)	 # tmp239,
	addiu	$2,$2,%lo(ram)	 # tmp238, tmp239,
	addu	$2,$2,$3	 # tmp240, tmp238, tmp237
	j	.L1030	 #
	sw	$2,%gp_rel(PC)($28)	 # tmp240, PC

.L1029:
	addiu	$2,$2,2	 # tmp242, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp242, PC
.L1030:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jpnc
	.size	op_jpnc, .-op_jpnc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jppe
	.type	op_jppe, @function
op_jppe:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x4	 # tmp233, F,
	beq	$2,$0,.L1032	 #, tmp233,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$4,0($2)	 # i,* PC.172
	addiu	$3,$2,1	 # PC.173, PC.172,
	sw	$3,%gp_rel(PC)($28)	 # PC.173, PC
	lbu	$3,1($2)	 # tmp235,
	sll	$3,$3,8	 # tmp236, tmp235,
	addu	$3,$3,$4	 # tmp237, tmp236, i
	lui	$2,%hi(ram)	 # tmp239,
	addiu	$2,$2,%lo(ram)	 # tmp238, tmp239,
	addu	$2,$2,$3	 # tmp240, tmp238, tmp237
	j	.L1033	 #
	sw	$2,%gp_rel(PC)($28)	 # tmp240, PC

.L1032:
	addiu	$2,$2,2	 # tmp242, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp242, PC
.L1033:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jppe
	.size	op_jppe, .-op_jppe
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jppo
	.type	op_jppo, @function
op_jppo:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x4	 # tmp233, F,
	bne	$2,$0,.L1035	 #, tmp233,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$4,0($2)	 # i,* PC.227
	addiu	$3,$2,1	 # PC.228, PC.227,
	sw	$3,%gp_rel(PC)($28)	 # PC.228, PC
	lbu	$3,1($2)	 # tmp235,
	sll	$3,$3,8	 # tmp236, tmp235,
	addu	$3,$3,$4	 # tmp237, tmp236, i
	lui	$2,%hi(ram)	 # tmp239,
	addiu	$2,$2,%lo(ram)	 # tmp238, tmp239,
	addu	$2,$2,$3	 # tmp240, tmp238, tmp237
	j	.L1036	 #
	sw	$2,%gp_rel(PC)($28)	 # tmp240, PC

.L1035:
	addiu	$2,$2,2	 # tmp242, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp242, PC
.L1036:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jppo
	.size	op_jppo, .-op_jppo
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jpm
	.type	op_jpm, @function
op_jpm:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x80	 # tmp233, F,
	beq	$2,$0,.L1038	 #, tmp233,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$4,0($2)	 # i,* PC.70
	addiu	$3,$2,1	 # PC.71, PC.70,
	sw	$3,%gp_rel(PC)($28)	 # PC.71, PC
	lbu	$3,1($2)	 # tmp235,
	sll	$3,$3,8	 # tmp236, tmp235,
	addu	$3,$3,$4	 # tmp237, tmp236, i
	lui	$2,%hi(ram)	 # tmp239,
	addiu	$2,$2,%lo(ram)	 # tmp238, tmp239,
	addu	$2,$2,$3	 # tmp240, tmp238, tmp237
	j	.L1039	 #
	sw	$2,%gp_rel(PC)($28)	 # tmp240, PC

.L1038:
	addiu	$2,$2,2	 # tmp242, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp242, PC
.L1039:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jpm
	.size	op_jpm, .-op_jpm
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jpp
	.type	op_jpp, @function
op_jpp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x80	 # tmp233, F,
	bne	$2,$0,.L1041	 #, tmp233,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$4,0($2)	 # i,* PC.120
	addiu	$3,$2,1	 # PC.121, PC.120,
	sw	$3,%gp_rel(PC)($28)	 # PC.121, PC
	lbu	$3,1($2)	 # tmp235,
	sll	$3,$3,8	 # tmp236, tmp235,
	addu	$3,$3,$4	 # tmp237, tmp236, i
	lui	$2,%hi(ram)	 # tmp239,
	addiu	$2,$2,%lo(ram)	 # tmp238, tmp239,
	addu	$2,$2,$3	 # tmp240, tmp238, tmp237
	j	.L1042	 #
	sw	$2,%gp_rel(PC)($28)	 # tmp240, PC

.L1041:
	addiu	$2,$2,2	 # tmp242, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp242, PC
.L1042:
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jpp
	.size	op_jpp, .-op_jpp
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_calz
	.type	op_calz, @function
op_calz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x40	 # tmp252, F,
	beq	$2,$0,.L1044	 #, tmp252,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$3,0($2)	 # i,* PC.407
	addiu	$4,$2,1	 # PC.408, PC.407,
	sw	$4,%gp_rel(PC)($28)	 # PC.408, PC
	lbu	$5,1($2)	 # tmp254,
	sll	$5,$5,8	 # tmp255, tmp254,
	addu	$5,$5,$3	 # i, tmp255, i
	addiu	$2,$2,2	 # PC.408, PC.407,
	sw	$2,%gp_rel(PC)($28)	 # PC.408, PC
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$4	 # tmp257, tmp258, STACK
	bne	$3,$0,.L1048	 #, tmp257,,
	addiu	$3,$4,-1	 # STACK.410, STACK,

	lui	$3,%hi(ram+65536)	 # tmp261,
	addiu	$3,$3,%lo(ram+65536)	 # tmp260, tmp261,
	sw	$3,%gp_rel(STACK)($28)	 # tmp260, STACK
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$3,$4,-1	 # STACK.410, STACK,
.L1048:
	sw	$3,%gp_rel(STACK)($28)	 # STACK.410, STACK
	lui	$3,%hi(ram)	 # tmp265,
	addiu	$3,$3,%lo(ram)	 # tmp264, tmp265,
	subu	$2,$2,$3	 # tmp263, PC.408, tmp264
	sra	$2,$2,8	 # tmp266, tmp263,
	sb	$2,-1($4)	 # tmp266,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$2	 # tmp268, tmp264, STACK
	bne	$3,$0,.L1049	 #, tmp268,,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp272,
	addiu	$2,$2,%lo(ram+65536)	 # tmp271, tmp272,
	sw	$2,%gp_rel(STACK)($28)	 # tmp271, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
.L1049:
	addiu	$2,$3,-1	 # STACK.410, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.410, STACK
	lui	$2,%hi(ram)	 # tmp277,
	addiu	$2,$2,%lo(ram)	 # tmp276, tmp277,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp279, PC, tmp276
	sb	$4,-1($3)	 # tmp279,
	addu	$2,$2,$5	 # tmp282, tmp276, i
	sw	$2,%gp_rel(PC)($28)	 # tmp282, PC
	j	$31
	li	$2,17			# 0x11	 # D.9352,

.L1044:
	addiu	$2,$2,2	 # tmp284, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp284, PC
	j	$31
	li	$2,10			# 0xa	 # D.9352,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_calz
	.size	op_calz, .-op_calz
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_calnz
	.type	op_calnz, @function
op_calnz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x40	 # tmp252, F,
	bne	$2,$0,.L1051	 #, tmp252,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$3,0($2)	 # i,* PC.465
	addiu	$4,$2,1	 # PC.466, PC.465,
	sw	$4,%gp_rel(PC)($28)	 # PC.466, PC
	lbu	$5,1($2)	 # tmp254,
	sll	$5,$5,8	 # tmp255, tmp254,
	addu	$5,$5,$3	 # i, tmp255, i
	addiu	$2,$2,2	 # PC.466, PC.465,
	sw	$2,%gp_rel(PC)($28)	 # PC.466, PC
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$4	 # tmp257, tmp258, STACK
	bne	$3,$0,.L1055	 #, tmp257,,
	addiu	$3,$4,-1	 # STACK.468, STACK,

	lui	$3,%hi(ram+65536)	 # tmp261,
	addiu	$3,$3,%lo(ram+65536)	 # tmp260, tmp261,
	sw	$3,%gp_rel(STACK)($28)	 # tmp260, STACK
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$3,$4,-1	 # STACK.468, STACK,
.L1055:
	sw	$3,%gp_rel(STACK)($28)	 # STACK.468, STACK
	lui	$3,%hi(ram)	 # tmp265,
	addiu	$3,$3,%lo(ram)	 # tmp264, tmp265,
	subu	$2,$2,$3	 # tmp263, PC.466, tmp264
	sra	$2,$2,8	 # tmp266, tmp263,
	sb	$2,-1($4)	 # tmp266,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$2	 # tmp268, tmp264, STACK
	bne	$3,$0,.L1056	 #, tmp268,,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp272,
	addiu	$2,$2,%lo(ram+65536)	 # tmp271, tmp272,
	sw	$2,%gp_rel(STACK)($28)	 # tmp271, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
.L1056:
	addiu	$2,$3,-1	 # STACK.468, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.468, STACK
	lui	$2,%hi(ram)	 # tmp277,
	addiu	$2,$2,%lo(ram)	 # tmp276, tmp277,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp279, PC, tmp276
	sb	$4,-1($3)	 # tmp279,
	addu	$2,$2,$5	 # tmp282, tmp276, i
	sw	$2,%gp_rel(PC)($28)	 # tmp282, PC
	j	$31
	li	$2,17			# 0x11	 # D.9507,

.L1051:
	addiu	$2,$2,2	 # tmp284, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp284, PC
	j	$31
	li	$2,10			# 0xa	 # D.9507,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_calnz
	.size	op_calnz, .-op_calnz
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_calc
	.type	op_calc, @function
op_calc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x1	 # tmp252, F,
	beq	$2,$0,.L1058	 #, tmp252,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$3,0($2)	 # i,* PC.270
	addiu	$4,$2,1	 # PC.271, PC.270,
	sw	$4,%gp_rel(PC)($28)	 # PC.271, PC
	lbu	$5,1($2)	 # tmp254,
	sll	$5,$5,8	 # tmp255, tmp254,
	addu	$5,$5,$3	 # i, tmp255, i
	addiu	$2,$2,2	 # PC.271, PC.270,
	sw	$2,%gp_rel(PC)($28)	 # PC.271, PC
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$4	 # tmp257, tmp258, STACK
	bne	$3,$0,.L1062	 #, tmp257,,
	addiu	$3,$4,-1	 # STACK.273, STACK,

	lui	$3,%hi(ram+65536)	 # tmp261,
	addiu	$3,$3,%lo(ram+65536)	 # tmp260, tmp261,
	sw	$3,%gp_rel(STACK)($28)	 # tmp260, STACK
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$3,$4,-1	 # STACK.273, STACK,
.L1062:
	sw	$3,%gp_rel(STACK)($28)	 # STACK.273, STACK
	lui	$3,%hi(ram)	 # tmp265,
	addiu	$3,$3,%lo(ram)	 # tmp264, tmp265,
	subu	$2,$2,$3	 # tmp263, PC.271, tmp264
	sra	$2,$2,8	 # tmp266, tmp263,
	sb	$2,-1($4)	 # tmp266,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$2	 # tmp268, tmp264, STACK
	bne	$3,$0,.L1063	 #, tmp268,,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp272,
	addiu	$2,$2,%lo(ram+65536)	 # tmp271, tmp272,
	sw	$2,%gp_rel(STACK)($28)	 # tmp271, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
.L1063:
	addiu	$2,$3,-1	 # STACK.273, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.273, STACK
	lui	$2,%hi(ram)	 # tmp277,
	addiu	$2,$2,%lo(ram)	 # tmp276, tmp277,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp279, PC, tmp276
	sb	$4,-1($3)	 # tmp279,
	addu	$2,$2,$5	 # tmp282, tmp276, i
	sw	$2,%gp_rel(PC)($28)	 # tmp282, PC
	j	$31
	li	$2,17			# 0x11	 # D.9011,

.L1058:
	addiu	$2,$2,2	 # tmp284, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp284, PC
	j	$31
	li	$2,10			# 0xa	 # D.9011,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_calc
	.size	op_calc, .-op_calc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_calnc
	.type	op_calnc, @function
op_calnc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x1	 # tmp252, F,
	bne	$2,$0,.L1065	 #, tmp252,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$3,0($2)	 # i,* PC.341
	addiu	$4,$2,1	 # PC.342, PC.341,
	sw	$4,%gp_rel(PC)($28)	 # PC.342, PC
	lbu	$5,1($2)	 # tmp254,
	sll	$5,$5,8	 # tmp255, tmp254,
	addu	$5,$5,$3	 # i, tmp255, i
	addiu	$2,$2,2	 # PC.342, PC.341,
	sw	$2,%gp_rel(PC)($28)	 # PC.342, PC
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$4	 # tmp257, tmp258, STACK
	bne	$3,$0,.L1069	 #, tmp257,,
	addiu	$3,$4,-1	 # STACK.344, STACK,

	lui	$3,%hi(ram+65536)	 # tmp261,
	addiu	$3,$3,%lo(ram+65536)	 # tmp260, tmp261,
	sw	$3,%gp_rel(STACK)($28)	 # tmp260, STACK
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$3,$4,-1	 # STACK.344, STACK,
.L1069:
	sw	$3,%gp_rel(STACK)($28)	 # STACK.344, STACK
	lui	$3,%hi(ram)	 # tmp265,
	addiu	$3,$3,%lo(ram)	 # tmp264, tmp265,
	subu	$2,$2,$3	 # tmp263, PC.342, tmp264
	sra	$2,$2,8	 # tmp266, tmp263,
	sb	$2,-1($4)	 # tmp266,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$2	 # tmp268, tmp264, STACK
	bne	$3,$0,.L1070	 #, tmp268,,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp272,
	addiu	$2,$2,%lo(ram+65536)	 # tmp271, tmp272,
	sw	$2,%gp_rel(STACK)($28)	 # tmp271, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
.L1070:
	addiu	$2,$3,-1	 # STACK.344, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.344, STACK
	lui	$2,%hi(ram)	 # tmp277,
	addiu	$2,$2,%lo(ram)	 # tmp276, tmp277,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp279, PC, tmp276
	sb	$4,-1($3)	 # tmp279,
	addu	$2,$2,$5	 # tmp282, tmp276, i
	sw	$2,%gp_rel(PC)($28)	 # tmp282, PC
	j	$31
	li	$2,17			# 0x11	 # D.9175,

.L1065:
	addiu	$2,$2,2	 # tmp284, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp284, PC
	j	$31
	li	$2,10			# 0xa	 # D.9175,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_calnc
	.size	op_calnc, .-op_calnc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_calpe
	.type	op_calpe, @function
op_calpe:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x4	 # tmp252, F,
	beq	$2,$0,.L1072	 #, tmp252,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$3,0($2)	 # i,* PC.156
	addiu	$4,$2,1	 # PC.157, PC.156,
	sw	$4,%gp_rel(PC)($28)	 # PC.157, PC
	lbu	$5,1($2)	 # tmp254,
	sll	$5,$5,8	 # tmp255, tmp254,
	addu	$5,$5,$3	 # i, tmp255, i
	addiu	$2,$2,2	 # PC.157, PC.156,
	sw	$2,%gp_rel(PC)($28)	 # PC.157, PC
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$4	 # tmp257, tmp258, STACK
	bne	$3,$0,.L1076	 #, tmp257,,
	addiu	$3,$4,-1	 # STACK.159, STACK,

	lui	$3,%hi(ram+65536)	 # tmp261,
	addiu	$3,$3,%lo(ram+65536)	 # tmp260, tmp261,
	sw	$3,%gp_rel(STACK)($28)	 # tmp260, STACK
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$3,$4,-1	 # STACK.159, STACK,
.L1076:
	sw	$3,%gp_rel(STACK)($28)	 # STACK.159, STACK
	lui	$3,%hi(ram)	 # tmp265,
	addiu	$3,$3,%lo(ram)	 # tmp264, tmp265,
	subu	$2,$2,$3	 # tmp263, PC.157, tmp264
	sra	$2,$2,8	 # tmp266, tmp263,
	sb	$2,-1($4)	 # tmp266,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$2	 # tmp268, tmp264, STACK
	bne	$3,$0,.L1077	 #, tmp268,,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp272,
	addiu	$2,$2,%lo(ram+65536)	 # tmp271, tmp272,
	sw	$2,%gp_rel(STACK)($28)	 # tmp271, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
.L1077:
	addiu	$2,$3,-1	 # STACK.159, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.159, STACK
	lui	$2,%hi(ram)	 # tmp277,
	addiu	$2,$2,%lo(ram)	 # tmp276, tmp277,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp279, PC, tmp276
	sb	$4,-1($3)	 # tmp279,
	addu	$2,$2,$5	 # tmp282, tmp276, i
	sw	$2,%gp_rel(PC)($28)	 # tmp282, PC
	j	$31
	li	$2,17			# 0x11	 # D.8720,

.L1072:
	addiu	$2,$2,2	 # tmp284, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp284, PC
	j	$31
	li	$2,10			# 0xa	 # D.8720,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_calpe
	.size	op_calpe, .-op_calpe
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_calpo
	.type	op_calpo, @function
op_calpo:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x4	 # tmp252, F,
	bne	$2,$0,.L1079	 #, tmp252,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$3,0($2)	 # i,* PC.212
	addiu	$4,$2,1	 # PC.213, PC.212,
	sw	$4,%gp_rel(PC)($28)	 # PC.213, PC
	lbu	$5,1($2)	 # tmp254,
	sll	$5,$5,8	 # tmp255, tmp254,
	addu	$5,$5,$3	 # i, tmp255, i
	addiu	$2,$2,2	 # PC.213, PC.212,
	sw	$2,%gp_rel(PC)($28)	 # PC.213, PC
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$4	 # tmp257, tmp258, STACK
	bne	$3,$0,.L1083	 #, tmp257,,
	addiu	$3,$4,-1	 # STACK.215, STACK,

	lui	$3,%hi(ram+65536)	 # tmp261,
	addiu	$3,$3,%lo(ram+65536)	 # tmp260, tmp261,
	sw	$3,%gp_rel(STACK)($28)	 # tmp260, STACK
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$3,$4,-1	 # STACK.215, STACK,
.L1083:
	sw	$3,%gp_rel(STACK)($28)	 # STACK.215, STACK
	lui	$3,%hi(ram)	 # tmp265,
	addiu	$3,$3,%lo(ram)	 # tmp264, tmp265,
	subu	$2,$2,$3	 # tmp263, PC.213, tmp264
	sra	$2,$2,8	 # tmp266, tmp263,
	sb	$2,-1($4)	 # tmp266,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$2	 # tmp268, tmp264, STACK
	bne	$3,$0,.L1084	 #, tmp268,,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp272,
	addiu	$2,$2,%lo(ram+65536)	 # tmp271, tmp272,
	sw	$2,%gp_rel(STACK)($28)	 # tmp271, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
.L1084:
	addiu	$2,$3,-1	 # STACK.215, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.215, STACK
	lui	$2,%hi(ram)	 # tmp277,
	addiu	$2,$2,%lo(ram)	 # tmp276, tmp277,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp279, PC, tmp276
	sb	$4,-1($3)	 # tmp279,
	addu	$2,$2,$5	 # tmp282, tmp276, i
	sw	$2,%gp_rel(PC)($28)	 # tmp282, PC
	j	$31
	li	$2,17			# 0x11	 # D.8859,

.L1079:
	addiu	$2,$2,2	 # tmp284, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp284, PC
	j	$31
	li	$2,10			# 0xa	 # D.8859,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_calpo
	.size	op_calpo, .-op_calpo
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_calm
	.type	op_calm, @function
op_calm:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x80	 # tmp252, F,
	beq	$2,$0,.L1086	 #, tmp252,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$3,0($2)	 # i,* PC.59
	addiu	$4,$2,1	 # PC.60, PC.59,
	sw	$4,%gp_rel(PC)($28)	 # PC.60, PC
	lbu	$5,1($2)	 # tmp254,
	sll	$5,$5,8	 # tmp255, tmp254,
	addu	$5,$5,$3	 # i, tmp255, i
	addiu	$2,$2,2	 # PC.60, PC.59,
	sw	$2,%gp_rel(PC)($28)	 # PC.60, PC
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$4	 # tmp257, tmp258, STACK
	bne	$3,$0,.L1090	 #, tmp257,,
	addiu	$3,$4,-1	 # STACK.62, STACK,

	lui	$3,%hi(ram+65536)	 # tmp261,
	addiu	$3,$3,%lo(ram+65536)	 # tmp260, tmp261,
	sw	$3,%gp_rel(STACK)($28)	 # tmp260, STACK
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$3,$4,-1	 # STACK.62, STACK,
.L1090:
	sw	$3,%gp_rel(STACK)($28)	 # STACK.62, STACK
	lui	$3,%hi(ram)	 # tmp265,
	addiu	$3,$3,%lo(ram)	 # tmp264, tmp265,
	subu	$2,$2,$3	 # tmp263, PC.60, tmp264
	sra	$2,$2,8	 # tmp266, tmp263,
	sb	$2,-1($4)	 # tmp266,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$2	 # tmp268, tmp264, STACK
	bne	$3,$0,.L1091	 #, tmp268,,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp272,
	addiu	$2,$2,%lo(ram+65536)	 # tmp271, tmp272,
	sw	$2,%gp_rel(STACK)($28)	 # tmp271, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
.L1091:
	addiu	$2,$3,-1	 # STACK.62, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.62, STACK
	lui	$2,%hi(ram)	 # tmp277,
	addiu	$2,$2,%lo(ram)	 # tmp276, tmp277,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp279, PC, tmp276
	sb	$4,-1($3)	 # tmp279,
	addu	$2,$2,$5	 # tmp282, tmp276, i
	sw	$2,%gp_rel(PC)($28)	 # tmp282, PC
	j	$31
	li	$2,17			# 0x11	 # D.8463,

.L1086:
	addiu	$2,$2,2	 # tmp284, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp284, PC
	j	$31
	li	$2,10			# 0xa	 # D.8463,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_calm
	.size	op_calm, .-op_calm
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_calp
	.type	op_calp, @function
op_calp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x80	 # tmp252, F,
	bne	$2,$0,.L1093	 #, tmp252,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lbu	$3,0($2)	 # i,* PC.109
	addiu	$4,$2,1	 # PC.110, PC.109,
	sw	$4,%gp_rel(PC)($28)	 # PC.110, PC
	lbu	$5,1($2)	 # tmp254,
	sll	$5,$5,8	 # tmp255, tmp254,
	addu	$5,$5,$3	 # i, tmp255, i
	addiu	$2,$2,2	 # PC.110, PC.109,
	sw	$2,%gp_rel(PC)($28)	 # PC.110, PC
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$4	 # tmp257, tmp258, STACK
	bne	$3,$0,.L1097	 #, tmp257,,
	addiu	$3,$4,-1	 # STACK.112, STACK,

	lui	$3,%hi(ram+65536)	 # tmp261,
	addiu	$3,$3,%lo(ram+65536)	 # tmp260, tmp261,
	sw	$3,%gp_rel(STACK)($28)	 # tmp260, STACK
	lw	$4,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$3,$4,-1	 # STACK.112, STACK,
.L1097:
	sw	$3,%gp_rel(STACK)($28)	 # STACK.112, STACK
	lui	$3,%hi(ram)	 # tmp265,
	addiu	$3,$3,%lo(ram)	 # tmp264, tmp265,
	subu	$2,$2,$3	 # tmp263, PC.110, tmp264
	sra	$2,$2,8	 # tmp266, tmp263,
	sb	$2,-1($4)	 # tmp266,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$3,$3,$2	 # tmp268, tmp264, STACK
	bne	$3,$0,.L1098	 #, tmp268,,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp272,
	addiu	$2,$2,%lo(ram+65536)	 # tmp271, tmp272,
	sw	$2,%gp_rel(STACK)($28)	 # tmp271, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
.L1098:
	addiu	$2,$3,-1	 # STACK.112, STACK,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.112, STACK
	lui	$2,%hi(ram)	 # tmp277,
	addiu	$2,$2,%lo(ram)	 # tmp276, tmp277,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp279, PC, tmp276
	sb	$4,-1($3)	 # tmp279,
	addu	$2,$2,$5	 # tmp282, tmp276, i
	sw	$2,%gp_rel(PC)($28)	 # tmp282, PC
	j	$31
	li	$2,17			# 0x11	 # D.8597,

.L1093:
	addiu	$2,$2,2	 # tmp284, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp284, PC
	j	$31
	li	$2,10			# 0xa	 # D.8597,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_calp
	.size	op_calp, .-op_calp
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_retz
	.type	op_retz, @function
op_retz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F, F
	andi	$3,$3,0x40	 # tmp234, F,
	beq	$3,$0,.L1106	 #, tmp234,,
	li	$2,5			# 0x5	 # D.9398,

	lw	$2,%gp_rel(STACK)($28)	 # STACK.426, STACK
	lbu	$4,0($2)	 # i,* STACK.426
	addiu	$2,$2,1	 # STACK.427, STACK.426,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.427, STACK
	lui	$3,%hi(ram+65536)	 # tmp238,
	addiu	$3,$3,%lo(ram+65536)	 # tmp237, tmp238,
	sltu	$2,$2,$3	 # tmp236, STACK.427, tmp237
	bne	$2,$0,.L1104	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.426, STACK

	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.426, STACK
.L1104:
	lbu	$3,0($2)	 # tmp241,* STACK.426
	sll	$3,$3,8	 # tmp242, tmp241,
	addu	$3,$3,$4	 # i, tmp242, i
	addiu	$2,$2,1	 # STACK.427, STACK.426,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.427, STACK
	lui	$4,%hi(ram+65536)	 # tmp245,
	addiu	$4,$4,%lo(ram+65536)	 # tmp244, tmp245,
	sltu	$2,$2,$4	 # tmp243, STACK.427, tmp244
	bne	$2,$0,.L1105	 #, tmp243,,
	lui	$2,%hi(ram)	 # tmp249,

	addiu	$2,$2,%lo(ram)	 # tmp246, tmp247,
	sw	$2,%gp_rel(STACK)($28)	 # tmp246, STACK
	lui	$2,%hi(ram)	 # tmp249,
.L1105:
	addiu	$2,$2,%lo(ram)	 # tmp248, tmp249,
	addu	$2,$2,$3	 # tmp250, tmp248, i
	sw	$2,%gp_rel(PC)($28)	 # tmp250, PC
	li	$2,11			# 0xb	 # D.9398,
.L1106:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_retz
	.size	op_retz, .-op_retz
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_retnz
	.type	op_retnz, @function
op_retnz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F, F
	andi	$3,$3,0x40	 # tmp234, F,
	bne	$3,$0,.L1114	 #, tmp234,,
	li	$2,5			# 0x5	 # D.9558,

	lw	$2,%gp_rel(STACK)($28)	 # STACK.487, STACK
	lbu	$4,0($2)	 # i,* STACK.487
	addiu	$2,$2,1	 # STACK.488, STACK.487,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.488, STACK
	lui	$3,%hi(ram+65536)	 # tmp238,
	addiu	$3,$3,%lo(ram+65536)	 # tmp237, tmp238,
	sltu	$2,$2,$3	 # tmp236, STACK.488, tmp237
	bne	$2,$0,.L1112	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.487, STACK

	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.487, STACK
.L1112:
	lbu	$3,0($2)	 # tmp241,* STACK.487
	sll	$3,$3,8	 # tmp242, tmp241,
	addu	$3,$3,$4	 # i, tmp242, i
	addiu	$2,$2,1	 # STACK.488, STACK.487,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.488, STACK
	lui	$4,%hi(ram+65536)	 # tmp245,
	addiu	$4,$4,%lo(ram+65536)	 # tmp244, tmp245,
	sltu	$2,$2,$4	 # tmp243, STACK.488, tmp244
	bne	$2,$0,.L1113	 #, tmp243,,
	lui	$2,%hi(ram)	 # tmp249,

	addiu	$2,$2,%lo(ram)	 # tmp246, tmp247,
	sw	$2,%gp_rel(STACK)($28)	 # tmp246, STACK
	lui	$2,%hi(ram)	 # tmp249,
.L1113:
	addiu	$2,$2,%lo(ram)	 # tmp248, tmp249,
	addu	$2,$2,$3	 # tmp250, tmp248, i
	sw	$2,%gp_rel(PC)($28)	 # tmp250, PC
	li	$2,11			# 0xb	 # D.9558,
.L1114:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_retnz
	.size	op_retnz, .-op_retnz
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_retc
	.type	op_retc, @function
op_retc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F, F
	andi	$3,$3,0x1	 # tmp234, F,
	beq	$3,$0,.L1122	 #, tmp234,,
	li	$2,5			# 0x5	 # D.9068,

	lw	$2,%gp_rel(STACK)($28)	 # STACK.302, STACK
	lbu	$4,0($2)	 # i,* STACK.302
	addiu	$2,$2,1	 # STACK.303, STACK.302,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.303, STACK
	lui	$3,%hi(ram+65536)	 # tmp238,
	addiu	$3,$3,%lo(ram+65536)	 # tmp237, tmp238,
	sltu	$2,$2,$3	 # tmp236, STACK.303, tmp237
	bne	$2,$0,.L1120	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.302, STACK

	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.302, STACK
.L1120:
	lbu	$3,0($2)	 # tmp241,* STACK.302
	sll	$3,$3,8	 # tmp242, tmp241,
	addu	$3,$3,$4	 # i, tmp242, i
	addiu	$2,$2,1	 # STACK.303, STACK.302,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.303, STACK
	lui	$4,%hi(ram+65536)	 # tmp245,
	addiu	$4,$4,%lo(ram+65536)	 # tmp244, tmp245,
	sltu	$2,$2,$4	 # tmp243, STACK.303, tmp244
	bne	$2,$0,.L1121	 #, tmp243,,
	lui	$2,%hi(ram)	 # tmp249,

	addiu	$2,$2,%lo(ram)	 # tmp246, tmp247,
	sw	$2,%gp_rel(STACK)($28)	 # tmp246, STACK
	lui	$2,%hi(ram)	 # tmp249,
.L1121:
	addiu	$2,$2,%lo(ram)	 # tmp248, tmp249,
	addu	$2,$2,$3	 # tmp250, tmp248, i
	sw	$2,%gp_rel(PC)($28)	 # tmp250, PC
	li	$2,11			# 0xb	 # D.9068,
.L1122:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_retc
	.size	op_retc, .-op_retc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_retnc
	.type	op_retnc, @function
op_retnc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F, F
	andi	$3,$3,0x1	 # tmp234, F,
	bne	$3,$0,.L1130	 #, tmp234,,
	li	$2,5			# 0x5	 # D.9225,

	lw	$2,%gp_rel(STACK)($28)	 # STACK.363, STACK
	lbu	$4,0($2)	 # i,* STACK.363
	addiu	$2,$2,1	 # STACK.364, STACK.363,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.364, STACK
	lui	$3,%hi(ram+65536)	 # tmp238,
	addiu	$3,$3,%lo(ram+65536)	 # tmp237, tmp238,
	sltu	$2,$2,$3	 # tmp236, STACK.364, tmp237
	bne	$2,$0,.L1128	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.363, STACK

	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.363, STACK
.L1128:
	lbu	$3,0($2)	 # tmp241,* STACK.363
	sll	$3,$3,8	 # tmp242, tmp241,
	addu	$3,$3,$4	 # i, tmp242, i
	addiu	$2,$2,1	 # STACK.364, STACK.363,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.364, STACK
	lui	$4,%hi(ram+65536)	 # tmp245,
	addiu	$4,$4,%lo(ram+65536)	 # tmp244, tmp245,
	sltu	$2,$2,$4	 # tmp243, STACK.364, tmp244
	bne	$2,$0,.L1129	 #, tmp243,,
	lui	$2,%hi(ram)	 # tmp249,

	addiu	$2,$2,%lo(ram)	 # tmp246, tmp247,
	sw	$2,%gp_rel(STACK)($28)	 # tmp246, STACK
	lui	$2,%hi(ram)	 # tmp249,
.L1129:
	addiu	$2,$2,%lo(ram)	 # tmp248, tmp249,
	addu	$2,$2,$3	 # tmp250, tmp248, i
	sw	$2,%gp_rel(PC)($28)	 # tmp250, PC
	li	$2,11			# 0xb	 # D.9225,
.L1130:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_retnc
	.size	op_retnc, .-op_retnc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_retpe
	.type	op_retpe, @function
op_retpe:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F, F
	andi	$3,$3,0x4	 # tmp234, F,
	beq	$3,$0,.L1138	 #, tmp234,,
	li	$2,5			# 0x5	 # D.8770,

	lw	$2,%gp_rel(STACK)($28)	 # STACK.180, STACK
	lbu	$4,0($2)	 # i,* STACK.180
	addiu	$2,$2,1	 # STACK.181, STACK.180,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.181, STACK
	lui	$3,%hi(ram+65536)	 # tmp238,
	addiu	$3,$3,%lo(ram+65536)	 # tmp237, tmp238,
	sltu	$2,$2,$3	 # tmp236, STACK.181, tmp237
	bne	$2,$0,.L1136	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.180, STACK

	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.180, STACK
.L1136:
	lbu	$3,0($2)	 # tmp241,* STACK.180
	sll	$3,$3,8	 # tmp242, tmp241,
	addu	$3,$3,$4	 # i, tmp242, i
	addiu	$2,$2,1	 # STACK.181, STACK.180,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.181, STACK
	lui	$4,%hi(ram+65536)	 # tmp245,
	addiu	$4,$4,%lo(ram+65536)	 # tmp244, tmp245,
	sltu	$2,$2,$4	 # tmp243, STACK.181, tmp244
	bne	$2,$0,.L1137	 #, tmp243,,
	lui	$2,%hi(ram)	 # tmp249,

	addiu	$2,$2,%lo(ram)	 # tmp246, tmp247,
	sw	$2,%gp_rel(STACK)($28)	 # tmp246, STACK
	lui	$2,%hi(ram)	 # tmp249,
.L1137:
	addiu	$2,$2,%lo(ram)	 # tmp248, tmp249,
	addu	$2,$2,$3	 # tmp250, tmp248, i
	sw	$2,%gp_rel(PC)($28)	 # tmp250, PC
	li	$2,11			# 0xb	 # D.8770,
.L1138:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_retpe
	.size	op_retpe, .-op_retpe
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_retpo
	.type	op_retpo, @function
op_retpo:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F, F
	andi	$3,$3,0x4	 # tmp234, F,
	bne	$3,$0,.L1146	 #, tmp234,,
	li	$2,5			# 0x5	 # D.8910,

	lw	$2,%gp_rel(STACK)($28)	 # STACK.235, STACK
	lbu	$4,0($2)	 # i,* STACK.235
	addiu	$2,$2,1	 # STACK.236, STACK.235,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.236, STACK
	lui	$3,%hi(ram+65536)	 # tmp238,
	addiu	$3,$3,%lo(ram+65536)	 # tmp237, tmp238,
	sltu	$2,$2,$3	 # tmp236, STACK.236, tmp237
	bne	$2,$0,.L1144	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.235, STACK

	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.235, STACK
.L1144:
	lbu	$3,0($2)	 # tmp241,* STACK.235
	sll	$3,$3,8	 # tmp242, tmp241,
	addu	$3,$3,$4	 # i, tmp242, i
	addiu	$2,$2,1	 # STACK.236, STACK.235,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.236, STACK
	lui	$4,%hi(ram+65536)	 # tmp245,
	addiu	$4,$4,%lo(ram+65536)	 # tmp244, tmp245,
	sltu	$2,$2,$4	 # tmp243, STACK.236, tmp244
	bne	$2,$0,.L1145	 #, tmp243,,
	lui	$2,%hi(ram)	 # tmp249,

	addiu	$2,$2,%lo(ram)	 # tmp246, tmp247,
	sw	$2,%gp_rel(STACK)($28)	 # tmp246, STACK
	lui	$2,%hi(ram)	 # tmp249,
.L1145:
	addiu	$2,$2,%lo(ram)	 # tmp248, tmp249,
	addu	$2,$2,$3	 # tmp250, tmp248, i
	sw	$2,%gp_rel(PC)($28)	 # tmp250, PC
	li	$2,11			# 0xb	 # D.8910,
.L1146:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_retpo
	.size	op_retpo, .-op_retpo
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_retm
	.type	op_retm, @function
op_retm:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F, F
	andi	$3,$3,0x80	 # tmp234, F,
	beq	$3,$0,.L1154	 #, tmp234,,
	li	$2,5			# 0x5	 # D.8508,

	lw	$2,%gp_rel(STACK)($28)	 # STACK.78, STACK
	lbu	$4,0($2)	 # i,* STACK.78
	addiu	$2,$2,1	 # STACK.79, STACK.78,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.79, STACK
	lui	$3,%hi(ram+65536)	 # tmp238,
	addiu	$3,$3,%lo(ram+65536)	 # tmp237, tmp238,
	sltu	$2,$2,$3	 # tmp236, STACK.79, tmp237
	bne	$2,$0,.L1152	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.78, STACK

	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.78, STACK
.L1152:
	lbu	$3,0($2)	 # tmp241,* STACK.78
	sll	$3,$3,8	 # tmp242, tmp241,
	addu	$3,$3,$4	 # i, tmp242, i
	addiu	$2,$2,1	 # STACK.79, STACK.78,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.79, STACK
	lui	$4,%hi(ram+65536)	 # tmp245,
	addiu	$4,$4,%lo(ram+65536)	 # tmp244, tmp245,
	sltu	$2,$2,$4	 # tmp243, STACK.79, tmp244
	bne	$2,$0,.L1153	 #, tmp243,,
	lui	$2,%hi(ram)	 # tmp249,

	addiu	$2,$2,%lo(ram)	 # tmp246, tmp247,
	sw	$2,%gp_rel(STACK)($28)	 # tmp246, STACK
	lui	$2,%hi(ram)	 # tmp249,
.L1153:
	addiu	$2,$2,%lo(ram)	 # tmp248, tmp249,
	addu	$2,$2,$3	 # tmp250, tmp248, i
	sw	$2,%gp_rel(PC)($28)	 # tmp250, PC
	li	$2,11			# 0xb	 # D.8508,
.L1154:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_retm
	.size	op_retm, .-op_retm
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_retp
	.type	op_retp, @function
op_retp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F, F
	andi	$3,$3,0x80	 # tmp234, F,
	bne	$3,$0,.L1162	 #, tmp234,,
	li	$2,5			# 0x5	 # D.8642,

	lw	$2,%gp_rel(STACK)($28)	 # STACK.129, STACK
	lbu	$4,0($2)	 # i,* STACK.129
	addiu	$2,$2,1	 # STACK.130, STACK.129,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.130, STACK
	lui	$3,%hi(ram+65536)	 # tmp238,
	addiu	$3,$3,%lo(ram+65536)	 # tmp237, tmp238,
	sltu	$2,$2,$3	 # tmp236, STACK.130, tmp237
	bne	$2,$0,.L1160	 #, tmp236,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.129, STACK

	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	sw	$2,%gp_rel(STACK)($28)	 # tmp239, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.129, STACK
.L1160:
	lbu	$3,0($2)	 # tmp241,* STACK.129
	sll	$3,$3,8	 # tmp242, tmp241,
	addu	$3,$3,$4	 # i, tmp242, i
	addiu	$2,$2,1	 # STACK.130, STACK.129,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.130, STACK
	lui	$4,%hi(ram+65536)	 # tmp245,
	addiu	$4,$4,%lo(ram+65536)	 # tmp244, tmp245,
	sltu	$2,$2,$4	 # tmp243, STACK.130, tmp244
	bne	$2,$0,.L1161	 #, tmp243,,
	lui	$2,%hi(ram)	 # tmp249,

	addiu	$2,$2,%lo(ram)	 # tmp246, tmp247,
	sw	$2,%gp_rel(STACK)($28)	 # tmp246, STACK
	lui	$2,%hi(ram)	 # tmp249,
.L1161:
	addiu	$2,$2,%lo(ram)	 # tmp248, tmp249,
	addu	$2,$2,$3	 # tmp250, tmp248, i
	sw	$2,%gp_rel(PC)($28)	 # tmp250, PC
	li	$2,11			# 0xb	 # D.8642,
.L1162:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_retp
	.size	op_retp, .-op_retp
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jrz
	.type	op_jrz, @function
op_jrz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x40	 # tmp230, F,
	beq	$2,$0,.L1164	 #, tmp230,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lb	$3,0($2)	 # tmp232,* PC.1972
	addiu	$3,$3,1	 # tmp233, tmp232,
	addu	$2,$2,$3	 # tmp234, PC.1972, tmp233
	sw	$2,%gp_rel(PC)($28)	 # tmp234, PC
	j	$31
	li	$2,12			# 0xc	 # D.12872,

.L1164:
	addiu	$2,$2,1	 # tmp236, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,7			# 0x7	 # D.12872,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jrz
	.size	op_jrz, .-op_jrz
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jrnz
	.type	op_jrnz, @function
op_jrnz:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x40	 # tmp230, F,
	bne	$2,$0,.L1167	 #, tmp230,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lb	$3,0($2)	 # tmp232,* PC.2044
	addiu	$3,$3,1	 # tmp233, tmp232,
	addu	$2,$2,$3	 # tmp234, PC.2044, tmp233
	sw	$2,%gp_rel(PC)($28)	 # tmp234, PC
	j	$31
	li	$2,12			# 0xc	 # D.13053,

.L1167:
	addiu	$2,$2,1	 # tmp236, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,7			# 0x7	 # D.13053,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jrnz
	.size	op_jrnz, .-op_jrnz
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jrc
	.type	op_jrc, @function
op_jrc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x1	 # tmp230, F,
	beq	$2,$0,.L1170	 #, tmp230,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lb	$3,0($2)	 # tmp232,* PC.1854
	addiu	$3,$3,1	 # tmp233, tmp232,
	addu	$2,$2,$3	 # tmp234, PC.1854, tmp233
	sw	$2,%gp_rel(PC)($28)	 # tmp234, PC
	j	$31
	li	$2,12			# 0xc	 # D.12588,

.L1170:
	addiu	$2,$2,1	 # tmp236, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,7			# 0x7	 # D.12588,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jrc
	.size	op_jrc, .-op_jrc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jrnc
	.type	op_jrnc, @function
op_jrnc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F, F
	andi	$2,$2,0x1	 # tmp230, F,
	bne	$2,$0,.L1173	 #, tmp230,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lb	$3,0($2)	 # tmp232,* PC.1907
	addiu	$3,$3,1	 # tmp233, tmp232,
	addu	$2,$2,$3	 # tmp234, PC.1907, tmp233
	sw	$2,%gp_rel(PC)($28)	 # tmp234, PC
	j	$31
	li	$2,12			# 0xc	 # D.12729,

.L1173:
	addiu	$2,$2,1	 # tmp236, PC,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,7			# 0x7	 # D.12729,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jrnc
	.size	op_jrnc, .-op_jrnc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rst00
	.type	op_rst00, @function
op_rst00:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp238, tmp239, STACK
	bne	$2,$0,.L1178	 #, tmp238,,
	addiu	$2,$3,-1	 # STACK.430, STACK,

	lui	$2,%hi(ram+65536)	 # tmp242,
	addiu	$2,$2,%lo(ram+65536)	 # tmp241, tmp242,
	sw	$2,%gp_rel(STACK)($28)	 # tmp241, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$3,-1	 # STACK.430, STACK,
.L1178:
	sw	$2,%gp_rel(STACK)($28)	 # STACK.430, STACK
	lui	$2,%hi(ram)	 # tmp246,
	addiu	$2,$2,%lo(ram)	 # tmp245, tmp246,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp244, PC, tmp245
	sra	$4,$4,8	 # tmp248, tmp244,
	sb	$4,-1($3)	 # tmp248,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp250, tmp245, STACK
	bnel	$2,$0,.L1179	 #, tmp250,,
	addiu	$2,$3,-1	 # STACK.430, STACK,

	lui	$2,%hi(ram+65536)	 # tmp254,
	addiu	$2,$2,%lo(ram+65536)	 # tmp253, tmp254,
	sw	$2,%gp_rel(STACK)($28)	 # tmp253, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$3,-1	 # STACK.430, STACK,
.L1179:
	sw	$2,%gp_rel(STACK)($28)	 # STACK.430, STACK
	lui	$2,%hi(ram)	 # tmp259,
	addiu	$2,$2,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp261, PC, tmp258
	sb	$4,-1($3)	 # tmp261,
	sw	$2,%gp_rel(PC)($28)	 # tmp258, PC
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rst00
	.size	op_rst00, .-op_rst00
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rst08
	.type	op_rst08, @function
op_rst08:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp238, tmp239, STACK
	bne	$2,$0,.L1183	 #, tmp238,,
	addiu	$2,$3,-1	 # STACK.367, STACK,

	lui	$2,%hi(ram+65536)	 # tmp242,
	addiu	$2,$2,%lo(ram+65536)	 # tmp241, tmp242,
	sw	$2,%gp_rel(STACK)($28)	 # tmp241, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$3,-1	 # STACK.367, STACK,
.L1183:
	sw	$2,%gp_rel(STACK)($28)	 # STACK.367, STACK
	lui	$2,%hi(ram)	 # tmp246,
	addiu	$2,$2,%lo(ram)	 # tmp245, tmp246,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp244, PC, tmp245
	sra	$4,$4,8	 # tmp248, tmp244,
	sb	$4,-1($3)	 # tmp248,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp250, tmp245, STACK
	bnel	$2,$0,.L1184	 #, tmp250,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp254,
	addiu	$2,$2,%lo(ram+65536)	 # tmp253, tmp254,
	sw	$2,%gp_rel(STACK)($28)	 # tmp253, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L1184:
	addiu	$3,$2,-1	 # STACK.367, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.367, STACK
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$3,$4,$3	 # tmp261, PC, tmp258
	sb	$3,-1($2)	 # tmp261,
	lui	$2,%hi(ram+8)	 # tmp263,
	addiu	$2,$2,%lo(ram+8)	 # tmp262, tmp263,
	sw	$2,%gp_rel(PC)($28)	 # tmp262, PC
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rst08
	.size	op_rst08, .-op_rst08
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rst10
	.type	op_rst10, @function
op_rst10:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp238, tmp239, STACK
	bne	$2,$0,.L1188	 #, tmp238,,
	addiu	$2,$3,-1	 # STACK.306, STACK,

	lui	$2,%hi(ram+65536)	 # tmp242,
	addiu	$2,$2,%lo(ram+65536)	 # tmp241, tmp242,
	sw	$2,%gp_rel(STACK)($28)	 # tmp241, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$3,-1	 # STACK.306, STACK,
.L1188:
	sw	$2,%gp_rel(STACK)($28)	 # STACK.306, STACK
	lui	$2,%hi(ram)	 # tmp246,
	addiu	$2,$2,%lo(ram)	 # tmp245, tmp246,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp244, PC, tmp245
	sra	$4,$4,8	 # tmp248, tmp244,
	sb	$4,-1($3)	 # tmp248,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp250, tmp245, STACK
	bnel	$2,$0,.L1189	 #, tmp250,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp254,
	addiu	$2,$2,%lo(ram+65536)	 # tmp253, tmp254,
	sw	$2,%gp_rel(STACK)($28)	 # tmp253, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L1189:
	addiu	$3,$2,-1	 # STACK.306, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.306, STACK
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$3,$4,$3	 # tmp261, PC, tmp258
	sb	$3,-1($2)	 # tmp261,
	lui	$2,%hi(ram+16)	 # tmp263,
	addiu	$2,$2,%lo(ram+16)	 # tmp262, tmp263,
	sw	$2,%gp_rel(PC)($28)	 # tmp262, PC
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rst10
	.size	op_rst10, .-op_rst10
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rst18
	.type	op_rst18, @function
op_rst18:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp238, tmp239, STACK
	bne	$2,$0,.L1193	 #, tmp238,,
	addiu	$2,$3,-1	 # STACK.239, STACK,

	lui	$2,%hi(ram+65536)	 # tmp242,
	addiu	$2,$2,%lo(ram+65536)	 # tmp241, tmp242,
	sw	$2,%gp_rel(STACK)($28)	 # tmp241, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$3,-1	 # STACK.239, STACK,
.L1193:
	sw	$2,%gp_rel(STACK)($28)	 # STACK.239, STACK
	lui	$2,%hi(ram)	 # tmp246,
	addiu	$2,$2,%lo(ram)	 # tmp245, tmp246,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp244, PC, tmp245
	sra	$4,$4,8	 # tmp248, tmp244,
	sb	$4,-1($3)	 # tmp248,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp250, tmp245, STACK
	bnel	$2,$0,.L1194	 #, tmp250,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp254,
	addiu	$2,$2,%lo(ram+65536)	 # tmp253, tmp254,
	sw	$2,%gp_rel(STACK)($28)	 # tmp253, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L1194:
	addiu	$3,$2,-1	 # STACK.239, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.239, STACK
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$3,$4,$3	 # tmp261, PC, tmp258
	sb	$3,-1($2)	 # tmp261,
	lui	$2,%hi(ram+24)	 # tmp263,
	addiu	$2,$2,%lo(ram+24)	 # tmp262, tmp263,
	sw	$2,%gp_rel(PC)($28)	 # tmp262, PC
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rst18
	.size	op_rst18, .-op_rst18
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rst20
	.type	op_rst20, @function
op_rst20:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp238, tmp239, STACK
	bne	$2,$0,.L1198	 #, tmp238,,
	addiu	$2,$3,-1	 # STACK.184, STACK,

	lui	$2,%hi(ram+65536)	 # tmp242,
	addiu	$2,$2,%lo(ram+65536)	 # tmp241, tmp242,
	sw	$2,%gp_rel(STACK)($28)	 # tmp241, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$3,-1	 # STACK.184, STACK,
.L1198:
	sw	$2,%gp_rel(STACK)($28)	 # STACK.184, STACK
	lui	$2,%hi(ram)	 # tmp246,
	addiu	$2,$2,%lo(ram)	 # tmp245, tmp246,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp244, PC, tmp245
	sra	$4,$4,8	 # tmp248, tmp244,
	sb	$4,-1($3)	 # tmp248,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp250, tmp245, STACK
	bnel	$2,$0,.L1199	 #, tmp250,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp254,
	addiu	$2,$2,%lo(ram+65536)	 # tmp253, tmp254,
	sw	$2,%gp_rel(STACK)($28)	 # tmp253, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L1199:
	addiu	$3,$2,-1	 # STACK.184, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.184, STACK
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$3,$4,$3	 # tmp261, PC, tmp258
	sb	$3,-1($2)	 # tmp261,
	lui	$2,%hi(ram+32)	 # tmp263,
	addiu	$2,$2,%lo(ram+32)	 # tmp262, tmp263,
	sw	$2,%gp_rel(PC)($28)	 # tmp262, PC
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rst20
	.size	op_rst20, .-op_rst20
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rst28
	.type	op_rst28, @function
op_rst28:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp238, tmp239, STACK
	bne	$2,$0,.L1203	 #, tmp238,,
	addiu	$2,$3,-1	 # STACK.133, STACK,

	lui	$2,%hi(ram+65536)	 # tmp242,
	addiu	$2,$2,%lo(ram+65536)	 # tmp241, tmp242,
	sw	$2,%gp_rel(STACK)($28)	 # tmp241, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$3,-1	 # STACK.133, STACK,
.L1203:
	sw	$2,%gp_rel(STACK)($28)	 # STACK.133, STACK
	lui	$2,%hi(ram)	 # tmp246,
	addiu	$2,$2,%lo(ram)	 # tmp245, tmp246,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp244, PC, tmp245
	sra	$4,$4,8	 # tmp248, tmp244,
	sb	$4,-1($3)	 # tmp248,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp250, tmp245, STACK
	bnel	$2,$0,.L1204	 #, tmp250,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp254,
	addiu	$2,$2,%lo(ram+65536)	 # tmp253, tmp254,
	sw	$2,%gp_rel(STACK)($28)	 # tmp253, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L1204:
	addiu	$3,$2,-1	 # STACK.133, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.133, STACK
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$3,$4,$3	 # tmp261, PC, tmp258
	sb	$3,-1($2)	 # tmp261,
	lui	$2,%hi(ram+40)	 # tmp263,
	addiu	$2,$2,%lo(ram+40)	 # tmp262, tmp263,
	sw	$2,%gp_rel(PC)($28)	 # tmp262, PC
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rst28
	.size	op_rst28, .-op_rst28
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rst30
	.type	op_rst30, @function
op_rst30:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp238, tmp239, STACK
	bne	$2,$0,.L1208	 #, tmp238,,
	addiu	$2,$3,-1	 # STACK.82, STACK,

	lui	$2,%hi(ram+65536)	 # tmp242,
	addiu	$2,$2,%lo(ram+65536)	 # tmp241, tmp242,
	sw	$2,%gp_rel(STACK)($28)	 # tmp241, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$3,-1	 # STACK.82, STACK,
.L1208:
	sw	$2,%gp_rel(STACK)($28)	 # STACK.82, STACK
	lui	$2,%hi(ram)	 # tmp246,
	addiu	$2,$2,%lo(ram)	 # tmp245, tmp246,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp244, PC, tmp245
	sra	$4,$4,8	 # tmp248, tmp244,
	sb	$4,-1($3)	 # tmp248,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp250, tmp245, STACK
	bnel	$2,$0,.L1209	 #, tmp250,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp254,
	addiu	$2,$2,%lo(ram+65536)	 # tmp253, tmp254,
	sw	$2,%gp_rel(STACK)($28)	 # tmp253, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L1209:
	addiu	$3,$2,-1	 # STACK.82, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.82, STACK
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$3,$4,$3	 # tmp261, PC, tmp258
	sb	$3,-1($2)	 # tmp261,
	lui	$2,%hi(ram+48)	 # tmp263,
	addiu	$2,$2,%lo(ram+48)	 # tmp262, tmp263,
	sw	$2,%gp_rel(PC)($28)	 # tmp262, PC
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rst30
	.size	op_rst30, .-op_rst30
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rst38
	.type	op_rst38, @function
op_rst38:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp240,
	addiu	$2,$2,%lo(ram)	 # tmp239, tmp240,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp238, tmp239, STACK
	bne	$2,$0,.L1213	 #, tmp238,,
	addiu	$2,$3,-1	 # STACK.29, STACK,

	lui	$2,%hi(ram+65536)	 # tmp242,
	addiu	$2,$2,%lo(ram+65536)	 # tmp241, tmp242,
	sw	$2,%gp_rel(STACK)($28)	 # tmp241, STACK
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	addiu	$2,$3,-1	 # STACK.29, STACK,
.L1213:
	sw	$2,%gp_rel(STACK)($28)	 # STACK.29, STACK
	lui	$2,%hi(ram)	 # tmp246,
	addiu	$2,$2,%lo(ram)	 # tmp245, tmp246,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$4,$4,$2	 # tmp244, PC, tmp245
	sra	$4,$4,8	 # tmp248, tmp244,
	sb	$4,-1($3)	 # tmp248,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp250, tmp245, STACK
	bnel	$2,$0,.L1214	 #, tmp250,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp254,
	addiu	$2,$2,%lo(ram+65536)	 # tmp253, tmp254,
	sw	$2,%gp_rel(STACK)($28)	 # tmp253, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L1214:
	addiu	$3,$2,-1	 # STACK.29, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.29, STACK
	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp259,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	subu	$3,$4,$3	 # tmp261, PC, tmp258
	sb	$3,-1($2)	 # tmp261,
	lui	$2,%hi(ram+56)	 # tmp263,
	addiu	$2,$2,%lo(ram+56)	 # tmp262, tmp263,
	sw	$2,%gp_rel(PC)($28)	 # tmp262, PC
	j	$31
	li	$2,11			# 0xb	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rst38
	.size	op_rst38, .-op_rst38
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_in
	.type	op_in, @function
op_in:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lw	$2,%gp_rel(PC)($28)	 # PC.280, PC
	lbu	$4,0($2)	 # D.9017,* PC.280
	addiu	$2,$2,1	 # tmp224, PC.280,
	jal	io_in	 #
	sw	$2,%gp_rel(PC)($28)	 # tmp224, PC

	sb	$2,%gp_rel(A)($28)	 #, A
	li	$2,11			# 0xb	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_in
	.size	op_in, .-op_in
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_out
	.type	op_out, @function
op_out:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lw	$2,%gp_rel(PC)($28)	 # PC.351, PC
	lbu	$4,0($2)	 # D.9181,* PC.351
	addiu	$2,$2,1	 # tmp225, PC.351,
	sw	$2,%gp_rel(PC)($28)	 # tmp225, PC
	jal	io_out	 #
	lbu	$5,%gp_rel(A)($28)	 #, A

	li	$2,11			# 0xb	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_out
	.size	op_out, .-op_out
	.align	2
	.globl	cpu
	.set	nomips16
	.set	nomicromips
	.ent	cpu
	.type	cpu, @function
cpu:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48	 #,,
	sw	$31,44($sp)	 #,
	sw	$22,40($sp)	 #,
	sw	$21,36($sp)	 #,
	sw	$20,32($sp)	 #,
	sw	$19,28($sp)	 #,
	sw	$18,24($sp)	 #,
	sw	$17,20($sp)	 #,
	sw	$16,16($sp)	 #,
	move	$16,$0	 # t,
	lui	$22,%hi(ram)	 # tmp370,
	addiu	$22,$22,%lo(ram)	 # tmp371, tmp370,
	andi	$17,$22,0xffff	 # D.8305, tmp371
	lui	$18,%hi(his)	 # tmp374,
	addiu	$18,$18,%lo(his)	 # tmp375, tmp374,
	li	$19,100			# 0x64	 # tmp376,
	lui	$20,%hi(op_sim.5528)	 # tmp377,
	addiu	$20,$20,%lo(op_sim.5528)	 # tmp378, tmp377,
	lui	$21,%hi(ram+65535)	 # tmp379,
	addiu	$21,$21,%lo(ram+65535)	 # tmp380, tmp379,
	lw	$4,%gp_rel(h_next)($28)	 # h_next.0, h_next
.L1230:
	lw	$3,%gp_rel(PC)($28)	 # PC.1, PC
	sll	$2,$4,4	 # tmp280, h_next.0,
	addu	$2,$2,$18	 # tmp281, tmp280, tmp375
	subu	$5,$3,$17	 # tmp284, PC.1, D.8305
	sh	$5,0($2)	 # tmp284, his[h_next.0_4].h_adr
	lbu	$5,%gp_rel(A)($28)	 # A, A
	sll	$5,$5,8	 # tmp290, A,
	lw	$6,%gp_rel(F)($28)	 # F, F
	addu	$5,$5,$6	 # tmp294, tmp290, F
	sh	$5,2($2)	 # tmp294, his[h_next.0_4].h_af
	lbu	$5,%gp_rel(B)($28)	 # B, B
	sll	$5,$5,8	 # tmp300, B,
	lbu	$6,%gp_rel(C)($28)	 # C, C
	addu	$5,$5,$6	 # tmp303, tmp300, C
	sh	$5,4($2)	 # tmp303, his[h_next.0_4].h_bc
	lbu	$5,%gp_rel(D)($28)	 # D, D
	sll	$5,$5,8	 # tmp309, D,
	lbu	$6,%gp_rel(E)($28)	 # E, E
	addu	$5,$5,$6	 # tmp312, tmp309, E
	sh	$5,6($2)	 # tmp312, his[h_next.0_4].h_de
	lbu	$5,%gp_rel(H)($28)	 # H, H
	sll	$5,$5,8	 # tmp318, H,
	lbu	$6,%gp_rel(L)($28)	 # L, L
	addu	$5,$5,$6	 # tmp321, tmp318, L
	sh	$5,8($2)	 # tmp321, his[h_next.0_4].h_hl
	lhu	$5,%gp_rel(IX)($28)	 #, IX
	sh	$5,10($2)	 # IX, his[h_next.0_4].h_ix
	lhu	$5,%gp_rel(IY)($28)	 #, IY
	sh	$5,12($2)	 # IY, his[h_next.0_4].h_iy
	lw	$5,%gp_rel(STACK)($28)	 # STACK, STACK
	subu	$5,$5,$17	 # tmp338, STACK, D.8305
	sh	$5,14($2)	 # tmp338, his[h_next.0_4].h_sp
	addiu	$2,$4,1	 # h_next.16, h_next.0,
	bne	$2,$19,.L1218	 #, h_next.16, tmp376,
	sw	$2,%gp_rel(h_next)($28)	 # h_next.16, h_next

	li	$2,1			# 0x1	 # tmp340,
	sw	$2,%gp_rel(h_flag)($28)	 # tmp340, h_flag
	sw	$0,%gp_rel(h_next)($28)	 #, h_next
.L1218:
	lw	$2,%gp_rel(t_start)($28)	 # t_start, t_start
	bne	$3,$2,.L1226	 #, PC.1, t_start,
	lw	$3,%gp_rel(PC)($28)	 # PC.1, PC

	lw	$2,%gp_rel(t_flag)($28)	 # t_flag, t_flag
	bnel	$2,$0,.L1227	 #, t_flag,,
	lbu	$2,0($3)	 # tmp345,* PC.1

	li	$2,1			# 0x1	 # tmp343,
	sw	$2,%gp_rel(t_flag)($28)	 # tmp343, t_flag
	sw	$0,%gp_rel(t_states)($28)	 #, t_states
	lw	$3,%gp_rel(PC)($28)	 # PC.1, PC
.L1226:
	lbu	$2,0($3)	 # tmp345,* PC.1
.L1227:
	sll	$2,$2,2	 # tmp346, tmp345,
	addu	$2,$2,$20	 # tmp347, tmp346, tmp378
	lw	$2,0($2)	 # D.8349, op_sim
	addiu	$3,$3,1	 # tmp349, PC.1,
	jalr	$2	 # D.8349
	sw	$3,%gp_rel(PC)($28)	 # tmp349, PC

	addu	$16,$16,$2	 # t, t,
	lw	$2,%gp_rel(f_flag)($28)	 # f_flag, f_flag
	beq	$2,$0,.L1228	 #, f_flag,,
	lw	$2,%gp_rel(PC)($28)	 # PC, PC

	lw	$2,%gp_rel(tmax)($28)	 # tmax, tmax
	slt	$2,$2,$16	 # tmp352, tmax, t
	movn	$16,$0,$2	 #, t,, tmp352
	lw	$2,%gp_rel(PC)($28)	 # PC, PC
.L1228:
	sltu	$2,$21,$2	 # tmp354, tmp380, PC
	bnel	$2,$0,.L1221	 #, tmp354,,
	sw	$22,%gp_rel(PC)($28)	 # tmp371, PC

.L1221:
	lw	$2,%gp_rel(R)($28)	 # R, R
	addiu	$2,$2,1	 # tmp360, R,
	sw	$2,%gp_rel(R)($28)	 # tmp360, R
	lw	$2,%gp_rel(t_flag)($28)	 # t_flag, t_flag
	beq	$2,$0,.L1229	 #, t_flag,,
	lbu	$3,%gp_rel(cpu_state)($28)	 # cpu_state, cpu_state

	lw	$2,%gp_rel(t_states)($28)	 # t_states, t_states
	addu	$2,$2,$16	 # tmp363, t_states, t
	sw	$2,%gp_rel(t_states)($28)	 # tmp363, t_states
	lw	$2,%gp_rel(t_end)($28)	 # t_end, t_end
	lw	$3,%gp_rel(PC)($28)	 # PC, PC
	beql	$3,$2,.L1222	 #, PC, t_end,
	sw	$0,%gp_rel(t_flag)($28)	 #, t_flag

.L1222:
	lbu	$3,%gp_rel(cpu_state)($28)	 # cpu_state, cpu_state
.L1229:
	li	$2,1			# 0x1	 # tmp367,
	beq	$3,$2,.L1230	 #, cpu_state, tmp367,
	lw	$4,%gp_rel(h_next)($28)	 # h_next.0, h_next

	lw	$31,44($sp)	 #,
	lw	$22,40($sp)	 #,
	lw	$21,36($sp)	 #,
	lw	$20,32($sp)	 #,
	lw	$19,28($sp)	 #,
	lw	$18,24($sp)	 #,
	lw	$17,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,48	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cpu
	.size	cpu, .-cpu
	.section	.rodata,code
	.align	2
	.type	op_sim.5528, @object
	.size	op_sim.5528, 1024
op_sim.5528:
	.word	op_nop
	.word	op_ldbcnn
	.word	op_ldbca
	.word	op_incbc
	.word	op_incb
	.word	op_decb
	.word	op_ldbn
	.word	op_rlca
	.word	op_exafaf
	.word	op_adhlbc
	.word	op_ldabc
	.word	op_decbc
	.word	op_incc
	.word	op_decc
	.word	op_ldcn
	.word	op_rrca
	.word	op_djnz
	.word	op_lddenn
	.word	op_lddea
	.word	op_incde
	.word	op_incd
	.word	op_decd
	.word	op_lddn
	.word	op_rla
	.word	op_jr
	.word	op_adhlde
	.word	op_ldade
	.word	op_decde
	.word	op_ince
	.word	op_dece
	.word	op_lden
	.word	op_rra
	.word	op_jrnz
	.word	op_ldhlnn
	.word	op_ldinhl
	.word	op_inchl
	.word	op_inch
	.word	op_dech
	.word	op_ldhn
	.word	op_daa
	.word	op_jrz
	.word	op_adhlhl
	.word	op_ldhlin
	.word	op_dechl
	.word	op_incl
	.word	op_decl
	.word	op_ldln
	.word	op_cpl
	.word	op_jrnc
	.word	op_ldspnn
	.word	op_ldnna
	.word	op_incsp
	.word	op_incihl
	.word	op_decihl
	.word	op_ldhl1
	.word	op_scf
	.word	op_jrc
	.word	op_adhlsp
	.word	op_ldann
	.word	op_decsp
	.word	op_inca
	.word	op_deca
	.word	op_ldan
	.word	op_ccf
	.word	op_ldbb
	.word	op_ldbc
	.word	op_ldbd
	.word	op_ldbe
	.word	op_ldbh
	.word	op_ldbl
	.word	op_ldbhl
	.word	op_ldba
	.word	op_ldcb
	.word	op_ldcc
	.word	op_ldcd
	.word	op_ldce
	.word	op_ldch
	.word	op_ldcl
	.word	op_ldchl
	.word	op_ldca
	.word	op_lddb
	.word	op_lddc
	.word	op_lddd
	.word	op_ldde
	.word	op_lddh
	.word	op_lddl
	.word	op_lddhl
	.word	op_ldda
	.word	op_ldeb
	.word	op_ldec
	.word	op_lded
	.word	op_ldee
	.word	op_ldeh
	.word	op_ldel
	.word	op_ldehl
	.word	op_ldea
	.word	op_ldhb
	.word	op_ldhc
	.word	op_ldhd
	.word	op_ldhe
	.word	op_ldhh
	.word	op_ldhl
	.word	op_ldhhl
	.word	op_ldha
	.word	op_ldlb
	.word	op_ldlc
	.word	op_ldld
	.word	op_ldle
	.word	op_ldlh
	.word	op_ldll
	.word	op_ldlhl
	.word	op_ldla
	.word	op_ldhlb
	.word	op_ldhlc
	.word	op_ldhld
	.word	op_ldhle
	.word	op_ldhlh
	.word	op_ldhll
	.word	op_halt
	.word	op_ldhla
	.word	op_ldab
	.word	op_ldac
	.word	op_ldad
	.word	op_ldae
	.word	op_ldah
	.word	op_ldal
	.word	op_ldahl
	.word	op_ldaa
	.word	op_addb
	.word	op_addc
	.word	op_addd
	.word	op_adde
	.word	op_addh
	.word	op_addl
	.word	op_addhl
	.word	op_adda
	.word	op_adcb
	.word	op_adcc
	.word	op_adcd
	.word	op_adce
	.word	op_adch
	.word	op_adcl
	.word	op_adchl
	.word	op_adca
	.word	op_subb
	.word	op_subc
	.word	op_subd
	.word	op_sube
	.word	op_subh
	.word	op_subl
	.word	op_subhl
	.word	op_suba
	.word	op_sbcb
	.word	op_sbcc
	.word	op_sbcd
	.word	op_sbce
	.word	op_sbch
	.word	op_sbcl
	.word	op_sbchl
	.word	op_sbca
	.word	op_andb
	.word	op_andc
	.word	op_andd
	.word	op_ande
	.word	op_andh
	.word	op_andl
	.word	op_andhl
	.word	op_anda
	.word	op_xorb
	.word	op_xorc
	.word	op_xord
	.word	op_xore
	.word	op_xorh
	.word	op_xorl
	.word	op_xorhl
	.word	op_xora
	.word	op_orb
	.word	op_orc
	.word	op_ord
	.word	op_ore
	.word	op_orh
	.word	op_orl
	.word	op_orhl
	.word	op_ora
	.word	op_cpb
	.word	op_cpc
	.word	op_cpd
	.word	op_cpe
	.word	op_cph
	.word	op_cplr
	.word	op_cphl
	.word	op_cpa
	.word	op_retnz
	.word	op_popbc
	.word	op_jpnz
	.word	op_jp
	.word	op_calnz
	.word	op_pushbc
	.word	op_addn
	.word	op_rst00
	.word	op_retz
	.word	op_ret
	.word	op_jpz
	.word	op_cb_handel
	.word	op_calz
	.word	op_call
	.word	op_adcn
	.word	op_rst08
	.word	op_retnc
	.word	op_popde
	.word	op_jpnc
	.word	op_out
	.word	op_calnc
	.word	op_pushde
	.word	op_subn
	.word	op_rst10
	.word	op_retc
	.word	op_exx
	.word	op_jpc
	.word	op_in
	.word	op_calc
	.word	op_dd_handel
	.word	op_sbcn
	.word	op_rst18
	.word	op_retpo
	.word	op_pophl
	.word	op_jppo
	.word	op_exsphl
	.word	op_calpo
	.word	op_pushhl
	.word	op_andn
	.word	op_rst20
	.word	op_retpe
	.word	op_jphl
	.word	op_jppe
	.word	op_exdehl
	.word	op_calpe
	.word	op_ed_handel
	.word	op_xorn
	.word	op_rst28
	.word	op_retp
	.word	op_popaf
	.word	op_jpp
	.word	op_di
	.word	op_calp
	.word	op_pushaf
	.word	op_orn
	.word	op_rst30
	.word	op_retm
	.word	op_ldsphl
	.word	op_jpm
	.word	op_ei
	.word	op_calm
	.word	op_fd_handel
	.word	op_cpn
	.word	op_rst38
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
