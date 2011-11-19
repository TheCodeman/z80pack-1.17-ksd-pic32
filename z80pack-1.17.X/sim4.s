	.file	1 "sim4.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed sim4.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/664612396/sim4.o -O1
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
	.ent	trap_ed
	.type	trap_ed, @function
trap_ed:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,5			# 0x5	 # tmp219,
	sw	$2,%gp_rel(cpu_error)($28)	 # tmp219, cpu_error
	sb	$0,%gp_rel(cpu_state)($28)	 #, cpu_state
	j	$31
	move	$2,$0	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	trap_ed
	.size	trap_ed, .-trap_ed
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_im0
	.type	op_im0, @function
op_im0:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	sw	$0,%gp_rel(int_mode)($28)	 #, int_mode
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_im0
	.size	op_im0, .-op_im0
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_im1
	.type	op_im1, @function
op_im1:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,1			# 0x1	 # tmp219,
	sw	$2,%gp_rel(int_mode)($28)	 # tmp219, int_mode
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_im1
	.size	op_im1, .-op_im1
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_im2
	.type	op_im2, @function
op_im2:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,2			# 0x2	 # tmp219,
	sw	$2,%gp_rel(int_mode)($28)	 # tmp219, int_mode
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_im2
	.size	op_im2, .-op_im2
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_reti
	.type	op_reti, @function
op_reti:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK.591, STACK
	lbu	$4,0($2)	 # i,* STACK.591
	addiu	$2,$2,1	 # STACK.592, STACK.591,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.592, STACK
	lui	$3,%hi(ram+65536)	 # tmp233,
	addiu	$3,$3,%lo(ram+65536)	 # tmp232, tmp233,
	sltu	$2,$2,$3	 # tmp231, STACK.592, tmp232
	bne	$2,$0,.L8	 #, tmp231,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.591, STACK

	lui	$2,%hi(ram)	 # tmp235,
	addiu	$2,$2,%lo(ram)	 # tmp234, tmp235,
	sw	$2,%gp_rel(STACK)($28)	 # tmp234, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.591, STACK
.L8:
	lbu	$3,0($2)	 # tmp236,* STACK.591
	sll	$3,$3,8	 # tmp237, tmp236,
	addu	$3,$3,$4	 # i, tmp237, i
	addiu	$2,$2,1	 # STACK.592, STACK.591,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.592, STACK
	lui	$4,%hi(ram+65536)	 # tmp240,
	addiu	$4,$4,%lo(ram+65536)	 # tmp239, tmp240,
	sltu	$2,$2,$4	 # tmp238, STACK.592, tmp239
	bne	$2,$0,.L9	 #, tmp238,,
	lui	$2,%hi(ram)	 # tmp244,

	addiu	$2,$2,%lo(ram)	 # tmp241, tmp242,
	sw	$2,%gp_rel(STACK)($28)	 # tmp241, STACK
	lui	$2,%hi(ram)	 # tmp244,
.L9:
	addiu	$2,$2,%lo(ram)	 # tmp243, tmp244,
	addu	$2,$2,$3	 # tmp245, tmp243, i
	sw	$2,%gp_rel(PC)($28)	 # tmp245, PC
	j	$31
	li	$2,14			# 0xe	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_reti
	.size	op_reti, .-op_reti
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_retn
	.type	op_retn, @function
op_retn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK.638, STACK
	lbu	$4,0($2)	 # i,* STACK.638
	addiu	$2,$2,1	 # STACK.639, STACK.638,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.639, STACK
	lui	$3,%hi(ram+65536)	 # tmp237,
	addiu	$3,$3,%lo(ram+65536)	 # tmp236, tmp237,
	sltu	$2,$2,$3	 # tmp235, STACK.639, tmp236
	bne	$2,$0,.L14	 #, tmp235,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.638, STACK

	lui	$2,%hi(ram)	 # tmp239,
	addiu	$2,$2,%lo(ram)	 # tmp238, tmp239,
	sw	$2,%gp_rel(STACK)($28)	 # tmp238, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.638, STACK
.L14:
	lbu	$3,0($2)	 # tmp240,* STACK.638
	sll	$3,$3,8	 # tmp241, tmp240,
	addu	$3,$3,$4	 # i, tmp241, i
	addiu	$2,$2,1	 # STACK.639, STACK.638,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.639, STACK
	lui	$4,%hi(ram+65536)	 # tmp244,
	addiu	$4,$4,%lo(ram+65536)	 # tmp243, tmp244,
	sltu	$2,$2,$4	 # tmp242, STACK.639, tmp243
	bne	$2,$0,.L15	 #, tmp242,,
	lui	$2,%hi(ram)	 # tmp248,

	addiu	$2,$2,%lo(ram)	 # tmp245, tmp246,
	sw	$2,%gp_rel(STACK)($28)	 # tmp245, STACK
	lui	$2,%hi(ram)	 # tmp248,
.L15:
	addiu	$2,$2,%lo(ram)	 # tmp247, tmp248,
	addu	$2,$2,$3	 # tmp249, tmp247, i
	sw	$2,%gp_rel(PC)($28)	 # tmp249, PC
	lbu	$2,%gp_rel(IFF)($28)	 # IFF.641, IFF
	andi	$3,$2,0x2	 # tmp250, IFF.641,
	beq	$3,$0,.L13
	nop
	 #, tmp250,,
	ori	$2,$2,0x1	 # tmp251, IFF.641,
	sb	$2,%gp_rel(IFF)($28)	 # tmp251, IFF
.L13:
	j	$31
	li	$2,14			# 0xe	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_retn
	.size	op_retn, .-op_retn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_neg
	.type	op_neg, @function
op_neg:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.644, A
	beq	$2,$0,.L17	 #, A.644,,
	li	$3,-2			# 0xfffffffe	 # tmp249,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # F.646, F,
	li	$4,128			# 0x80	 # tmp247,
	beq	$2,$4,.L18	 #, A.644, tmp247,
	sw	$3,%gp_rel(F)($28)	 # F.646, F

	j	.L27	 #
	li	$3,-5			# 0xfffffffb	 # tmp256,

.L17:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp249
	li	$4,-5			# 0xfffffffb	 # tmp252,
	and	$3,$3,$4	 # tmp253, tmp250, tmp252
	j	.L20	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L18:
	ori	$3,$3,0x4	 # tmp254, F.646,
	j	.L20	 #
	sw	$3,%gp_rel(F)($28)	 # tmp254, F

.L27:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.650, F, tmp256
	andi	$4,$2,0xf	 # tmp257, A.644,
	beq	$4,$0,.L20	 #, tmp257,,
	sw	$3,%gp_rel(F)($28)	 # F.650, F

	ori	$3,$3,0x10	 # tmp259, F.650,
	j	.L21	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L20:
	li	$3,-17			# 0xffffffef	 # tmp261,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L21:
	subu	$2,$0,$2	 # tmp264, A.644
	seb	$2,$2	 # D.4076, tmp264
	andi	$3,$2,0x00ff	 # A.655, D.4076
	sb	$3,%gp_rel(A)($28)	 # A.655, A
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$3,$0,.L22	 #, A.655,,
	ori	$4,$4,0x2	 # F.656, F,

	li	$3,-65			# 0xffffffbf	 # tmp266,
	and	$4,$4,$3	 # tmp267, F.656, tmp266
	j	.L23	 #
	sw	$4,%gp_rel(F)($28)	 # tmp267, F

.L22:
	ori	$4,$4,0x40	 # tmp268, F.656,
	sw	$4,%gp_rel(F)($28)	 # tmp268, F
.L23:
	bgezl	$2,.L24	 #, D.4076,
	li	$2,-129			# 0xffffff7f	 # tmp272,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp270, F,
	j	.L25	 #
	sw	$2,%gp_rel(F)($28)	 # tmp270, F

.L24:
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp273, F, tmp272
	sw	$2,%gp_rel(F)($28)	 # tmp273, F
.L25:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_neg
	.size	op_neg, .-op_neg
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldai
	.type	op_ldai, @function
op_ldai:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(I)($28)	 # I.526, I
	sb	$2,%gp_rel(A)($28)	 # I.526, A
	li	$3,-19			# 0xffffffed	 # tmp236,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.528, F, tmp236
	lbu	$4,%gp_rel(IFF)($28)	 # IFF, IFF
	andi	$4,$4,0x2	 # tmp238, IFF,
	beq	$4,$0,.L29	 #, tmp238,,
	li	$4,-5			# 0xfffffffb	 # tmp240,

	ori	$3,$3,0x4	 # tmp239, F.528,
	j	.L30	 #
	sw	$3,%gp_rel(F)($28)	 # tmp239, F

.L29:
	and	$3,$3,$4	 # tmp241, F.528, tmp240
	sw	$3,%gp_rel(F)($28)	 # tmp241, F
.L30:
	beql	$2,$0,.L31	 #, I.526,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp243,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.535, F, tmp243
	seb	$2,$2	 # I.526, I.526
	bgez	$2,.L33	 #, I.526,
	sw	$3,%gp_rel(F)($28)	 # F.535, F

	j	.L35	 #
	ori	$3,$3,0x80	 # tmp247, F.535,

.L31:
	ori	$2,$2,0x40	 # tmp246, F,
	j	.L33	 #
	sw	$2,%gp_rel(F)($28)	 # tmp246, F

.L35:
	j	.L34	 #
	sw	$3,%gp_rel(F)($28)	 # tmp247, F

.L33:
	li	$2,-129			# 0xffffff7f	 # tmp249,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp250, F, tmp249
	sw	$2,%gp_rel(F)($28)	 # tmp250, F
.L34:
	j	$31
	li	$2,9			# 0x9	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldai
	.size	op_ldai, .-op_ldai
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldar
	.type	op_ldar, @function
op_ldar:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(R)($28)	 # A.466, R
	sb	$2,%gp_rel(A)($28)	 # A.466, A
	li	$3,-19			# 0xffffffed	 # tmp238,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.468, F, tmp238
	lbu	$4,%gp_rel(IFF)($28)	 # IFF, IFF
	andi	$4,$4,0x2	 # tmp240, IFF,
	beq	$4,$0,.L37	 #, tmp240,,
	li	$4,-5			# 0xfffffffb	 # tmp242,

	ori	$3,$3,0x4	 # tmp241, F.468,
	j	.L38	 #
	sw	$3,%gp_rel(F)($28)	 # tmp241, F

.L37:
	and	$3,$3,$4	 # tmp243, F.468, tmp242
	sw	$3,%gp_rel(F)($28)	 # tmp243, F
.L38:
	beql	$2,$0,.L39	 #, A.466,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp245,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.475, F, tmp245
	seb	$2,$2	 # A.466, A.466
	bgez	$2,.L41	 #, A.466,
	sw	$3,%gp_rel(F)($28)	 # F.475, F

	j	.L43	 #
	ori	$3,$3,0x80	 # tmp249, F.475,

.L39:
	ori	$2,$2,0x40	 # tmp248, F,
	j	.L41	 #
	sw	$2,%gp_rel(F)($28)	 # tmp248, F

.L43:
	j	.L42	 #
	sw	$3,%gp_rel(F)($28)	 # tmp249, F

.L41:
	li	$2,-129			# 0xffffff7f	 # tmp251,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp252, F, tmp251
	sw	$2,%gp_rel(F)($28)	 # tmp252, F
.L42:
	j	$31
	li	$2,9			# 0x9	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldar
	.size	op_ldar, .-op_ldar
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldia
	.type	op_ldia, @function
op_ldia:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	sb	$2,%gp_rel(I)($28)	 # A, I
	j	$31
	li	$2,9			# 0x9	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldia
	.size	op_ldia, .-op_ldia
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldra
	.type	op_ldra, @function
op_ldra:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A, A
	sw	$2,%gp_rel(R)($28)	 # A, R
	j	$31
	li	$2,9			# 0x9	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldra
	.size	op_ldra, .-op_ldra
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbcinn
	.type	op_ldbcinn, @function
op_ldbcinn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.594, PC
	lbu	$4,0($2)	 # tmp233,* PC.594
	lui	$3,%hi(ram)	 # tmp235,
	addiu	$3,$3,%lo(ram)	 # tmp234, tmp235,
	addu	$3,$3,$4	 # p, tmp234, tmp233
	addiu	$4,$2,1	 # PC.595, PC.594,
	sw	$4,%gp_rel(PC)($28)	 # PC.595, PC
	lbu	$4,1($2)	 # tmp236,
	sll	$4,$4,8	 # tmp237, tmp236,
	addu	$3,$3,$4	 # p, p, tmp237
	addiu	$2,$2,2	 # tmp238, PC.594,
	sw	$2,%gp_rel(PC)($28)	 # tmp238, PC
	lbu	$2,0($3)	 #,* p
	sb	$2,%gp_rel(C)($28)	 # tmp239, C
	lbu	$2,1($3)	 #,
	sb	$2,%gp_rel(B)($28)	 # tmp240, B
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbcinn
	.size	op_ldbcinn, .-op_ldbcinn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddeinn
	.type	op_lddeinn, @function
op_lddeinn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.481, PC
	lbu	$4,0($2)	 # tmp233,* PC.481
	lui	$3,%hi(ram)	 # tmp235,
	addiu	$3,$3,%lo(ram)	 # tmp234, tmp235,
	addu	$3,$3,$4	 # p, tmp234, tmp233
	addiu	$4,$2,1	 # PC.482, PC.481,
	sw	$4,%gp_rel(PC)($28)	 # PC.482, PC
	lbu	$4,1($2)	 # tmp236,
	sll	$4,$4,8	 # tmp237, tmp236,
	addu	$3,$3,$4	 # p, p, tmp237
	addiu	$2,$2,2	 # tmp238, PC.481,
	sw	$2,%gp_rel(PC)($28)	 # tmp238, PC
	lbu	$2,0($3)	 #,* p
	sb	$2,%gp_rel(E)($28)	 # tmp239, E
	lbu	$2,1($3)	 #,
	sb	$2,%gp_rel(D)($28)	 # tmp240, D
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddeinn
	.size	op_lddeinn, .-op_lddeinn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldspinn
	.type	op_ldspinn, @function
op_ldspinn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.270, PC
	lbu	$5,0($2)	 # tmp239,* PC.270
	lui	$4,%hi(ram)	 # tmp241,
	addiu	$4,$4,%lo(ram)	 # tmp240, tmp241,
	addu	$5,$4,$5	 # p, tmp240, tmp239
	addiu	$3,$2,1	 # PC.271, PC.270,
	sw	$3,%gp_rel(PC)($28)	 # PC.271, PC
	lbu	$3,1($2)	 # tmp242,
	sll	$3,$3,8	 # tmp243, tmp242,
	addu	$3,$5,$3	 # p, p, tmp243
	addiu	$2,$2,2	 # tmp244, PC.270,
	sw	$2,%gp_rel(PC)($28)	 # tmp244, PC
	lbu	$2,0($3)	 # tmp245,* p
	addu	$4,$4,$2	 # tmp246, tmp240, tmp245
	lbu	$2,1($3)	 # tmp249,
	sll	$2,$2,8	 # tmp250, tmp249,
	addu	$4,$4,$2	 # tmp251, tmp246, tmp250
	sw	$4,%gp_rel(STACK)($28)	 # tmp251, STACK
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldspinn
	.size	op_ldspinn, .-op_ldspinn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldinbc
	.type	op_ldinbc, @function
op_ldinbc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.663, PC
	lbu	$4,0($2)	 # tmp233,* PC.663
	lui	$3,%hi(ram)	 # tmp235,
	addiu	$3,$3,%lo(ram)	 # tmp234, tmp235,
	addu	$3,$3,$4	 # p, tmp234, tmp233
	addiu	$4,$2,1	 # PC.664, PC.663,
	sw	$4,%gp_rel(PC)($28)	 # PC.664, PC
	lbu	$4,1($2)	 # tmp236,
	sll	$4,$4,8	 # tmp237, tmp236,
	addu	$3,$3,$4	 # p, p, tmp237
	addiu	$2,$2,2	 # tmp238, PC.663,
	sw	$2,%gp_rel(PC)($28)	 # tmp238, PC
	lbu	$2,%gp_rel(C)($28)	 #, C
	sb	$2,0($3)	 # C,* p
	lbu	$2,%gp_rel(B)($28)	 #, B
	sb	$2,1($3)	 # B,
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldinbc
	.size	op_ldinbc, .-op_ldinbc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldinde
	.type	op_ldinde, @function
op_ldinde:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.541, PC
	lbu	$4,0($2)	 # tmp233,* PC.541
	lui	$3,%hi(ram)	 # tmp235,
	addiu	$3,$3,%lo(ram)	 # tmp234, tmp235,
	addu	$3,$3,$4	 # p, tmp234, tmp233
	addiu	$4,$2,1	 # PC.542, PC.541,
	sw	$4,%gp_rel(PC)($28)	 # PC.542, PC
	lbu	$4,1($2)	 # tmp236,
	sll	$4,$4,8	 # tmp237, tmp236,
	addu	$3,$3,$4	 # p, p, tmp237
	addiu	$2,$2,2	 # tmp238, PC.541,
	sw	$2,%gp_rel(PC)($28)	 # tmp238, PC
	lbu	$2,%gp_rel(E)($28)	 #, E
	sb	$2,0($3)	 # E,* p
	lbu	$2,%gp_rel(D)($28)	 #, D
	sb	$2,1($3)	 # D,
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldinde
	.size	op_ldinde, .-op_ldinde
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldinsp
	.type	op_ldinsp, @function
op_ldinsp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.319, PC
	lbu	$5,0($2)	 # tmp238,* PC.319
	lui	$4,%hi(ram)	 # tmp240,
	addiu	$4,$4,%lo(ram)	 # tmp239, tmp240,
	addu	$5,$4,$5	 # p, tmp239, tmp238
	addiu	$3,$2,1	 # PC.320, PC.319,
	sw	$3,%gp_rel(PC)($28)	 # PC.320, PC
	lbu	$3,1($2)	 # tmp241,
	sll	$3,$3,8	 # tmp242, tmp241,
	addu	$3,$5,$3	 # p, p, tmp242
	addiu	$2,$2,2	 # tmp243, PC.319,
	sw	$2,%gp_rel(PC)($28)	 # tmp243, PC
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	subu	$2,$2,$4	 # i, STACK, tmp239
	sb	$2,0($3)	 # i,* p
	sra	$2,$2,8	 # tmp247, i,
	sb	$2,1($3)	 # tmp247,
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldinsp
	.size	op_ldinsp, .-op_ldinsp
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adchb
	.type	op_adchb, @function
op_adchb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$8,%gp_rel(F)($28)	 # F.597, F
	andi	$6,$8,0x1	 # carry, F.597,
	lbu	$2,%gp_rel(L)($28)	 # L.598, L
	lbu	$7,%gp_rel(C)($28)	 # C.599, C
	addu	$5,$2,$6	 # tmp277, L.598, carry
	addu	$5,$5,$7	 # tmp278, tmp277, C.599
	slt	$5,$5,256	 # tmp280, tmp278,
	xori	$5,$5,0x1	 # lcarry, tmp280,
	lbu	$3,%gp_rel(H)($28)	 # H.601, H
	lbu	$4,%gp_rel(B)($28)	 # B.602, B
	andi	$10,$4,0xf	 # tmp281, B.602,
	andi	$9,$3,0xf	 # tmp282, H.601,
	addu	$9,$10,$9	 # tmp283, tmp281, tmp282
	addu	$9,$9,$5	 # tmp284, tmp283, lcarry
	slt	$9,$9,16	 # tmp285, tmp284,
	bne	$9,$0,.L53	 #, tmp285,,
	li	$9,-17			# 0xffffffef	 # tmp287,

	ori	$8,$8,0x10	 # tmp286, F.597,
	j	.L54	 #
	sw	$8,%gp_rel(F)($28)	 # tmp286, F

.L53:
	and	$8,$8,$9	 # tmp288, F.597, tmp287
	sw	$8,%gp_rel(F)($28)	 # tmp288, F
.L54:
	sll	$8,$3,8	 # tmp289, H.601,
	addu	$2,$2,$8	 # tmp291, L.598, tmp289
	seh	$2,$2	 # tmp292, tmp291
	sll	$8,$4,8	 # tmp293, B.602,
	addu	$7,$7,$8	 # tmp295, C.599, tmp293
	seh	$7,$7	 # tmp296, tmp295
	addu	$2,$2,$7	 # tmp297, tmp292, tmp296
	addu	$2,$2,$6	 # i, tmp297, carry
	li	$6,32768			# 0x8000	 # tmp299,
	addu	$6,$2,$6	 # tmp298, i, tmp299
	li	$7,65536			# 0x10000	 # tmp301,
	sltu	$6,$6,$7	 # tmp300, tmp298, tmp301
	bne	$6,$0,.L55	 #, tmp300,,
	li	$6,-5			# 0xfffffffb	 # tmp305,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x4	 # tmp303, F,
	j	.L56	 #
	sw	$6,%gp_rel(F)($28)	 # tmp303, F

.L55:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp306, F, tmp305
	sw	$6,%gp_rel(F)($28)	 # tmp306, F
.L56:
	addu	$3,$4,$3	 # tmp307, B.602, H.601
	addu	$5,$3,$5	 # tmp308, tmp307, lcarry
	slt	$5,$5,256	 # tmp309, tmp308,
	bne	$5,$0,.L57	 #, tmp309,,
	li	$3,-2			# 0xfffffffe	 # tmp313,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp311, F,
	j	.L58	 #
	sw	$3,%gp_rel(F)($28)	 # tmp311, F

.L57:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp314, F, tmp313
	sw	$3,%gp_rel(F)($28)	 # tmp314, F
.L58:
	andi	$3,$2,0xffff	 # tmp315, i,
	beq	$3,$0,.L59	 #, tmp315,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp317,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp318, F, tmp317
	j	.L60	 #
	sw	$3,%gp_rel(F)($28)	 # tmp318, F

.L59:
	ori	$3,$3,0x40	 # tmp320, F,
	sw	$3,%gp_rel(F)($28)	 # tmp320, F
.L60:
	ext	$3,$2,8,8	 # H.615, i,,
	sb	$3,%gp_rel(H)($28)	 # H.615, H
	sb	$2,%gp_rel(L)($28)	 # i, L
	li	$2,-3			# 0xfffffffd	 # tmp323,
	lw	$4,%gp_rel(F)($28)	 # F, F
	seb	$3,$3	 # H.615, H.615
	bgez	$3,.L61	 #, H.615,
	and	$2,$4,$2	 # F.617, F, tmp323

	ori	$2,$2,0x80	 # tmp325, F.617,
	j	.L62	 #
	sw	$2,%gp_rel(F)($28)	 # tmp325, F

.L61:
	li	$4,-129			# 0xffffff7f	 # tmp326,
	and	$2,$2,$4	 # tmp327, F.617, tmp326
	sw	$2,%gp_rel(F)($28)	 # tmp327, F
.L62:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adchb
	.size	op_adchb, .-op_adchb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adchd
	.type	op_adchd, @function
op_adchd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$8,%gp_rel(F)($28)	 # F.484, F
	andi	$6,$8,0x1	 # carry, F.484,
	lbu	$2,%gp_rel(L)($28)	 # L.485, L
	lbu	$7,%gp_rel(E)($28)	 # E.486, E
	addu	$5,$2,$6	 # tmp277, L.485, carry
	addu	$5,$5,$7	 # tmp278, tmp277, E.486
	slt	$5,$5,256	 # tmp280, tmp278,
	xori	$5,$5,0x1	 # lcarry, tmp280,
	lbu	$3,%gp_rel(H)($28)	 # H.488, H
	lbu	$4,%gp_rel(D)($28)	 # D.489, D
	andi	$10,$4,0xf	 # tmp281, D.489,
	andi	$9,$3,0xf	 # tmp282, H.488,
	addu	$9,$10,$9	 # tmp283, tmp281, tmp282
	addu	$9,$9,$5	 # tmp284, tmp283, lcarry
	slt	$9,$9,16	 # tmp285, tmp284,
	bne	$9,$0,.L64	 #, tmp285,,
	li	$9,-17			# 0xffffffef	 # tmp287,

	ori	$8,$8,0x10	 # tmp286, F.484,
	j	.L65	 #
	sw	$8,%gp_rel(F)($28)	 # tmp286, F

.L64:
	and	$8,$8,$9	 # tmp288, F.484, tmp287
	sw	$8,%gp_rel(F)($28)	 # tmp288, F
.L65:
	sll	$8,$3,8	 # tmp289, H.488,
	addu	$2,$2,$8	 # tmp291, L.485, tmp289
	seh	$2,$2	 # tmp292, tmp291
	sll	$8,$4,8	 # tmp293, D.489,
	addu	$7,$7,$8	 # tmp295, E.486, tmp293
	seh	$7,$7	 # tmp296, tmp295
	addu	$2,$2,$7	 # tmp297, tmp292, tmp296
	addu	$2,$2,$6	 # i, tmp297, carry
	li	$6,32768			# 0x8000	 # tmp299,
	addu	$6,$2,$6	 # tmp298, i, tmp299
	li	$7,65536			# 0x10000	 # tmp301,
	sltu	$6,$6,$7	 # tmp300, tmp298, tmp301
	bne	$6,$0,.L66	 #, tmp300,,
	li	$6,-5			# 0xfffffffb	 # tmp305,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x4	 # tmp303, F,
	j	.L67	 #
	sw	$6,%gp_rel(F)($28)	 # tmp303, F

.L66:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp306, F, tmp305
	sw	$6,%gp_rel(F)($28)	 # tmp306, F
.L67:
	addu	$3,$4,$3	 # tmp307, D.489, H.488
	addu	$5,$3,$5	 # tmp308, tmp307, lcarry
	slt	$5,$5,256	 # tmp309, tmp308,
	bne	$5,$0,.L68	 #, tmp309,,
	li	$3,-2			# 0xfffffffe	 # tmp313,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp311, F,
	j	.L69	 #
	sw	$3,%gp_rel(F)($28)	 # tmp311, F

.L68:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp314, F, tmp313
	sw	$3,%gp_rel(F)($28)	 # tmp314, F
.L69:
	andi	$3,$2,0xffff	 # tmp315, i,
	beq	$3,$0,.L70	 #, tmp315,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp317,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp318, F, tmp317
	j	.L71	 #
	sw	$3,%gp_rel(F)($28)	 # tmp318, F

.L70:
	ori	$3,$3,0x40	 # tmp320, F,
	sw	$3,%gp_rel(F)($28)	 # tmp320, F
.L71:
	ext	$3,$2,8,8	 # H.502, i,,
	sb	$3,%gp_rel(H)($28)	 # H.502, H
	sb	$2,%gp_rel(L)($28)	 # i, L
	li	$2,-3			# 0xfffffffd	 # tmp323,
	lw	$4,%gp_rel(F)($28)	 # F, F
	seb	$3,$3	 # H.502, H.502
	bgez	$3,.L72	 #, H.502,
	and	$2,$4,$2	 # F.504, F, tmp323

	ori	$2,$2,0x80	 # tmp325, F.504,
	j	.L73	 #
	sw	$2,%gp_rel(F)($28)	 # tmp325, F

.L72:
	li	$4,-129			# 0xffffff7f	 # tmp326,
	and	$2,$2,$4	 # tmp327, F.504, tmp326
	sw	$2,%gp_rel(F)($28)	 # tmp327, F
.L73:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adchd
	.size	op_adchd, .-op_adchd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adchh
	.type	op_adchh, @function
op_adchh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F.368, F
	andi	$6,$2,0x1	 # carry, F.368,
	lbu	$4,%gp_rel(L)($28)	 # L.369, L
	addu	$5,$4,$6	 # tmp266, L.369, carry
	addu	$5,$5,$4	 # tmp267, tmp266, L.369
	slt	$5,$5,256	 # tmp269, tmp267,
	xori	$5,$5,0x1	 # lcarry, tmp269,
	lbu	$3,%gp_rel(H)($28)	 # H.371, H
	andi	$7,$3,0xf	 # D.3395, H.371,
	sll	$7,$7,1	 # tmp270, D.3395,
	addu	$7,$7,$5	 # tmp271, tmp270, lcarry
	slt	$7,$7,16	 # tmp272, tmp271,
	bne	$7,$0,.L75	 #, tmp272,,
	li	$7,-17			# 0xffffffef	 # tmp274,

	ori	$2,$2,0x10	 # tmp273, F.368,
	j	.L76	 #
	sw	$2,%gp_rel(F)($28)	 # tmp273, F

.L75:
	and	$2,$2,$7	 # tmp275, F.368, tmp274
	sw	$2,%gp_rel(F)($28)	 # tmp275, F
.L76:
	sll	$2,$3,8	 # tmp276, H.371,
	addu	$2,$4,$2	 # tmp278, L.369, tmp276
	seh	$2,$2	 # tmp279, tmp278
	sll	$2,$2,1	 # tmp280, tmp279,
	addu	$2,$2,$6	 # i, tmp280, carry
	li	$4,32768			# 0x8000	 # tmp282,
	addu	$4,$2,$4	 # tmp281, i, tmp282
	li	$6,65536			# 0x10000	 # tmp284,
	sltu	$4,$4,$6	 # tmp283, tmp281, tmp284
	bne	$4,$0,.L77	 #, tmp283,,
	li	$4,-5			# 0xfffffffb	 # tmp288,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp286, F,
	j	.L78	 #
	sw	$4,%gp_rel(F)($28)	 # tmp286, F

.L77:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$4,$6,$4	 # tmp289, F, tmp288
	sw	$4,%gp_rel(F)($28)	 # tmp289, F
.L78:
	sll	$3,$3,1	 # tmp290, H.371,
	addu	$5,$3,$5	 # tmp291, tmp290, lcarry
	slt	$5,$5,256	 # tmp292, tmp291,
	bne	$5,$0,.L79	 #, tmp292,,
	li	$3,-2			# 0xfffffffe	 # tmp296,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp294, F,
	j	.L80	 #
	sw	$3,%gp_rel(F)($28)	 # tmp294, F

.L79:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp297, F, tmp296
	sw	$3,%gp_rel(F)($28)	 # tmp297, F
.L80:
	andi	$3,$2,0xffff	 # tmp298, i,
	beq	$3,$0,.L81	 #, tmp298,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp300,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp301, F, tmp300
	j	.L82	 #
	sw	$3,%gp_rel(F)($28)	 # tmp301, F

.L81:
	ori	$3,$3,0x40	 # tmp303, F,
	sw	$3,%gp_rel(F)($28)	 # tmp303, F
.L82:
	ext	$3,$2,8,8	 # H.384, i,,
	sb	$3,%gp_rel(H)($28)	 # H.384, H
	sb	$2,%gp_rel(L)($28)	 # i, L
	li	$2,-3			# 0xfffffffd	 # tmp306,
	lw	$4,%gp_rel(F)($28)	 # F, F
	seb	$3,$3	 # H.384, H.384
	bgez	$3,.L83	 #, H.384,
	and	$2,$4,$2	 # F.386, F, tmp306

	ori	$2,$2,0x80	 # tmp308, F.386,
	j	.L84	 #
	sw	$2,%gp_rel(F)($28)	 # tmp308, F

.L83:
	li	$4,-129			# 0xffffff7f	 # tmp309,
	and	$2,$2,$4	 # tmp310, F.386, tmp309
	sw	$2,%gp_rel(F)($28)	 # tmp310, F
.L84:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adchh
	.size	op_adchh, .-op_adchh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adchs
	.type	op_adchs, @function
op_adchs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$8,%gp_rel(F)($28)	 # F.275, F
	andi	$6,$8,0x1	 # carry, F.275,
	lbu	$3,%gp_rel(H)($28)	 # H.276, H
	lbu	$4,%gp_rel(L)($28)	 # L.277, L
	sll	$2,$3,8	 # tmp281, H.276,
	addu	$2,$4,$2	 # tmp283, L.277, tmp281
	lui	$5,%hi(ram)	 # tmp287,
	addiu	$5,$5,%lo(ram)	 # tmp286, tmp287,
	lw	$7,%gp_rel(STACK)($28)	 # STACK, STACK
	subu	$5,$7,$5	 # tmp289, STACK, tmp286
	andi	$5,$5,0xffff	 # D.3163, tmp289
	seh	$7,$5	 # sp, D.3163
	addu	$4,$4,$6	 # tmp290, L.277, carry
	andi	$5,$5,0xff	 # tmp291, D.3163,
	addu	$4,$4,$5	 # tmp292, tmp290, tmp291
	slt	$4,$4,256	 # tmp294, tmp292,
	xori	$4,$4,0x1	 # lcarry, tmp294,
	sra	$5,$7,8	 # D.3173, sp,
	andi	$9,$3,0xf	 # tmp296, H.276,
	addu	$9,$4,$9	 # tmp297, lcarry, tmp296
	andi	$10,$5,0xf	 # tmp299, D.3173,
	addu	$9,$9,$10	 # tmp300, tmp297, tmp299
	slt	$9,$9,16	 # tmp301, tmp300,
	bne	$9,$0,.L86	 #, tmp301,,
	seh	$2,$2	 # hl, tmp283

	ori	$8,$8,0x10	 # tmp302, F.275,
	j	.L87	 #
	sw	$8,%gp_rel(F)($28)	 # tmp302, F

.L86:
	li	$9,-17			# 0xffffffef	 # tmp303,
	and	$8,$8,$9	 # tmp304, F.275, tmp303
	sw	$8,%gp_rel(F)($28)	 # tmp304, F
.L87:
	addu	$2,$2,$7	 # tmp305, hl, sp
	addu	$2,$2,$6	 # i, tmp305, carry
	li	$6,32768			# 0x8000	 # tmp307,
	addu	$6,$2,$6	 # tmp306, i, tmp307
	li	$7,65536			# 0x10000	 # tmp309,
	sltu	$6,$6,$7	 # tmp308, tmp306, tmp309
	bne	$6,$0,.L88	 #, tmp308,,
	li	$6,-5			# 0xfffffffb	 # tmp313,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x4	 # tmp311, F,
	j	.L89	 #
	sw	$6,%gp_rel(F)($28)	 # tmp311, F

.L88:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp314, F, tmp313
	sw	$6,%gp_rel(F)($28)	 # tmp314, F
.L89:
	addu	$3,$5,$3	 # tmp315, D.3173, H.276
	addu	$4,$3,$4	 # tmp316, tmp315, lcarry
	slt	$4,$4,256	 # tmp317, tmp316,
	bne	$4,$0,.L90	 #, tmp317,,
	li	$3,-2			# 0xfffffffe	 # tmp321,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp319, F,
	j	.L91	 #
	sw	$3,%gp_rel(F)($28)	 # tmp319, F

.L90:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp322, F, tmp321
	sw	$3,%gp_rel(F)($28)	 # tmp322, F
.L91:
	andi	$3,$2,0xffff	 # tmp323, i,
	beq	$3,$0,.L92	 #, tmp323,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp325,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp326, F, tmp325
	j	.L93	 #
	sw	$3,%gp_rel(F)($28)	 # tmp326, F

.L92:
	ori	$3,$3,0x40	 # tmp328, F,
	sw	$3,%gp_rel(F)($28)	 # tmp328, F
.L93:
	ext	$3,$2,8,8	 # H.295, i,,
	sb	$3,%gp_rel(H)($28)	 # H.295, H
	sb	$2,%gp_rel(L)($28)	 # i, L
	li	$2,-3			# 0xfffffffd	 # tmp331,
	lw	$4,%gp_rel(F)($28)	 # F, F
	seb	$3,$3	 # H.295, H.295
	bgez	$3,.L94	 #, H.295,
	and	$2,$4,$2	 # F.297, F, tmp331

	ori	$2,$2,0x80	 # tmp333, F.297,
	j	.L95	 #
	sw	$2,%gp_rel(F)($28)	 # tmp333, F

.L94:
	li	$4,-129			# 0xffffff7f	 # tmp334,
	and	$2,$2,$4	 # tmp335, F.297, tmp334
	sw	$2,%gp_rel(F)($28)	 # tmp335, F
.L95:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adchs
	.size	op_adchs, .-op_adchs
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbchb
	.type	op_sbchb, @function
op_sbchb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$7,%gp_rel(F)($28)	 # F.667, F
	andi	$3,$7,0x1	 # carry, F.667,
	lbu	$2,%gp_rel(C)($28)	 # C.668, C
	lbu	$6,%gp_rel(L)($28)	 # L.669, L
	lbu	$5,%gp_rel(B)($28)	 # B.671, B
	lbu	$4,%gp_rel(H)($28)	 # H.672, H
	addu	$8,$2,$3	 # tmp276, C.668, carry
	slt	$8,$6,$8	 # tmp278, L.669, tmp276
	andi	$9,$5,0xf	 # tmp279, B.671,
	addu	$8,$8,$9	 # tmp280, tmp278, tmp279
	andi	$9,$4,0xf	 # tmp281, H.672,
	slt	$8,$9,$8	 # tmp282, tmp281, tmp280
	beq	$8,$0,.L97	 #, tmp282,,
	li	$8,-17			# 0xffffffef	 # tmp284,

	ori	$7,$7,0x10	 # tmp283, F.667,
	j	.L98	 #
	sw	$7,%gp_rel(F)($28)	 # tmp283, F

.L97:
	and	$7,$7,$8	 # tmp285, F.667, tmp284
	sw	$7,%gp_rel(F)($28)	 # tmp285, F
.L98:
	sll	$4,$4,8	 # tmp286, H.672,
	addu	$4,$6,$4	 # tmp288, L.669, tmp286
	andi	$4,$4,0xffff	 # D.4126, tmp288
	sll	$5,$5,8	 # tmp289, B.671,
	addu	$5,$2,$5	 # tmp291, C.668, tmp289
	andi	$5,$5,0xffff	 # D.4130, tmp291
	seh	$6,$4	 # D.4126, D.4126
	seh	$2,$5	 # D.4130, D.4130
	subu	$2,$6,$2	 # tmp294, D.4126, D.4130
	subu	$2,$2,$3	 # i, tmp294, carry
	li	$6,32768			# 0x8000	 # tmp296,
	addu	$6,$2,$6	 # tmp295, i, tmp296
	li	$7,65536			# 0x10000	 # tmp298,
	sltu	$6,$6,$7	 # tmp297, tmp295, tmp298
	bne	$6,$0,.L99	 #, tmp297,,
	li	$6,-5			# 0xfffffffb	 # tmp302,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x4	 # tmp300, F,
	j	.L100	 #
	sw	$6,%gp_rel(F)($28)	 # tmp300, F

.L99:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp303, F, tmp302
	sw	$6,%gp_rel(F)($28)	 # tmp303, F
.L100:
	addu	$3,$5,$3	 # tmp304, D.4130, carry
	slt	$4,$4,$3	 # tmp305, D.4126, tmp304
	beq	$4,$0,.L101	 #, tmp305,,
	li	$3,-2			# 0xfffffffe	 # tmp309,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp307, F,
	j	.L102	 #
	sw	$3,%gp_rel(F)($28)	 # tmp307, F

.L101:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp310, F, tmp309
	sw	$3,%gp_rel(F)($28)	 # tmp310, F
.L102:
	andi	$3,$2,0xffff	 # tmp311, i,
	beq	$3,$0,.L103	 #, tmp311,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp313,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp314, F, tmp313
	j	.L104	 #
	sw	$3,%gp_rel(F)($28)	 # tmp314, F

.L103:
	ori	$3,$3,0x40	 # tmp316, F,
	sw	$3,%gp_rel(F)($28)	 # tmp316, F
.L104:
	ext	$3,$2,8,8	 # H.687, i,,
	sb	$3,%gp_rel(H)($28)	 # H.687, H
	sb	$2,%gp_rel(L)($28)	 # i, L
	lw	$2,%gp_rel(F)($28)	 # F, F
	seb	$3,$3	 # H.687, H.687
	bgez	$3,.L105	 #, H.687,
	ori	$2,$2,0x2	 # F.689, F,

	ori	$2,$2,0x80	 # tmp320, F.689,
	j	.L106	 #
	sw	$2,%gp_rel(F)($28)	 # tmp320, F

.L105:
	li	$3,-129			# 0xffffff7f	 # tmp321,
	and	$2,$2,$3	 # tmp322, F.689, tmp321
	sw	$2,%gp_rel(F)($28)	 # tmp322, F
.L106:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbchb
	.size	op_sbchb, .-op_sbchb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbchd
	.type	op_sbchd, @function
op_sbchd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$7,%gp_rel(F)($28)	 # F.545, F
	andi	$3,$7,0x1	 # carry, F.545,
	lbu	$2,%gp_rel(E)($28)	 # E.546, E
	lbu	$6,%gp_rel(L)($28)	 # L.547, L
	lbu	$5,%gp_rel(D)($28)	 # D.549, D
	lbu	$4,%gp_rel(H)($28)	 # H.550, H
	addu	$8,$2,$3	 # tmp276, E.546, carry
	slt	$8,$6,$8	 # tmp278, L.547, tmp276
	andi	$9,$5,0xf	 # tmp279, D.549,
	addu	$8,$8,$9	 # tmp280, tmp278, tmp279
	andi	$9,$4,0xf	 # tmp281, H.550,
	slt	$8,$9,$8	 # tmp282, tmp281, tmp280
	beq	$8,$0,.L108	 #, tmp282,,
	li	$8,-17			# 0xffffffef	 # tmp284,

	ori	$7,$7,0x10	 # tmp283, F.545,
	j	.L109	 #
	sw	$7,%gp_rel(F)($28)	 # tmp283, F

.L108:
	and	$7,$7,$8	 # tmp285, F.545, tmp284
	sw	$7,%gp_rel(F)($28)	 # tmp285, F
.L109:
	sll	$4,$4,8	 # tmp286, H.550,
	addu	$4,$6,$4	 # tmp288, L.547, tmp286
	andi	$4,$4,0xffff	 # D.3820, tmp288
	sll	$5,$5,8	 # tmp289, D.549,
	addu	$5,$2,$5	 # tmp291, E.546, tmp289
	andi	$5,$5,0xffff	 # D.3824, tmp291
	seh	$6,$4	 # D.3820, D.3820
	seh	$2,$5	 # D.3824, D.3824
	subu	$2,$6,$2	 # tmp294, D.3820, D.3824
	subu	$2,$2,$3	 # i, tmp294, carry
	li	$6,32768			# 0x8000	 # tmp296,
	addu	$6,$2,$6	 # tmp295, i, tmp296
	li	$7,65536			# 0x10000	 # tmp298,
	sltu	$6,$6,$7	 # tmp297, tmp295, tmp298
	bne	$6,$0,.L110	 #, tmp297,,
	li	$6,-5			# 0xfffffffb	 # tmp302,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x4	 # tmp300, F,
	j	.L111	 #
	sw	$6,%gp_rel(F)($28)	 # tmp300, F

.L110:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp303, F, tmp302
	sw	$6,%gp_rel(F)($28)	 # tmp303, F
.L111:
	addu	$3,$5,$3	 # tmp304, D.3824, carry
	slt	$4,$4,$3	 # tmp305, D.3820, tmp304
	beq	$4,$0,.L112	 #, tmp305,,
	li	$3,-2			# 0xfffffffe	 # tmp309,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp307, F,
	j	.L113	 #
	sw	$3,%gp_rel(F)($28)	 # tmp307, F

.L112:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp310, F, tmp309
	sw	$3,%gp_rel(F)($28)	 # tmp310, F
.L113:
	andi	$3,$2,0xffff	 # tmp311, i,
	beq	$3,$0,.L114	 #, tmp311,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp313,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp314, F, tmp313
	j	.L115	 #
	sw	$3,%gp_rel(F)($28)	 # tmp314, F

.L114:
	ori	$3,$3,0x40	 # tmp316, F,
	sw	$3,%gp_rel(F)($28)	 # tmp316, F
.L115:
	ext	$3,$2,8,8	 # H.565, i,,
	sb	$3,%gp_rel(H)($28)	 # H.565, H
	sb	$2,%gp_rel(L)($28)	 # i, L
	lw	$2,%gp_rel(F)($28)	 # F, F
	seb	$3,$3	 # H.565, H.565
	bgez	$3,.L116	 #, H.565,
	ori	$2,$2,0x2	 # F.567, F,

	ori	$2,$2,0x80	 # tmp320, F.567,
	j	.L117	 #
	sw	$2,%gp_rel(F)($28)	 # tmp320, F

.L116:
	li	$3,-129			# 0xffffff7f	 # tmp321,
	and	$2,$2,$3	 # tmp322, F.567, tmp321
	sw	$2,%gp_rel(F)($28)	 # tmp322, F
.L117:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbchd
	.size	op_sbchd, .-op_sbchd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbchh
	.type	op_sbchh, @function
op_sbchh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.424, F
	andi	$3,$5,0x1	 # carry, F.424,
	lbu	$2,%gp_rel(L)($28)	 # L.425, L
	lbu	$4,%gp_rel(H)($28)	 # H.427, H
	andi	$6,$4,0xf	 # D.3530, H.427,
	addu	$7,$2,$3	 # tmp261, L.425, carry
	slt	$7,$2,$7	 # tmp263, L.425, tmp261
	addu	$7,$7,$6	 # tmp264, tmp263, D.3530
	slt	$6,$6,$7	 # tmp265, D.3530, tmp264
	beq	$6,$0,.L119	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp267,

	ori	$5,$5,0x10	 # tmp266, F.424,
	j	.L120	 #
	sw	$5,%gp_rel(F)($28)	 # tmp266, F

.L119:
	and	$5,$5,$6	 # tmp268, F.424, tmp267
	sw	$5,%gp_rel(F)($28)	 # tmp268, F
.L120:
	sll	$4,$4,8	 # tmp269, H.427,
	addu	$4,$2,$4	 # tmp271, L.425, tmp269
	subu	$2,$0,$3	 # i, carry
	li	$5,32768			# 0x8000	 # tmp273,
	addu	$5,$2,$5	 # tmp272, i, tmp273
	li	$6,65536			# 0x10000	 # tmp275,
	sltu	$5,$5,$6	 # tmp274, tmp272, tmp275
	bne	$5,$0,.L121	 #, tmp274,,
	andi	$4,$4,0xffff	 # D.3540, tmp271

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x4	 # tmp277, F,
	j	.L122	 #
	sw	$5,%gp_rel(F)($28)	 # tmp277, F

.L121:
	li	$5,-5			# 0xfffffffb	 # tmp279,
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp280, F, tmp279
	sw	$5,%gp_rel(F)($28)	 # tmp280, F
.L122:
	addu	$3,$4,$3	 # tmp281, D.3540, carry
	slt	$4,$4,$3	 # tmp282, D.3540, tmp281
	beq	$4,$0,.L123	 #, tmp282,,
	li	$3,-2			# 0xfffffffe	 # tmp286,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp284, F,
	j	.L124	 #
	sw	$3,%gp_rel(F)($28)	 # tmp284, F

.L123:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp287, F, tmp286
	sw	$3,%gp_rel(F)($28)	 # tmp287, F
.L124:
	andi	$3,$2,0xffff	 # tmp288, i,
	beq	$3,$0,.L125	 #, tmp288,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp290,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp291, F, tmp290
	j	.L126	 #
	sw	$3,%gp_rel(F)($28)	 # tmp291, F

.L125:
	ori	$3,$3,0x40	 # tmp293, F,
	sw	$3,%gp_rel(F)($28)	 # tmp293, F
.L126:
	sra	$3,$2,8	 # tmp294, i,
	andi	$3,$3,0x00ff	 # H.441, tmp294
	sb	$3,%gp_rel(H)($28)	 # H.441, H
	sb	$2,%gp_rel(L)($28)	 # i, L
	lw	$2,%gp_rel(F)($28)	 # F, F
	seb	$3,$3	 # H.441, H.441
	bgez	$3,.L127	 #, H.441,
	ori	$2,$2,0x2	 # F.443, F,

	ori	$2,$2,0x80	 # tmp297, F.443,
	j	.L128	 #
	sw	$2,%gp_rel(F)($28)	 # tmp297, F

.L127:
	li	$3,-129			# 0xffffff7f	 # tmp298,
	and	$2,$2,$3	 # tmp299, F.443, tmp298
	sw	$2,%gp_rel(F)($28)	 # tmp299, F
.L128:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbchh
	.size	op_sbchh, .-op_sbchh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sbchs
	.type	op_sbchs, @function
op_sbchs:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$6,%gp_rel(F)($28)	 # F.324, F
	andi	$3,$6,0x1	 # carry, F.324,
	lbu	$7,%gp_rel(H)($28)	 # H.325, H
	lbu	$8,%gp_rel(L)($28)	 # L.326, L
	sll	$5,$7,8	 # tmp278, H.325,
	addu	$5,$8,$5	 # tmp280, L.326, tmp278
	andi	$5,$5,0xffff	 # D.3280, tmp280
	lui	$4,%hi(ram)	 # tmp284,
	addiu	$4,$4,%lo(ram)	 # tmp283, tmp284,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	subu	$4,$2,$4	 # tmp286, STACK, tmp283
	andi	$4,$4,0xffff	 # D.3286, tmp286
	seh	$2,$4	 # sp, D.3286
	ext	$10,$2,8,4	 # tmp289, sp,,
	andi	$11,$4,0xff	 # tmp290, D.3286,
	addu	$11,$11,$3	 # tmp291, tmp290, carry
	slt	$8,$8,$11	 # tmp293, L.326, tmp291
	addu	$8,$10,$8	 # tmp294, tmp289, tmp293
	andi	$7,$7,0xf	 # tmp295, H.325,
	slt	$7,$7,$8	 # tmp296, tmp295, tmp294
	beq	$7,$0,.L130	 #, tmp296,,
	seh	$9,$5	 # hl, D.3280

	ori	$6,$6,0x10	 # tmp297, F.324,
	j	.L131	 #
	sw	$6,%gp_rel(F)($28)	 # tmp297, F

.L130:
	li	$7,-17			# 0xffffffef	 # tmp298,
	and	$6,$6,$7	 # tmp299, F.324, tmp298
	sw	$6,%gp_rel(F)($28)	 # tmp299, F
.L131:
	subu	$2,$9,$2	 # tmp300, hl, sp
	subu	$2,$2,$3	 # i, tmp300, carry
	li	$6,32768			# 0x8000	 # tmp302,
	addu	$6,$2,$6	 # tmp301, i, tmp302
	li	$7,65536			# 0x10000	 # tmp304,
	sltu	$6,$6,$7	 # tmp303, tmp301, tmp304
	bne	$6,$0,.L132	 #, tmp303,,
	li	$6,-5			# 0xfffffffb	 # tmp308,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x4	 # tmp306, F,
	j	.L133	 #
	sw	$6,%gp_rel(F)($28)	 # tmp306, F

.L132:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp309, F, tmp308
	sw	$6,%gp_rel(F)($28)	 # tmp309, F
.L133:
	addu	$3,$4,$3	 # tmp310, D.3286, carry
	slt	$5,$5,$3	 # tmp311, D.3280, tmp310
	beq	$5,$0,.L134	 #, tmp311,,
	li	$3,-2			# 0xfffffffe	 # tmp315,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp313, F,
	j	.L135	 #
	sw	$3,%gp_rel(F)($28)	 # tmp313, F

.L134:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp316, F, tmp315
	sw	$3,%gp_rel(F)($28)	 # tmp316, F
.L135:
	andi	$3,$2,0xffff	 # tmp317, i,
	beq	$3,$0,.L136	 #, tmp317,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp319,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp320, F, tmp319
	j	.L137	 #
	sw	$3,%gp_rel(F)($28)	 # tmp320, F

.L136:
	ori	$3,$3,0x40	 # tmp322, F,
	sw	$3,%gp_rel(F)($28)	 # tmp322, F
.L137:
	ext	$3,$2,8,8	 # H.345, i,,
	sb	$3,%gp_rel(H)($28)	 # H.345, H
	sb	$2,%gp_rel(L)($28)	 # i, L
	lw	$2,%gp_rel(F)($28)	 # F, F
	seb	$3,$3	 # H.345, H.345
	bgez	$3,.L138	 #, H.345,
	ori	$2,$2,0x2	 # F.347, F,

	ori	$2,$2,0x80	 # tmp326, F.347,
	j	.L139	 #
	sw	$2,%gp_rel(F)($28)	 # tmp326, F

.L138:
	li	$3,-129			# 0xffffff7f	 # tmp327,
	and	$2,$2,$3	 # tmp328, F.347, tmp327
	sw	$2,%gp_rel(F)($28)	 # tmp328, F
.L139:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sbchs
	.size	op_sbchs, .-op_sbchs
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldi
	.type	op_ldi, @function
op_ldi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$6,%gp_rel(D)($28)	 # D.253, D
	lbu	$3,%gp_rel(E)($28)	 # E.254, E
	lbu	$5,%gp_rel(H)($28)	 # H.255, H
	lbu	$2,%gp_rel(L)($28)	 # L.256, L
	sll	$7,$6,8	 # tmp251, D.253,
	addu	$7,$7,$3	 # tmp252, tmp251, E.254
	lui	$4,%hi(ram)	 # tmp250,
	addiu	$4,$4,%lo(ram)	 # tmp254, tmp250,
	addu	$7,$7,$4	 # tmp253, tmp252, tmp254
	sll	$8,$5,8	 # tmp256, H.255,
	addu	$8,$8,$2	 # tmp257, tmp256, L.256
	addu	$4,$8,$4	 # tmp258, tmp257, tmp254
	lbu	$4,0($4)	 #, ram
	sb	$4,0($7)	 # tmp260, ram
	addiu	$3,$3,1	 # tmp261, E.254,
	andi	$3,$3,0x00ff	 # E.257, tmp261
	bne	$3,$0,.L141	 #, E.257,,
	sb	$3,%gp_rel(E)($28)	 # E.257, E

	addiu	$6,$6,1	 # tmp262, D.253,
	sb	$6,%gp_rel(D)($28)	 # tmp262, D
.L141:
	addiu	$2,$2,1	 # tmp263, L.256,
	andi	$2,$2,0x00ff	 # L.259, tmp263
	bne	$2,$0,.L142	 #, L.259,,
	sb	$2,%gp_rel(L)($28)	 # L.259, L

	addiu	$5,$5,1	 # tmp264, H.255,
	sb	$5,%gp_rel(H)($28)	 # tmp264, H
.L142:
	lbu	$2,%gp_rel(C)($28)	 #, C
	addiu	$2,$2,-1	 # tmp266, C,
	andi	$2,$2,0x00ff	 # C.262, tmp266
	li	$3,255			# 0xff	 # tmp267,
	bne	$2,$3,.L143	 #, C.262, tmp267,
	sb	$2,%gp_rel(C)($28)	 # C.262, C

	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp269, B,
	j	.L144	 #
	sb	$2,%gp_rel(B)($28)	 # tmp269, B

.L143:
	lbu	$3,%gp_rel(B)($28)	 # tmp272, B
	or	$2,$2,$3	 # tmp273, C.262, tmp272
	beql	$2,$0,.L145	 #, tmp273,,
	li	$2,-5			# 0xfffffffb	 # tmp277,

.L144:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x4	 # tmp275, F,
	j	.L146	 #
	sw	$2,%gp_rel(F)($28)	 # tmp275, F

.L145:
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp278, F, tmp277
	sw	$2,%gp_rel(F)($28)	 # tmp278, F
.L146:
	li	$2,-19			# 0xffffffed	 # tmp280,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp281, F, tmp280
	sw	$2,%gp_rel(F)($28)	 # tmp281, F
	j	$31
	li	$2,16			# 0x10	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldi
	.size	op_ldi, .-op_ldi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldir
	.type	op_ldir, @function
op_ldir:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$8,%gp_rel(D)($28)	 # D, D
	sll	$8,$8,8	 # tmp350, D,
	lbu	$2,%gp_rel(E)($28)	 # E, E
	addu	$8,$8,$2	 # tmp352, tmp350, E
	lui	$2,%hi(ram)	 # tmp354,
	addiu	$2,$2,%lo(ram)	 # tmp353, tmp354,
	addu	$8,$2,$8	 # d, tmp353, tmp352
	lbu	$7,%gp_rel(H)($28)	 # H, H
	sll	$7,$7,8	 # tmp356, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$7,$7,$3	 # tmp358, tmp356, L
	addu	$7,$2,$7	 # s, tmp353, tmp358
	lbu	$2,%gp_rel(B)($28)	 # B, B
	sll	$2,$2,8	 # tmp362, B,
	lbu	$3,%gp_rel(C)($28)	 # C, C
	addu	$2,$2,$3	 # tmp365, tmp362, C
	addiu	$2,$2,-1	 # tmp367, tmp365,
	andi	$2,$2,0xffff	 # D.4341, tmp367
	addiu	$6,$7,1	 # tmp368, s,
	addu	$6,$6,$2	 # D.4346, tmp368, D.4341
	move	$4,$8	 # d, d
	move	$3,$7	 # s, s
.L148:
	lbu	$5,0($3)	 #,* s
	sb	$5,0($4)	 # tmp369,* d
	addiu	$3,$3,1	 # s, s,
	bne	$3,$6,.L148	 #, s, D.4346,
	addiu	$4,$4,1	 # d, d,

	addiu	$4,$2,1	 # D.4324, D.4341,
	addu	$5,$8,$4	 # d, d, D.4324
	addu	$7,$7,$4	 # s, s, D.4324
	sb	$0,%gp_rel(C)($28)	 #, C
	sb	$0,%gp_rel(B)($28)	 #, B
	lui	$3,%hi(ram)	 # tmp370,
	addiu	$3,$3,%lo(ram)	 # ram.129, tmp370,
	subu	$4,$5,$3	 # tmp371, d, ram.129
	sra	$4,$4,8	 # tmp372, tmp371,
	sb	$4,%gp_rel(D)($28)	 # tmp372, D
	andi	$4,$3,0x00ff	 # D.2821, ram.129
	subu	$5,$5,$4	 # tmp377, d, D.2821
	sb	$5,%gp_rel(E)($28)	 # tmp377, E
	subu	$3,$7,$3	 # tmp378, s, ram.129
	sra	$3,$3,8	 # tmp379, tmp378,
	sb	$3,%gp_rel(H)($28)	 # tmp379, H
	subu	$7,$7,$4	 # tmp381, s, D.2821
	sb	$7,%gp_rel(L)($28)	 # tmp381, L
	li	$3,-23			# 0xffffffe9	 # tmp383,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp384, F, tmp383
	sw	$3,%gp_rel(F)($28)	 # tmp384, F
	sll	$4,$2,2	 # tmp387, D.4341,
	sll	$3,$2,4	 # tmp388, D.4341,
	addu	$3,$4,$3	 # tmp389, tmp387, tmp388
	addu	$2,$3,$2	 # tmp390, tmp389, D.4341
	j	$31
	addiu	$2,$2,16	 #, tmp390,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldir
	.size	op_ldir, .-op_ldir
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldd
	.type	op_ldd, @function
op_ldd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$6,%gp_rel(D)($28)	 # D.188, D
	lbu	$3,%gp_rel(E)($28)	 # E.189, E
	lbu	$5,%gp_rel(H)($28)	 # H.190, H
	lbu	$2,%gp_rel(L)($28)	 # L.191, L
	sll	$7,$6,8	 # tmp251, D.188,
	addu	$7,$7,$3	 # tmp252, tmp251, E.189
	lui	$4,%hi(ram)	 # tmp250,
	addiu	$4,$4,%lo(ram)	 # tmp254, tmp250,
	addu	$7,$7,$4	 # tmp253, tmp252, tmp254
	sll	$8,$5,8	 # tmp256, H.190,
	addu	$8,$8,$2	 # tmp257, tmp256, L.191
	addu	$4,$8,$4	 # tmp258, tmp257, tmp254
	lbu	$4,0($4)	 #, ram
	sb	$4,0($7)	 # tmp260, ram
	addiu	$3,$3,-1	 # tmp261, E.189,
	andi	$3,$3,0x00ff	 # E.192, tmp261
	li	$4,255			# 0xff	 # tmp262,
	bne	$3,$4,.L151	 #, E.192, tmp262,
	sb	$3,%gp_rel(E)($28)	 # E.192, E

	addiu	$6,$6,-1	 # tmp263, D.188,
	sb	$6,%gp_rel(D)($28)	 # tmp263, D
.L151:
	addiu	$2,$2,-1	 # tmp264, L.191,
	andi	$2,$2,0x00ff	 # L.194, tmp264
	li	$3,255			# 0xff	 # tmp265,
	bne	$2,$3,.L152	 #, L.194, tmp265,
	sb	$2,%gp_rel(L)($28)	 # L.194, L

	addiu	$5,$5,-1	 # tmp266, H.190,
	sb	$5,%gp_rel(H)($28)	 # tmp266, H
.L152:
	lbu	$2,%gp_rel(C)($28)	 #, C
	addiu	$2,$2,-1	 # tmp268, C,
	andi	$2,$2,0x00ff	 # C.197, tmp268
	li	$3,255			# 0xff	 # tmp269,
	bne	$2,$3,.L153	 #, C.197, tmp269,
	sb	$2,%gp_rel(C)($28)	 # C.197, C

	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp271, B,
	j	.L154	 #
	sb	$2,%gp_rel(B)($28)	 # tmp271, B

.L153:
	lbu	$3,%gp_rel(B)($28)	 # tmp274, B
	or	$2,$2,$3	 # tmp275, C.197, tmp274
	beql	$2,$0,.L155	 #, tmp275,,
	li	$2,-5			# 0xfffffffb	 # tmp279,

.L154:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x4	 # tmp277, F,
	j	.L156	 #
	sw	$2,%gp_rel(F)($28)	 # tmp277, F

.L155:
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp280, F, tmp279
	sw	$2,%gp_rel(F)($28)	 # tmp280, F
.L156:
	li	$2,-19			# 0xffffffed	 # tmp282,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp283, F, tmp282
	sw	$2,%gp_rel(F)($28)	 # tmp283, F
	j	$31
	li	$2,16			# 0x10	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldd
	.size	op_ldd, .-op_ldd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddr
	.type	op_lddr, @function
op_lddr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$8,%gp_rel(D)($28)	 # D, D
	sll	$8,$8,8	 # tmp313, D,
	lbu	$2,%gp_rel(E)($28)	 # E, E
	addu	$8,$8,$2	 # tmp315, tmp313, E
	lui	$2,%hi(ram)	 # tmp317,
	addiu	$2,$2,%lo(ram)	 # tmp316, tmp317,
	addu	$8,$2,$8	 # d, tmp316, tmp315
	lbu	$7,%gp_rel(H)($28)	 # H, H
	sll	$7,$7,8	 # tmp319, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$7,$7,$3	 # tmp321, tmp319, L
	addu	$7,$2,$7	 # s, tmp316, tmp321
	lbu	$2,%gp_rel(B)($28)	 # B, B
	sll	$2,$2,8	 # tmp325, B,
	lbu	$3,%gp_rel(C)($28)	 # C, C
	addu	$2,$2,$3	 # tmp328, tmp325, C
	addiu	$2,$2,-1	 # tmp330, tmp328,
	andi	$2,$2,0xffff	 # D.4371, tmp330
	addiu	$6,$7,-1	 # tmp331, s,
	subu	$6,$6,$2	 # D.4375, tmp331, D.4371
	move	$4,$8	 # d, d
	move	$3,$7	 # s, s
.L158:
	lbu	$5,0($3)	 #,* s
	sb	$5,0($4)	 # tmp332,* d
	addiu	$3,$3,-1	 # s, s,
	bne	$3,$6,.L158	 #, s, D.4375,
	addiu	$4,$4,-1	 # d, d,

	nor	$4,$0,$2	 # D.4353, D.4371
	addu	$5,$8,$4	 # d, d, D.4353
	addu	$7,$7,$4	 # s, s, D.4353
	sb	$0,%gp_rel(C)($28)	 #, C
	sb	$0,%gp_rel(B)($28)	 #, B
	lui	$3,%hi(ram)	 # tmp333,
	addiu	$3,$3,%lo(ram)	 # ram.60, tmp333,
	subu	$4,$5,$3	 # tmp334, d, ram.60
	sra	$4,$4,8	 # tmp335, tmp334,
	sb	$4,%gp_rel(D)($28)	 # tmp335, D
	andi	$4,$3,0x00ff	 # D.2676, ram.60
	subu	$5,$5,$4	 # tmp340, d, D.2676
	sb	$5,%gp_rel(E)($28)	 # tmp340, E
	subu	$3,$7,$3	 # tmp341, s, ram.60
	sra	$3,$3,8	 # tmp342, tmp341,
	sb	$3,%gp_rel(H)($28)	 # tmp342, H
	subu	$7,$7,$4	 # tmp344, s, D.2676
	sb	$7,%gp_rel(L)($28)	 # tmp344, L
	li	$3,-23			# 0xffffffe9	 # tmp346,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp347, F, tmp346
	sw	$3,%gp_rel(F)($28)	 # tmp347, F
	sll	$4,$2,2	 # tmp350, D.4371,
	sll	$3,$2,4	 # tmp351, D.4371,
	addu	$3,$4,$3	 # tmp352, tmp350, tmp351
	addu	$2,$3,$2	 # tmp353, tmp352, D.4371
	j	$31
	addiu	$2,$2,16	 #, tmp353,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddr
	.size	op_lddr, .-op_lddr
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpi
	.type	op_cpi, @function
op_cpi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$5,%gp_rel(H)($28)	 # H.229, H
	lbu	$2,%gp_rel(L)($28)	 # L.230, L
	sll	$4,$5,8	 # tmp259, H.229,
	addu	$4,$4,$2	 # tmp260, tmp259, L.230
	lui	$3,%hi(ram)	 # tmp258,
	addiu	$3,$3,%lo(ram)	 # tmp262, tmp258,
	addu	$3,$4,$3	 # tmp261, tmp260, tmp262
	lbu	$3,0($3)	 # i, ram
	lbu	$4,%gp_rel(A)($28)	 # A.232, A
	andi	$7,$3,0xf	 # tmp263, i,
	andi	$6,$4,0xf	 # tmp264, A.232,
	slt	$6,$6,$7	 # tmp265, tmp264, tmp263
	beq	$6,$0,.L161	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp269,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x10	 # tmp267, F,
	j	.L162	 #
	sw	$6,%gp_rel(F)($28)	 # tmp267, F

.L161:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp270, F, tmp269
	sw	$6,%gp_rel(F)($28)	 # tmp270, F
.L162:
	subu	$3,$4,$3	 # tmp271, A.232, i
	andi	$3,$3,0x00ff	 # i, tmp271
	addiu	$2,$2,1	 # tmp272, L.230,
	andi	$2,$2,0x00ff	 # L.236, tmp272
	bne	$2,$0,.L163	 #, L.236,,
	sb	$2,%gp_rel(L)($28)	 # L.236, L

	addiu	$5,$5,1	 # tmp273, H.229,
	sb	$5,%gp_rel(H)($28)	 # tmp273, H
.L163:
	lbu	$2,%gp_rel(C)($28)	 #, C
	addiu	$2,$2,-1	 # tmp275, C,
	andi	$2,$2,0x00ff	 # C.239, tmp275
	li	$4,255			# 0xff	 # tmp276,
	bne	$2,$4,.L164	 #, C.239, tmp276,
	sb	$2,%gp_rel(C)($28)	 # C.239, C

	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp278, B,
	sb	$2,%gp_rel(B)($28)	 # tmp278, B
	lw	$4,%gp_rel(F)($28)	 # F, F
	j	.L165	 #
	ori	$4,$4,0x2	 # F.242, F,

.L164:
	lw	$4,%gp_rel(F)($28)	 # F, F
	lbu	$5,%gp_rel(B)($28)	 # tmp283, B
	or	$2,$2,$5	 # tmp284, C.239, tmp283
	beq	$2,$0,.L166	 #, tmp284,,
	ori	$4,$4,0x2	 # F.242, F,

.L165:
	ori	$4,$4,0x4	 # tmp285, F.242,
	j	.L167	 #
	sw	$4,%gp_rel(F)($28)	 # tmp285, F

.L166:
	li	$2,-5			# 0xfffffffb	 # tmp286,
	and	$4,$4,$2	 # tmp287, F.242, tmp286
	sw	$4,%gp_rel(F)($28)	 # tmp287, F
.L167:
	beq	$3,$0,.L168	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp289,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # F.247, F, tmp289
	seb	$3,$3	 # i, i
	bgez	$3,.L170	 #, i,
	sw	$2,%gp_rel(F)($28)	 # F.247, F

	j	.L172	 #
	ori	$2,$2,0x80	 # tmp293, F.247,

.L168:
	ori	$2,$2,0x40	 # tmp292, F,
	j	.L170	 #
	sw	$2,%gp_rel(F)($28)	 # tmp292, F

.L172:
	j	.L171	 #
	sw	$2,%gp_rel(F)($28)	 # tmp293, F

.L170:
	li	$2,-129			# 0xffffff7f	 # tmp295,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp296, F, tmp295
	sw	$2,%gp_rel(F)($28)	 # tmp296, F
.L171:
	j	$31
	li	$2,16			# 0x10	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpi
	.size	op_cpi, .-op_cpi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpir
	.type	op_cpir, @function
op_cpir:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(B)($28)	 # B, B
	sll	$3,$3,8	 # tmp312, B,
	lbu	$2,%gp_rel(C)($28)	 # C, C
	addu	$3,$3,$2	 # tmp315, tmp312, C
	andi	$3,$3,0xffff	 # i, tmp315
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp317, H,
	lbu	$5,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$5	 # tmp319, tmp317, L
	lui	$4,%hi(ram)	 # tmp321,
	addiu	$4,$4,%lo(ram)	 # tmp320, tmp321,
	addu	$4,$4,$2	 # s, tmp320, tmp319
	lbu	$6,%gp_rel(A)($28)	 # A.101, A
	li	$2,-21			# 0xffffffeb	 # t,
	lbu	$5,0($4)	 #,* s
.L184:
	subu	$5,$6,$5	 # tmp323, A.101, tmp322
	andi	$5,$5,0x00ff	 # d, tmp323
	addiu	$4,$4,1	 # s, s,
	addiu	$3,$3,-1	 # tmp324, i,
	andi	$3,$3,0xffff	 # i, tmp324
	beq	$3,$0,.L174	 #, i,,
	addiu	$2,$2,21	 # t, t,

	bnel	$5,$0,.L184	 #, d,,
	lbu	$5,0($4)	 #,* s

.L174:
	lw	$7,%gp_rel(F)($28)	 # F, F
	ori	$7,$7,0x2	 # F.103, F,
	srl	$6,$3,8	 # tmp326, i,
	sb	$6,%gp_rel(B)($28)	 # tmp326, B
	sb	$3,%gp_rel(C)($28)	 # i, C
	lui	$6,%hi(ram)	 # tmp329,
	addiu	$6,$6,%lo(ram)	 # tmp328, tmp329,
	subu	$8,$4,$6	 # tmp327, s, tmp328
	sra	$8,$8,8	 # tmp330, tmp327,
	sb	$8,%gp_rel(H)($28)	 # tmp330, H
	subu	$4,$4,$6	 # tmp335, s, tmp328
	beq	$3,$0,.L176	 #, i,,
	sb	$4,%gp_rel(L)($28)	 # tmp335, L

	ori	$7,$7,0x4	 # tmp336, F.103,
	j	.L177	 #
	sw	$7,%gp_rel(F)($28)	 # tmp336, F

.L176:
	li	$3,-5			# 0xfffffffb	 # tmp337,
	and	$7,$7,$3	 # tmp338, F.103, tmp337
	sw	$7,%gp_rel(F)($28)	 # tmp338, F
.L177:
	beq	$5,$0,.L178	 #, d,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp340,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.116, F, tmp340
	seb	$5,$5	 # d, d
	bgez	$5,.L180	 #, d,
	sw	$3,%gp_rel(F)($28)	 # F.116, F

	j	.L183	 #
	ori	$3,$3,0x80	 # tmp344, F.116,

.L178:
	ori	$3,$3,0x40	 # tmp343, F,
	j	.L180	 #
	sw	$3,%gp_rel(F)($28)	 # tmp343, F

.L183:
	j	.L181	 #
	sw	$3,%gp_rel(F)($28)	 # tmp344, F

.L180:
	li	$3,-129			# 0xffffff7f	 # tmp346,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp347, F, tmp346
	sw	$3,%gp_rel(F)($28)	 # tmp347, F
.L181:
	j	$31
	addiu	$2,$2,16	 #, t,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpir
	.size	op_cpir, .-op_cpir
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpdop
	.type	op_cpdop, @function
op_cpdop:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$5,%gp_rel(H)($28)	 # H.164, H
	lbu	$2,%gp_rel(L)($28)	 # L.165, L
	sll	$4,$5,8	 # tmp259, H.164,
	addu	$4,$4,$2	 # tmp260, tmp259, L.165
	lui	$3,%hi(ram)	 # tmp258,
	addiu	$3,$3,%lo(ram)	 # tmp262, tmp258,
	addu	$3,$4,$3	 # tmp261, tmp260, tmp262
	lbu	$3,0($3)	 # i, ram
	lbu	$4,%gp_rel(A)($28)	 # A.167, A
	andi	$7,$3,0xf	 # tmp263, i,
	andi	$6,$4,0xf	 # tmp264, A.167,
	slt	$6,$6,$7	 # tmp265, tmp264, tmp263
	beq	$6,$0,.L186	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp269,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x10	 # tmp267, F,
	j	.L187	 #
	sw	$6,%gp_rel(F)($28)	 # tmp267, F

.L186:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp270, F, tmp269
	sw	$6,%gp_rel(F)($28)	 # tmp270, F
.L187:
	subu	$3,$4,$3	 # tmp271, A.167, i
	andi	$3,$3,0x00ff	 # i, tmp271
	addiu	$2,$2,-1	 # tmp272, L.165,
	andi	$2,$2,0x00ff	 # L.171, tmp272
	li	$4,255			# 0xff	 # tmp273,
	bne	$2,$4,.L188	 #, L.171, tmp273,
	sb	$2,%gp_rel(L)($28)	 # L.171, L

	addiu	$5,$5,-1	 # tmp274, H.164,
	sb	$5,%gp_rel(H)($28)	 # tmp274, H
.L188:
	lbu	$2,%gp_rel(C)($28)	 #, C
	addiu	$2,$2,-1	 # tmp276, C,
	andi	$2,$2,0x00ff	 # C.174, tmp276
	li	$4,255			# 0xff	 # tmp277,
	bne	$2,$4,.L189	 #, C.174, tmp277,
	sb	$2,%gp_rel(C)($28)	 # C.174, C

	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp279, B,
	sb	$2,%gp_rel(B)($28)	 # tmp279, B
	lw	$4,%gp_rel(F)($28)	 # F, F
	j	.L190	 #
	ori	$4,$4,0x2	 # F.177, F,

.L189:
	lw	$4,%gp_rel(F)($28)	 # F, F
	lbu	$5,%gp_rel(B)($28)	 # tmp284, B
	or	$2,$2,$5	 # tmp285, C.174, tmp284
	beq	$2,$0,.L191	 #, tmp285,,
	ori	$4,$4,0x2	 # F.177, F,

.L190:
	ori	$4,$4,0x4	 # tmp286, F.177,
	j	.L192	 #
	sw	$4,%gp_rel(F)($28)	 # tmp286, F

.L191:
	li	$2,-5			# 0xfffffffb	 # tmp287,
	and	$4,$4,$2	 # tmp288, F.177, tmp287
	sw	$4,%gp_rel(F)($28)	 # tmp288, F
.L192:
	beq	$3,$0,.L193	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp290,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # F.182, F, tmp290
	seb	$3,$3	 # i, i
	bgez	$3,.L195	 #, i,
	sw	$2,%gp_rel(F)($28)	 # F.182, F

	j	.L197	 #
	ori	$2,$2,0x80	 # tmp294, F.182,

.L193:
	ori	$2,$2,0x40	 # tmp293, F,
	j	.L195	 #
	sw	$2,%gp_rel(F)($28)	 # tmp293, F

.L197:
	j	.L196	 #
	sw	$2,%gp_rel(F)($28)	 # tmp294, F

.L195:
	li	$2,-129			# 0xffffff7f	 # tmp296,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp297, F, tmp296
	sw	$2,%gp_rel(F)($28)	 # tmp297, F
.L196:
	j	$31
	li	$2,16			# 0x10	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpdop
	.size	op_cpdop, .-op_cpdop
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpdr
	.type	op_cpdr, @function
op_cpdr:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(B)($28)	 # B, B
	sll	$3,$3,8	 # tmp326, B,
	lbu	$2,%gp_rel(C)($28)	 # C, C
	addu	$3,$3,$2	 # tmp329, tmp326, C
	andi	$3,$3,0xffff	 # i, tmp329
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp331, H,
	lbu	$5,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$5	 # tmp333, tmp331, L
	lui	$4,%hi(ram)	 # tmp335,
	addiu	$4,$4,%lo(ram)	 # tmp334, tmp335,
	addu	$4,$4,$2	 # s, tmp334, tmp333
	lbu	$6,%gp_rel(A)($28)	 # A.32, A
	li	$2,-21			# 0xffffffeb	 # t,
	lbu	$5,0($4)	 #,* s
.L209:
	subu	$5,$6,$5	 # tmp337, A.32, tmp336
	andi	$5,$5,0x00ff	 # d, tmp337
	addiu	$4,$4,-1	 # s, s,
	addiu	$3,$3,-1	 # tmp338, i,
	andi	$3,$3,0xffff	 # i, tmp338
	beq	$3,$0,.L199	 #, i,,
	addiu	$2,$2,21	 # t, t,

	bnel	$5,$0,.L209	 #, d,,
	lbu	$5,0($4)	 #,* s

.L199:
	lw	$7,%gp_rel(F)($28)	 # F, F
	ori	$7,$7,0x2	 # F.34, F,
	srl	$6,$3,8	 # tmp340, i,
	sb	$6,%gp_rel(B)($28)	 # tmp340, B
	sb	$3,%gp_rel(C)($28)	 # i, C
	lui	$6,%hi(ram)	 # tmp343,
	addiu	$6,$6,%lo(ram)	 # tmp342, tmp343,
	subu	$8,$4,$6	 # tmp341, s, tmp342
	sra	$8,$8,8	 # tmp344, tmp341,
	sb	$8,%gp_rel(H)($28)	 # tmp344, H
	subu	$4,$4,$6	 # tmp349, s, tmp342
	beq	$3,$0,.L201	 #, i,,
	sb	$4,%gp_rel(L)($28)	 # tmp349, L

	ori	$7,$7,0x4	 # tmp350, F.34,
	j	.L202	 #
	sw	$7,%gp_rel(F)($28)	 # tmp350, F

.L201:
	li	$3,-5			# 0xfffffffb	 # tmp351,
	and	$7,$7,$3	 # tmp352, F.34, tmp351
	sw	$7,%gp_rel(F)($28)	 # tmp352, F
.L202:
	beq	$5,$0,.L203	 #, d,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp354,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.47, F, tmp354
	seb	$5,$5	 # d, d
	bgez	$5,.L205	 #, d,
	sw	$3,%gp_rel(F)($28)	 # F.47, F

	j	.L208	 #
	ori	$3,$3,0x80	 # tmp358, F.47,

.L203:
	ori	$3,$3,0x40	 # tmp357, F,
	j	.L205	 #
	sw	$3,%gp_rel(F)($28)	 # tmp357, F

.L208:
	j	.L206	 #
	sw	$3,%gp_rel(F)($28)	 # tmp358, F

.L205:
	li	$3,-129			# 0xffffff7f	 # tmp360,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp361, F, tmp360
	sw	$3,%gp_rel(F)($28)	 # tmp361, F
.L206:
	j	$31
	addiu	$2,$2,16	 #, t,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpdr
	.size	op_cpdr, .-op_cpdr
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_oprld
	.type	op_oprld, @function
op_oprld:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$4,%gp_rel(H)($28)	 # H, H
	sll	$4,$4,8	 # tmp255, H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	addu	$4,$4,$2	 # D.3351, tmp255, L
	lui	$2,%hi(ram)	 # tmp257,
	addiu	$2,$2,%lo(ram)	 # tmp259, tmp257,
	addu	$4,$4,$2	 # tmp258, D.3351, tmp259
	lbu	$6,0($4)	 # i, ram
	lbu	$5,%gp_rel(A)($28)	 # A.354, A
	sra	$3,$6,4	 # tmp260, i,
	andi	$2,$5,0xf0	 # tmp262, A.354,
	or	$3,$3,$2	 # tmp266, tmp260, tmp262
	seb	$3,$3	 # D.3360, tmp266
	andi	$2,$3,0x00ff	 # A.356, D.3360
	sb	$2,%gp_rel(A)($28)	 # A.356, A
	sll	$6,$6,4	 # D.3362, i,
	andi	$5,$5,0xf	 # tmp270, A.354,
	or	$5,$6,$5	 # tmp271, D.3362, tmp270
	sb	$5,0($4)	 # tmp271, ram
	li	$4,-19			# 0xffffffed	 # tmp273,
	lw	$5,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L211	 #, A.356,,
	and	$4,$5,$4	 # F.358, F, tmp273

	li	$5,-65			# 0xffffffbf	 # tmp274,
	and	$4,$4,$5	 # tmp275, F.358, tmp274
	j	.L212	 #
	sw	$4,%gp_rel(F)($28)	 # tmp275, F

.L211:
	ori	$4,$4,0x40	 # tmp276, F.358,
	sw	$4,%gp_rel(F)($28)	 # tmp276, F
.L212:
	bgez	$3,.L213	 #, D.3360,
	li	$3,-129			# 0xffffff7f	 # tmp280,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp278, F,
	j	.L214	 #
	sw	$3,%gp_rel(F)($28)	 # tmp278, F

.L213:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp281, F, tmp280
	sw	$3,%gp_rel(F)($28)	 # tmp281, F
.L214:
	sll	$2,$2,2	 # tmp283, A.356,
	lui	$3,%hi(parrity)	 # tmp282,
	addiu	$3,$3,%lo(parrity)	 # tmp285, tmp282,
	addu	$2,$2,$3	 # tmp284, tmp283, tmp285
	lw	$2,0($2)	 # tmp286, parrity
	beql	$2,$0,.L215	 #, tmp286,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp288,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp289, F, tmp288
	j	.L216	 #
	sw	$2,%gp_rel(F)($28)	 # tmp289, F

.L215:
	ori	$2,$2,0x4	 # tmp291, F,
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
.L216:
	j	$31
	li	$2,18			# 0x12	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_oprld
	.size	op_oprld, .-op_oprld
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_oprrd
	.type	op_oprrd, @function
op_oprrd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$4,%gp_rel(H)($28)	 # H, H
	sll	$4,$4,8	 # tmp256, H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	addu	$4,$4,$2	 # D.3486, tmp256, L
	lui	$2,%hi(ram)	 # tmp258,
	addiu	$2,$2,%lo(ram)	 # tmp260, tmp258,
	addu	$4,$4,$2	 # tmp259, D.3486, tmp260
	lbu	$6,0($4)	 # i, ram
	lbu	$5,%gp_rel(A)($28)	 # A.410, A
	andi	$3,$6,0xf	 # tmp262, i,
	andi	$2,$5,0xf0	 # tmp264, A.410,
	or	$3,$3,$2	 # tmp268, tmp262, tmp264
	seb	$3,$3	 # D.3495, tmp268
	andi	$2,$3,0x00ff	 # A.412, D.3495
	sb	$2,%gp_rel(A)($28)	 # A.412, A
	sra	$6,$6,4	 # D.3497, i,
	andi	$5,$5,0xf	 # tmp272, A.410,
	sll	$5,$5,4	 # tmp273, tmp272,
	or	$6,$6,$5	 # tmp274, D.3497, tmp273
	sb	$6,0($4)	 # tmp274, ram
	li	$4,-19			# 0xffffffed	 # tmp276,
	lw	$5,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L218	 #, A.412,,
	and	$4,$5,$4	 # F.414, F, tmp276

	li	$5,-65			# 0xffffffbf	 # tmp277,
	and	$4,$4,$5	 # tmp278, F.414, tmp277
	j	.L219	 #
	sw	$4,%gp_rel(F)($28)	 # tmp278, F

.L218:
	ori	$4,$4,0x40	 # tmp279, F.414,
	sw	$4,%gp_rel(F)($28)	 # tmp279, F
.L219:
	bgez	$3,.L220	 #, D.3495,
	li	$3,-129			# 0xffffff7f	 # tmp283,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp281, F,
	j	.L221	 #
	sw	$3,%gp_rel(F)($28)	 # tmp281, F

.L220:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp284, F, tmp283
	sw	$3,%gp_rel(F)($28)	 # tmp284, F
.L221:
	sll	$2,$2,2	 # tmp286, A.412,
	lui	$3,%hi(parrity)	 # tmp285,
	addiu	$3,$3,%lo(parrity)	 # tmp288, tmp285,
	addu	$2,$2,$3	 # tmp287, tmp286, tmp288
	lw	$2,0($2)	 # tmp289, parrity
	beql	$2,$0,.L222	 #, tmp289,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp291,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp292, F, tmp291
	j	.L223	 #
	sw	$2,%gp_rel(F)($28)	 # tmp292, F

.L222:
	ori	$2,$2,0x4	 # tmp294, F,
	sw	$2,%gp_rel(F)($28)	 # tmp294, F
.L223:
	j	$31
	li	$2,18			# 0x12	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_oprrd
	.size	op_oprrd, .-op_oprrd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_otdr
	.type	op_otdr, @function
op_otdr:
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
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp248, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp250, tmp248, L
	lui	$16,%hi(ram)	 # tmp252,
	addiu	$16,$16,%lo(ram)	 # tmp251, tmp252,
	addu	$16,$16,$2	 # d, tmp251, tmp250
	li	$17,-21			# 0xffffffeb	 # t,
.L225:
	lbu	$5,0($16)	 # D.2554,* d
	addiu	$16,$16,-1	 # d, d,
	jal	io_out	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp255, B,
	andi	$2,$2,0x00ff	 # B.6, tmp255
	sb	$2,%gp_rel(B)($28)	 # B.6, B
	bne	$2,$0,.L225	 #, B.6,,
	addiu	$17,$17,21	 # t, t,

	lui	$2,%hi(ram)	 # tmp258,
	addiu	$2,$2,%lo(ram)	 # tmp257, tmp258,
	subu	$3,$16,$2	 # tmp256, d, tmp257
	sra	$3,$3,8	 # tmp259, tmp256,
	sb	$3,%gp_rel(H)($28)	 # tmp259, H
	subu	$16,$16,$2	 # tmp264, d, tmp257
	sb	$16,%gp_rel(L)($28)	 # tmp264, L
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x42	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
	addiu	$2,$17,16	 #, t,
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_otdr
	.size	op_otdr, .-op_otdr
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_otir
	.type	op_otir, @function
op_otir:
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
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp248, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp250, tmp248, L
	lui	$16,%hi(ram)	 # tmp252,
	addiu	$16,$16,%lo(ram)	 # tmp251, tmp252,
	addu	$16,$16,$2	 # d, tmp251, tmp250
	li	$17,-21			# 0xffffffeb	 # t,
.L228:
	lbu	$5,0($16)	 # D.2699,* d
	addiu	$16,$16,1	 # d, d,
	jal	io_out	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp255, B,
	andi	$2,$2,0x00ff	 # B.75, tmp255
	sb	$2,%gp_rel(B)($28)	 # B.75, B
	bne	$2,$0,.L228	 #, B.75,,
	addiu	$17,$17,21	 # t, t,

	lui	$2,%hi(ram)	 # tmp258,
	addiu	$2,$2,%lo(ram)	 # tmp257, tmp258,
	subu	$3,$16,$2	 # tmp256, d, tmp257
	sra	$3,$3,8	 # tmp259, tmp256,
	sb	$3,%gp_rel(H)($28)	 # tmp259, H
	subu	$16,$16,$2	 # tmp264, d, tmp257
	sb	$16,%gp_rel(L)($28)	 # tmp264, L
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x42	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
	addiu	$2,$17,16	 #, t,
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_otir
	.size	op_otir, .-op_otir
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_outd
	.type	op_outd, @function
op_outd:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lbu	$4,%gp_rel(H)($28)	 # H, H
	sll	$4,$4,8	 # tmp243, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	lui	$2,%hi(ram)	 # tmp241,
	addiu	$2,$2,%lo(ram)	 # tmp247, tmp241,
	mul	$5,$4,$3	 #, tmp243, L
	addu	$2,$5,$2	 # tmp246,, tmp247
	lbu	$4,%gp_rel(C)($28)	 #, C
	jal	io_out	 #
	lbu	$5,0($2)	 #, ram

	lbu	$2,%gp_rel(L)($28)	 #, L
	addiu	$2,$2,-1	 # tmp250, L,
	andi	$2,$2,0x00ff	 # L.143, tmp250
	li	$3,255			# 0xff	 # tmp251,
	bne	$2,$3,.L231	 #, L.143, tmp251,
	sb	$2,%gp_rel(L)($28)	 # L.143, L

	lbu	$2,%gp_rel(H)($28)	 #, H
	addiu	$2,$2,-1	 # tmp253, H,
	sb	$2,%gp_rel(H)($28)	 # tmp253, H
.L231:
	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp255, B,
	andi	$2,$2,0x00ff	 # B.146, tmp255
	sb	$2,%gp_rel(B)($28)	 # B.146, B
	lw	$3,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L232	 #, B.146,,
	ori	$3,$3,0x2	 # F.148, F,

	li	$2,-65			# 0xffffffbf	 # tmp257,
	and	$3,$3,$2	 # tmp258, F.148, tmp257
	j	.L233	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L232:
	ori	$3,$3,0x40	 # tmp259, F.148,
	sw	$3,%gp_rel(F)($28)	 # tmp259, F
.L233:
	li	$2,16			# 0x10	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_outd
	.size	op_outd, .-op_outd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_outi
	.type	op_outi, @function
op_outi:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lbu	$4,%gp_rel(H)($28)	 # H, H
	sll	$4,$4,8	 # tmp243, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	lui	$2,%hi(ram)	 # tmp241,
	addiu	$2,$2,%lo(ram)	 # tmp247, tmp241,
	mul	$5,$4,$3	 #, tmp243, L
	addu	$2,$5,$2	 # tmp246,, tmp247
	lbu	$4,%gp_rel(C)($28)	 #, C
	jal	io_out	 #
	lbu	$5,0($2)	 #, ram

	lbu	$2,%gp_rel(L)($28)	 #, L
	addiu	$2,$2,1	 # tmp250, L,
	andi	$2,$2,0x00ff	 # L.208, tmp250
	bne	$2,$0,.L235	 #, L.208,,
	sb	$2,%gp_rel(L)($28)	 # L.208, L

	lbu	$2,%gp_rel(H)($28)	 #, H
	addiu	$2,$2,1	 # tmp252, H,
	sb	$2,%gp_rel(H)($28)	 # tmp252, H
.L235:
	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp254, B,
	andi	$2,$2,0x00ff	 # B.211, tmp254
	sb	$2,%gp_rel(B)($28)	 # B.211, B
	lw	$3,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L236	 #, B.211,,
	ori	$3,$3,0x2	 # F.213, F,

	li	$2,-65			# 0xffffffbf	 # tmp256,
	and	$3,$3,$2	 # tmp257, F.213, tmp256
	j	.L237	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L236:
	ori	$3,$3,0x40	 # tmp258, F.213,
	sw	$3,%gp_rel(F)($28)	 # tmp258, F
.L237:
	li	$2,16			# 0x10	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_outi
	.size	op_outi, .-op_outi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_outca
	.type	op_outca, @function
op_outca:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lbu	$4,%gp_rel(C)($28)	 #, C
	jal	io_out	 #
	lbu	$5,%gp_rel(A)($28)	 #, A

	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_outca
	.size	op_outca, .-op_outca
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_outcl
	.type	op_outcl, @function
op_outcl:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lbu	$4,%gp_rel(C)($28)	 #, C
	jal	io_out	 #
	lbu	$5,%gp_rel(L)($28)	 #, L

	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_outcl
	.size	op_outcl, .-op_outcl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_outch
	.type	op_outch, @function
op_outch:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lbu	$4,%gp_rel(C)($28)	 #, C
	jal	io_out	 #
	lbu	$5,%gp_rel(H)($28)	 #, H

	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_outch
	.size	op_outch, .-op_outch
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_outce
	.type	op_outce, @function
op_outce:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lbu	$4,%gp_rel(C)($28)	 #, C
	jal	io_out	 #
	lbu	$5,%gp_rel(E)($28)	 #, E

	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_outce
	.size	op_outce, .-op_outce
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_outcd
	.type	op_outcd, @function
op_outcd:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lbu	$4,%gp_rel(C)($28)	 #, C
	jal	io_out	 #
	lbu	$5,%gp_rel(D)($28)	 #, D

	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_outcd
	.size	op_outcd, .-op_outcd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_outcc
	.type	op_outcc, @function
op_outcc:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lbu	$5,%gp_rel(C)($28)	 # D.3998, C
	jal	io_out	 #
	move	$4,$5	 #, D.3998

	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_outcc
	.size	op_outcc, .-op_outcc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_outcb
	.type	op_outcb, @function
op_outcb:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lbu	$4,%gp_rel(C)($28)	 #, C
	jal	io_out	 #
	lbu	$5,%gp_rel(B)($28)	 #, B

	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_outcb
	.size	op_outcb, .-op_outcb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_indr
	.type	op_indr, @function
op_indr:
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
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp247, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp249, tmp247, L
	lui	$16,%hi(ram)	 # tmp251,
	addiu	$16,$16,%lo(ram)	 # tmp250, tmp251,
	addu	$16,$16,$2	 # d, tmp250, tmp249
	li	$17,-21			# 0xffffffeb	 # t,
.L246:
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	sb	$2,0($16)	 #,* d
	addiu	$16,$16,-1	 # d, d,
	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp255, B,
	andi	$2,$2,0x00ff	 # B.19, tmp255
	sb	$2,%gp_rel(B)($28)	 # B.19, B
	bne	$2,$0,.L246	 #, B.19,,
	addiu	$17,$17,21	 # t, t,

	lui	$2,%hi(ram)	 # tmp258,
	addiu	$2,$2,%lo(ram)	 # tmp257, tmp258,
	subu	$3,$16,$2	 # tmp256, d, tmp257
	sra	$3,$3,8	 # tmp259, tmp256,
	sb	$3,%gp_rel(H)($28)	 # tmp259, H
	subu	$16,$16,$2	 # tmp264, d, tmp257
	sb	$16,%gp_rel(L)($28)	 # tmp264, L
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x42	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
	addiu	$2,$17,16	 #, t,
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_indr
	.size	op_indr, .-op_indr
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_inir
	.type	op_inir, @function
op_inir:
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
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp247, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp249, tmp247, L
	lui	$16,%hi(ram)	 # tmp251,
	addiu	$16,$16,%lo(ram)	 # tmp250, tmp251,
	addu	$16,$16,$2	 # d, tmp250, tmp249
	li	$17,-21			# 0xffffffeb	 # t,
.L249:
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	sb	$2,0($16)	 #,* d
	addiu	$16,$16,1	 # d, d,
	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp255, B,
	andi	$2,$2,0x00ff	 # B.88, tmp255
	sb	$2,%gp_rel(B)($28)	 # B.88, B
	bne	$2,$0,.L249	 #, B.88,,
	addiu	$17,$17,21	 # t, t,

	lui	$2,%hi(ram)	 # tmp258,
	addiu	$2,$2,%lo(ram)	 # tmp257, tmp258,
	subu	$3,$16,$2	 # tmp256, d, tmp257
	sra	$3,$3,8	 # tmp259, tmp256,
	sb	$3,%gp_rel(H)($28)	 # tmp259, H
	subu	$16,$16,$2	 # tmp264, d, tmp257
	sb	$16,%gp_rel(L)($28)	 # tmp264, L
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x42	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
	addiu	$2,$17,16	 #, t,
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_inir
	.size	op_inir, .-op_inir
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ind
	.type	op_ind, @function
op_ind:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	sw	$16,16($sp)	 #,
	lbu	$16,%gp_rel(H)($28)	 # H, H
	sll	$16,$16,8	 # tmp240, H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	addu	$16,$16,$2	 # D.2868, tmp240, L
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	lui	$3,%hi(ram)	 # tmp244,
	addiu	$3,$3,%lo(ram)	 # tmp246, tmp244,
	addu	$16,$16,$3	 # tmp245, D.2868, tmp246
	sb	$2,0($16)	 #, ram
	lbu	$2,%gp_rel(L)($28)	 #, L
	addiu	$2,$2,-1	 # tmp248, L,
	andi	$2,$2,0x00ff	 # L.155, tmp248
	li	$3,255			# 0xff	 # tmp249,
	bne	$2,$3,.L252	 #, L.155, tmp249,
	sb	$2,%gp_rel(L)($28)	 # L.155, L

	lbu	$2,%gp_rel(H)($28)	 #, H
	addiu	$2,$2,-1	 # tmp251, H,
	sb	$2,%gp_rel(H)($28)	 # tmp251, H
.L252:
	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp253, B,
	andi	$2,$2,0x00ff	 # B.158, tmp253
	sb	$2,%gp_rel(B)($28)	 # B.158, B
	lw	$3,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L253	 #, B.158,,
	ori	$3,$3,0x2	 # F.160, F,

	li	$2,-65			# 0xffffffbf	 # tmp255,
	and	$3,$3,$2	 # tmp256, F.160, tmp255
	j	.L254	 #
	sw	$3,%gp_rel(F)($28)	 # tmp256, F

.L253:
	ori	$3,$3,0x40	 # tmp257, F.160,
	sw	$3,%gp_rel(F)($28)	 # tmp257, F
.L254:
	li	$2,16			# 0x10	 #,
	lw	$31,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ind
	.size	op_ind, .-op_ind
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ini
	.type	op_ini, @function
op_ini:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	sw	$16,16($sp)	 #,
	lbu	$16,%gp_rel(H)($28)	 # H, H
	sll	$16,$16,8	 # tmp240, H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	addu	$16,$16,$2	 # D.3018, tmp240, L
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	lui	$3,%hi(ram)	 # tmp244,
	addiu	$3,$3,%lo(ram)	 # tmp246, tmp244,
	addu	$16,$16,$3	 # tmp245, D.3018, tmp246
	sb	$2,0($16)	 #, ram
	lbu	$2,%gp_rel(L)($28)	 #, L
	addiu	$2,$2,1	 # tmp248, L,
	andi	$2,$2,0x00ff	 # L.220, tmp248
	bne	$2,$0,.L256	 #, L.220,,
	sb	$2,%gp_rel(L)($28)	 # L.220, L

	lbu	$2,%gp_rel(H)($28)	 #, H
	addiu	$2,$2,1	 # tmp250, H,
	sb	$2,%gp_rel(H)($28)	 # tmp250, H
.L256:
	lbu	$2,%gp_rel(B)($28)	 #, B
	addiu	$2,$2,-1	 # tmp252, B,
	andi	$2,$2,0x00ff	 # B.223, tmp252
	sb	$2,%gp_rel(B)($28)	 # B.223, B
	lw	$3,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L257	 #, B.223,,
	ori	$3,$3,0x2	 # F.225, F,

	li	$2,-65			# 0xffffffbf	 # tmp254,
	and	$3,$3,$2	 # tmp255, F.225, tmp254
	j	.L258	 #
	sw	$3,%gp_rel(F)($28)	 # tmp255, F

.L257:
	ori	$3,$3,0x40	 # tmp256, F.225,
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
.L258:
	li	$2,16			# 0x10	 #,
	lw	$31,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ini
	.size	op_ini, .-op_ini
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_inaic
	.type	op_inaic, @function
op_inaic:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	sb	$2,%gp_rel(A)($28)	 # A.305, A
	li	$3,-19			# 0xffffffed	 # tmp239,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L260	 #, A.305,,
	and	$3,$4,$3	 # F.307, F, tmp239

	li	$4,-65			# 0xffffffbf	 # tmp240,
	and	$3,$3,$4	 # F.310, F.307, tmp240
	seb	$4,$2	 # A.305, A.305
	bltz	$4,.L261	 #, A.305,
	sw	$3,%gp_rel(F)($28)	 # F.310, F

	j	.L266	 #
	li	$3,-129			# 0xffffff7f	 # tmp245,

.L260:
	ori	$3,$3,0x40	 # tmp242, F.307,
	j	.L262	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L261:
	ori	$3,$3,0x80	 # tmp243, F.310,
	j	.L263	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L262:
	li	$3,-129			# 0xffffff7f	 # tmp245,
.L266:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L263:
	sll	$2,$2,2	 # tmp248, A.305,
	lui	$3,%hi(parrity)	 # tmp247,
	addiu	$3,$3,%lo(parrity)	 # tmp250, tmp247,
	addu	$2,$2,$3	 # tmp249, tmp248, tmp250
	lw	$2,0($2)	 # tmp251, parrity
	beq	$2,$0,.L264	 #, tmp251,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp253,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp254, F, tmp253
	j	.L265	 #
	sw	$2,%gp_rel(F)($28)	 # tmp254, F

.L264:
	ori	$2,$2,0x4	 # tmp256, F,
	sw	$2,%gp_rel(F)($28)	 # tmp256, F
.L265:
	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_inaic
	.size	op_inaic, .-op_inaic
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_inlic
	.type	op_inlic, @function
op_inlic:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	sb	$2,%gp_rel(L)($28)	 # L.394, L
	li	$3,-19			# 0xffffffed	 # tmp239,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L268	 #, L.394,,
	and	$3,$4,$3	 # F.396, F, tmp239

	li	$4,-65			# 0xffffffbf	 # tmp240,
	and	$3,$3,$4	 # F.399, F.396, tmp240
	seb	$4,$2	 # L.394, L.394
	bltz	$4,.L269	 #, L.394,
	sw	$3,%gp_rel(F)($28)	 # F.399, F

	j	.L274	 #
	li	$3,-129			# 0xffffff7f	 # tmp245,

.L268:
	ori	$3,$3,0x40	 # tmp242, F.396,
	j	.L270	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L269:
	ori	$3,$3,0x80	 # tmp243, F.399,
	j	.L271	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L270:
	li	$3,-129			# 0xffffff7f	 # tmp245,
.L274:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L271:
	sll	$2,$2,2	 # tmp248, L.394,
	lui	$3,%hi(parrity)	 # tmp247,
	addiu	$3,$3,%lo(parrity)	 # tmp250, tmp247,
	addu	$2,$2,$3	 # tmp249, tmp248, tmp250
	lw	$2,0($2)	 # tmp251, parrity
	beq	$2,$0,.L272	 #, tmp251,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp253,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp254, F, tmp253
	j	.L273	 #
	sw	$2,%gp_rel(F)($28)	 # tmp254, F

.L272:
	ori	$2,$2,0x4	 # tmp256, F,
	sw	$2,%gp_rel(F)($28)	 # tmp256, F
.L273:
	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_inlic
	.size	op_inlic, .-op_inlic
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_inhic
	.type	op_inhic, @function
op_inhic:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	sb	$2,%gp_rel(H)($28)	 # H.451, H
	li	$3,-19			# 0xffffffed	 # tmp239,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L276	 #, H.451,,
	and	$3,$4,$3	 # F.453, F, tmp239

	li	$4,-65			# 0xffffffbf	 # tmp240,
	and	$3,$3,$4	 # F.456, F.453, tmp240
	seb	$4,$2	 # H.451, H.451
	bltz	$4,.L277	 #, H.451,
	sw	$3,%gp_rel(F)($28)	 # F.456, F

	j	.L282	 #
	li	$3,-129			# 0xffffff7f	 # tmp245,

.L276:
	ori	$3,$3,0x40	 # tmp242, F.453,
	j	.L278	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L277:
	ori	$3,$3,0x80	 # tmp243, F.456,
	j	.L279	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L278:
	li	$3,-129			# 0xffffff7f	 # tmp245,
.L282:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L279:
	sll	$2,$2,2	 # tmp248, H.451,
	lui	$3,%hi(parrity)	 # tmp247,
	addiu	$3,$3,%lo(parrity)	 # tmp250, tmp247,
	addu	$2,$2,$3	 # tmp249, tmp248, tmp250
	lw	$2,0($2)	 # tmp251, parrity
	beq	$2,$0,.L280	 #, tmp251,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp253,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp254, F, tmp253
	j	.L281	 #
	sw	$2,%gp_rel(F)($28)	 # tmp254, F

.L280:
	ori	$2,$2,0x4	 # tmp256, F,
	sw	$2,%gp_rel(F)($28)	 # tmp256, F
.L281:
	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_inhic
	.size	op_inhic, .-op_inhic
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ineic
	.type	op_ineic, @function
op_ineic:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	sb	$2,%gp_rel(E)($28)	 # E.512, E
	li	$3,-19			# 0xffffffed	 # tmp239,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L284	 #, E.512,,
	and	$3,$4,$3	 # F.514, F, tmp239

	li	$4,-65			# 0xffffffbf	 # tmp240,
	and	$3,$3,$4	 # F.517, F.514, tmp240
	seb	$4,$2	 # E.512, E.512
	bltz	$4,.L285	 #, E.512,
	sw	$3,%gp_rel(F)($28)	 # F.517, F

	j	.L290	 #
	li	$3,-129			# 0xffffff7f	 # tmp245,

.L284:
	ori	$3,$3,0x40	 # tmp242, F.514,
	j	.L286	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L285:
	ori	$3,$3,0x80	 # tmp243, F.517,
	j	.L287	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L286:
	li	$3,-129			# 0xffffff7f	 # tmp245,
.L290:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L287:
	sll	$2,$2,2	 # tmp248, E.512,
	lui	$3,%hi(parrity)	 # tmp247,
	addiu	$3,$3,%lo(parrity)	 # tmp250, tmp247,
	addu	$2,$2,$3	 # tmp249, tmp248, tmp250
	lw	$2,0($2)	 # tmp251, parrity
	beq	$2,$0,.L288	 #, tmp251,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp253,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp254, F, tmp253
	j	.L289	 #
	sw	$2,%gp_rel(F)($28)	 # tmp254, F

.L288:
	ori	$2,$2,0x4	 # tmp256, F,
	sw	$2,%gp_rel(F)($28)	 # tmp256, F
.L289:
	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ineic
	.size	op_ineic, .-op_ineic
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_indic
	.type	op_indic, @function
op_indic:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	sb	$2,%gp_rel(D)($28)	 # D.575, D
	li	$3,-19			# 0xffffffed	 # tmp239,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L292	 #, D.575,,
	and	$3,$4,$3	 # F.577, F, tmp239

	li	$4,-65			# 0xffffffbf	 # tmp240,
	and	$3,$3,$4	 # F.580, F.577, tmp240
	seb	$4,$2	 # D.575, D.575
	bltz	$4,.L293	 #, D.575,
	sw	$3,%gp_rel(F)($28)	 # F.580, F

	j	.L298	 #
	li	$3,-129			# 0xffffff7f	 # tmp245,

.L292:
	ori	$3,$3,0x40	 # tmp242, F.577,
	j	.L294	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L293:
	ori	$3,$3,0x80	 # tmp243, F.580,
	j	.L295	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L294:
	li	$3,-129			# 0xffffff7f	 # tmp245,
.L298:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L295:
	sll	$2,$2,2	 # tmp248, D.575,
	lui	$3,%hi(parrity)	 # tmp247,
	addiu	$3,$3,%lo(parrity)	 # tmp250, tmp247,
	addu	$2,$2,$3	 # tmp249, tmp248, tmp250
	lw	$2,0($2)	 # tmp251, parrity
	beq	$2,$0,.L296	 #, tmp251,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp253,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp254, F, tmp253
	j	.L297	 #
	sw	$2,%gp_rel(F)($28)	 # tmp254, F

.L296:
	ori	$2,$2,0x4	 # tmp256, F,
	sw	$2,%gp_rel(F)($28)	 # tmp256, F
.L297:
	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_indic
	.size	op_indic, .-op_indic
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_incic
	.type	op_incic, @function
op_incic:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	sb	$2,%gp_rel(C)($28)	 # C.624, C
	li	$3,-19			# 0xffffffed	 # tmp239,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L300	 #, C.624,,
	and	$3,$4,$3	 # F.626, F, tmp239

	li	$4,-65			# 0xffffffbf	 # tmp240,
	and	$3,$3,$4	 # F.628, F.626, tmp240
	seb	$4,$2	 # C.624, C.624
	bltz	$4,.L301	 #, C.624,
	sw	$3,%gp_rel(F)($28)	 # F.628, F

	j	.L306	 #
	li	$3,-129			# 0xffffff7f	 # tmp245,

.L300:
	ori	$3,$3,0x40	 # tmp242, F.626,
	j	.L302	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L301:
	ori	$3,$3,0x80	 # tmp243, F.628,
	j	.L303	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L302:
	li	$3,-129			# 0xffffff7f	 # tmp245,
.L306:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L303:
	sll	$2,$2,2	 # tmp248, C.624,
	lui	$3,%hi(parrity)	 # tmp247,
	addiu	$3,$3,%lo(parrity)	 # tmp250, tmp247,
	addu	$2,$2,$3	 # tmp249, tmp248, tmp250
	lw	$2,0($2)	 # tmp251, parrity
	beq	$2,$0,.L304	 #, tmp251,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp253,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp254, F, tmp253
	j	.L305	 #
	sw	$2,%gp_rel(F)($28)	 # tmp254, F

.L304:
	ori	$2,$2,0x4	 # tmp256, F,
	sw	$2,%gp_rel(F)($28)	 # tmp256, F
.L305:
	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_incic
	.size	op_incic, .-op_incic
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_inbic
	.type	op_inbic, @function
op_inbic:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	jal	io_in	 #
	lbu	$4,%gp_rel(C)($28)	 #, C

	sb	$2,%gp_rel(B)($28)	 # B.697, B
	li	$3,-19			# 0xffffffed	 # tmp239,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L308	 #, B.697,,
	and	$3,$4,$3	 # F.699, F, tmp239

	li	$4,-65			# 0xffffffbf	 # tmp240,
	and	$3,$3,$4	 # F.702, F.699, tmp240
	seb	$4,$2	 # B.697, B.697
	bltz	$4,.L309	 #, B.697,
	sw	$3,%gp_rel(F)($28)	 # F.702, F

	j	.L314	 #
	li	$3,-129			# 0xffffff7f	 # tmp245,

.L308:
	ori	$3,$3,0x40	 # tmp242, F.699,
	j	.L310	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L309:
	ori	$3,$3,0x80	 # tmp243, F.702,
	j	.L311	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L310:
	li	$3,-129			# 0xffffff7f	 # tmp245,
.L314:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L311:
	sll	$2,$2,2	 # tmp248, B.697,
	lui	$3,%hi(parrity)	 # tmp247,
	addiu	$3,$3,%lo(parrity)	 # tmp250, tmp247,
	addu	$2,$2,$3	 # tmp249, tmp248, tmp250
	lw	$2,0($2)	 # tmp251, parrity
	beq	$2,$0,.L312	 #, tmp251,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp253,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp254, F, tmp253
	j	.L313	 #
	sw	$2,%gp_rel(F)($28)	 # tmp254, F

.L312:
	ori	$2,$2,0x4	 # tmp256, F,
	sw	$2,%gp_rel(F)($28)	 # tmp256, F
.L313:
	li	$2,12			# 0xc	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_inbic
	.size	op_inbic, .-op_inbic
	.align	2
	.globl	op_ed_handel
	.set	nomips16
	.set	nomicromips
	.ent	op_ed_handel
	.type	op_ed_handel, @function
op_ed_handel:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lw	$3,%gp_rel(PC)($28)	 # PC.0, PC
	lbu	$4,0($3)	 # tmp227,* PC.0
	sll	$4,$4,2	 # tmp228, tmp227,
	lui	$2,%hi(op_ed.1441)	 # tmp226,
	addiu	$2,$2,%lo(op_ed.1441)	 # tmp230, tmp226,
	addu	$2,$4,$2	 # tmp229, tmp228, tmp230
	lw	$2,0($2)	 # D.2539, op_ed
	addiu	$3,$3,1	 # tmp231, PC.0,
	jalr	$2	 # D.2539
	sw	$3,%gp_rel(PC)($28)	 # tmp231, PC

	lui	$3,%hi(ram+65535)	 # tmp235,
	addiu	$3,$3,%lo(ram+65535)	 # tmp234, tmp235,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	sltu	$3,$3,$4	 # tmp233, tmp234, PC
	beq	$3,$0,.L316	 #, tmp233,,
	lui	$3,%hi(ram)	 # tmp237,

	addiu	$3,$3,%lo(ram)	 # tmp236, tmp237,
	sw	$3,%gp_rel(PC)($28)	 # tmp236, PC
.L316:
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ed_handel
	.size	op_ed_handel, .-op_ed_handel
	.section	.rodata,code
	.align	2
	.type	op_ed.1441, @object
	.size	op_ed.1441, 1024
op_ed.1441:
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	op_inbic
	.word	op_outcb
	.word	op_sbchb
	.word	op_ldinbc
	.word	op_neg
	.word	op_retn
	.word	op_im0
	.word	op_ldia
	.word	op_incic
	.word	op_outcc
	.word	op_adchb
	.word	op_ldbcinn
	.word	trap_ed
	.word	op_reti
	.word	trap_ed
	.word	op_ldra
	.word	op_indic
	.word	op_outcd
	.word	op_sbchd
	.word	op_ldinde
	.word	trap_ed
	.word	trap_ed
	.word	op_im1
	.word	op_ldai
	.word	op_ineic
	.word	op_outce
	.word	op_adchd
	.word	op_lddeinn
	.word	trap_ed
	.word	trap_ed
	.word	op_im2
	.word	op_ldar
	.word	op_inhic
	.word	op_outch
	.word	op_sbchh
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	op_oprrd
	.word	op_inlic
	.word	op_outcl
	.word	op_adchh
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	op_oprld
	.word	trap_ed
	.word	trap_ed
	.word	op_sbchs
	.word	op_ldinsp
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	op_inaic
	.word	op_outca
	.word	op_adchs
	.word	op_ldspinn
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	op_ldi
	.word	op_cpi
	.word	op_ini
	.word	op_outi
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	op_ldd
	.word	op_cpdop
	.word	op_ind
	.word	op_outd
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	op_ldir
	.word	op_cpir
	.word	op_inir
	.word	op_otir
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	op_lddr
	.word	op_cpdr
	.word	op_indr
	.word	op_otdr
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.word	trap_ed
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
