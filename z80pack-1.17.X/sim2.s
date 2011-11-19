	.file	1 "sim2.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed sim2.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/664612396/sim2.o -O1
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
	.ent	trap_cb
	.type	trap_cb, @function
trap_cb:
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
	.end	trap_cb
	.size	trap_cb, .-trap_cb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srla
	.type	op_srla, @function
op_srla:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.730, A
	andi	$3,$2,0x1	 # tmp241, A.730,
	beql	$3,$0,.L3	 #, tmp241,,
	li	$3,-2			# 0xfffffffe	 # tmp245,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp243, F,
	j	.L4	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L3:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L4:
	srl	$2,$2,1	 # A.734, A.730,
	sb	$2,%gp_rel(A)($28)	 # A.734, A
	li	$3,-19			# 0xffffffed	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L5	 #, A.734,,
	and	$3,$4,$3	 # F.735, F, tmp249

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.737, F.735, tmp250
	j	.L7	 #
	sw	$3,%gp_rel(F)($28)	 # F.737, F

.L5:
	ori	$3,$3,0x40	 # tmp252, F.735,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L7:
	li	$3,-129			# 0xffffff7f	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
	sll	$2,$2,2	 # tmp258, A.734,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L9	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L10	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L9:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L10:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srla
	.size	op_srla, .-op_srla
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srlb
	.type	op_srlb, @function
op_srlb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # B.848, B
	andi	$3,$2,0x1	 # tmp241, B.848,
	beql	$3,$0,.L12	 #, tmp241,,
	li	$3,-2			# 0xfffffffe	 # tmp245,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp243, F,
	j	.L13	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L12:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L13:
	srl	$2,$2,1	 # B.852, B.848,
	sb	$2,%gp_rel(B)($28)	 # B.852, B
	li	$3,-19			# 0xffffffed	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L14	 #, B.852,,
	and	$3,$4,$3	 # F.853, F, tmp249

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.855, F.853, tmp250
	j	.L16	 #
	sw	$3,%gp_rel(F)($28)	 # F.855, F

.L14:
	ori	$3,$3,0x40	 # tmp252, F.853,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L16:
	li	$3,-129			# 0xffffff7f	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
	sll	$2,$2,2	 # tmp258, B.852,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L18	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L19	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L18:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L19:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srlb
	.size	op_srlb, .-op_srlb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srlc
	.type	op_srlc, @function
op_srlc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # C.831, C
	andi	$3,$2,0x1	 # tmp241, C.831,
	beql	$3,$0,.L21	 #, tmp241,,
	li	$3,-2			# 0xfffffffe	 # tmp245,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp243, F,
	j	.L22	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L21:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L22:
	srl	$2,$2,1	 # C.835, C.831,
	sb	$2,%gp_rel(C)($28)	 # C.835, C
	li	$3,-19			# 0xffffffed	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L23	 #, C.835,,
	and	$3,$4,$3	 # F.836, F, tmp249

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.838, F.836, tmp250
	j	.L25	 #
	sw	$3,%gp_rel(F)($28)	 # F.838, F

.L23:
	ori	$3,$3,0x40	 # tmp252, F.836,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L25:
	li	$3,-129			# 0xffffff7f	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
	sll	$2,$2,2	 # tmp258, C.835,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L27	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L28	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L27:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L28:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srlc
	.size	op_srlc, .-op_srlc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srld
	.type	op_srld, @function
op_srld:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # D.814, D
	andi	$3,$2,0x1	 # tmp241, D.814,
	beql	$3,$0,.L30	 #, tmp241,,
	li	$3,-2			# 0xfffffffe	 # tmp245,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp243, F,
	j	.L31	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L30:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L31:
	srl	$2,$2,1	 # D.818, D.814,
	sb	$2,%gp_rel(D)($28)	 # D.818, D
	li	$3,-19			# 0xffffffed	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L32	 #, D.818,,
	and	$3,$4,$3	 # F.819, F, tmp249

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.821, F.819, tmp250
	j	.L34	 #
	sw	$3,%gp_rel(F)($28)	 # F.821, F

.L32:
	ori	$3,$3,0x40	 # tmp252, F.819,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L34:
	li	$3,-129			# 0xffffff7f	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
	sll	$2,$2,2	 # tmp258, D.818,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L36	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L37	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L36:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L37:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srld
	.size	op_srld, .-op_srld
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srle
	.type	op_srle, @function
op_srle:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # E.797, E
	andi	$3,$2,0x1	 # tmp241, E.797,
	beql	$3,$0,.L39	 #, tmp241,,
	li	$3,-2			# 0xfffffffe	 # tmp245,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp243, F,
	j	.L40	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L39:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L40:
	srl	$2,$2,1	 # E.801, E.797,
	sb	$2,%gp_rel(E)($28)	 # E.801, E
	li	$3,-19			# 0xffffffed	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L41	 #, E.801,,
	and	$3,$4,$3	 # F.802, F, tmp249

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.804, F.802, tmp250
	j	.L43	 #
	sw	$3,%gp_rel(F)($28)	 # F.804, F

.L41:
	ori	$3,$3,0x40	 # tmp252, F.802,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L43:
	li	$3,-129			# 0xffffff7f	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
	sll	$2,$2,2	 # tmp258, E.801,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L45	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L46	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L45:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L46:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srle
	.size	op_srle, .-op_srle
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srlh
	.type	op_srlh, @function
op_srlh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H.780, H
	andi	$3,$2,0x1	 # tmp241, H.780,
	beql	$3,$0,.L48	 #, tmp241,,
	li	$3,-2			# 0xfffffffe	 # tmp245,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp243, F,
	j	.L49	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L48:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L49:
	srl	$2,$2,1	 # H.784, H.780,
	sb	$2,%gp_rel(H)($28)	 # H.784, H
	li	$3,-19			# 0xffffffed	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L50	 #, H.784,,
	and	$3,$4,$3	 # F.785, F, tmp249

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.787, F.785, tmp250
	j	.L52	 #
	sw	$3,%gp_rel(F)($28)	 # F.787, F

.L50:
	ori	$3,$3,0x40	 # tmp252, F.785,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L52:
	li	$3,-129			# 0xffffff7f	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
	sll	$2,$2,2	 # tmp258, H.784,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L54	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L55	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L54:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L55:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srlh
	.size	op_srlh, .-op_srlh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srll
	.type	op_srll, @function
op_srll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # L.763, L
	andi	$3,$2,0x1	 # tmp241, L.763,
	beql	$3,$0,.L57	 #, tmp241,,
	li	$3,-2			# 0xfffffffe	 # tmp245,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp243, F,
	j	.L58	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L57:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp246, F, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L58:
	srl	$2,$2,1	 # L.767, L.763,
	sb	$2,%gp_rel(L)($28)	 # L.767, L
	li	$3,-19			# 0xffffffed	 # tmp249,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L59	 #, L.767,,
	and	$3,$4,$3	 # F.768, F, tmp249

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.770, F.768, tmp250
	j	.L61	 #
	sw	$3,%gp_rel(F)($28)	 # F.770, F

.L59:
	ori	$3,$3,0x40	 # tmp252, F.768,
	sw	$3,%gp_rel(F)($28)	 # tmp252, F
.L61:
	li	$3,-129			# 0xffffff7f	 # tmp255,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
	sll	$2,$2,2	 # tmp258, L.767,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L63	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L64	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L63:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L64:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srll
	.size	op_srll, .-op_srll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srlhl
	.type	op_srlhl, @function
op_srlhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp249, H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$2	 # D.5063, tmp249, L
	lui	$2,%hi(ram)	 # tmp251,
	addiu	$2,$2,%lo(ram)	 # tmp253, tmp251,
	addu	$2,$3,$2	 # tmp252, D.5063, tmp253
	lbu	$2,0($2)	 # D.5065, ram
	andi	$4,$2,0x1	 # tmp254, D.5065,
	beq	$4,$0,.L66	 #, tmp254,,
	li	$4,-2			# 0xfffffffe	 # tmp258,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp256, F,
	j	.L67	 #
	sw	$4,%gp_rel(F)($28)	 # tmp256, F

.L66:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp259, F, tmp258
	sw	$4,%gp_rel(F)($28)	 # tmp259, F
.L67:
	srl	$2,$2,1	 # D.5075, D.5065,
	lui	$4,%hi(ram)	 # tmp261,
	addiu	$4,$4,%lo(ram)	 # tmp263, tmp261,
	addu	$3,$3,$4	 # tmp262, D.5063, tmp263
	sb	$2,0($3)	 # D.5075, ram
	li	$3,-19			# 0xffffffed	 # tmp265,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L68	 #, D.5075,,
	and	$3,$4,$3	 # F.752, F, tmp265

	li	$4,-65			# 0xffffffbf	 # tmp266,
	and	$3,$3,$4	 # F.754, F.752, tmp266
	j	.L70	 #
	sw	$3,%gp_rel(F)($28)	 # F.754, F

.L68:
	ori	$3,$3,0x40	 # tmp268, F.752,
	sw	$3,%gp_rel(F)($28)	 # tmp268, F
.L70:
	li	$3,-129			# 0xffffff7f	 # tmp271,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp272, F, tmp271
	sw	$3,%gp_rel(F)($28)	 # tmp272, F
	sll	$2,$2,2	 # tmp274, D.5075,
	lui	$3,%hi(parrity)	 # tmp273,
	addiu	$3,$3,%lo(parrity)	 # tmp276, tmp273,
	addu	$2,$2,$3	 # tmp275, tmp274, tmp276
	lw	$2,0($2)	 # tmp277, parrity
	beql	$2,$0,.L72	 #, tmp277,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp279,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp280, F, tmp279
	j	.L73	 #
	sw	$2,%gp_rel(F)($28)	 # tmp280, F

.L72:
	ori	$2,$2,0x4	 # tmp282, F,
	sw	$2,%gp_rel(F)($28)	 # tmp282, F
.L73:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srlhl
	.size	op_srlhl, .-op_srlhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_slaa
	.type	op_slaa, @function
op_slaa:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.1007, A
	seb	$3,$2	 # A.1007, A.1007
	bgezl	$3,.L75	 #, A.1007,
	li	$3,-2			# 0xfffffffe	 # tmp244,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp242, F,
	j	.L76	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L75:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp245, F, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L76:
	sll	$2,$2,1	 # tmp246, A.1007,
	andi	$2,$2,0x00ff	 # A.1012, tmp246
	sb	$2,%gp_rel(A)($28)	 # A.1012, A
	li	$3,-19			# 0xffffffed	 # tmp248,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L77	 #, A.1012,,
	and	$3,$4,$3	 # F.1013, F, tmp248

	li	$4,-65			# 0xffffffbf	 # tmp249,
	and	$3,$3,$4	 # F.1015, F.1013, tmp249
	seb	$4,$2	 # A.1012, A.1012
	bltz	$4,.L78	 #, A.1012,
	sw	$3,%gp_rel(F)($28)	 # F.1015, F

	j	.L83	 #
	li	$3,-129			# 0xffffff7f	 # tmp254,

.L77:
	ori	$3,$3,0x40	 # tmp251, F.1013,
	j	.L79	 #
	sw	$3,%gp_rel(F)($28)	 # tmp251, F

.L78:
	ori	$3,$3,0x80	 # tmp252, F.1015,
	j	.L80	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L79:
	li	$3,-129			# 0xffffff7f	 # tmp254,
.L83:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp255, F, tmp254
	sw	$3,%gp_rel(F)($28)	 # tmp255, F
.L80:
	sll	$2,$2,2	 # tmp257, A.1012,
	lui	$3,%hi(parrity)	 # tmp256,
	addiu	$3,$3,%lo(parrity)	 # tmp259, tmp256,
	addu	$2,$2,$3	 # tmp258, tmp257, tmp259
	lw	$2,0($2)	 # tmp260, parrity
	beql	$2,$0,.L81	 #, tmp260,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L82	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L81:
	ori	$2,$2,0x4	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L82:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_slaa
	.size	op_slaa, .-op_slaa
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_slab
	.type	op_slab, @function
op_slab:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # B.1125, B
	seb	$3,$2	 # B.1125, B.1125
	bgezl	$3,.L85	 #, B.1125,
	li	$3,-2			# 0xfffffffe	 # tmp244,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp242, F,
	j	.L86	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L85:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp245, F, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L86:
	sll	$2,$2,1	 # tmp246, B.1125,
	andi	$2,$2,0x00ff	 # B.1130, tmp246
	sb	$2,%gp_rel(B)($28)	 # B.1130, B
	li	$3,-19			# 0xffffffed	 # tmp248,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L87	 #, B.1130,,
	and	$3,$4,$3	 # F.1131, F, tmp248

	li	$4,-65			# 0xffffffbf	 # tmp249,
	and	$3,$3,$4	 # F.1133, F.1131, tmp249
	seb	$4,$2	 # B.1130, B.1130
	bltz	$4,.L88	 #, B.1130,
	sw	$3,%gp_rel(F)($28)	 # F.1133, F

	j	.L93	 #
	li	$3,-129			# 0xffffff7f	 # tmp254,

.L87:
	ori	$3,$3,0x40	 # tmp251, F.1131,
	j	.L89	 #
	sw	$3,%gp_rel(F)($28)	 # tmp251, F

.L88:
	ori	$3,$3,0x80	 # tmp252, F.1133,
	j	.L90	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L89:
	li	$3,-129			# 0xffffff7f	 # tmp254,
.L93:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp255, F, tmp254
	sw	$3,%gp_rel(F)($28)	 # tmp255, F
.L90:
	sll	$2,$2,2	 # tmp257, B.1130,
	lui	$3,%hi(parrity)	 # tmp256,
	addiu	$3,$3,%lo(parrity)	 # tmp259, tmp256,
	addu	$2,$2,$3	 # tmp258, tmp257, tmp259
	lw	$2,0($2)	 # tmp260, parrity
	beql	$2,$0,.L91	 #, tmp260,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L92	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L91:
	ori	$2,$2,0x4	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L92:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_slab
	.size	op_slab, .-op_slab
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_slac
	.type	op_slac, @function
op_slac:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # C.1108, C
	seb	$3,$2	 # C.1108, C.1108
	bgezl	$3,.L95	 #, C.1108,
	li	$3,-2			# 0xfffffffe	 # tmp244,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp242, F,
	j	.L96	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L95:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp245, F, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L96:
	sll	$2,$2,1	 # tmp246, C.1108,
	andi	$2,$2,0x00ff	 # C.1113, tmp246
	sb	$2,%gp_rel(C)($28)	 # C.1113, C
	li	$3,-19			# 0xffffffed	 # tmp248,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L97	 #, C.1113,,
	and	$3,$4,$3	 # F.1114, F, tmp248

	li	$4,-65			# 0xffffffbf	 # tmp249,
	and	$3,$3,$4	 # F.1116, F.1114, tmp249
	seb	$4,$2	 # C.1113, C.1113
	bltz	$4,.L98	 #, C.1113,
	sw	$3,%gp_rel(F)($28)	 # F.1116, F

	j	.L103	 #
	li	$3,-129			# 0xffffff7f	 # tmp254,

.L97:
	ori	$3,$3,0x40	 # tmp251, F.1114,
	j	.L99	 #
	sw	$3,%gp_rel(F)($28)	 # tmp251, F

.L98:
	ori	$3,$3,0x80	 # tmp252, F.1116,
	j	.L100	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L99:
	li	$3,-129			# 0xffffff7f	 # tmp254,
.L103:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp255, F, tmp254
	sw	$3,%gp_rel(F)($28)	 # tmp255, F
.L100:
	sll	$2,$2,2	 # tmp257, C.1113,
	lui	$3,%hi(parrity)	 # tmp256,
	addiu	$3,$3,%lo(parrity)	 # tmp259, tmp256,
	addu	$2,$2,$3	 # tmp258, tmp257, tmp259
	lw	$2,0($2)	 # tmp260, parrity
	beql	$2,$0,.L101	 #, tmp260,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L102	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L101:
	ori	$2,$2,0x4	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L102:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_slac
	.size	op_slac, .-op_slac
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_slad
	.type	op_slad, @function
op_slad:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # D.1091, D
	seb	$3,$2	 # D.1091, D.1091
	bgezl	$3,.L105	 #, D.1091,
	li	$3,-2			# 0xfffffffe	 # tmp244,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp242, F,
	j	.L106	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L105:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp245, F, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L106:
	sll	$2,$2,1	 # tmp246, D.1091,
	andi	$2,$2,0x00ff	 # D.1096, tmp246
	sb	$2,%gp_rel(D)($28)	 # D.1096, D
	li	$3,-19			# 0xffffffed	 # tmp248,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L107	 #, D.1096,,
	and	$3,$4,$3	 # F.1097, F, tmp248

	li	$4,-65			# 0xffffffbf	 # tmp249,
	and	$3,$3,$4	 # F.1099, F.1097, tmp249
	seb	$4,$2	 # D.1096, D.1096
	bltz	$4,.L108	 #, D.1096,
	sw	$3,%gp_rel(F)($28)	 # F.1099, F

	j	.L113	 #
	li	$3,-129			# 0xffffff7f	 # tmp254,

.L107:
	ori	$3,$3,0x40	 # tmp251, F.1097,
	j	.L109	 #
	sw	$3,%gp_rel(F)($28)	 # tmp251, F

.L108:
	ori	$3,$3,0x80	 # tmp252, F.1099,
	j	.L110	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L109:
	li	$3,-129			# 0xffffff7f	 # tmp254,
.L113:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp255, F, tmp254
	sw	$3,%gp_rel(F)($28)	 # tmp255, F
.L110:
	sll	$2,$2,2	 # tmp257, D.1096,
	lui	$3,%hi(parrity)	 # tmp256,
	addiu	$3,$3,%lo(parrity)	 # tmp259, tmp256,
	addu	$2,$2,$3	 # tmp258, tmp257, tmp259
	lw	$2,0($2)	 # tmp260, parrity
	beql	$2,$0,.L111	 #, tmp260,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L112	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L111:
	ori	$2,$2,0x4	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L112:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_slad
	.size	op_slad, .-op_slad
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_slae
	.type	op_slae, @function
op_slae:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # E.1074, E
	seb	$3,$2	 # E.1074, E.1074
	bgezl	$3,.L115	 #, E.1074,
	li	$3,-2			# 0xfffffffe	 # tmp244,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp242, F,
	j	.L116	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L115:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp245, F, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L116:
	sll	$2,$2,1	 # tmp246, E.1074,
	andi	$2,$2,0x00ff	 # E.1079, tmp246
	sb	$2,%gp_rel(E)($28)	 # E.1079, E
	li	$3,-19			# 0xffffffed	 # tmp248,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L117	 #, E.1079,,
	and	$3,$4,$3	 # F.1080, F, tmp248

	li	$4,-65			# 0xffffffbf	 # tmp249,
	and	$3,$3,$4	 # F.1082, F.1080, tmp249
	seb	$4,$2	 # E.1079, E.1079
	bltz	$4,.L118	 #, E.1079,
	sw	$3,%gp_rel(F)($28)	 # F.1082, F

	j	.L123	 #
	li	$3,-129			# 0xffffff7f	 # tmp254,

.L117:
	ori	$3,$3,0x40	 # tmp251, F.1080,
	j	.L119	 #
	sw	$3,%gp_rel(F)($28)	 # tmp251, F

.L118:
	ori	$3,$3,0x80	 # tmp252, F.1082,
	j	.L120	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L119:
	li	$3,-129			# 0xffffff7f	 # tmp254,
.L123:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp255, F, tmp254
	sw	$3,%gp_rel(F)($28)	 # tmp255, F
.L120:
	sll	$2,$2,2	 # tmp257, E.1079,
	lui	$3,%hi(parrity)	 # tmp256,
	addiu	$3,$3,%lo(parrity)	 # tmp259, tmp256,
	addu	$2,$2,$3	 # tmp258, tmp257, tmp259
	lw	$2,0($2)	 # tmp260, parrity
	beql	$2,$0,.L121	 #, tmp260,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L122	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L121:
	ori	$2,$2,0x4	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L122:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_slae
	.size	op_slae, .-op_slae
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_slah
	.type	op_slah, @function
op_slah:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H.1057, H
	seb	$3,$2	 # H.1057, H.1057
	bgezl	$3,.L125	 #, H.1057,
	li	$3,-2			# 0xfffffffe	 # tmp244,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp242, F,
	j	.L126	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L125:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp245, F, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L126:
	sll	$2,$2,1	 # tmp246, H.1057,
	andi	$2,$2,0x00ff	 # H.1062, tmp246
	sb	$2,%gp_rel(H)($28)	 # H.1062, H
	li	$3,-19			# 0xffffffed	 # tmp248,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L127	 #, H.1062,,
	and	$3,$4,$3	 # F.1063, F, tmp248

	li	$4,-65			# 0xffffffbf	 # tmp249,
	and	$3,$3,$4	 # F.1065, F.1063, tmp249
	seb	$4,$2	 # H.1062, H.1062
	bltz	$4,.L128	 #, H.1062,
	sw	$3,%gp_rel(F)($28)	 # F.1065, F

	j	.L133	 #
	li	$3,-129			# 0xffffff7f	 # tmp254,

.L127:
	ori	$3,$3,0x40	 # tmp251, F.1063,
	j	.L129	 #
	sw	$3,%gp_rel(F)($28)	 # tmp251, F

.L128:
	ori	$3,$3,0x80	 # tmp252, F.1065,
	j	.L130	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L129:
	li	$3,-129			# 0xffffff7f	 # tmp254,
.L133:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp255, F, tmp254
	sw	$3,%gp_rel(F)($28)	 # tmp255, F
.L130:
	sll	$2,$2,2	 # tmp257, H.1062,
	lui	$3,%hi(parrity)	 # tmp256,
	addiu	$3,$3,%lo(parrity)	 # tmp259, tmp256,
	addu	$2,$2,$3	 # tmp258, tmp257, tmp259
	lw	$2,0($2)	 # tmp260, parrity
	beql	$2,$0,.L131	 #, tmp260,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L132	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L131:
	ori	$2,$2,0x4	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L132:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_slah
	.size	op_slah, .-op_slah
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_slal
	.type	op_slal, @function
op_slal:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # L.1040, L
	seb	$3,$2	 # L.1040, L.1040
	bgezl	$3,.L135	 #, L.1040,
	li	$3,-2			# 0xfffffffe	 # tmp244,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp242, F,
	j	.L136	 #
	sw	$3,%gp_rel(F)($28)	 # tmp242, F

.L135:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp245, F, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L136:
	sll	$2,$2,1	 # tmp246, L.1040,
	andi	$2,$2,0x00ff	 # L.1045, tmp246
	sb	$2,%gp_rel(L)($28)	 # L.1045, L
	li	$3,-19			# 0xffffffed	 # tmp248,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L137	 #, L.1045,,
	and	$3,$4,$3	 # F.1046, F, tmp248

	li	$4,-65			# 0xffffffbf	 # tmp249,
	and	$3,$3,$4	 # F.1048, F.1046, tmp249
	seb	$4,$2	 # L.1045, L.1045
	bltz	$4,.L138	 #, L.1045,
	sw	$3,%gp_rel(F)($28)	 # F.1048, F

	j	.L143	 #
	li	$3,-129			# 0xffffff7f	 # tmp254,

.L137:
	ori	$3,$3,0x40	 # tmp251, F.1046,
	j	.L139	 #
	sw	$3,%gp_rel(F)($28)	 # tmp251, F

.L138:
	ori	$3,$3,0x80	 # tmp252, F.1048,
	j	.L140	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L139:
	li	$3,-129			# 0xffffff7f	 # tmp254,
.L143:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp255, F, tmp254
	sw	$3,%gp_rel(F)($28)	 # tmp255, F
.L140:
	sll	$2,$2,2	 # tmp257, L.1045,
	lui	$3,%hi(parrity)	 # tmp256,
	addiu	$3,$3,%lo(parrity)	 # tmp259, tmp256,
	addu	$2,$2,$3	 # tmp258, tmp257, tmp259
	lw	$2,0($2)	 # tmp260, parrity
	beql	$2,$0,.L141	 #, tmp260,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp262,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp263, F, tmp262
	j	.L142	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L141:
	ori	$2,$2,0x4	 # tmp265, F,
	sw	$2,%gp_rel(F)($28)	 # tmp265, F
.L142:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_slal
	.size	op_slal, .-op_slal
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_slahl
	.type	op_slahl, @function
op_slahl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp248, H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$2	 # D.5661, tmp248, L
	lui	$2,%hi(ram)	 # tmp250,
	addiu	$2,$2,%lo(ram)	 # tmp252, tmp250,
	addu	$2,$3,$2	 # tmp251, D.5661, tmp252
	lbu	$2,0($2)	 # D.5663, ram
	seb	$4,$2	 # D.5663, D.5663
	bgez	$4,.L145	 #, D.5663,
	li	$4,-2			# 0xfffffffe	 # tmp257,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp255, F,
	j	.L146	 #
	sw	$4,%gp_rel(F)($28)	 # tmp255, F

.L145:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp258, F, tmp257
	sw	$4,%gp_rel(F)($28)	 # tmp258, F
.L146:
	sll	$2,$2,1	 # tmp259, D.5663,
	andi	$2,$2,0x00ff	 # D.5671, tmp259
	lui	$4,%hi(ram)	 # tmp260,
	addiu	$4,$4,%lo(ram)	 # tmp262, tmp260,
	addu	$3,$3,$4	 # tmp261, D.5661, tmp262
	sb	$2,0($3)	 # D.5671, ram
	li	$3,-19			# 0xffffffed	 # tmp264,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L147	 #, D.5671,,
	and	$3,$4,$3	 # F.1029, F, tmp264

	li	$4,-65			# 0xffffffbf	 # tmp265,
	and	$3,$3,$4	 # F.1031, F.1029, tmp265
	seb	$4,$2	 # D.5671, D.5671
	bltz	$4,.L148	 #, D.5671,
	sw	$3,%gp_rel(F)($28)	 # F.1031, F

	j	.L153	 #
	li	$3,-129			# 0xffffff7f	 # tmp270,

.L147:
	ori	$3,$3,0x40	 # tmp267, F.1029,
	j	.L149	 #
	sw	$3,%gp_rel(F)($28)	 # tmp267, F

.L148:
	ori	$3,$3,0x80	 # tmp268, F.1031,
	j	.L150	 #
	sw	$3,%gp_rel(F)($28)	 # tmp268, F

.L149:
	li	$3,-129			# 0xffffff7f	 # tmp270,
.L153:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp271, F, tmp270
	sw	$3,%gp_rel(F)($28)	 # tmp271, F
.L150:
	sll	$2,$2,2	 # tmp273, D.5671,
	lui	$3,%hi(parrity)	 # tmp272,
	addiu	$3,$3,%lo(parrity)	 # tmp275, tmp272,
	addu	$2,$2,$3	 # tmp274, tmp273, tmp275
	lw	$2,0($2)	 # tmp276, parrity
	beql	$2,$0,.L151	 #, tmp276,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp278,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp279, F, tmp278
	j	.L152	 #
	sw	$2,%gp_rel(F)($28)	 # tmp279, F

.L151:
	ori	$2,$2,0x4	 # tmp281, F,
	sw	$2,%gp_rel(F)($28)	 # tmp281, F
.L152:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_slahl
	.size	op_slahl, .-op_slahl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlra
	.type	op_rlra, @function
op_rlra:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1283, F
	lbu	$2,%gp_rel(A)($28)	 # A.1285, A
	seb	$5,$2	 # A.1285, A.1285
	bgez	$5,.L155	 #, A.1285,
	andi	$4,$3,0x1	 # old_c_flag, F.1283,

	ori	$3,$3,0x1	 # tmp243, F.1283,
	j	.L156	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L155:
	li	$5,-2			# 0xfffffffe	 # tmp244,
	and	$3,$3,$5	 # tmp245, F.1283, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L156:
	sll	$2,$2,1	 # tmp246, A.1285,
	andi	$2,$2,0x00ff	 # A.1289, tmp246
	beq	$4,$0,.L157	 #, old_c_flag,,
	sb	$2,%gp_rel(A)($28)	 # A.1289, A

	ori	$2,$2,0x1	 # tmp247, A.1289,
	sb	$2,%gp_rel(A)($28)	 # tmp247, A
.L157:
	li	$2,-19			# 0xffffffed	 # tmp249,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1291, F, tmp249
	lbu	$2,%gp_rel(A)($28)	 # A.1285, A
	beql	$2,$0,.L158	 #, A.1285,,
	ori	$3,$3,0x40	 # tmp252, F.1291,

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.1293, F.1291, tmp250
	seb	$4,$2	 # A.1285, A.1285
	bltz	$4,.L159	 #, A.1285,
	sw	$3,%gp_rel(F)($28)	 # F.1293, F

	j	.L164	 #
	li	$3,-129			# 0xffffff7f	 # tmp255,

.L158:
	j	.L160	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L159:
	ori	$3,$3,0x80	 # tmp253, F.1293,
	j	.L161	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L160:
	li	$3,-129			# 0xffffff7f	 # tmp255,
.L164:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
.L161:
	sll	$2,$2,2	 # tmp258, A.1285,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L162	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L163	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L162:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L163:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlra
	.size	op_rlra, .-op_rlra
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlb
	.type	op_rlb, @function
op_rlb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1407, F
	lbu	$2,%gp_rel(B)($28)	 # B.1409, B
	seb	$5,$2	 # B.1409, B.1409
	bgez	$5,.L166	 #, B.1409,
	andi	$4,$3,0x1	 # old_c_flag, F.1407,

	ori	$3,$3,0x1	 # tmp243, F.1407,
	j	.L167	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L166:
	li	$5,-2			# 0xfffffffe	 # tmp244,
	and	$3,$3,$5	 # tmp245, F.1407, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L167:
	sll	$2,$2,1	 # tmp246, B.1409,
	andi	$2,$2,0x00ff	 # B.1413, tmp246
	beq	$4,$0,.L168	 #, old_c_flag,,
	sb	$2,%gp_rel(B)($28)	 # B.1413, B

	ori	$2,$2,0x1	 # tmp247, B.1413,
	sb	$2,%gp_rel(B)($28)	 # tmp247, B
.L168:
	li	$2,-19			# 0xffffffed	 # tmp249,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1415, F, tmp249
	lbu	$2,%gp_rel(B)($28)	 # B.1409, B
	beql	$2,$0,.L169	 #, B.1409,,
	ori	$3,$3,0x40	 # tmp252, F.1415,

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.1417, F.1415, tmp250
	seb	$4,$2	 # B.1409, B.1409
	bltz	$4,.L170	 #, B.1409,
	sw	$3,%gp_rel(F)($28)	 # F.1417, F

	j	.L175	 #
	li	$3,-129			# 0xffffff7f	 # tmp255,

.L169:
	j	.L171	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L170:
	ori	$3,$3,0x80	 # tmp253, F.1417,
	j	.L172	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L171:
	li	$3,-129			# 0xffffff7f	 # tmp255,
.L175:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
.L172:
	sll	$2,$2,2	 # tmp258, B.1409,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L173	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L174	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L173:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L174:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlb
	.size	op_rlb, .-op_rlb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlc
	.type	op_rlc, @function
op_rlc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1389, F
	lbu	$2,%gp_rel(C)($28)	 # C.1391, C
	seb	$5,$2	 # C.1391, C.1391
	bgez	$5,.L177	 #, C.1391,
	andi	$4,$3,0x1	 # old_c_flag, F.1389,

	ori	$3,$3,0x1	 # tmp243, F.1389,
	j	.L178	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L177:
	li	$5,-2			# 0xfffffffe	 # tmp244,
	and	$3,$3,$5	 # tmp245, F.1389, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L178:
	sll	$2,$2,1	 # tmp246, C.1391,
	andi	$2,$2,0x00ff	 # C.1395, tmp246
	beq	$4,$0,.L179	 #, old_c_flag,,
	sb	$2,%gp_rel(C)($28)	 # C.1395, C

	ori	$2,$2,0x1	 # tmp247, C.1395,
	sb	$2,%gp_rel(C)($28)	 # tmp247, C
.L179:
	li	$2,-19			# 0xffffffed	 # tmp249,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1397, F, tmp249
	lbu	$2,%gp_rel(C)($28)	 # C.1391, C
	beql	$2,$0,.L180	 #, C.1391,,
	ori	$3,$3,0x40	 # tmp252, F.1397,

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.1399, F.1397, tmp250
	seb	$4,$2	 # C.1391, C.1391
	bltz	$4,.L181	 #, C.1391,
	sw	$3,%gp_rel(F)($28)	 # F.1399, F

	j	.L186	 #
	li	$3,-129			# 0xffffff7f	 # tmp255,

.L180:
	j	.L182	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L181:
	ori	$3,$3,0x80	 # tmp253, F.1399,
	j	.L183	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L182:
	li	$3,-129			# 0xffffff7f	 # tmp255,
.L186:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
.L183:
	sll	$2,$2,2	 # tmp258, C.1391,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L184	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L185	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L184:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L185:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlc
	.size	op_rlc, .-op_rlc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rld
	.type	op_rld, @function
op_rld:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1371, F
	lbu	$2,%gp_rel(D)($28)	 # D.1373, D
	seb	$5,$2	 # D.1373, D.1373
	bgez	$5,.L188	 #, D.1373,
	andi	$4,$3,0x1	 # old_c_flag, F.1371,

	ori	$3,$3,0x1	 # tmp243, F.1371,
	j	.L189	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L188:
	li	$5,-2			# 0xfffffffe	 # tmp244,
	and	$3,$3,$5	 # tmp245, F.1371, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L189:
	sll	$2,$2,1	 # tmp246, D.1373,
	andi	$2,$2,0x00ff	 # D.1377, tmp246
	beq	$4,$0,.L190	 #, old_c_flag,,
	sb	$2,%gp_rel(D)($28)	 # D.1377, D

	ori	$2,$2,0x1	 # tmp247, D.1377,
	sb	$2,%gp_rel(D)($28)	 # tmp247, D
.L190:
	li	$2,-19			# 0xffffffed	 # tmp249,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1379, F, tmp249
	lbu	$2,%gp_rel(D)($28)	 # D.1373, D
	beql	$2,$0,.L191	 #, D.1373,,
	ori	$3,$3,0x40	 # tmp252, F.1379,

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.1381, F.1379, tmp250
	seb	$4,$2	 # D.1373, D.1373
	bltz	$4,.L192	 #, D.1373,
	sw	$3,%gp_rel(F)($28)	 # F.1381, F

	j	.L197	 #
	li	$3,-129			# 0xffffff7f	 # tmp255,

.L191:
	j	.L193	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L192:
	ori	$3,$3,0x80	 # tmp253, F.1381,
	j	.L194	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L193:
	li	$3,-129			# 0xffffff7f	 # tmp255,
.L197:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
.L194:
	sll	$2,$2,2	 # tmp258, D.1373,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L195	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L196	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L195:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L196:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rld
	.size	op_rld, .-op_rld
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rle
	.type	op_rle, @function
op_rle:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1353, F
	lbu	$2,%gp_rel(E)($28)	 # E.1355, E
	seb	$5,$2	 # E.1355, E.1355
	bgez	$5,.L199	 #, E.1355,
	andi	$4,$3,0x1	 # old_c_flag, F.1353,

	ori	$3,$3,0x1	 # tmp243, F.1353,
	j	.L200	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L199:
	li	$5,-2			# 0xfffffffe	 # tmp244,
	and	$3,$3,$5	 # tmp245, F.1353, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L200:
	sll	$2,$2,1	 # tmp246, E.1355,
	andi	$2,$2,0x00ff	 # E.1359, tmp246
	beq	$4,$0,.L201	 #, old_c_flag,,
	sb	$2,%gp_rel(E)($28)	 # E.1359, E

	ori	$2,$2,0x1	 # tmp247, E.1359,
	sb	$2,%gp_rel(E)($28)	 # tmp247, E
.L201:
	li	$2,-19			# 0xffffffed	 # tmp249,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1361, F, tmp249
	lbu	$2,%gp_rel(E)($28)	 # E.1355, E
	beql	$2,$0,.L202	 #, E.1355,,
	ori	$3,$3,0x40	 # tmp252, F.1361,

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.1363, F.1361, tmp250
	seb	$4,$2	 # E.1355, E.1355
	bltz	$4,.L203	 #, E.1355,
	sw	$3,%gp_rel(F)($28)	 # F.1363, F

	j	.L208	 #
	li	$3,-129			# 0xffffff7f	 # tmp255,

.L202:
	j	.L204	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L203:
	ori	$3,$3,0x80	 # tmp253, F.1363,
	j	.L205	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L204:
	li	$3,-129			# 0xffffff7f	 # tmp255,
.L208:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
.L205:
	sll	$2,$2,2	 # tmp258, E.1355,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L206	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L207	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L206:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L207:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rle
	.size	op_rle, .-op_rle
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlh
	.type	op_rlh, @function
op_rlh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1335, F
	lbu	$2,%gp_rel(H)($28)	 # H.1337, H
	seb	$5,$2	 # H.1337, H.1337
	bgez	$5,.L210	 #, H.1337,
	andi	$4,$3,0x1	 # old_c_flag, F.1335,

	ori	$3,$3,0x1	 # tmp243, F.1335,
	j	.L211	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L210:
	li	$5,-2			# 0xfffffffe	 # tmp244,
	and	$3,$3,$5	 # tmp245, F.1335, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L211:
	sll	$2,$2,1	 # tmp246, H.1337,
	andi	$2,$2,0x00ff	 # H.1341, tmp246
	beq	$4,$0,.L212	 #, old_c_flag,,
	sb	$2,%gp_rel(H)($28)	 # H.1341, H

	ori	$2,$2,0x1	 # tmp247, H.1341,
	sb	$2,%gp_rel(H)($28)	 # tmp247, H
.L212:
	li	$2,-19			# 0xffffffed	 # tmp249,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1343, F, tmp249
	lbu	$2,%gp_rel(H)($28)	 # H.1337, H
	beql	$2,$0,.L213	 #, H.1337,,
	ori	$3,$3,0x40	 # tmp252, F.1343,

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.1345, F.1343, tmp250
	seb	$4,$2	 # H.1337, H.1337
	bltz	$4,.L214	 #, H.1337,
	sw	$3,%gp_rel(F)($28)	 # F.1345, F

	j	.L219	 #
	li	$3,-129			# 0xffffff7f	 # tmp255,

.L213:
	j	.L215	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L214:
	ori	$3,$3,0x80	 # tmp253, F.1345,
	j	.L216	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L215:
	li	$3,-129			# 0xffffff7f	 # tmp255,
.L219:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
.L216:
	sll	$2,$2,2	 # tmp258, H.1337,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L217	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L218	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L217:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L218:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlh
	.size	op_rlh, .-op_rlh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rll
	.type	op_rll, @function
op_rll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1317, F
	lbu	$2,%gp_rel(L)($28)	 # L.1319, L
	seb	$5,$2	 # L.1319, L.1319
	bgez	$5,.L221	 #, L.1319,
	andi	$4,$3,0x1	 # old_c_flag, F.1317,

	ori	$3,$3,0x1	 # tmp243, F.1317,
	j	.L222	 #
	sw	$3,%gp_rel(F)($28)	 # tmp243, F

.L221:
	li	$5,-2			# 0xfffffffe	 # tmp244,
	and	$3,$3,$5	 # tmp245, F.1317, tmp244
	sw	$3,%gp_rel(F)($28)	 # tmp245, F
.L222:
	sll	$2,$2,1	 # tmp246, L.1319,
	andi	$2,$2,0x00ff	 # L.1323, tmp246
	beq	$4,$0,.L223	 #, old_c_flag,,
	sb	$2,%gp_rel(L)($28)	 # L.1323, L

	ori	$2,$2,0x1	 # tmp247, L.1323,
	sb	$2,%gp_rel(L)($28)	 # tmp247, L
.L223:
	li	$2,-19			# 0xffffffed	 # tmp249,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1325, F, tmp249
	lbu	$2,%gp_rel(L)($28)	 # L.1319, L
	beql	$2,$0,.L224	 #, L.1319,,
	ori	$3,$3,0x40	 # tmp252, F.1325,

	li	$4,-65			# 0xffffffbf	 # tmp250,
	and	$3,$3,$4	 # F.1327, F.1325, tmp250
	seb	$4,$2	 # L.1319, L.1319
	bltz	$4,.L225	 #, L.1319,
	sw	$3,%gp_rel(F)($28)	 # F.1327, F

	j	.L230	 #
	li	$3,-129			# 0xffffff7f	 # tmp255,

.L224:
	j	.L226	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L225:
	ori	$3,$3,0x80	 # tmp253, F.1327,
	j	.L227	 #
	sw	$3,%gp_rel(F)($28)	 # tmp253, F

.L226:
	li	$3,-129			# 0xffffff7f	 # tmp255,
.L230:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp256, F, tmp255
	sw	$3,%gp_rel(F)($28)	 # tmp256, F
.L227:
	sll	$2,$2,2	 # tmp258, L.1319,
	lui	$3,%hi(parrity)	 # tmp257,
	addiu	$3,$3,%lo(parrity)	 # tmp260, tmp257,
	addu	$2,$2,$3	 # tmp259, tmp258, tmp260
	lw	$2,0($2)	 # tmp261, parrity
	beql	$2,$0,.L228	 #, tmp261,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp263,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp264, F, tmp263
	j	.L229	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L228:
	ori	$2,$2,0x4	 # tmp266, F,
	sw	$2,%gp_rel(F)($28)	 # tmp266, F
.L229:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rll
	.size	op_rll, .-op_rll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlhl
	.type	op_rlhl, @function
op_rlhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp250, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # D.6246, tmp250, L
	lw	$4,%gp_rel(F)($28)	 # F.1303, F
	lui	$3,%hi(ram)	 # tmp252,
	addiu	$3,$3,%lo(ram)	 # tmp254, tmp252,
	addu	$3,$2,$3	 # tmp253, D.6246, tmp254
	lbu	$3,0($3)	 # D.6249, ram
	seb	$6,$3	 # D.6249, D.6249
	bgez	$6,.L232	 #, D.6249,
	andi	$5,$4,0x1	 # old_c_flag, F.1303,

	ori	$4,$4,0x1	 # tmp256, F.1303,
	j	.L233	 #
	sw	$4,%gp_rel(F)($28)	 # tmp256, F

.L232:
	li	$6,-2			# 0xfffffffe	 # tmp257,
	and	$4,$4,$6	 # tmp258, F.1303, tmp257
	sw	$4,%gp_rel(F)($28)	 # tmp258, F
.L233:
	sll	$3,$3,1	 # tmp259, D.6249,
	andi	$3,$3,0x00ff	 # D.6256, tmp259
	lui	$4,%hi(ram)	 # tmp260,
	addiu	$4,$4,%lo(ram)	 # tmp262, tmp260,
	addu	$4,$2,$4	 # tmp261, D.6246, tmp262
	beq	$5,$0,.L234	 #, old_c_flag,,
	sb	$3,0($4)	 # D.6256, ram

	lui	$4,%hi(ram)	 # tmp263,
	addiu	$4,$4,%lo(ram)	 # tmp265, tmp263,
	addu	$4,$2,$4	 # tmp264, D.6246, tmp265
	ori	$3,$3,0x1	 # tmp266, D.6256,
	sb	$3,0($4)	 # tmp266, ram
.L234:
	li	$3,-19			# 0xffffffed	 # tmp268,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.1307, F, tmp268
	lui	$4,%hi(ram)	 # tmp269,
	addiu	$4,$4,%lo(ram)	 # tmp271, tmp269,
	addu	$2,$2,$4	 # tmp270, D.6246, tmp271
	lbu	$2,0($2)	 # D.6249, ram
	beql	$2,$0,.L235	 #, D.6249,,
	ori	$3,$3,0x40	 # tmp274, F.1307,

	li	$4,-65			# 0xffffffbf	 # tmp272,
	and	$3,$3,$4	 # F.1309, F.1307, tmp272
	seb	$4,$2	 # D.6249, D.6249
	bltz	$4,.L236	 #, D.6249,
	sw	$3,%gp_rel(F)($28)	 # F.1309, F

	j	.L241	 #
	li	$3,-129			# 0xffffff7f	 # tmp277,

.L235:
	j	.L237	 #
	sw	$3,%gp_rel(F)($28)	 # tmp274, F

.L236:
	ori	$3,$3,0x80	 # tmp275, F.1309,
	j	.L238	 #
	sw	$3,%gp_rel(F)($28)	 # tmp275, F

.L237:
	li	$3,-129			# 0xffffff7f	 # tmp277,
.L241:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp278, F, tmp277
	sw	$3,%gp_rel(F)($28)	 # tmp278, F
.L238:
	sll	$2,$2,2	 # tmp280, D.6249,
	lui	$3,%hi(parrity)	 # tmp279,
	addiu	$3,$3,%lo(parrity)	 # tmp282, tmp279,
	addu	$2,$2,$3	 # tmp281, tmp280, tmp282
	lw	$2,0($2)	 # tmp283, parrity
	beql	$2,$0,.L239	 #, tmp283,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp285,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp286, F, tmp285
	j	.L240	 #
	sw	$2,%gp_rel(F)($28)	 # tmp286, F

.L239:
	ori	$2,$2,0x4	 # tmp288, F,
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
.L240:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlhl
	.size	op_rlhl, .-op_rlhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrra
	.type	op_rrra, @function
op_rrra:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1141, F
	lbu	$2,%gp_rel(A)($28)	 # A.1143, A
	andi	$5,$2,0x1	 # tmp243, A.1143,
	beq	$5,$0,.L243	 #, tmp243,,
	andi	$4,$3,0x1	 # old_c_flag, F.1141,

	ori	$3,$3,0x1	 # tmp244, F.1141,
	j	.L244	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L243:
	li	$5,-2			# 0xfffffffe	 # tmp245,
	and	$3,$3,$5	 # tmp246, F.1141, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L244:
	srl	$2,$2,1	 # A.1146, A.1143,
	beq	$4,$0,.L245	 #, old_c_flag,,
	sb	$2,%gp_rel(A)($28)	 # A.1146, A

	li	$3,-128			# 0xffffff80	 # tmp249,
	or	$2,$2,$3	 # tmp248, A.1146, tmp249
	sb	$2,%gp_rel(A)($28)	 # tmp248, A
.L245:
	li	$2,-19			# 0xffffffed	 # tmp251,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1148, F, tmp251
	lbu	$2,%gp_rel(A)($28)	 # A.1143, A
	beql	$2,$0,.L246	 #, A.1143,,
	ori	$3,$3,0x40	 # tmp254, F.1148,

	li	$4,-65			# 0xffffffbf	 # tmp252,
	and	$3,$3,$4	 # F.1150, F.1148, tmp252
	seb	$4,$2	 # A.1143, A.1143
	bltz	$4,.L247	 #, A.1143,
	sw	$3,%gp_rel(F)($28)	 # F.1150, F

	j	.L252	 #
	li	$3,-129			# 0xffffff7f	 # tmp257,

.L246:
	j	.L248	 #
	sw	$3,%gp_rel(F)($28)	 # tmp254, F

.L247:
	ori	$3,$3,0x80	 # tmp255, F.1150,
	j	.L249	 #
	sw	$3,%gp_rel(F)($28)	 # tmp255, F

.L248:
	li	$3,-129			# 0xffffff7f	 # tmp257,
.L252:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp258, F, tmp257
	sw	$3,%gp_rel(F)($28)	 # tmp258, F
.L249:
	sll	$2,$2,2	 # tmp260, A.1143,
	lui	$3,%hi(parrity)	 # tmp259,
	addiu	$3,$3,%lo(parrity)	 # tmp262, tmp259,
	addu	$2,$2,$3	 # tmp261, tmp260, tmp262
	lw	$2,0($2)	 # tmp263, parrity
	beql	$2,$0,.L250	 #, tmp263,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp265,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp266, F, tmp265
	j	.L251	 #
	sw	$2,%gp_rel(F)($28)	 # tmp266, F

.L250:
	ori	$2,$2,0x4	 # tmp268, F,
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
.L251:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrra
	.size	op_rrra, .-op_rrra
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrb
	.type	op_rrb, @function
op_rrb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1265, F
	lbu	$2,%gp_rel(B)($28)	 # B.1267, B
	andi	$5,$2,0x1	 # tmp243, B.1267,
	beq	$5,$0,.L254	 #, tmp243,,
	andi	$4,$3,0x1	 # old_c_flag, F.1265,

	ori	$3,$3,0x1	 # tmp244, F.1265,
	j	.L255	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L254:
	li	$5,-2			# 0xfffffffe	 # tmp245,
	and	$3,$3,$5	 # tmp246, F.1265, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L255:
	srl	$2,$2,1	 # B.1270, B.1267,
	beq	$4,$0,.L256	 #, old_c_flag,,
	sb	$2,%gp_rel(B)($28)	 # B.1270, B

	li	$3,-128			# 0xffffff80	 # tmp249,
	or	$2,$2,$3	 # tmp248, B.1270, tmp249
	sb	$2,%gp_rel(B)($28)	 # tmp248, B
.L256:
	li	$2,-19			# 0xffffffed	 # tmp251,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1272, F, tmp251
	lbu	$2,%gp_rel(B)($28)	 # B.1267, B
	beql	$2,$0,.L257	 #, B.1267,,
	ori	$3,$3,0x40	 # tmp254, F.1272,

	li	$4,-65			# 0xffffffbf	 # tmp252,
	and	$3,$3,$4	 # F.1274, F.1272, tmp252
	seb	$4,$2	 # B.1267, B.1267
	bltz	$4,.L258	 #, B.1267,
	sw	$3,%gp_rel(F)($28)	 # F.1274, F

	j	.L263	 #
	li	$3,-129			# 0xffffff7f	 # tmp257,

.L257:
	j	.L259	 #
	sw	$3,%gp_rel(F)($28)	 # tmp254, F

.L258:
	ori	$3,$3,0x80	 # tmp255, F.1274,
	j	.L260	 #
	sw	$3,%gp_rel(F)($28)	 # tmp255, F

.L259:
	li	$3,-129			# 0xffffff7f	 # tmp257,
.L263:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp258, F, tmp257
	sw	$3,%gp_rel(F)($28)	 # tmp258, F
.L260:
	sll	$2,$2,2	 # tmp260, B.1267,
	lui	$3,%hi(parrity)	 # tmp259,
	addiu	$3,$3,%lo(parrity)	 # tmp262, tmp259,
	addu	$2,$2,$3	 # tmp261, tmp260, tmp262
	lw	$2,0($2)	 # tmp263, parrity
	beql	$2,$0,.L261	 #, tmp263,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp265,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp266, F, tmp265
	j	.L262	 #
	sw	$2,%gp_rel(F)($28)	 # tmp266, F

.L261:
	ori	$2,$2,0x4	 # tmp268, F,
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
.L262:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrb
	.size	op_rrb, .-op_rrb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrc
	.type	op_rrc, @function
op_rrc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1247, F
	lbu	$2,%gp_rel(C)($28)	 # C.1249, C
	andi	$5,$2,0x1	 # tmp243, C.1249,
	beq	$5,$0,.L265	 #, tmp243,,
	andi	$4,$3,0x1	 # old_c_flag, F.1247,

	ori	$3,$3,0x1	 # tmp244, F.1247,
	j	.L266	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L265:
	li	$5,-2			# 0xfffffffe	 # tmp245,
	and	$3,$3,$5	 # tmp246, F.1247, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L266:
	srl	$2,$2,1	 # C.1252, C.1249,
	beq	$4,$0,.L267	 #, old_c_flag,,
	sb	$2,%gp_rel(C)($28)	 # C.1252, C

	li	$3,-128			# 0xffffff80	 # tmp249,
	or	$2,$2,$3	 # tmp248, C.1252, tmp249
	sb	$2,%gp_rel(C)($28)	 # tmp248, C
.L267:
	li	$2,-19			# 0xffffffed	 # tmp251,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1254, F, tmp251
	lbu	$2,%gp_rel(C)($28)	 # C.1249, C
	beql	$2,$0,.L268	 #, C.1249,,
	ori	$3,$3,0x40	 # tmp254, F.1254,

	li	$4,-65			# 0xffffffbf	 # tmp252,
	and	$3,$3,$4	 # F.1256, F.1254, tmp252
	seb	$4,$2	 # C.1249, C.1249
	bltz	$4,.L269	 #, C.1249,
	sw	$3,%gp_rel(F)($28)	 # F.1256, F

	j	.L274	 #
	li	$3,-129			# 0xffffff7f	 # tmp257,

.L268:
	j	.L270	 #
	sw	$3,%gp_rel(F)($28)	 # tmp254, F

.L269:
	ori	$3,$3,0x80	 # tmp255, F.1256,
	j	.L271	 #
	sw	$3,%gp_rel(F)($28)	 # tmp255, F

.L270:
	li	$3,-129			# 0xffffff7f	 # tmp257,
.L274:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp258, F, tmp257
	sw	$3,%gp_rel(F)($28)	 # tmp258, F
.L271:
	sll	$2,$2,2	 # tmp260, C.1249,
	lui	$3,%hi(parrity)	 # tmp259,
	addiu	$3,$3,%lo(parrity)	 # tmp262, tmp259,
	addu	$2,$2,$3	 # tmp261, tmp260, tmp262
	lw	$2,0($2)	 # tmp263, parrity
	beql	$2,$0,.L272	 #, tmp263,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp265,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp266, F, tmp265
	j	.L273	 #
	sw	$2,%gp_rel(F)($28)	 # tmp266, F

.L272:
	ori	$2,$2,0x4	 # tmp268, F,
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
.L273:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrc
	.size	op_rrc, .-op_rrc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrd
	.type	op_rrd, @function
op_rrd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1229, F
	lbu	$2,%gp_rel(D)($28)	 # D.1231, D
	andi	$5,$2,0x1	 # tmp243, D.1231,
	beq	$5,$0,.L276	 #, tmp243,,
	andi	$4,$3,0x1	 # old_c_flag, F.1229,

	ori	$3,$3,0x1	 # tmp244, F.1229,
	j	.L277	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L276:
	li	$5,-2			# 0xfffffffe	 # tmp245,
	and	$3,$3,$5	 # tmp246, F.1229, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L277:
	srl	$2,$2,1	 # D.1234, D.1231,
	beq	$4,$0,.L278	 #, old_c_flag,,
	sb	$2,%gp_rel(D)($28)	 # D.1234, D

	li	$3,-128			# 0xffffff80	 # tmp249,
	or	$2,$2,$3	 # tmp248, D.1234, tmp249
	sb	$2,%gp_rel(D)($28)	 # tmp248, D
.L278:
	li	$2,-19			# 0xffffffed	 # tmp251,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1236, F, tmp251
	lbu	$2,%gp_rel(D)($28)	 # D.1231, D
	beql	$2,$0,.L279	 #, D.1231,,
	ori	$3,$3,0x40	 # tmp254, F.1236,

	li	$4,-65			# 0xffffffbf	 # tmp252,
	and	$3,$3,$4	 # F.1238, F.1236, tmp252
	seb	$4,$2	 # D.1231, D.1231
	bltz	$4,.L280	 #, D.1231,
	sw	$3,%gp_rel(F)($28)	 # F.1238, F

	j	.L285	 #
	li	$3,-129			# 0xffffff7f	 # tmp257,

.L279:
	j	.L281	 #
	sw	$3,%gp_rel(F)($28)	 # tmp254, F

.L280:
	ori	$3,$3,0x80	 # tmp255, F.1238,
	j	.L282	 #
	sw	$3,%gp_rel(F)($28)	 # tmp255, F

.L281:
	li	$3,-129			# 0xffffff7f	 # tmp257,
.L285:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp258, F, tmp257
	sw	$3,%gp_rel(F)($28)	 # tmp258, F
.L282:
	sll	$2,$2,2	 # tmp260, D.1231,
	lui	$3,%hi(parrity)	 # tmp259,
	addiu	$3,$3,%lo(parrity)	 # tmp262, tmp259,
	addu	$2,$2,$3	 # tmp261, tmp260, tmp262
	lw	$2,0($2)	 # tmp263, parrity
	beql	$2,$0,.L283	 #, tmp263,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp265,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp266, F, tmp265
	j	.L284	 #
	sw	$2,%gp_rel(F)($28)	 # tmp266, F

.L283:
	ori	$2,$2,0x4	 # tmp268, F,
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
.L284:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrd
	.size	op_rrd, .-op_rrd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rre
	.type	op_rre, @function
op_rre:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1211, F
	lbu	$2,%gp_rel(E)($28)	 # E.1213, E
	andi	$5,$2,0x1	 # tmp243, E.1213,
	beq	$5,$0,.L287	 #, tmp243,,
	andi	$4,$3,0x1	 # old_c_flag, F.1211,

	ori	$3,$3,0x1	 # tmp244, F.1211,
	j	.L288	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L287:
	li	$5,-2			# 0xfffffffe	 # tmp245,
	and	$3,$3,$5	 # tmp246, F.1211, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L288:
	srl	$2,$2,1	 # E.1216, E.1213,
	beq	$4,$0,.L289	 #, old_c_flag,,
	sb	$2,%gp_rel(E)($28)	 # E.1216, E

	li	$3,-128			# 0xffffff80	 # tmp249,
	or	$2,$2,$3	 # tmp248, E.1216, tmp249
	sb	$2,%gp_rel(E)($28)	 # tmp248, E
.L289:
	li	$2,-19			# 0xffffffed	 # tmp251,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1218, F, tmp251
	lbu	$2,%gp_rel(E)($28)	 # E.1213, E
	beql	$2,$0,.L290	 #, E.1213,,
	ori	$3,$3,0x40	 # tmp254, F.1218,

	li	$4,-65			# 0xffffffbf	 # tmp252,
	and	$3,$3,$4	 # F.1220, F.1218, tmp252
	seb	$4,$2	 # E.1213, E.1213
	bltz	$4,.L291	 #, E.1213,
	sw	$3,%gp_rel(F)($28)	 # F.1220, F

	j	.L296	 #
	li	$3,-129			# 0xffffff7f	 # tmp257,

.L290:
	j	.L292	 #
	sw	$3,%gp_rel(F)($28)	 # tmp254, F

.L291:
	ori	$3,$3,0x80	 # tmp255, F.1220,
	j	.L293	 #
	sw	$3,%gp_rel(F)($28)	 # tmp255, F

.L292:
	li	$3,-129			# 0xffffff7f	 # tmp257,
.L296:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp258, F, tmp257
	sw	$3,%gp_rel(F)($28)	 # tmp258, F
.L293:
	sll	$2,$2,2	 # tmp260, E.1213,
	lui	$3,%hi(parrity)	 # tmp259,
	addiu	$3,$3,%lo(parrity)	 # tmp262, tmp259,
	addu	$2,$2,$3	 # tmp261, tmp260, tmp262
	lw	$2,0($2)	 # tmp263, parrity
	beql	$2,$0,.L294	 #, tmp263,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp265,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp266, F, tmp265
	j	.L295	 #
	sw	$2,%gp_rel(F)($28)	 # tmp266, F

.L294:
	ori	$2,$2,0x4	 # tmp268, F,
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
.L295:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rre
	.size	op_rre, .-op_rre
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrh
	.type	op_rrh, @function
op_rrh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1193, F
	lbu	$2,%gp_rel(H)($28)	 # H.1195, H
	andi	$5,$2,0x1	 # tmp243, H.1195,
	beq	$5,$0,.L298	 #, tmp243,,
	andi	$4,$3,0x1	 # old_c_flag, F.1193,

	ori	$3,$3,0x1	 # tmp244, F.1193,
	j	.L299	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L298:
	li	$5,-2			# 0xfffffffe	 # tmp245,
	and	$3,$3,$5	 # tmp246, F.1193, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L299:
	srl	$2,$2,1	 # H.1198, H.1195,
	beq	$4,$0,.L300	 #, old_c_flag,,
	sb	$2,%gp_rel(H)($28)	 # H.1198, H

	li	$3,-128			# 0xffffff80	 # tmp249,
	or	$2,$2,$3	 # tmp248, H.1198, tmp249
	sb	$2,%gp_rel(H)($28)	 # tmp248, H
.L300:
	li	$2,-19			# 0xffffffed	 # tmp251,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1200, F, tmp251
	lbu	$2,%gp_rel(H)($28)	 # H.1195, H
	beql	$2,$0,.L301	 #, H.1195,,
	ori	$3,$3,0x40	 # tmp254, F.1200,

	li	$4,-65			# 0xffffffbf	 # tmp252,
	and	$3,$3,$4	 # F.1202, F.1200, tmp252
	seb	$4,$2	 # H.1195, H.1195
	bltz	$4,.L302	 #, H.1195,
	sw	$3,%gp_rel(F)($28)	 # F.1202, F

	j	.L307	 #
	li	$3,-129			# 0xffffff7f	 # tmp257,

.L301:
	j	.L303	 #
	sw	$3,%gp_rel(F)($28)	 # tmp254, F

.L302:
	ori	$3,$3,0x80	 # tmp255, F.1202,
	j	.L304	 #
	sw	$3,%gp_rel(F)($28)	 # tmp255, F

.L303:
	li	$3,-129			# 0xffffff7f	 # tmp257,
.L307:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp258, F, tmp257
	sw	$3,%gp_rel(F)($28)	 # tmp258, F
.L304:
	sll	$2,$2,2	 # tmp260, H.1195,
	lui	$3,%hi(parrity)	 # tmp259,
	addiu	$3,$3,%lo(parrity)	 # tmp262, tmp259,
	addu	$2,$2,$3	 # tmp261, tmp260, tmp262
	lw	$2,0($2)	 # tmp263, parrity
	beql	$2,$0,.L305	 #, tmp263,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp265,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp266, F, tmp265
	j	.L306	 #
	sw	$2,%gp_rel(F)($28)	 # tmp266, F

.L305:
	ori	$2,$2,0x4	 # tmp268, F,
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
.L306:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrh
	.size	op_rrh, .-op_rrh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrl
	.type	op_rrl, @function
op_rrl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(F)($28)	 # F.1175, F
	lbu	$2,%gp_rel(L)($28)	 # L.1177, L
	andi	$5,$2,0x1	 # tmp243, L.1177,
	beq	$5,$0,.L309	 #, tmp243,,
	andi	$4,$3,0x1	 # old_c_flag, F.1175,

	ori	$3,$3,0x1	 # tmp244, F.1175,
	j	.L310	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L309:
	li	$5,-2			# 0xfffffffe	 # tmp245,
	and	$3,$3,$5	 # tmp246, F.1175, tmp245
	sw	$3,%gp_rel(F)($28)	 # tmp246, F
.L310:
	srl	$2,$2,1	 # L.1180, L.1177,
	beq	$4,$0,.L311	 #, old_c_flag,,
	sb	$2,%gp_rel(L)($28)	 # L.1180, L

	li	$3,-128			# 0xffffff80	 # tmp249,
	or	$2,$2,$3	 # tmp248, L.1180, tmp249
	sb	$2,%gp_rel(L)($28)	 # tmp248, L
.L311:
	li	$2,-19			# 0xffffffed	 # tmp251,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.1182, F, tmp251
	lbu	$2,%gp_rel(L)($28)	 # L.1177, L
	beql	$2,$0,.L312	 #, L.1177,,
	ori	$3,$3,0x40	 # tmp254, F.1182,

	li	$4,-65			# 0xffffffbf	 # tmp252,
	and	$3,$3,$4	 # F.1184, F.1182, tmp252
	seb	$4,$2	 # L.1177, L.1177
	bltz	$4,.L313	 #, L.1177,
	sw	$3,%gp_rel(F)($28)	 # F.1184, F

	j	.L318	 #
	li	$3,-129			# 0xffffff7f	 # tmp257,

.L312:
	j	.L314	 #
	sw	$3,%gp_rel(F)($28)	 # tmp254, F

.L313:
	ori	$3,$3,0x80	 # tmp255, F.1184,
	j	.L315	 #
	sw	$3,%gp_rel(F)($28)	 # tmp255, F

.L314:
	li	$3,-129			# 0xffffff7f	 # tmp257,
.L318:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp258, F, tmp257
	sw	$3,%gp_rel(F)($28)	 # tmp258, F
.L315:
	sll	$2,$2,2	 # tmp260, L.1177,
	lui	$3,%hi(parrity)	 # tmp259,
	addiu	$3,$3,%lo(parrity)	 # tmp262, tmp259,
	addu	$2,$2,$3	 # tmp261, tmp260, tmp262
	lw	$2,0($2)	 # tmp263, parrity
	beql	$2,$0,.L316	 #, tmp263,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp265,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp266, F, tmp265
	j	.L317	 #
	sw	$2,%gp_rel(F)($28)	 # tmp266, F

.L316:
	ori	$2,$2,0x4	 # tmp268, F,
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
.L317:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrl
	.size	op_rrl, .-op_rrl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrhl
	.type	op_rrhl, @function
op_rrhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$4,%gp_rel(F)($28)	 # F.1159, F
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp251, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # D.5938, tmp251, L
	lui	$3,%hi(ram)	 # tmp253,
	addiu	$3,$3,%lo(ram)	 # tmp255, tmp253,
	addu	$3,$2,$3	 # tmp254, D.5938, tmp255
	lbu	$3,0($3)	 # D.5940, ram
	andi	$6,$3,0x1	 # tmp256, D.5940,
	beq	$6,$0,.L320	 #, tmp256,,
	andi	$5,$4,0x1	 # old_c_flag, F.1159,

	ori	$4,$4,0x1	 # tmp257, F.1159,
	j	.L321	 #
	sw	$4,%gp_rel(F)($28)	 # tmp257, F

.L320:
	li	$6,-2			# 0xfffffffe	 # tmp258,
	and	$4,$4,$6	 # tmp259, F.1159, tmp258
	sw	$4,%gp_rel(F)($28)	 # tmp259, F
.L321:
	srl	$3,$3,1	 # D.5949, D.5940,
	lui	$4,%hi(ram)	 # tmp261,
	addiu	$4,$4,%lo(ram)	 # tmp263, tmp261,
	addu	$4,$2,$4	 # tmp262, D.5938, tmp263
	beq	$5,$0,.L322	 #, old_c_flag,,
	sb	$3,0($4)	 # D.5949, ram

	lui	$4,%hi(ram)	 # tmp264,
	addiu	$4,$4,%lo(ram)	 # tmp266, tmp264,
	addu	$4,$2,$4	 # tmp265, D.5938, tmp266
	li	$5,-128			# 0xffffff80	 # tmp268,
	or	$3,$3,$5	 # tmp267, D.5949, tmp268
	sb	$3,0($4)	 # tmp267, ram
.L322:
	li	$3,-19			# 0xffffffed	 # tmp270,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.1165, F, tmp270
	lui	$4,%hi(ram)	 # tmp271,
	addiu	$4,$4,%lo(ram)	 # tmp273, tmp271,
	addu	$2,$2,$4	 # tmp272, D.5938, tmp273
	lbu	$2,0($2)	 # D.5940, ram
	beql	$2,$0,.L323	 #, D.5940,,
	ori	$3,$3,0x40	 # tmp276, F.1165,

	li	$4,-65			# 0xffffffbf	 # tmp274,
	and	$3,$3,$4	 # F.1167, F.1165, tmp274
	seb	$4,$2	 # D.5940, D.5940
	bltz	$4,.L324	 #, D.5940,
	sw	$3,%gp_rel(F)($28)	 # F.1167, F

	j	.L329	 #
	li	$3,-129			# 0xffffff7f	 # tmp279,

.L323:
	j	.L325	 #
	sw	$3,%gp_rel(F)($28)	 # tmp276, F

.L324:
	ori	$3,$3,0x80	 # tmp277, F.1167,
	j	.L326	 #
	sw	$3,%gp_rel(F)($28)	 # tmp277, F

.L325:
	li	$3,-129			# 0xffffff7f	 # tmp279,
.L329:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp280, F, tmp279
	sw	$3,%gp_rel(F)($28)	 # tmp280, F
.L326:
	sll	$2,$2,2	 # tmp282, D.5940,
	lui	$3,%hi(parrity)	 # tmp281,
	addiu	$3,$3,%lo(parrity)	 # tmp284, tmp281,
	addu	$2,$2,$3	 # tmp283, tmp282, tmp284
	lw	$2,0($2)	 # tmp285, parrity
	beql	$2,$0,.L327	 #, tmp285,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp287,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp288, F, tmp287
	j	.L328	 #
	sw	$2,%gp_rel(F)($28)	 # tmp288, F

.L327:
	ori	$2,$2,0x4	 # tmp290, F,
	sw	$2,%gp_rel(F)($28)	 # tmp290, F
.L328:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrhl
	.size	op_rrhl, .-op_rrhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrcra
	.type	op_rrcra, @function
op_rrcra:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.1425, A
	andi	$3,$2,0x1	 # tmp243, A.1425,
	beql	$3,$0,.L331	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp253,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1430, tmp244, tmp246
	srl	$2,$2,1	 # tmp247, A.1425,
	li	$4,-128			# 0xffffff80	 # tmp250,
	or	$2,$2,$4	 # tmp249, tmp247, tmp250
	j	.L332	 #
	sb	$2,%gp_rel(A)($28)	 # tmp249, A

.L331:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp251, F, tmp253
	li	$4,-19			# 0xffffffed	 # tmp254,
	and	$3,$3,$4	 # F.1430, tmp251, tmp254
	srl	$2,$2,1	 # tmp255, A.1425,
	sb	$2,%gp_rel(A)($28)	 # tmp255, A
.L332:
	lbu	$2,%gp_rel(A)($28)	 # A.1425, A
	beql	$2,$0,.L333	 #, A.1425,,
	ori	$3,$3,0x40	 # tmp258, F.1430,

	li	$4,-65			# 0xffffffbf	 # tmp256,
	and	$3,$3,$4	 # F.1434, F.1430, tmp256
	seb	$4,$2	 # A.1425, A.1425
	bltz	$4,.L334	 #, A.1425,
	sw	$3,%gp_rel(F)($28)	 # F.1434, F

	j	.L339	 #
	li	$3,-129			# 0xffffff7f	 # tmp261,

.L333:
	j	.L335	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L334:
	ori	$3,$3,0x80	 # tmp259, F.1434,
	j	.L336	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L335:
	li	$3,-129			# 0xffffff7f	 # tmp261,
.L339:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L336:
	sll	$2,$2,2	 # tmp264, A.1425,
	lui	$3,%hi(parrity)	 # tmp263,
	addiu	$3,$3,%lo(parrity)	 # tmp266, tmp263,
	addu	$2,$2,$3	 # tmp265, tmp264, tmp266
	lw	$2,0($2)	 # tmp267, parrity
	beql	$2,$0,.L337	 #, tmp267,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp269,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp270, F, tmp269
	j	.L338	 #
	sw	$2,%gp_rel(F)($28)	 # tmp270, F

.L337:
	ori	$2,$2,0x4	 # tmp272, F,
	sw	$2,%gp_rel(F)($28)	 # tmp272, F
.L338:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrcra
	.size	op_rrcra, .-op_rrcra
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrcb
	.type	op_rrcb, @function
op_rrcb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # B.1549, B
	andi	$3,$2,0x1	 # tmp243, B.1549,
	beql	$3,$0,.L341	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp253,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1554, tmp244, tmp246
	srl	$2,$2,1	 # tmp247, B.1549,
	li	$4,-128			# 0xffffff80	 # tmp250,
	or	$2,$2,$4	 # tmp249, tmp247, tmp250
	j	.L342	 #
	sb	$2,%gp_rel(B)($28)	 # tmp249, B

.L341:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp251, F, tmp253
	li	$4,-19			# 0xffffffed	 # tmp254,
	and	$3,$3,$4	 # F.1554, tmp251, tmp254
	srl	$2,$2,1	 # tmp255, B.1549,
	sb	$2,%gp_rel(B)($28)	 # tmp255, B
.L342:
	lbu	$2,%gp_rel(B)($28)	 # B.1549, B
	beql	$2,$0,.L343	 #, B.1549,,
	ori	$3,$3,0x40	 # tmp258, F.1554,

	li	$4,-65			# 0xffffffbf	 # tmp256,
	and	$3,$3,$4	 # F.1558, F.1554, tmp256
	seb	$4,$2	 # B.1549, B.1549
	bltz	$4,.L344	 #, B.1549,
	sw	$3,%gp_rel(F)($28)	 # F.1558, F

	j	.L349	 #
	li	$3,-129			# 0xffffff7f	 # tmp261,

.L343:
	j	.L345	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L344:
	ori	$3,$3,0x80	 # tmp259, F.1558,
	j	.L346	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L345:
	li	$3,-129			# 0xffffff7f	 # tmp261,
.L349:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L346:
	sll	$2,$2,2	 # tmp264, B.1549,
	lui	$3,%hi(parrity)	 # tmp263,
	addiu	$3,$3,%lo(parrity)	 # tmp266, tmp263,
	addu	$2,$2,$3	 # tmp265, tmp264, tmp266
	lw	$2,0($2)	 # tmp267, parrity
	beql	$2,$0,.L347	 #, tmp267,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp269,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp270, F, tmp269
	j	.L348	 #
	sw	$2,%gp_rel(F)($28)	 # tmp270, F

.L347:
	ori	$2,$2,0x4	 # tmp272, F,
	sw	$2,%gp_rel(F)($28)	 # tmp272, F
.L348:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrcb
	.size	op_rrcb, .-op_rrcb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrcc
	.type	op_rrcc, @function
op_rrcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # C.1531, C
	andi	$3,$2,0x1	 # tmp243, C.1531,
	beql	$3,$0,.L351	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp253,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1536, tmp244, tmp246
	srl	$2,$2,1	 # tmp247, C.1531,
	li	$4,-128			# 0xffffff80	 # tmp250,
	or	$2,$2,$4	 # tmp249, tmp247, tmp250
	j	.L352	 #
	sb	$2,%gp_rel(C)($28)	 # tmp249, C

.L351:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp251, F, tmp253
	li	$4,-19			# 0xffffffed	 # tmp254,
	and	$3,$3,$4	 # F.1536, tmp251, tmp254
	srl	$2,$2,1	 # tmp255, C.1531,
	sb	$2,%gp_rel(C)($28)	 # tmp255, C
.L352:
	lbu	$2,%gp_rel(C)($28)	 # C.1531, C
	beql	$2,$0,.L353	 #, C.1531,,
	ori	$3,$3,0x40	 # tmp258, F.1536,

	li	$4,-65			# 0xffffffbf	 # tmp256,
	and	$3,$3,$4	 # F.1540, F.1536, tmp256
	seb	$4,$2	 # C.1531, C.1531
	bltz	$4,.L354	 #, C.1531,
	sw	$3,%gp_rel(F)($28)	 # F.1540, F

	j	.L359	 #
	li	$3,-129			# 0xffffff7f	 # tmp261,

.L353:
	j	.L355	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L354:
	ori	$3,$3,0x80	 # tmp259, F.1540,
	j	.L356	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L355:
	li	$3,-129			# 0xffffff7f	 # tmp261,
.L359:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L356:
	sll	$2,$2,2	 # tmp264, C.1531,
	lui	$3,%hi(parrity)	 # tmp263,
	addiu	$3,$3,%lo(parrity)	 # tmp266, tmp263,
	addu	$2,$2,$3	 # tmp265, tmp264, tmp266
	lw	$2,0($2)	 # tmp267, parrity
	beql	$2,$0,.L357	 #, tmp267,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp269,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp270, F, tmp269
	j	.L358	 #
	sw	$2,%gp_rel(F)($28)	 # tmp270, F

.L357:
	ori	$2,$2,0x4	 # tmp272, F,
	sw	$2,%gp_rel(F)($28)	 # tmp272, F
.L358:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrcc
	.size	op_rrcc, .-op_rrcc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrcd
	.type	op_rrcd, @function
op_rrcd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # D.1513, D
	andi	$3,$2,0x1	 # tmp243, D.1513,
	beql	$3,$0,.L361	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp253,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1518, tmp244, tmp246
	srl	$2,$2,1	 # tmp247, D.1513,
	li	$4,-128			# 0xffffff80	 # tmp250,
	or	$2,$2,$4	 # tmp249, tmp247, tmp250
	j	.L362	 #
	sb	$2,%gp_rel(D)($28)	 # tmp249, D

.L361:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp251, F, tmp253
	li	$4,-19			# 0xffffffed	 # tmp254,
	and	$3,$3,$4	 # F.1518, tmp251, tmp254
	srl	$2,$2,1	 # tmp255, D.1513,
	sb	$2,%gp_rel(D)($28)	 # tmp255, D
.L362:
	lbu	$2,%gp_rel(D)($28)	 # D.1513, D
	beql	$2,$0,.L363	 #, D.1513,,
	ori	$3,$3,0x40	 # tmp258, F.1518,

	li	$4,-65			# 0xffffffbf	 # tmp256,
	and	$3,$3,$4	 # F.1522, F.1518, tmp256
	seb	$4,$2	 # D.1513, D.1513
	bltz	$4,.L364	 #, D.1513,
	sw	$3,%gp_rel(F)($28)	 # F.1522, F

	j	.L369	 #
	li	$3,-129			# 0xffffff7f	 # tmp261,

.L363:
	j	.L365	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L364:
	ori	$3,$3,0x80	 # tmp259, F.1522,
	j	.L366	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L365:
	li	$3,-129			# 0xffffff7f	 # tmp261,
.L369:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L366:
	sll	$2,$2,2	 # tmp264, D.1513,
	lui	$3,%hi(parrity)	 # tmp263,
	addiu	$3,$3,%lo(parrity)	 # tmp266, tmp263,
	addu	$2,$2,$3	 # tmp265, tmp264, tmp266
	lw	$2,0($2)	 # tmp267, parrity
	beql	$2,$0,.L367	 #, tmp267,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp269,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp270, F, tmp269
	j	.L368	 #
	sw	$2,%gp_rel(F)($28)	 # tmp270, F

.L367:
	ori	$2,$2,0x4	 # tmp272, F,
	sw	$2,%gp_rel(F)($28)	 # tmp272, F
.L368:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrcd
	.size	op_rrcd, .-op_rrcd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrce
	.type	op_rrce, @function
op_rrce:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # E.1495, E
	andi	$3,$2,0x1	 # tmp243, E.1495,
	beql	$3,$0,.L371	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp253,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1500, tmp244, tmp246
	srl	$2,$2,1	 # tmp247, E.1495,
	li	$4,-128			# 0xffffff80	 # tmp250,
	or	$2,$2,$4	 # tmp249, tmp247, tmp250
	j	.L372	 #
	sb	$2,%gp_rel(E)($28)	 # tmp249, E

.L371:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp251, F, tmp253
	li	$4,-19			# 0xffffffed	 # tmp254,
	and	$3,$3,$4	 # F.1500, tmp251, tmp254
	srl	$2,$2,1	 # tmp255, E.1495,
	sb	$2,%gp_rel(E)($28)	 # tmp255, E
.L372:
	lbu	$2,%gp_rel(E)($28)	 # E.1495, E
	beql	$2,$0,.L373	 #, E.1495,,
	ori	$3,$3,0x40	 # tmp258, F.1500,

	li	$4,-65			# 0xffffffbf	 # tmp256,
	and	$3,$3,$4	 # F.1504, F.1500, tmp256
	seb	$4,$2	 # E.1495, E.1495
	bltz	$4,.L374	 #, E.1495,
	sw	$3,%gp_rel(F)($28)	 # F.1504, F

	j	.L379	 #
	li	$3,-129			# 0xffffff7f	 # tmp261,

.L373:
	j	.L375	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L374:
	ori	$3,$3,0x80	 # tmp259, F.1504,
	j	.L376	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L375:
	li	$3,-129			# 0xffffff7f	 # tmp261,
.L379:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L376:
	sll	$2,$2,2	 # tmp264, E.1495,
	lui	$3,%hi(parrity)	 # tmp263,
	addiu	$3,$3,%lo(parrity)	 # tmp266, tmp263,
	addu	$2,$2,$3	 # tmp265, tmp264, tmp266
	lw	$2,0($2)	 # tmp267, parrity
	beql	$2,$0,.L377	 #, tmp267,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp269,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp270, F, tmp269
	j	.L378	 #
	sw	$2,%gp_rel(F)($28)	 # tmp270, F

.L377:
	ori	$2,$2,0x4	 # tmp272, F,
	sw	$2,%gp_rel(F)($28)	 # tmp272, F
.L378:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrce
	.size	op_rrce, .-op_rrce
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrch
	.type	op_rrch, @function
op_rrch:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H.1477, H
	andi	$3,$2,0x1	 # tmp243, H.1477,
	beql	$3,$0,.L381	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp253,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1482, tmp244, tmp246
	srl	$2,$2,1	 # tmp247, H.1477,
	li	$4,-128			# 0xffffff80	 # tmp250,
	or	$2,$2,$4	 # tmp249, tmp247, tmp250
	j	.L382	 #
	sb	$2,%gp_rel(H)($28)	 # tmp249, H

.L381:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp251, F, tmp253
	li	$4,-19			# 0xffffffed	 # tmp254,
	and	$3,$3,$4	 # F.1482, tmp251, tmp254
	srl	$2,$2,1	 # tmp255, H.1477,
	sb	$2,%gp_rel(H)($28)	 # tmp255, H
.L382:
	lbu	$2,%gp_rel(H)($28)	 # H.1477, H
	beql	$2,$0,.L383	 #, H.1477,,
	ori	$3,$3,0x40	 # tmp258, F.1482,

	li	$4,-65			# 0xffffffbf	 # tmp256,
	and	$3,$3,$4	 # F.1486, F.1482, tmp256
	seb	$4,$2	 # H.1477, H.1477
	bltz	$4,.L384	 #, H.1477,
	sw	$3,%gp_rel(F)($28)	 # F.1486, F

	j	.L389	 #
	li	$3,-129			# 0xffffff7f	 # tmp261,

.L383:
	j	.L385	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L384:
	ori	$3,$3,0x80	 # tmp259, F.1486,
	j	.L386	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L385:
	li	$3,-129			# 0xffffff7f	 # tmp261,
.L389:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L386:
	sll	$2,$2,2	 # tmp264, H.1477,
	lui	$3,%hi(parrity)	 # tmp263,
	addiu	$3,$3,%lo(parrity)	 # tmp266, tmp263,
	addu	$2,$2,$3	 # tmp265, tmp264, tmp266
	lw	$2,0($2)	 # tmp267, parrity
	beql	$2,$0,.L387	 #, tmp267,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp269,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp270, F, tmp269
	j	.L388	 #
	sw	$2,%gp_rel(F)($28)	 # tmp270, F

.L387:
	ori	$2,$2,0x4	 # tmp272, F,
	sw	$2,%gp_rel(F)($28)	 # tmp272, F
.L388:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrch
	.size	op_rrch, .-op_rrch
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrcl
	.type	op_rrcl, @function
op_rrcl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # L.1459, L
	andi	$3,$2,0x1	 # tmp243, L.1459,
	beql	$3,$0,.L391	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp253,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1464, tmp244, tmp246
	srl	$2,$2,1	 # tmp247, L.1459,
	li	$4,-128			# 0xffffff80	 # tmp250,
	or	$2,$2,$4	 # tmp249, tmp247, tmp250
	j	.L392	 #
	sb	$2,%gp_rel(L)($28)	 # tmp249, L

.L391:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp251, F, tmp253
	li	$4,-19			# 0xffffffed	 # tmp254,
	and	$3,$3,$4	 # F.1464, tmp251, tmp254
	srl	$2,$2,1	 # tmp255, L.1459,
	sb	$2,%gp_rel(L)($28)	 # tmp255, L
.L392:
	lbu	$2,%gp_rel(L)($28)	 # L.1459, L
	beql	$2,$0,.L393	 #, L.1459,,
	ori	$3,$3,0x40	 # tmp258, F.1464,

	li	$4,-65			# 0xffffffbf	 # tmp256,
	and	$3,$3,$4	 # F.1468, F.1464, tmp256
	seb	$4,$2	 # L.1459, L.1459
	bltz	$4,.L394	 #, L.1459,
	sw	$3,%gp_rel(F)($28)	 # F.1468, F

	j	.L399	 #
	li	$3,-129			# 0xffffff7f	 # tmp261,

.L393:
	j	.L395	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L394:
	ori	$3,$3,0x80	 # tmp259, F.1468,
	j	.L396	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L395:
	li	$3,-129			# 0xffffff7f	 # tmp261,
.L399:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L396:
	sll	$2,$2,2	 # tmp264, L.1459,
	lui	$3,%hi(parrity)	 # tmp263,
	addiu	$3,$3,%lo(parrity)	 # tmp266, tmp263,
	addu	$2,$2,$3	 # tmp265, tmp264, tmp266
	lw	$2,0($2)	 # tmp267, parrity
	beql	$2,$0,.L397	 #, tmp267,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp269,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp270, F, tmp269
	j	.L398	 #
	sw	$2,%gp_rel(F)($28)	 # tmp270, F

.L397:
	ori	$2,$2,0x4	 # tmp272, F,
	sw	$2,%gp_rel(F)($28)	 # tmp272, F
.L398:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrcl
	.size	op_rrcl, .-op_rrcl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrchl
	.type	op_rrchl, @function
op_rrchl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp251, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # D.6541, tmp251, L
	lui	$3,%hi(ram)	 # tmp253,
	addiu	$3,$3,%lo(ram)	 # tmp255, tmp253,
	addu	$3,$2,$3	 # tmp254, D.6541, tmp255
	lbu	$3,0($3)	 # D.6542, ram
	andi	$4,$3,0x1	 # tmp256, D.6542,
	beql	$4,$0,.L401	 #, tmp256,,
	li	$4,-2			# 0xfffffffe	 # tmp269,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp257, F,
	li	$5,-19			# 0xffffffed	 # tmp259,
	and	$4,$4,$5	 # F.1449, tmp257, tmp259
	lui	$5,%hi(ram)	 # tmp260,
	addiu	$5,$5,%lo(ram)	 # tmp262, tmp260,
	addu	$5,$2,$5	 # tmp261, D.6541, tmp262
	srl	$3,$3,1	 # tmp263, D.6542,
	li	$6,-128			# 0xffffff80	 # tmp266,
	or	$3,$3,$6	 # tmp265, tmp263, tmp266
	j	.L402	 #
	sb	$3,0($5)	 # tmp265, ram

.L401:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp267, F, tmp269
	li	$5,-19			# 0xffffffed	 # tmp270,
	and	$4,$4,$5	 # F.1449, tmp267, tmp270
	lui	$5,%hi(ram)	 # tmp271,
	addiu	$5,$5,%lo(ram)	 # tmp273, tmp271,
	addu	$5,$2,$5	 # tmp272, D.6541, tmp273
	srl	$3,$3,1	 # tmp274, D.6542,
	sb	$3,0($5)	 # tmp274, ram
.L402:
	lui	$3,%hi(ram)	 # tmp275,
	addiu	$3,$3,%lo(ram)	 # tmp277, tmp275,
	addu	$2,$2,$3	 # tmp276, D.6541, tmp277
	lbu	$2,0($2)	 # D.6542, ram
	beql	$2,$0,.L403	 #, D.6542,,
	ori	$4,$4,0x40	 # tmp280, F.1449,

	li	$3,-65			# 0xffffffbf	 # tmp278,
	and	$4,$4,$3	 # F.1451, F.1449, tmp278
	seb	$3,$2	 # D.6542, D.6542
	bltz	$3,.L404	 #, D.6542,
	sw	$4,%gp_rel(F)($28)	 # F.1451, F

	j	.L409	 #
	li	$3,-129			# 0xffffff7f	 # tmp283,

.L403:
	j	.L405	 #
	sw	$4,%gp_rel(F)($28)	 # tmp280, F

.L404:
	ori	$4,$4,0x80	 # tmp281, F.1451,
	j	.L406	 #
	sw	$4,%gp_rel(F)($28)	 # tmp281, F

.L405:
	li	$3,-129			# 0xffffff7f	 # tmp283,
.L409:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp284, F, tmp283
	sw	$3,%gp_rel(F)($28)	 # tmp284, F
.L406:
	sll	$2,$2,2	 # tmp286, D.6542,
	lui	$3,%hi(parrity)	 # tmp285,
	addiu	$3,$3,%lo(parrity)	 # tmp288, tmp285,
	addu	$2,$2,$3	 # tmp287, tmp286, tmp288
	lw	$2,0($2)	 # tmp289, parrity
	beql	$2,$0,.L407	 #, tmp289,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp291,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp292, F, tmp291
	j	.L408	 #
	sw	$2,%gp_rel(F)($28)	 # tmp292, F

.L407:
	ori	$2,$2,0x4	 # tmp294, F,
	sw	$2,%gp_rel(F)($28)	 # tmp294, F
.L408:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrchl
	.size	op_rrchl, .-op_rrchl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlcra
	.type	op_rlcra, @function
op_rlcra:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.1567, A
	andi	$3,$2,0x80	 # tmp243, A.1567,
	beql	$3,$0,.L411	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp252,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1572, tmp244, tmp246
	sll	$2,$2,1	 # tmp247, A.1567,
	ori	$2,$2,0x1	 # tmp249, tmp247,
	j	.L412	 #
	sb	$2,%gp_rel(A)($28)	 # tmp249, A

.L411:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp252
	li	$4,-19			# 0xffffffed	 # tmp253,
	and	$3,$3,$4	 # F.1572, tmp250, tmp253
	sll	$2,$2,1	 # tmp254, A.1567,
	sb	$2,%gp_rel(A)($28)	 # tmp254, A
.L412:
	lbu	$2,%gp_rel(A)($28)	 # A.1567, A
	beql	$2,$0,.L413	 #, A.1567,,
	ori	$3,$3,0x40	 # tmp257, F.1572,

	li	$4,-65			# 0xffffffbf	 # tmp255,
	and	$3,$3,$4	 # F.1576, F.1572, tmp255
	seb	$4,$2	 # A.1567, A.1567
	bltz	$4,.L414	 #, A.1567,
	sw	$3,%gp_rel(F)($28)	 # F.1576, F

	j	.L419	 #
	li	$3,-129			# 0xffffff7f	 # tmp260,

.L413:
	j	.L415	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L414:
	ori	$3,$3,0x80	 # tmp258, F.1576,
	j	.L416	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L415:
	li	$3,-129			# 0xffffff7f	 # tmp260,
.L419:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp261, F, tmp260
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L416:
	sll	$2,$2,2	 # tmp263, A.1567,
	lui	$3,%hi(parrity)	 # tmp262,
	addiu	$3,$3,%lo(parrity)	 # tmp265, tmp262,
	addu	$2,$2,$3	 # tmp264, tmp263, tmp265
	lw	$2,0($2)	 # tmp266, parrity
	beql	$2,$0,.L417	 #, tmp266,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp268,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp269, F, tmp268
	j	.L418	 #
	sw	$2,%gp_rel(F)($28)	 # tmp269, F

.L417:
	ori	$2,$2,0x4	 # tmp271, F,
	sw	$2,%gp_rel(F)($28)	 # tmp271, F
.L418:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlcra
	.size	op_rlcra, .-op_rlcra
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlcb
	.type	op_rlcb, @function
op_rlcb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # B.1691, B
	andi	$3,$2,0x80	 # tmp243, B.1691,
	beql	$3,$0,.L421	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp252,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1696, tmp244, tmp246
	sll	$2,$2,1	 # tmp247, B.1691,
	ori	$2,$2,0x1	 # tmp249, tmp247,
	j	.L422	 #
	sb	$2,%gp_rel(B)($28)	 # tmp249, B

.L421:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp252
	li	$4,-19			# 0xffffffed	 # tmp253,
	and	$3,$3,$4	 # F.1696, tmp250, tmp253
	sll	$2,$2,1	 # tmp254, B.1691,
	sb	$2,%gp_rel(B)($28)	 # tmp254, B
.L422:
	lbu	$2,%gp_rel(B)($28)	 # B.1691, B
	beql	$2,$0,.L423	 #, B.1691,,
	ori	$3,$3,0x40	 # tmp257, F.1696,

	li	$4,-65			# 0xffffffbf	 # tmp255,
	and	$3,$3,$4	 # F.1700, F.1696, tmp255
	seb	$4,$2	 # B.1691, B.1691
	bltz	$4,.L424	 #, B.1691,
	sw	$3,%gp_rel(F)($28)	 # F.1700, F

	j	.L429	 #
	li	$3,-129			# 0xffffff7f	 # tmp260,

.L423:
	j	.L425	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L424:
	ori	$3,$3,0x80	 # tmp258, F.1700,
	j	.L426	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L425:
	li	$3,-129			# 0xffffff7f	 # tmp260,
.L429:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp261, F, tmp260
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L426:
	sll	$2,$2,2	 # tmp263, B.1691,
	lui	$3,%hi(parrity)	 # tmp262,
	addiu	$3,$3,%lo(parrity)	 # tmp265, tmp262,
	addu	$2,$2,$3	 # tmp264, tmp263, tmp265
	lw	$2,0($2)	 # tmp266, parrity
	beql	$2,$0,.L427	 #, tmp266,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp268,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp269, F, tmp268
	j	.L428	 #
	sw	$2,%gp_rel(F)($28)	 # tmp269, F

.L427:
	ori	$2,$2,0x4	 # tmp271, F,
	sw	$2,%gp_rel(F)($28)	 # tmp271, F
.L428:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlcb
	.size	op_rlcb, .-op_rlcb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlcc
	.type	op_rlcc, @function
op_rlcc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # C.1673, C
	andi	$3,$2,0x80	 # tmp243, C.1673,
	beql	$3,$0,.L431	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp252,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1678, tmp244, tmp246
	sll	$2,$2,1	 # tmp247, C.1673,
	ori	$2,$2,0x1	 # tmp249, tmp247,
	j	.L432	 #
	sb	$2,%gp_rel(C)($28)	 # tmp249, C

.L431:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp252
	li	$4,-19			# 0xffffffed	 # tmp253,
	and	$3,$3,$4	 # F.1678, tmp250, tmp253
	sll	$2,$2,1	 # tmp254, C.1673,
	sb	$2,%gp_rel(C)($28)	 # tmp254, C
.L432:
	lbu	$2,%gp_rel(C)($28)	 # C.1673, C
	beql	$2,$0,.L433	 #, C.1673,,
	ori	$3,$3,0x40	 # tmp257, F.1678,

	li	$4,-65			# 0xffffffbf	 # tmp255,
	and	$3,$3,$4	 # F.1682, F.1678, tmp255
	seb	$4,$2	 # C.1673, C.1673
	bltz	$4,.L434	 #, C.1673,
	sw	$3,%gp_rel(F)($28)	 # F.1682, F

	j	.L439	 #
	li	$3,-129			# 0xffffff7f	 # tmp260,

.L433:
	j	.L435	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L434:
	ori	$3,$3,0x80	 # tmp258, F.1682,
	j	.L436	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L435:
	li	$3,-129			# 0xffffff7f	 # tmp260,
.L439:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp261, F, tmp260
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L436:
	sll	$2,$2,2	 # tmp263, C.1673,
	lui	$3,%hi(parrity)	 # tmp262,
	addiu	$3,$3,%lo(parrity)	 # tmp265, tmp262,
	addu	$2,$2,$3	 # tmp264, tmp263, tmp265
	lw	$2,0($2)	 # tmp266, parrity
	beql	$2,$0,.L437	 #, tmp266,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp268,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp269, F, tmp268
	j	.L438	 #
	sw	$2,%gp_rel(F)($28)	 # tmp269, F

.L437:
	ori	$2,$2,0x4	 # tmp271, F,
	sw	$2,%gp_rel(F)($28)	 # tmp271, F
.L438:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlcc
	.size	op_rlcc, .-op_rlcc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlcd
	.type	op_rlcd, @function
op_rlcd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # D.1655, D
	andi	$3,$2,0x80	 # tmp243, D.1655,
	beql	$3,$0,.L441	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp252,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1660, tmp244, tmp246
	sll	$2,$2,1	 # tmp247, D.1655,
	ori	$2,$2,0x1	 # tmp249, tmp247,
	j	.L442	 #
	sb	$2,%gp_rel(D)($28)	 # tmp249, D

.L441:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp252
	li	$4,-19			# 0xffffffed	 # tmp253,
	and	$3,$3,$4	 # F.1660, tmp250, tmp253
	sll	$2,$2,1	 # tmp254, D.1655,
	sb	$2,%gp_rel(D)($28)	 # tmp254, D
.L442:
	lbu	$2,%gp_rel(D)($28)	 # D.1655, D
	beql	$2,$0,.L443	 #, D.1655,,
	ori	$3,$3,0x40	 # tmp257, F.1660,

	li	$4,-65			# 0xffffffbf	 # tmp255,
	and	$3,$3,$4	 # F.1664, F.1660, tmp255
	seb	$4,$2	 # D.1655, D.1655
	bltz	$4,.L444	 #, D.1655,
	sw	$3,%gp_rel(F)($28)	 # F.1664, F

	j	.L449	 #
	li	$3,-129			# 0xffffff7f	 # tmp260,

.L443:
	j	.L445	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L444:
	ori	$3,$3,0x80	 # tmp258, F.1664,
	j	.L446	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L445:
	li	$3,-129			# 0xffffff7f	 # tmp260,
.L449:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp261, F, tmp260
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L446:
	sll	$2,$2,2	 # tmp263, D.1655,
	lui	$3,%hi(parrity)	 # tmp262,
	addiu	$3,$3,%lo(parrity)	 # tmp265, tmp262,
	addu	$2,$2,$3	 # tmp264, tmp263, tmp265
	lw	$2,0($2)	 # tmp266, parrity
	beql	$2,$0,.L447	 #, tmp266,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp268,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp269, F, tmp268
	j	.L448	 #
	sw	$2,%gp_rel(F)($28)	 # tmp269, F

.L447:
	ori	$2,$2,0x4	 # tmp271, F,
	sw	$2,%gp_rel(F)($28)	 # tmp271, F
.L448:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlcd
	.size	op_rlcd, .-op_rlcd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlce
	.type	op_rlce, @function
op_rlce:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # E.1637, E
	andi	$3,$2,0x80	 # tmp243, E.1637,
	beql	$3,$0,.L451	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp252,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1642, tmp244, tmp246
	sll	$2,$2,1	 # tmp247, E.1637,
	ori	$2,$2,0x1	 # tmp249, tmp247,
	j	.L452	 #
	sb	$2,%gp_rel(E)($28)	 # tmp249, E

.L451:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp252
	li	$4,-19			# 0xffffffed	 # tmp253,
	and	$3,$3,$4	 # F.1642, tmp250, tmp253
	sll	$2,$2,1	 # tmp254, E.1637,
	sb	$2,%gp_rel(E)($28)	 # tmp254, E
.L452:
	lbu	$2,%gp_rel(E)($28)	 # E.1637, E
	beql	$2,$0,.L453	 #, E.1637,,
	ori	$3,$3,0x40	 # tmp257, F.1642,

	li	$4,-65			# 0xffffffbf	 # tmp255,
	and	$3,$3,$4	 # F.1646, F.1642, tmp255
	seb	$4,$2	 # E.1637, E.1637
	bltz	$4,.L454	 #, E.1637,
	sw	$3,%gp_rel(F)($28)	 # F.1646, F

	j	.L459	 #
	li	$3,-129			# 0xffffff7f	 # tmp260,

.L453:
	j	.L455	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L454:
	ori	$3,$3,0x80	 # tmp258, F.1646,
	j	.L456	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L455:
	li	$3,-129			# 0xffffff7f	 # tmp260,
.L459:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp261, F, tmp260
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L456:
	sll	$2,$2,2	 # tmp263, E.1637,
	lui	$3,%hi(parrity)	 # tmp262,
	addiu	$3,$3,%lo(parrity)	 # tmp265, tmp262,
	addu	$2,$2,$3	 # tmp264, tmp263, tmp265
	lw	$2,0($2)	 # tmp266, parrity
	beql	$2,$0,.L457	 #, tmp266,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp268,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp269, F, tmp268
	j	.L458	 #
	sw	$2,%gp_rel(F)($28)	 # tmp269, F

.L457:
	ori	$2,$2,0x4	 # tmp271, F,
	sw	$2,%gp_rel(F)($28)	 # tmp271, F
.L458:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlce
	.size	op_rlce, .-op_rlce
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlch
	.type	op_rlch, @function
op_rlch:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H.1619, H
	andi	$3,$2,0x80	 # tmp243, H.1619,
	beql	$3,$0,.L461	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp252,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1624, tmp244, tmp246
	sll	$2,$2,1	 # tmp247, H.1619,
	ori	$2,$2,0x1	 # tmp249, tmp247,
	j	.L462	 #
	sb	$2,%gp_rel(H)($28)	 # tmp249, H

.L461:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp252
	li	$4,-19			# 0xffffffed	 # tmp253,
	and	$3,$3,$4	 # F.1624, tmp250, tmp253
	sll	$2,$2,1	 # tmp254, H.1619,
	sb	$2,%gp_rel(H)($28)	 # tmp254, H
.L462:
	lbu	$2,%gp_rel(H)($28)	 # H.1619, H
	beql	$2,$0,.L463	 #, H.1619,,
	ori	$3,$3,0x40	 # tmp257, F.1624,

	li	$4,-65			# 0xffffffbf	 # tmp255,
	and	$3,$3,$4	 # F.1628, F.1624, tmp255
	seb	$4,$2	 # H.1619, H.1619
	bltz	$4,.L464	 #, H.1619,
	sw	$3,%gp_rel(F)($28)	 # F.1628, F

	j	.L469	 #
	li	$3,-129			# 0xffffff7f	 # tmp260,

.L463:
	j	.L465	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L464:
	ori	$3,$3,0x80	 # tmp258, F.1628,
	j	.L466	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L465:
	li	$3,-129			# 0xffffff7f	 # tmp260,
.L469:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp261, F, tmp260
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L466:
	sll	$2,$2,2	 # tmp263, H.1619,
	lui	$3,%hi(parrity)	 # tmp262,
	addiu	$3,$3,%lo(parrity)	 # tmp265, tmp262,
	addu	$2,$2,$3	 # tmp264, tmp263, tmp265
	lw	$2,0($2)	 # tmp266, parrity
	beql	$2,$0,.L467	 #, tmp266,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp268,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp269, F, tmp268
	j	.L468	 #
	sw	$2,%gp_rel(F)($28)	 # tmp269, F

.L467:
	ori	$2,$2,0x4	 # tmp271, F,
	sw	$2,%gp_rel(F)($28)	 # tmp271, F
.L468:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlch
	.size	op_rlch, .-op_rlch
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlcl
	.type	op_rlcl, @function
op_rlcl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # L.1601, L
	andi	$3,$2,0x80	 # tmp243, L.1601,
	beql	$3,$0,.L471	 #, tmp243,,
	li	$3,-2			# 0xfffffffe	 # tmp252,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp244, F,
	li	$4,-19			# 0xffffffed	 # tmp246,
	and	$3,$3,$4	 # F.1606, tmp244, tmp246
	sll	$2,$2,1	 # tmp247, L.1601,
	ori	$2,$2,0x1	 # tmp249, tmp247,
	j	.L472	 #
	sb	$2,%gp_rel(L)($28)	 # tmp249, L

.L471:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp250, F, tmp252
	li	$4,-19			# 0xffffffed	 # tmp253,
	and	$3,$3,$4	 # F.1606, tmp250, tmp253
	sll	$2,$2,1	 # tmp254, L.1601,
	sb	$2,%gp_rel(L)($28)	 # tmp254, L
.L472:
	lbu	$2,%gp_rel(L)($28)	 # L.1601, L
	beql	$2,$0,.L473	 #, L.1601,,
	ori	$3,$3,0x40	 # tmp257, F.1606,

	li	$4,-65			# 0xffffffbf	 # tmp255,
	and	$3,$3,$4	 # F.1610, F.1606, tmp255
	seb	$4,$2	 # L.1601, L.1601
	bltz	$4,.L474	 #, L.1601,
	sw	$3,%gp_rel(F)($28)	 # F.1610, F

	j	.L479	 #
	li	$3,-129			# 0xffffff7f	 # tmp260,

.L473:
	j	.L475	 #
	sw	$3,%gp_rel(F)($28)	 # tmp257, F

.L474:
	ori	$3,$3,0x80	 # tmp258, F.1610,
	j	.L476	 #
	sw	$3,%gp_rel(F)($28)	 # tmp258, F

.L475:
	li	$3,-129			# 0xffffff7f	 # tmp260,
.L479:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp261, F, tmp260
	sw	$3,%gp_rel(F)($28)	 # tmp261, F
.L476:
	sll	$2,$2,2	 # tmp263, L.1601,
	lui	$3,%hi(parrity)	 # tmp262,
	addiu	$3,$3,%lo(parrity)	 # tmp265, tmp262,
	addu	$2,$2,$3	 # tmp264, tmp263, tmp265
	lw	$2,0($2)	 # tmp266, parrity
	beql	$2,$0,.L477	 #, tmp266,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp268,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp269, F, tmp268
	j	.L478	 #
	sw	$2,%gp_rel(F)($28)	 # tmp269, F

.L477:
	ori	$2,$2,0x4	 # tmp271, F,
	sw	$2,%gp_rel(F)($28)	 # tmp271, F
.L478:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlcl
	.size	op_rlcl, .-op_rlcl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlchl
	.type	op_rlchl, @function
op_rlchl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp251, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # D.6836, tmp251, L
	lui	$3,%hi(ram)	 # tmp253,
	addiu	$3,$3,%lo(ram)	 # tmp255, tmp253,
	addu	$3,$2,$3	 # tmp254, D.6836, tmp255
	lbu	$3,0($3)	 # D.6837, ram
	andi	$4,$3,0x80	 # tmp256, D.6837,
	beql	$4,$0,.L481	 #, tmp256,,
	li	$4,-2			# 0xfffffffe	 # tmp268,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp257, F,
	li	$5,-19			# 0xffffffed	 # tmp259,
	and	$4,$4,$5	 # F.1591, tmp257, tmp259
	lui	$5,%hi(ram)	 # tmp260,
	addiu	$5,$5,%lo(ram)	 # tmp262, tmp260,
	addu	$5,$2,$5	 # tmp261, D.6836, tmp262
	sll	$3,$3,1	 # tmp263, D.6837,
	ori	$3,$3,0x1	 # tmp265, tmp263,
	j	.L482	 #
	sb	$3,0($5)	 # tmp265, ram

.L481:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp266, F, tmp268
	li	$5,-19			# 0xffffffed	 # tmp269,
	and	$4,$4,$5	 # F.1591, tmp266, tmp269
	lui	$5,%hi(ram)	 # tmp270,
	addiu	$5,$5,%lo(ram)	 # tmp272, tmp270,
	addu	$5,$2,$5	 # tmp271, D.6836, tmp272
	sll	$3,$3,1	 # tmp273, D.6837,
	sb	$3,0($5)	 # tmp273, ram
.L482:
	lui	$3,%hi(ram)	 # tmp274,
	addiu	$3,$3,%lo(ram)	 # tmp276, tmp274,
	addu	$2,$2,$3	 # tmp275, D.6836, tmp276
	lbu	$2,0($2)	 # D.6837, ram
	beql	$2,$0,.L483	 #, D.6837,,
	ori	$4,$4,0x40	 # tmp279, F.1591,

	li	$3,-65			# 0xffffffbf	 # tmp277,
	and	$4,$4,$3	 # F.1593, F.1591, tmp277
	seb	$3,$2	 # D.6837, D.6837
	bltz	$3,.L484	 #, D.6837,
	sw	$4,%gp_rel(F)($28)	 # F.1593, F

	j	.L489	 #
	li	$3,-129			# 0xffffff7f	 # tmp282,

.L483:
	j	.L485	 #
	sw	$4,%gp_rel(F)($28)	 # tmp279, F

.L484:
	ori	$4,$4,0x80	 # tmp280, F.1593,
	j	.L486	 #
	sw	$4,%gp_rel(F)($28)	 # tmp280, F

.L485:
	li	$3,-129			# 0xffffff7f	 # tmp282,
.L489:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp283, F, tmp282
	sw	$3,%gp_rel(F)($28)	 # tmp283, F
.L486:
	sll	$2,$2,2	 # tmp285, D.6837,
	lui	$3,%hi(parrity)	 # tmp284,
	addiu	$3,$3,%lo(parrity)	 # tmp287, tmp284,
	addu	$2,$2,$3	 # tmp286, tmp285, tmp287
	lw	$2,0($2)	 # tmp288, parrity
	beql	$2,$0,.L487	 #, tmp288,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp290,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp291, F, tmp290
	j	.L488	 #
	sw	$2,%gp_rel(F)($28)	 # tmp291, F

.L487:
	ori	$2,$2,0x4	 # tmp293, F,
	sw	$2,%gp_rel(F)($28)	 # tmp293, F
.L488:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlchl
	.size	op_rlchl, .-op_rlchl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sraa
	.type	op_sraa, @function
op_sraa:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # A.864, A
	andi	$4,$2,0x1	 # tmp246, A.864,
	beq	$4,$0,.L491	 #, tmp246,,
	andi	$3,$2,0x80	 # i, A.864,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp248, F,
	j	.L492	 #
	sw	$4,%gp_rel(F)($28)	 # tmp248, F

.L491:
	li	$4,-2			# 0xfffffffe	 # tmp250,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp251, F, tmp250
	sw	$4,%gp_rel(F)($28)	 # tmp251, F
.L492:
	srl	$2,$2,1	 # tmp252, A.864,
	or	$3,$3,$2	 # tmp255, i, tmp252
	seb	$3,$3	 # D.5325, tmp255
	andi	$2,$3,0x00ff	 # A.871, D.5325
	sb	$2,%gp_rel(A)($28)	 # A.871, A
	li	$4,-19			# 0xffffffed	 # tmp257,
	lw	$5,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L493	 #, A.871,,
	and	$4,$5,$4	 # F.872, F, tmp257

	li	$5,-65			# 0xffffffbf	 # tmp258,
	and	$4,$4,$5	 # tmp259, F.872, tmp258
	j	.L494	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L493:
	ori	$4,$4,0x40	 # tmp260, F.872,
	sw	$4,%gp_rel(F)($28)	 # tmp260, F
.L494:
	bgez	$3,.L495	 #, D.5325,
	li	$3,-129			# 0xffffff7f	 # tmp264,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp262, F,
	j	.L496	 #
	sw	$3,%gp_rel(F)($28)	 # tmp262, F

.L495:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp265, F, tmp264
	sw	$3,%gp_rel(F)($28)	 # tmp265, F
.L496:
	sll	$2,$2,2	 # tmp267, A.871,
	lui	$3,%hi(parrity)	 # tmp266,
	addiu	$3,$3,%lo(parrity)	 # tmp269, tmp266,
	addu	$2,$2,$3	 # tmp268, tmp267, tmp269
	lw	$2,0($2)	 # tmp270, parrity
	beql	$2,$0,.L497	 #, tmp270,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp272,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp273, F, tmp272
	j	.L498	 #
	sw	$2,%gp_rel(F)($28)	 # tmp273, F

.L497:
	ori	$2,$2,0x4	 # tmp275, F,
	sw	$2,%gp_rel(F)($28)	 # tmp275, F
.L498:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sraa
	.size	op_sraa, .-op_sraa
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srab
	.type	op_srab, @function
op_srab:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # B.988, B
	andi	$4,$2,0x1	 # tmp246, B.988,
	beq	$4,$0,.L500	 #, tmp246,,
	andi	$3,$2,0x80	 # i, B.988,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp248, F,
	j	.L501	 #
	sw	$4,%gp_rel(F)($28)	 # tmp248, F

.L500:
	li	$4,-2			# 0xfffffffe	 # tmp250,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp251, F, tmp250
	sw	$4,%gp_rel(F)($28)	 # tmp251, F
.L501:
	srl	$2,$2,1	 # tmp252, B.988,
	or	$3,$3,$2	 # tmp255, i, tmp252
	seb	$3,$3	 # D.5598, tmp255
	andi	$2,$3,0x00ff	 # B.995, D.5598
	sb	$2,%gp_rel(B)($28)	 # B.995, B
	li	$4,-19			# 0xffffffed	 # tmp257,
	lw	$5,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L502	 #, B.995,,
	and	$4,$5,$4	 # F.996, F, tmp257

	li	$5,-65			# 0xffffffbf	 # tmp258,
	and	$4,$4,$5	 # tmp259, F.996, tmp258
	j	.L503	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L502:
	ori	$4,$4,0x40	 # tmp260, F.996,
	sw	$4,%gp_rel(F)($28)	 # tmp260, F
.L503:
	bgez	$3,.L504	 #, D.5598,
	li	$3,-129			# 0xffffff7f	 # tmp264,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp262, F,
	j	.L505	 #
	sw	$3,%gp_rel(F)($28)	 # tmp262, F

.L504:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp265, F, tmp264
	sw	$3,%gp_rel(F)($28)	 # tmp265, F
.L505:
	sll	$2,$2,2	 # tmp267, B.995,
	lui	$3,%hi(parrity)	 # tmp266,
	addiu	$3,$3,%lo(parrity)	 # tmp269, tmp266,
	addu	$2,$2,$3	 # tmp268, tmp267, tmp269
	lw	$2,0($2)	 # tmp270, parrity
	beql	$2,$0,.L506	 #, tmp270,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp272,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp273, F, tmp272
	j	.L507	 #
	sw	$2,%gp_rel(F)($28)	 # tmp273, F

.L506:
	ori	$2,$2,0x4	 # tmp275, F,
	sw	$2,%gp_rel(F)($28)	 # tmp275, F
.L507:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srab
	.size	op_srab, .-op_srab
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srac
	.type	op_srac, @function
op_srac:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # C.970, C
	andi	$4,$2,0x1	 # tmp246, C.970,
	beq	$4,$0,.L509	 #, tmp246,,
	andi	$3,$2,0x80	 # i, C.970,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp248, F,
	j	.L510	 #
	sw	$4,%gp_rel(F)($28)	 # tmp248, F

.L509:
	li	$4,-2			# 0xfffffffe	 # tmp250,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp251, F, tmp250
	sw	$4,%gp_rel(F)($28)	 # tmp251, F
.L510:
	srl	$2,$2,1	 # tmp252, C.970,
	or	$3,$3,$2	 # tmp255, i, tmp252
	seb	$3,$3	 # D.5560, tmp255
	andi	$2,$3,0x00ff	 # C.977, D.5560
	sb	$2,%gp_rel(C)($28)	 # C.977, C
	li	$4,-19			# 0xffffffed	 # tmp257,
	lw	$5,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L511	 #, C.977,,
	and	$4,$5,$4	 # F.978, F, tmp257

	li	$5,-65			# 0xffffffbf	 # tmp258,
	and	$4,$4,$5	 # tmp259, F.978, tmp258
	j	.L512	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L511:
	ori	$4,$4,0x40	 # tmp260, F.978,
	sw	$4,%gp_rel(F)($28)	 # tmp260, F
.L512:
	bgez	$3,.L513	 #, D.5560,
	li	$3,-129			# 0xffffff7f	 # tmp264,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp262, F,
	j	.L514	 #
	sw	$3,%gp_rel(F)($28)	 # tmp262, F

.L513:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp265, F, tmp264
	sw	$3,%gp_rel(F)($28)	 # tmp265, F
.L514:
	sll	$2,$2,2	 # tmp267, C.977,
	lui	$3,%hi(parrity)	 # tmp266,
	addiu	$3,$3,%lo(parrity)	 # tmp269, tmp266,
	addu	$2,$2,$3	 # tmp268, tmp267, tmp269
	lw	$2,0($2)	 # tmp270, parrity
	beql	$2,$0,.L515	 #, tmp270,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp272,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp273, F, tmp272
	j	.L516	 #
	sw	$2,%gp_rel(F)($28)	 # tmp273, F

.L515:
	ori	$2,$2,0x4	 # tmp275, F,
	sw	$2,%gp_rel(F)($28)	 # tmp275, F
.L516:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srac
	.size	op_srac, .-op_srac
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srad
	.type	op_srad, @function
op_srad:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # D.952, D
	andi	$4,$2,0x1	 # tmp246, D.952,
	beq	$4,$0,.L518	 #, tmp246,,
	andi	$3,$2,0x80	 # i, D.952,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp248, F,
	j	.L519	 #
	sw	$4,%gp_rel(F)($28)	 # tmp248, F

.L518:
	li	$4,-2			# 0xfffffffe	 # tmp250,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp251, F, tmp250
	sw	$4,%gp_rel(F)($28)	 # tmp251, F
.L519:
	srl	$2,$2,1	 # tmp252, D.952,
	or	$3,$3,$2	 # tmp255, i, tmp252
	seb	$3,$3	 # D.5522, tmp255
	andi	$2,$3,0x00ff	 # D.959, D.5522
	sb	$2,%gp_rel(D)($28)	 # D.959, D
	li	$4,-19			# 0xffffffed	 # tmp257,
	lw	$5,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L520	 #, D.959,,
	and	$4,$5,$4	 # F.960, F, tmp257

	li	$5,-65			# 0xffffffbf	 # tmp258,
	and	$4,$4,$5	 # tmp259, F.960, tmp258
	j	.L521	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L520:
	ori	$4,$4,0x40	 # tmp260, F.960,
	sw	$4,%gp_rel(F)($28)	 # tmp260, F
.L521:
	bgez	$3,.L522	 #, D.5522,
	li	$3,-129			# 0xffffff7f	 # tmp264,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp262, F,
	j	.L523	 #
	sw	$3,%gp_rel(F)($28)	 # tmp262, F

.L522:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp265, F, tmp264
	sw	$3,%gp_rel(F)($28)	 # tmp265, F
.L523:
	sll	$2,$2,2	 # tmp267, D.959,
	lui	$3,%hi(parrity)	 # tmp266,
	addiu	$3,$3,%lo(parrity)	 # tmp269, tmp266,
	addu	$2,$2,$3	 # tmp268, tmp267, tmp269
	lw	$2,0($2)	 # tmp270, parrity
	beql	$2,$0,.L524	 #, tmp270,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp272,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp273, F, tmp272
	j	.L525	 #
	sw	$2,%gp_rel(F)($28)	 # tmp273, F

.L524:
	ori	$2,$2,0x4	 # tmp275, F,
	sw	$2,%gp_rel(F)($28)	 # tmp275, F
.L525:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srad
	.size	op_srad, .-op_srad
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srae
	.type	op_srae, @function
op_srae:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # E.934, E
	andi	$4,$2,0x1	 # tmp246, E.934,
	beq	$4,$0,.L527	 #, tmp246,,
	andi	$3,$2,0x80	 # i, E.934,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp248, F,
	j	.L528	 #
	sw	$4,%gp_rel(F)($28)	 # tmp248, F

.L527:
	li	$4,-2			# 0xfffffffe	 # tmp250,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp251, F, tmp250
	sw	$4,%gp_rel(F)($28)	 # tmp251, F
.L528:
	srl	$2,$2,1	 # tmp252, E.934,
	or	$3,$3,$2	 # tmp255, i, tmp252
	seb	$3,$3	 # D.5484, tmp255
	andi	$2,$3,0x00ff	 # E.941, D.5484
	sb	$2,%gp_rel(E)($28)	 # E.941, E
	li	$4,-19			# 0xffffffed	 # tmp257,
	lw	$5,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L529	 #, E.941,,
	and	$4,$5,$4	 # F.942, F, tmp257

	li	$5,-65			# 0xffffffbf	 # tmp258,
	and	$4,$4,$5	 # tmp259, F.942, tmp258
	j	.L530	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L529:
	ori	$4,$4,0x40	 # tmp260, F.942,
	sw	$4,%gp_rel(F)($28)	 # tmp260, F
.L530:
	bgez	$3,.L531	 #, D.5484,
	li	$3,-129			# 0xffffff7f	 # tmp264,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp262, F,
	j	.L532	 #
	sw	$3,%gp_rel(F)($28)	 # tmp262, F

.L531:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp265, F, tmp264
	sw	$3,%gp_rel(F)($28)	 # tmp265, F
.L532:
	sll	$2,$2,2	 # tmp267, E.941,
	lui	$3,%hi(parrity)	 # tmp266,
	addiu	$3,$3,%lo(parrity)	 # tmp269, tmp266,
	addu	$2,$2,$3	 # tmp268, tmp267, tmp269
	lw	$2,0($2)	 # tmp270, parrity
	beql	$2,$0,.L533	 #, tmp270,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp272,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp273, F, tmp272
	j	.L534	 #
	sw	$2,%gp_rel(F)($28)	 # tmp273, F

.L533:
	ori	$2,$2,0x4	 # tmp275, F,
	sw	$2,%gp_rel(F)($28)	 # tmp275, F
.L534:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srae
	.size	op_srae, .-op_srae
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srah
	.type	op_srah, @function
op_srah:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # H.916, H
	andi	$4,$2,0x1	 # tmp246, H.916,
	beq	$4,$0,.L536	 #, tmp246,,
	andi	$3,$2,0x80	 # i, H.916,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp248, F,
	j	.L537	 #
	sw	$4,%gp_rel(F)($28)	 # tmp248, F

.L536:
	li	$4,-2			# 0xfffffffe	 # tmp250,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp251, F, tmp250
	sw	$4,%gp_rel(F)($28)	 # tmp251, F
.L537:
	srl	$2,$2,1	 # tmp252, H.916,
	or	$3,$3,$2	 # tmp255, i, tmp252
	seb	$3,$3	 # D.5446, tmp255
	andi	$2,$3,0x00ff	 # H.923, D.5446
	sb	$2,%gp_rel(H)($28)	 # H.923, H
	li	$4,-19			# 0xffffffed	 # tmp257,
	lw	$5,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L538	 #, H.923,,
	and	$4,$5,$4	 # F.924, F, tmp257

	li	$5,-65			# 0xffffffbf	 # tmp258,
	and	$4,$4,$5	 # tmp259, F.924, tmp258
	j	.L539	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L538:
	ori	$4,$4,0x40	 # tmp260, F.924,
	sw	$4,%gp_rel(F)($28)	 # tmp260, F
.L539:
	bgez	$3,.L540	 #, D.5446,
	li	$3,-129			# 0xffffff7f	 # tmp264,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp262, F,
	j	.L541	 #
	sw	$3,%gp_rel(F)($28)	 # tmp262, F

.L540:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp265, F, tmp264
	sw	$3,%gp_rel(F)($28)	 # tmp265, F
.L541:
	sll	$2,$2,2	 # tmp267, H.923,
	lui	$3,%hi(parrity)	 # tmp266,
	addiu	$3,$3,%lo(parrity)	 # tmp269, tmp266,
	addu	$2,$2,$3	 # tmp268, tmp267, tmp269
	lw	$2,0($2)	 # tmp270, parrity
	beql	$2,$0,.L542	 #, tmp270,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp272,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp273, F, tmp272
	j	.L543	 #
	sw	$2,%gp_rel(F)($28)	 # tmp273, F

.L542:
	ori	$2,$2,0x4	 # tmp275, F,
	sw	$2,%gp_rel(F)($28)	 # tmp275, F
.L543:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srah
	.size	op_srah, .-op_srah
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sral
	.type	op_sral, @function
op_sral:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # L.898, L
	andi	$4,$2,0x1	 # tmp246, L.898,
	beq	$4,$0,.L545	 #, tmp246,,
	andi	$3,$2,0x80	 # i, L.898,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp248, F,
	j	.L546	 #
	sw	$4,%gp_rel(F)($28)	 # tmp248, F

.L545:
	li	$4,-2			# 0xfffffffe	 # tmp250,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp251, F, tmp250
	sw	$4,%gp_rel(F)($28)	 # tmp251, F
.L546:
	srl	$2,$2,1	 # tmp252, L.898,
	or	$3,$3,$2	 # tmp255, i, tmp252
	seb	$3,$3	 # D.5408, tmp255
	andi	$2,$3,0x00ff	 # L.905, D.5408
	sb	$2,%gp_rel(L)($28)	 # L.905, L
	li	$4,-19			# 0xffffffed	 # tmp257,
	lw	$5,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L547	 #, L.905,,
	and	$4,$5,$4	 # F.906, F, tmp257

	li	$5,-65			# 0xffffffbf	 # tmp258,
	and	$4,$4,$5	 # tmp259, F.906, tmp258
	j	.L548	 #
	sw	$4,%gp_rel(F)($28)	 # tmp259, F

.L547:
	ori	$4,$4,0x40	 # tmp260, F.906,
	sw	$4,%gp_rel(F)($28)	 # tmp260, F
.L548:
	bgez	$3,.L549	 #, D.5408,
	li	$3,-129			# 0xffffff7f	 # tmp264,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp262, F,
	j	.L550	 #
	sw	$3,%gp_rel(F)($28)	 # tmp262, F

.L549:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp265, F, tmp264
	sw	$3,%gp_rel(F)($28)	 # tmp265, F
.L550:
	sll	$2,$2,2	 # tmp267, L.905,
	lui	$3,%hi(parrity)	 # tmp266,
	addiu	$3,$3,%lo(parrity)	 # tmp269, tmp266,
	addu	$2,$2,$3	 # tmp268, tmp267, tmp269
	lw	$2,0($2)	 # tmp270, parrity
	beql	$2,$0,.L551	 #, tmp270,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp272,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp273, F, tmp272
	j	.L552	 #
	sw	$2,%gp_rel(F)($28)	 # tmp273, F

.L551:
	ori	$2,$2,0x4	 # tmp275, F,
	sw	$2,%gp_rel(F)($28)	 # tmp275, F
.L552:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sral
	.size	op_sral, .-op_sral
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srahl
	.type	op_srahl, @function
op_srahl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$4,%gp_rel(H)($28)	 # H, H
	sll	$4,$4,8	 # tmp254, H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	addu	$4,$4,$2	 # D.5355, tmp254, L
	lui	$2,%hi(ram)	 # tmp256,
	addiu	$2,$2,%lo(ram)	 # tmp258, tmp256,
	addu	$2,$4,$2	 # tmp257, D.5355, tmp258
	lbu	$2,0($2)	 # D.5356, ram
	andi	$5,$2,0x1	 # tmp259, D.5356,
	beq	$5,$0,.L554	 #, tmp259,,
	andi	$3,$2,0x80	 # i, D.5356,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp261, F,
	j	.L555	 #
	sw	$5,%gp_rel(F)($28)	 # tmp261, F

.L554:
	li	$5,-2			# 0xfffffffe	 # tmp263,
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp264, F, tmp263
	sw	$5,%gp_rel(F)($28)	 # tmp264, F
.L555:
	srl	$2,$2,1	 # tmp265, D.5356,
	or	$3,$3,$2	 # tmp268, i, tmp265
	seb	$3,$3	 # D.5370, tmp268
	andi	$2,$3,0x00ff	 # D.5371, D.5370
	lui	$5,%hi(ram)	 # tmp269,
	addiu	$5,$5,%lo(ram)	 # tmp271, tmp269,
	addu	$4,$4,$5	 # tmp270, D.5355, tmp271
	sb	$2,0($4)	 # D.5371, ram
	li	$4,-19			# 0xffffffed	 # tmp273,
	lw	$5,%gp_rel(F)($28)	 # F, F
	beq	$2,$0,.L556	 #, D.5371,,
	and	$4,$5,$4	 # F.888, F, tmp273

	li	$5,-65			# 0xffffffbf	 # tmp274,
	and	$4,$4,$5	 # tmp275, F.888, tmp274
	j	.L557	 #
	sw	$4,%gp_rel(F)($28)	 # tmp275, F

.L556:
	ori	$4,$4,0x40	 # tmp276, F.888,
	sw	$4,%gp_rel(F)($28)	 # tmp276, F
.L557:
	bgez	$3,.L558	 #, D.5370,
	li	$3,-129			# 0xffffff7f	 # tmp280,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp278, F,
	j	.L559	 #
	sw	$3,%gp_rel(F)($28)	 # tmp278, F

.L558:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp281, F, tmp280
	sw	$3,%gp_rel(F)($28)	 # tmp281, F
.L559:
	sll	$2,$2,2	 # tmp283, D.5371,
	lui	$3,%hi(parrity)	 # tmp282,
	addiu	$3,$3,%lo(parrity)	 # tmp285, tmp282,
	addu	$2,$2,$3	 # tmp284, tmp283, tmp285
	lw	$2,0($2)	 # tmp286, parrity
	beql	$2,$0,.L560	 #, tmp286,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp288,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp289, F, tmp288
	j	.L561	 #
	sw	$2,%gp_rel(F)($28)	 # tmp289, F

.L560:
	ori	$2,$2,0x4	 # tmp291, F,
	sw	$2,%gp_rel(F)($28)	 # tmp291, F
.L561:
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srahl
	.size	op_srahl, .-op_srahl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb0a
	.type	op_sb0a, @function
op_sb0a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	ori	$2,$2,0x1	 # tmp222, A,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb0a
	.size	op_sb0a, .-op_sb0a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb1a
	.type	op_sb1a, @function
op_sb1a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	ori	$2,$2,0x2	 # tmp222, A,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb1a
	.size	op_sb1a, .-op_sb1a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb2a
	.type	op_sb2a, @function
op_sb2a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	ori	$2,$2,0x4	 # tmp222, A,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb2a
	.size	op_sb2a, .-op_sb2a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb3a
	.type	op_sb3a, @function
op_sb3a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	ori	$2,$2,0x8	 # tmp222, A,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb3a
	.size	op_sb3a, .-op_sb3a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb4a
	.type	op_sb4a, @function
op_sb4a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	ori	$2,$2,0x10	 # tmp222, A,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb4a
	.size	op_sb4a, .-op_sb4a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb5a
	.type	op_sb5a, @function
op_sb5a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	ori	$2,$2,0x20	 # tmp222, A,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb5a
	.size	op_sb5a, .-op_sb5a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb6a
	.type	op_sb6a, @function
op_sb6a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	ori	$2,$2,0x40	 # tmp222, A,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb6a
	.size	op_sb6a, .-op_sb6a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb7a
	.type	op_sb7a, @function
op_sb7a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-128			# 0xffffff80	 # tmp223,
	lbu	$3,%gp_rel(A)($28)	 #, A
	or	$2,$3,$2	 # tmp222, A, tmp223
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb7a
	.size	op_sb7a, .-op_sb7a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb0b
	.type	op_sb0b, @function
op_sb0b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	ori	$2,$2,0x1	 # tmp222, B,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb0b
	.size	op_sb0b, .-op_sb0b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb1b
	.type	op_sb1b, @function
op_sb1b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	ori	$2,$2,0x2	 # tmp222, B,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb1b
	.size	op_sb1b, .-op_sb1b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb2b
	.type	op_sb2b, @function
op_sb2b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	ori	$2,$2,0x4	 # tmp222, B,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb2b
	.size	op_sb2b, .-op_sb2b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb3b
	.type	op_sb3b, @function
op_sb3b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	ori	$2,$2,0x8	 # tmp222, B,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb3b
	.size	op_sb3b, .-op_sb3b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb4b
	.type	op_sb4b, @function
op_sb4b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	ori	$2,$2,0x10	 # tmp222, B,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb4b
	.size	op_sb4b, .-op_sb4b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb5b
	.type	op_sb5b, @function
op_sb5b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	ori	$2,$2,0x20	 # tmp222, B,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb5b
	.size	op_sb5b, .-op_sb5b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb6b
	.type	op_sb6b, @function
op_sb6b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	ori	$2,$2,0x40	 # tmp222, B,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb6b
	.size	op_sb6b, .-op_sb6b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb7b
	.type	op_sb7b, @function
op_sb7b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-128			# 0xffffff80	 # tmp223,
	lbu	$3,%gp_rel(B)($28)	 #, B
	or	$2,$3,$2	 # tmp222, B, tmp223
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb7b
	.size	op_sb7b, .-op_sb7b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb0c
	.type	op_sb0c, @function
op_sb0c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	ori	$2,$2,0x1	 # tmp222, C,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb0c
	.size	op_sb0c, .-op_sb0c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb1c
	.type	op_sb1c, @function
op_sb1c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	ori	$2,$2,0x2	 # tmp222, C,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb1c
	.size	op_sb1c, .-op_sb1c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb2c
	.type	op_sb2c, @function
op_sb2c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	ori	$2,$2,0x4	 # tmp222, C,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb2c
	.size	op_sb2c, .-op_sb2c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb3c
	.type	op_sb3c, @function
op_sb3c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	ori	$2,$2,0x8	 # tmp222, C,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb3c
	.size	op_sb3c, .-op_sb3c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb4c
	.type	op_sb4c, @function
op_sb4c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	ori	$2,$2,0x10	 # tmp222, C,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb4c
	.size	op_sb4c, .-op_sb4c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb5c
	.type	op_sb5c, @function
op_sb5c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	ori	$2,$2,0x20	 # tmp222, C,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb5c
	.size	op_sb5c, .-op_sb5c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb6c
	.type	op_sb6c, @function
op_sb6c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	ori	$2,$2,0x40	 # tmp222, C,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb6c
	.size	op_sb6c, .-op_sb6c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb7c
	.type	op_sb7c, @function
op_sb7c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-128			# 0xffffff80	 # tmp223,
	lbu	$3,%gp_rel(C)($28)	 #, C
	or	$2,$3,$2	 # tmp222, C, tmp223
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb7c
	.size	op_sb7c, .-op_sb7c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb0d
	.type	op_sb0d, @function
op_sb0d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	ori	$2,$2,0x1	 # tmp222, D,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb0d
	.size	op_sb0d, .-op_sb0d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb1d
	.type	op_sb1d, @function
op_sb1d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	ori	$2,$2,0x2	 # tmp222, D,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb1d
	.size	op_sb1d, .-op_sb1d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb2d
	.type	op_sb2d, @function
op_sb2d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	ori	$2,$2,0x4	 # tmp222, D,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb2d
	.size	op_sb2d, .-op_sb2d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb3d
	.type	op_sb3d, @function
op_sb3d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	ori	$2,$2,0x8	 # tmp222, D,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb3d
	.size	op_sb3d, .-op_sb3d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb4d
	.type	op_sb4d, @function
op_sb4d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	ori	$2,$2,0x10	 # tmp222, D,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb4d
	.size	op_sb4d, .-op_sb4d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb5d
	.type	op_sb5d, @function
op_sb5d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	ori	$2,$2,0x20	 # tmp222, D,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb5d
	.size	op_sb5d, .-op_sb5d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb6d
	.type	op_sb6d, @function
op_sb6d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	ori	$2,$2,0x40	 # tmp222, D,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb6d
	.size	op_sb6d, .-op_sb6d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb7d
	.type	op_sb7d, @function
op_sb7d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-128			# 0xffffff80	 # tmp223,
	lbu	$3,%gp_rel(D)($28)	 #, D
	or	$2,$3,$2	 # tmp222, D, tmp223
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb7d
	.size	op_sb7d, .-op_sb7d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb0e
	.type	op_sb0e, @function
op_sb0e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	ori	$2,$2,0x1	 # tmp222, E,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb0e
	.size	op_sb0e, .-op_sb0e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb1e
	.type	op_sb1e, @function
op_sb1e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	ori	$2,$2,0x2	 # tmp222, E,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb1e
	.size	op_sb1e, .-op_sb1e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb2e
	.type	op_sb2e, @function
op_sb2e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	ori	$2,$2,0x4	 # tmp222, E,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb2e
	.size	op_sb2e, .-op_sb2e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb3e
	.type	op_sb3e, @function
op_sb3e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	ori	$2,$2,0x8	 # tmp222, E,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb3e
	.size	op_sb3e, .-op_sb3e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb4e
	.type	op_sb4e, @function
op_sb4e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	ori	$2,$2,0x10	 # tmp222, E,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb4e
	.size	op_sb4e, .-op_sb4e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb5e
	.type	op_sb5e, @function
op_sb5e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	ori	$2,$2,0x20	 # tmp222, E,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb5e
	.size	op_sb5e, .-op_sb5e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb6e
	.type	op_sb6e, @function
op_sb6e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	ori	$2,$2,0x40	 # tmp222, E,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb6e
	.size	op_sb6e, .-op_sb6e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb7e
	.type	op_sb7e, @function
op_sb7e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-128			# 0xffffff80	 # tmp223,
	lbu	$3,%gp_rel(E)($28)	 #, E
	or	$2,$3,$2	 # tmp222, E, tmp223
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb7e
	.size	op_sb7e, .-op_sb7e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb0h
	.type	op_sb0h, @function
op_sb0h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	ori	$2,$2,0x1	 # tmp222, H,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb0h
	.size	op_sb0h, .-op_sb0h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb1h
	.type	op_sb1h, @function
op_sb1h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	ori	$2,$2,0x2	 # tmp222, H,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb1h
	.size	op_sb1h, .-op_sb1h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb2h
	.type	op_sb2h, @function
op_sb2h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	ori	$2,$2,0x4	 # tmp222, H,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb2h
	.size	op_sb2h, .-op_sb2h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb3h
	.type	op_sb3h, @function
op_sb3h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	ori	$2,$2,0x8	 # tmp222, H,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb3h
	.size	op_sb3h, .-op_sb3h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb4h
	.type	op_sb4h, @function
op_sb4h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	ori	$2,$2,0x10	 # tmp222, H,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb4h
	.size	op_sb4h, .-op_sb4h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb5h
	.type	op_sb5h, @function
op_sb5h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	ori	$2,$2,0x20	 # tmp222, H,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb5h
	.size	op_sb5h, .-op_sb5h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb6h
	.type	op_sb6h, @function
op_sb6h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	ori	$2,$2,0x40	 # tmp222, H,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb6h
	.size	op_sb6h, .-op_sb6h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb7h
	.type	op_sb7h, @function
op_sb7h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-128			# 0xffffff80	 # tmp223,
	lbu	$3,%gp_rel(H)($28)	 #, H
	or	$2,$3,$2	 # tmp222, H, tmp223
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb7h
	.size	op_sb7h, .-op_sb7h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb0l
	.type	op_sb0l, @function
op_sb0l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	ori	$2,$2,0x1	 # tmp222, L,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb0l
	.size	op_sb0l, .-op_sb0l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb1l
	.type	op_sb1l, @function
op_sb1l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	ori	$2,$2,0x2	 # tmp222, L,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb1l
	.size	op_sb1l, .-op_sb1l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb2l
	.type	op_sb2l, @function
op_sb2l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	ori	$2,$2,0x4	 # tmp222, L,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb2l
	.size	op_sb2l, .-op_sb2l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb3l
	.type	op_sb3l, @function
op_sb3l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	ori	$2,$2,0x8	 # tmp222, L,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb3l
	.size	op_sb3l, .-op_sb3l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb4l
	.type	op_sb4l, @function
op_sb4l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	ori	$2,$2,0x10	 # tmp222, L,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb4l
	.size	op_sb4l, .-op_sb4l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb5l
	.type	op_sb5l, @function
op_sb5l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	ori	$2,$2,0x20	 # tmp222, L,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb5l
	.size	op_sb5l, .-op_sb5l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb6l
	.type	op_sb6l, @function
op_sb6l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	ori	$2,$2,0x40	 # tmp222, L,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb6l
	.size	op_sb6l, .-op_sb6l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb7l
	.type	op_sb7l, @function
op_sb7l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-128			# 0xffffff80	 # tmp223,
	lbu	$3,%gp_rel(L)($28)	 #, L
	or	$2,$3,$2	 # tmp222, L, tmp223
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb7l
	.size	op_sb7l, .-op_sb7l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb0hl
	.type	op_sb0hl, @function
op_sb0hl:
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
	addu	$2,$2,$3	 # D.3704, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3704, tmp233
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x1	 # tmp238, tmp237,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb0hl
	.size	op_sb0hl, .-op_sb0hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb1hl
	.type	op_sb1hl, @function
op_sb1hl:
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
	addu	$2,$2,$3	 # D.3664, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3664, tmp233
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x2	 # tmp238, tmp237,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb1hl
	.size	op_sb1hl, .-op_sb1hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb2hl
	.type	op_sb2hl, @function
op_sb2hl:
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
	addu	$2,$2,$3	 # D.3624, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3624, tmp233
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x4	 # tmp238, tmp237,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb2hl
	.size	op_sb2hl, .-op_sb2hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb3hl
	.type	op_sb3hl, @function
op_sb3hl:
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
	addu	$2,$2,$3	 # D.3584, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3584, tmp233
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x8	 # tmp238, tmp237,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb3hl
	.size	op_sb3hl, .-op_sb3hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb4hl
	.type	op_sb4hl, @function
op_sb4hl:
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
	addu	$2,$2,$3	 # D.3544, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3544, tmp233
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x10	 # tmp238, tmp237,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb4hl
	.size	op_sb4hl, .-op_sb4hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb5hl
	.type	op_sb5hl, @function
op_sb5hl:
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
	addu	$2,$2,$3	 # D.3504, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3504, tmp233
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x20	 # tmp238, tmp237,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb5hl
	.size	op_sb5hl, .-op_sb5hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb6hl
	.type	op_sb6hl, @function
op_sb6hl:
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
	addu	$2,$2,$3	 # D.3464, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3464, tmp233
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x40	 # tmp238, tmp237,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb6hl
	.size	op_sb6hl, .-op_sb6hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb7hl
	.type	op_sb7hl, @function
op_sb7hl:
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
	addu	$2,$2,$3	 # D.3424, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3424, tmp233
	lbu	$4,0($2)	 #, ram
	li	$3,-128			# 0xffffff80	 # tmp239,
	or	$3,$4,$3	 # tmp238, tmp237, tmp239
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb7hl
	.size	op_sb7hl, .-op_sb7hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb0a
	.type	op_rb0a, @function
op_rb0a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # tmp223, A
	andi	$2,$2,0xfe	 # tmp222, tmp223,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb0a
	.size	op_rb0a, .-op_rb0a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb1a
	.type	op_rb1a, @function
op_rb1a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # tmp223, A
	andi	$2,$2,0xfd	 # tmp222, tmp223,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb1a
	.size	op_rb1a, .-op_rb1a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb2a
	.type	op_rb2a, @function
op_rb2a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # tmp223, A
	andi	$2,$2,0xfb	 # tmp222, tmp223,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb2a
	.size	op_rb2a, .-op_rb2a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb3a
	.type	op_rb3a, @function
op_rb3a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # tmp223, A
	andi	$2,$2,0xf7	 # tmp222, tmp223,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb3a
	.size	op_rb3a, .-op_rb3a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb4a
	.type	op_rb4a, @function
op_rb4a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # tmp223, A
	andi	$2,$2,0xef	 # tmp222, tmp223,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb4a
	.size	op_rb4a, .-op_rb4a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb5a
	.type	op_rb5a, @function
op_rb5a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # tmp223, A
	andi	$2,$2,0xdf	 # tmp222, tmp223,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb5a
	.size	op_rb5a, .-op_rb5a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb6a
	.type	op_rb6a, @function
op_rb6a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 # tmp223, A
	andi	$2,$2,0xbf	 # tmp222, tmp223,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb6a
	.size	op_rb6a, .-op_rb6a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb7a
	.type	op_rb7a, @function
op_rb7a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(A)($28)	 #, A
	andi	$2,$2,0x7f	 # tmp222, A,
	sb	$2,%gp_rel(A)($28)	 # tmp222, A
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb7a
	.size	op_rb7a, .-op_rb7a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb0b
	.type	op_rb0b, @function
op_rb0b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # tmp223, B
	andi	$2,$2,0xfe	 # tmp222, tmp223,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb0b
	.size	op_rb0b, .-op_rb0b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb1b
	.type	op_rb1b, @function
op_rb1b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # tmp223, B
	andi	$2,$2,0xfd	 # tmp222, tmp223,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb1b
	.size	op_rb1b, .-op_rb1b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb2b
	.type	op_rb2b, @function
op_rb2b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # tmp223, B
	andi	$2,$2,0xfb	 # tmp222, tmp223,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb2b
	.size	op_rb2b, .-op_rb2b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb3b
	.type	op_rb3b, @function
op_rb3b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # tmp223, B
	andi	$2,$2,0xf7	 # tmp222, tmp223,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb3b
	.size	op_rb3b, .-op_rb3b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb4b
	.type	op_rb4b, @function
op_rb4b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # tmp223, B
	andi	$2,$2,0xef	 # tmp222, tmp223,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb4b
	.size	op_rb4b, .-op_rb4b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb5b
	.type	op_rb5b, @function
op_rb5b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # tmp223, B
	andi	$2,$2,0xdf	 # tmp222, tmp223,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb5b
	.size	op_rb5b, .-op_rb5b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb6b
	.type	op_rb6b, @function
op_rb6b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 # tmp223, B
	andi	$2,$2,0xbf	 # tmp222, tmp223,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb6b
	.size	op_rb6b, .-op_rb6b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb7b
	.type	op_rb7b, @function
op_rb7b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(B)($28)	 #, B
	andi	$2,$2,0x7f	 # tmp222, B,
	sb	$2,%gp_rel(B)($28)	 # tmp222, B
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb7b
	.size	op_rb7b, .-op_rb7b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb0c
	.type	op_rb0c, @function
op_rb0c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # tmp223, C
	andi	$2,$2,0xfe	 # tmp222, tmp223,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb0c
	.size	op_rb0c, .-op_rb0c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb1c
	.type	op_rb1c, @function
op_rb1c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # tmp223, C
	andi	$2,$2,0xfd	 # tmp222, tmp223,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb1c
	.size	op_rb1c, .-op_rb1c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb2c
	.type	op_rb2c, @function
op_rb2c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # tmp223, C
	andi	$2,$2,0xfb	 # tmp222, tmp223,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb2c
	.size	op_rb2c, .-op_rb2c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb3c
	.type	op_rb3c, @function
op_rb3c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # tmp223, C
	andi	$2,$2,0xf7	 # tmp222, tmp223,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb3c
	.size	op_rb3c, .-op_rb3c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb4c
	.type	op_rb4c, @function
op_rb4c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # tmp223, C
	andi	$2,$2,0xef	 # tmp222, tmp223,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb4c
	.size	op_rb4c, .-op_rb4c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb5c
	.type	op_rb5c, @function
op_rb5c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # tmp223, C
	andi	$2,$2,0xdf	 # tmp222, tmp223,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb5c
	.size	op_rb5c, .-op_rb5c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb6c
	.type	op_rb6c, @function
op_rb6c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 # tmp223, C
	andi	$2,$2,0xbf	 # tmp222, tmp223,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb6c
	.size	op_rb6c, .-op_rb6c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb7c
	.type	op_rb7c, @function
op_rb7c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(C)($28)	 #, C
	andi	$2,$2,0x7f	 # tmp222, C,
	sb	$2,%gp_rel(C)($28)	 # tmp222, C
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb7c
	.size	op_rb7c, .-op_rb7c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb0d
	.type	op_rb0d, @function
op_rb0d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # tmp223, D
	andi	$2,$2,0xfe	 # tmp222, tmp223,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb0d
	.size	op_rb0d, .-op_rb0d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb1d
	.type	op_rb1d, @function
op_rb1d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # tmp223, D
	andi	$2,$2,0xfd	 # tmp222, tmp223,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb1d
	.size	op_rb1d, .-op_rb1d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb2d
	.type	op_rb2d, @function
op_rb2d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # tmp223, D
	andi	$2,$2,0xfb	 # tmp222, tmp223,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb2d
	.size	op_rb2d, .-op_rb2d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb3d
	.type	op_rb3d, @function
op_rb3d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # tmp223, D
	andi	$2,$2,0xf7	 # tmp222, tmp223,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb3d
	.size	op_rb3d, .-op_rb3d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb4d
	.type	op_rb4d, @function
op_rb4d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # tmp223, D
	andi	$2,$2,0xef	 # tmp222, tmp223,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb4d
	.size	op_rb4d, .-op_rb4d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb5d
	.type	op_rb5d, @function
op_rb5d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # tmp223, D
	andi	$2,$2,0xdf	 # tmp222, tmp223,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb5d
	.size	op_rb5d, .-op_rb5d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb6d
	.type	op_rb6d, @function
op_rb6d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 # tmp223, D
	andi	$2,$2,0xbf	 # tmp222, tmp223,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb6d
	.size	op_rb6d, .-op_rb6d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb7d
	.type	op_rb7d, @function
op_rb7d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(D)($28)	 #, D
	andi	$2,$2,0x7f	 # tmp222, D,
	sb	$2,%gp_rel(D)($28)	 # tmp222, D
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb7d
	.size	op_rb7d, .-op_rb7d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb0e
	.type	op_rb0e, @function
op_rb0e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # tmp223, E
	andi	$2,$2,0xfe	 # tmp222, tmp223,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb0e
	.size	op_rb0e, .-op_rb0e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb1e
	.type	op_rb1e, @function
op_rb1e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # tmp223, E
	andi	$2,$2,0xfd	 # tmp222, tmp223,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb1e
	.size	op_rb1e, .-op_rb1e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb2e
	.type	op_rb2e, @function
op_rb2e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # tmp223, E
	andi	$2,$2,0xfb	 # tmp222, tmp223,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb2e
	.size	op_rb2e, .-op_rb2e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb3e
	.type	op_rb3e, @function
op_rb3e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # tmp223, E
	andi	$2,$2,0xf7	 # tmp222, tmp223,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb3e
	.size	op_rb3e, .-op_rb3e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb4e
	.type	op_rb4e, @function
op_rb4e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # tmp223, E
	andi	$2,$2,0xef	 # tmp222, tmp223,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb4e
	.size	op_rb4e, .-op_rb4e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb5e
	.type	op_rb5e, @function
op_rb5e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # tmp223, E
	andi	$2,$2,0xdf	 # tmp222, tmp223,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb5e
	.size	op_rb5e, .-op_rb5e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb6e
	.type	op_rb6e, @function
op_rb6e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 # tmp223, E
	andi	$2,$2,0xbf	 # tmp222, tmp223,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb6e
	.size	op_rb6e, .-op_rb6e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb7e
	.type	op_rb7e, @function
op_rb7e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(E)($28)	 #, E
	andi	$2,$2,0x7f	 # tmp222, E,
	sb	$2,%gp_rel(E)($28)	 # tmp222, E
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb7e
	.size	op_rb7e, .-op_rb7e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb0h
	.type	op_rb0h, @function
op_rb0h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # tmp223, H
	andi	$2,$2,0xfe	 # tmp222, tmp223,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb0h
	.size	op_rb0h, .-op_rb0h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb1h
	.type	op_rb1h, @function
op_rb1h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # tmp223, H
	andi	$2,$2,0xfd	 # tmp222, tmp223,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb1h
	.size	op_rb1h, .-op_rb1h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb2h
	.type	op_rb2h, @function
op_rb2h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # tmp223, H
	andi	$2,$2,0xfb	 # tmp222, tmp223,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb2h
	.size	op_rb2h, .-op_rb2h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb3h
	.type	op_rb3h, @function
op_rb3h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # tmp223, H
	andi	$2,$2,0xf7	 # tmp222, tmp223,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb3h
	.size	op_rb3h, .-op_rb3h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb4h
	.type	op_rb4h, @function
op_rb4h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # tmp223, H
	andi	$2,$2,0xef	 # tmp222, tmp223,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb4h
	.size	op_rb4h, .-op_rb4h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb5h
	.type	op_rb5h, @function
op_rb5h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # tmp223, H
	andi	$2,$2,0xdf	 # tmp222, tmp223,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb5h
	.size	op_rb5h, .-op_rb5h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb6h
	.type	op_rb6h, @function
op_rb6h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 # tmp223, H
	andi	$2,$2,0xbf	 # tmp222, tmp223,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb6h
	.size	op_rb6h, .-op_rb6h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb7h
	.type	op_rb7h, @function
op_rb7h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(H)($28)	 #, H
	andi	$2,$2,0x7f	 # tmp222, H,
	sb	$2,%gp_rel(H)($28)	 # tmp222, H
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb7h
	.size	op_rb7h, .-op_rb7h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb0l
	.type	op_rb0l, @function
op_rb0l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # tmp223, L
	andi	$2,$2,0xfe	 # tmp222, tmp223,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb0l
	.size	op_rb0l, .-op_rb0l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb1l
	.type	op_rb1l, @function
op_rb1l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # tmp223, L
	andi	$2,$2,0xfd	 # tmp222, tmp223,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb1l
	.size	op_rb1l, .-op_rb1l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb2l
	.type	op_rb2l, @function
op_rb2l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # tmp223, L
	andi	$2,$2,0xfb	 # tmp222, tmp223,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb2l
	.size	op_rb2l, .-op_rb2l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb3l
	.type	op_rb3l, @function
op_rb3l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # tmp223, L
	andi	$2,$2,0xf7	 # tmp222, tmp223,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb3l
	.size	op_rb3l, .-op_rb3l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb4l
	.type	op_rb4l, @function
op_rb4l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # tmp223, L
	andi	$2,$2,0xef	 # tmp222, tmp223,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb4l
	.size	op_rb4l, .-op_rb4l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb5l
	.type	op_rb5l, @function
op_rb5l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # tmp223, L
	andi	$2,$2,0xdf	 # tmp222, tmp223,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb5l
	.size	op_rb5l, .-op_rb5l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb6l
	.type	op_rb6l, @function
op_rb6l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 # tmp223, L
	andi	$2,$2,0xbf	 # tmp222, tmp223,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb6l
	.size	op_rb6l, .-op_rb6l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb7l
	.type	op_rb7l, @function
op_rb7l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$2,%gp_rel(L)($28)	 #, L
	andi	$2,$2,0x7f	 # tmp222, L,
	sb	$2,%gp_rel(L)($28)	 # tmp222, L
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb7l
	.size	op_rb7l, .-op_rb7l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb0hl
	.type	op_rb0hl, @function
op_rb0hl:
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
	addu	$2,$2,$3	 # D.4024, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.4024, tmp233
	lbu	$3,0($2)	 # tmp239, ram
	andi	$3,$3,0xfe	 # tmp238, tmp239,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb0hl
	.size	op_rb0hl, .-op_rb0hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb1hl
	.type	op_rb1hl, @function
op_rb1hl:
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
	addu	$2,$2,$3	 # D.3984, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3984, tmp233
	lbu	$3,0($2)	 # tmp239, ram
	andi	$3,$3,0xfd	 # tmp238, tmp239,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb1hl
	.size	op_rb1hl, .-op_rb1hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb2hl
	.type	op_rb2hl, @function
op_rb2hl:
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
	addu	$2,$2,$3	 # D.3944, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3944, tmp233
	lbu	$3,0($2)	 # tmp239, ram
	andi	$3,$3,0xfb	 # tmp238, tmp239,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb2hl
	.size	op_rb2hl, .-op_rb2hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb3hl
	.type	op_rb3hl, @function
op_rb3hl:
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
	addu	$2,$2,$3	 # D.3904, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3904, tmp233
	lbu	$3,0($2)	 # tmp239, ram
	andi	$3,$3,0xf7	 # tmp238, tmp239,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb3hl
	.size	op_rb3hl, .-op_rb3hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb4hl
	.type	op_rb4hl, @function
op_rb4hl:
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
	addu	$2,$2,$3	 # D.3864, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3864, tmp233
	lbu	$3,0($2)	 # tmp239, ram
	andi	$3,$3,0xef	 # tmp238, tmp239,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb4hl
	.size	op_rb4hl, .-op_rb4hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb5hl
	.type	op_rb5hl, @function
op_rb5hl:
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
	addu	$2,$2,$3	 # D.3824, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3824, tmp233
	lbu	$3,0($2)	 # tmp239, ram
	andi	$3,$3,0xdf	 # tmp238, tmp239,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb5hl
	.size	op_rb5hl, .-op_rb5hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb6hl
	.type	op_rb6hl, @function
op_rb6hl:
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
	addu	$2,$2,$3	 # D.3784, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3784, tmp233
	lbu	$3,0($2)	 # tmp239, ram
	andi	$3,$3,0xbf	 # tmp238, tmp239,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb6hl
	.size	op_rb6hl, .-op_rb6hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb7hl
	.type	op_rb7hl, @function
op_rb7hl:
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
	addu	$2,$2,$3	 # D.3744, tmp229, L
	lui	$3,%hi(ram)	 # tmp231,
	addiu	$3,$3,%lo(ram)	 # tmp233, tmp231,
	addu	$2,$2,$3	 # tmp232, D.3744, tmp233
	lbu	$3,0($2)	 #, ram
	andi	$3,$3,0x7f	 # tmp238, tmp237,
	sb	$3,0($2)	 # tmp238, ram
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb7hl
	.size	op_rb7hl, .-op_rb7hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb0a
	.type	op_tb0a, @function
op_tb0a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(A)($28)	 # A, A
	andi	$3,$3,0x1	 # tmp231, A,
	beq	$3,$0,.L691	 #, tmp231,,
	ori	$2,$2,0x10	 # F.674, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.674, tmp232
	j	.L692	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L691:
	ori	$2,$2,0x44	 # tmp234, F.674,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L692:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb0a
	.size	op_tb0a, .-op_tb0a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb1a
	.type	op_tb1a, @function
op_tb1a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(A)($28)	 # A, A
	andi	$3,$3,0x2	 # tmp231, A,
	beq	$3,$0,.L694	 #, tmp231,,
	ori	$2,$2,0x10	 # F.617, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.617, tmp232
	j	.L695	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L694:
	ori	$2,$2,0x44	 # tmp234, F.617,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L695:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb1a
	.size	op_tb1a, .-op_tb1a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb2a
	.type	op_tb2a, @function
op_tb2a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(A)($28)	 # A, A
	andi	$3,$3,0x4	 # tmp231, A,
	beq	$3,$0,.L697	 #, tmp231,,
	ori	$2,$2,0x10	 # F.560, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.560, tmp232
	j	.L698	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L697:
	ori	$2,$2,0x44	 # tmp234, F.560,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L698:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb2a
	.size	op_tb2a, .-op_tb2a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb3a
	.type	op_tb3a, @function
op_tb3a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(A)($28)	 # A, A
	andi	$3,$3,0x8	 # tmp231, A,
	beq	$3,$0,.L700	 #, tmp231,,
	ori	$2,$2,0x10	 # F.503, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.503, tmp232
	j	.L701	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L700:
	ori	$2,$2,0x44	 # tmp234, F.503,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L701:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb3a
	.size	op_tb3a, .-op_tb3a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb4a
	.type	op_tb4a, @function
op_tb4a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(A)($28)	 # A, A
	andi	$3,$3,0x10	 # tmp231, A,
	beq	$3,$0,.L703	 #, tmp231,,
	ori	$2,$2,0x10	 # F.446, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.446, tmp232
	j	.L704	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L703:
	ori	$2,$2,0x44	 # tmp234, F.446,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L704:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb4a
	.size	op_tb4a, .-op_tb4a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb5a
	.type	op_tb5a, @function
op_tb5a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(A)($28)	 # A, A
	andi	$3,$3,0x20	 # tmp231, A,
	beq	$3,$0,.L706	 #, tmp231,,
	ori	$2,$2,0x10	 # F.389, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.389, tmp232
	j	.L707	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L706:
	ori	$2,$2,0x44	 # tmp234, F.389,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L707:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb5a
	.size	op_tb5a, .-op_tb5a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb6a
	.type	op_tb6a, @function
op_tb6a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(A)($28)	 # A, A
	andi	$3,$3,0x40	 # tmp231, A,
	beq	$3,$0,.L709	 #, tmp231,,
	ori	$2,$2,0x10	 # F.332, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.332, tmp232
	j	.L710	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L709:
	ori	$2,$2,0x44	 # tmp234, F.332,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L710:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb6a
	.size	op_tb6a, .-op_tb6a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb7a
	.type	op_tb7a, @function
op_tb7a:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-3			# 0xfffffffd	 # tmp230,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp228, F, tmp230
	ori	$3,$2,0x10	 # F.260, tmp228,
	lb	$2,%gp_rel(A)($28)	 # A, A
	bgezl	$2,.L712	 #, A,
	ori	$3,$3,0x44	 # tmp235, F.260,

	li	$2,-69			# 0xffffffbb	 # tmp233,
	and	$3,$3,$2	 # tmp232, F.260, tmp233
	ori	$3,$3,0x80	 # tmp234, tmp232,
	j	.L713	 #
	sw	$3,%gp_rel(F)($28)	 # tmp234, F

.L712:
	li	$4,-129			# 0xffffff7f	 # tmp236,
	and	$3,$3,$4	 # tmp237, tmp235, tmp236
	sw	$3,%gp_rel(F)($28)	 # tmp237, F
.L713:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb7a
	.size	op_tb7a, .-op_tb7a
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb0b
	.type	op_tb0b, @function
op_tb0b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(B)($28)	 # B, B
	andi	$3,$3,0x1	 # tmp231, B,
	beq	$3,$0,.L715	 #, tmp231,,
	ori	$2,$2,0x10	 # F.724, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.724, tmp232
	j	.L716	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L715:
	ori	$2,$2,0x44	 # tmp234, F.724,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L716:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb0b
	.size	op_tb0b, .-op_tb0b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb1b
	.type	op_tb1b, @function
op_tb1b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(B)($28)	 # B, B
	andi	$3,$3,0x2	 # tmp231, B,
	beq	$3,$0,.L718	 #, tmp231,,
	ori	$2,$2,0x10	 # F.667, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.667, tmp232
	j	.L719	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L718:
	ori	$2,$2,0x44	 # tmp234, F.667,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L719:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb1b
	.size	op_tb1b, .-op_tb1b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb2b
	.type	op_tb2b, @function
op_tb2b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(B)($28)	 # B, B
	andi	$3,$3,0x4	 # tmp231, B,
	beq	$3,$0,.L721	 #, tmp231,,
	ori	$2,$2,0x10	 # F.610, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.610, tmp232
	j	.L722	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L721:
	ori	$2,$2,0x44	 # tmp234, F.610,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L722:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb2b
	.size	op_tb2b, .-op_tb2b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb3b
	.type	op_tb3b, @function
op_tb3b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(B)($28)	 # B, B
	andi	$3,$3,0x8	 # tmp231, B,
	beq	$3,$0,.L724	 #, tmp231,,
	ori	$2,$2,0x10	 # F.553, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.553, tmp232
	j	.L725	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L724:
	ori	$2,$2,0x44	 # tmp234, F.553,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L725:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb3b
	.size	op_tb3b, .-op_tb3b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb4b
	.type	op_tb4b, @function
op_tb4b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(B)($28)	 # B, B
	andi	$3,$3,0x10	 # tmp231, B,
	beq	$3,$0,.L727	 #, tmp231,,
	ori	$2,$2,0x10	 # F.496, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.496, tmp232
	j	.L728	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L727:
	ori	$2,$2,0x44	 # tmp234, F.496,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L728:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb4b
	.size	op_tb4b, .-op_tb4b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb5b
	.type	op_tb5b, @function
op_tb5b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(B)($28)	 # B, B
	andi	$3,$3,0x20	 # tmp231, B,
	beq	$3,$0,.L730	 #, tmp231,,
	ori	$2,$2,0x10	 # F.439, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.439, tmp232
	j	.L731	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L730:
	ori	$2,$2,0x44	 # tmp234, F.439,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L731:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb5b
	.size	op_tb5b, .-op_tb5b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb6b
	.type	op_tb6b, @function
op_tb6b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(B)($28)	 # B, B
	andi	$3,$3,0x40	 # tmp231, B,
	beq	$3,$0,.L733	 #, tmp231,,
	ori	$2,$2,0x10	 # F.382, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.382, tmp232
	j	.L734	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L733:
	ori	$2,$2,0x44	 # tmp234, F.382,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L734:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb6b
	.size	op_tb6b, .-op_tb6b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb7b
	.type	op_tb7b, @function
op_tb7b:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-3			# 0xfffffffd	 # tmp230,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp228, F, tmp230
	ori	$3,$2,0x10	 # F.323, tmp228,
	lb	$2,%gp_rel(B)($28)	 # B, B
	bgezl	$2,.L736	 #, B,
	ori	$3,$3,0x44	 # tmp235, F.323,

	li	$2,-69			# 0xffffffbb	 # tmp233,
	and	$3,$3,$2	 # tmp232, F.323, tmp233
	ori	$3,$3,0x80	 # tmp234, tmp232,
	j	.L737	 #
	sw	$3,%gp_rel(F)($28)	 # tmp234, F

.L736:
	li	$4,-129			# 0xffffff7f	 # tmp236,
	and	$3,$3,$4	 # tmp237, tmp235, tmp236
	sw	$3,%gp_rel(F)($28)	 # tmp237, F
.L737:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb7b
	.size	op_tb7b, .-op_tb7b
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb0c
	.type	op_tb0c, @function
op_tb0c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(C)($28)	 # C, C
	andi	$3,$3,0x1	 # tmp231, C,
	beq	$3,$0,.L739	 #, tmp231,,
	ori	$2,$2,0x10	 # F.717, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.717, tmp232
	j	.L740	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L739:
	ori	$2,$2,0x44	 # tmp234, F.717,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L740:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb0c
	.size	op_tb0c, .-op_tb0c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb1c
	.type	op_tb1c, @function
op_tb1c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(C)($28)	 # C, C
	andi	$3,$3,0x2	 # tmp231, C,
	beq	$3,$0,.L742	 #, tmp231,,
	ori	$2,$2,0x10	 # F.660, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.660, tmp232
	j	.L743	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L742:
	ori	$2,$2,0x44	 # tmp234, F.660,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L743:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb1c
	.size	op_tb1c, .-op_tb1c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb2c
	.type	op_tb2c, @function
op_tb2c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(C)($28)	 # C, C
	andi	$3,$3,0x4	 # tmp231, C,
	beq	$3,$0,.L745	 #, tmp231,,
	ori	$2,$2,0x10	 # F.603, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.603, tmp232
	j	.L746	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L745:
	ori	$2,$2,0x44	 # tmp234, F.603,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L746:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb2c
	.size	op_tb2c, .-op_tb2c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb3c
	.type	op_tb3c, @function
op_tb3c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(C)($28)	 # C, C
	andi	$3,$3,0x8	 # tmp231, C,
	beq	$3,$0,.L748	 #, tmp231,,
	ori	$2,$2,0x10	 # F.546, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.546, tmp232
	j	.L749	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L748:
	ori	$2,$2,0x44	 # tmp234, F.546,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L749:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb3c
	.size	op_tb3c, .-op_tb3c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb4c
	.type	op_tb4c, @function
op_tb4c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(C)($28)	 # C, C
	andi	$3,$3,0x10	 # tmp231, C,
	beq	$3,$0,.L751	 #, tmp231,,
	ori	$2,$2,0x10	 # F.489, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.489, tmp232
	j	.L752	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L751:
	ori	$2,$2,0x44	 # tmp234, F.489,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L752:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb4c
	.size	op_tb4c, .-op_tb4c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb5c
	.type	op_tb5c, @function
op_tb5c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(C)($28)	 # C, C
	andi	$3,$3,0x20	 # tmp231, C,
	beq	$3,$0,.L754	 #, tmp231,,
	ori	$2,$2,0x10	 # F.432, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.432, tmp232
	j	.L755	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L754:
	ori	$2,$2,0x44	 # tmp234, F.432,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L755:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb5c
	.size	op_tb5c, .-op_tb5c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb6c
	.type	op_tb6c, @function
op_tb6c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(C)($28)	 # C, C
	andi	$3,$3,0x40	 # tmp231, C,
	beq	$3,$0,.L757	 #, tmp231,,
	ori	$2,$2,0x10	 # F.375, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.375, tmp232
	j	.L758	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L757:
	ori	$2,$2,0x44	 # tmp234, F.375,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L758:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb6c
	.size	op_tb6c, .-op_tb6c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb7c
	.type	op_tb7c, @function
op_tb7c:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-3			# 0xfffffffd	 # tmp230,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp228, F, tmp230
	ori	$3,$2,0x10	 # F.314, tmp228,
	lb	$2,%gp_rel(C)($28)	 # C, C
	bgezl	$2,.L760	 #, C,
	ori	$3,$3,0x44	 # tmp235, F.314,

	li	$2,-69			# 0xffffffbb	 # tmp233,
	and	$3,$3,$2	 # tmp232, F.314, tmp233
	ori	$3,$3,0x80	 # tmp234, tmp232,
	j	.L761	 #
	sw	$3,%gp_rel(F)($28)	 # tmp234, F

.L760:
	li	$4,-129			# 0xffffff7f	 # tmp236,
	and	$3,$3,$4	 # tmp237, tmp235, tmp236
	sw	$3,%gp_rel(F)($28)	 # tmp237, F
.L761:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb7c
	.size	op_tb7c, .-op_tb7c
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb0d
	.type	op_tb0d, @function
op_tb0d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(D)($28)	 # D, D
	andi	$3,$3,0x1	 # tmp231, D,
	beq	$3,$0,.L763	 #, tmp231,,
	ori	$2,$2,0x10	 # F.710, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.710, tmp232
	j	.L764	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L763:
	ori	$2,$2,0x44	 # tmp234, F.710,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L764:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb0d
	.size	op_tb0d, .-op_tb0d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb1d
	.type	op_tb1d, @function
op_tb1d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(D)($28)	 # D, D
	andi	$3,$3,0x2	 # tmp231, D,
	beq	$3,$0,.L766	 #, tmp231,,
	ori	$2,$2,0x10	 # F.653, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.653, tmp232
	j	.L767	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L766:
	ori	$2,$2,0x44	 # tmp234, F.653,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L767:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb1d
	.size	op_tb1d, .-op_tb1d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb2d
	.type	op_tb2d, @function
op_tb2d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(D)($28)	 # D, D
	andi	$3,$3,0x4	 # tmp231, D,
	beq	$3,$0,.L769	 #, tmp231,,
	ori	$2,$2,0x10	 # F.596, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.596, tmp232
	j	.L770	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L769:
	ori	$2,$2,0x44	 # tmp234, F.596,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L770:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb2d
	.size	op_tb2d, .-op_tb2d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb3d
	.type	op_tb3d, @function
op_tb3d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(D)($28)	 # D, D
	andi	$3,$3,0x8	 # tmp231, D,
	beq	$3,$0,.L772	 #, tmp231,,
	ori	$2,$2,0x10	 # F.539, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.539, tmp232
	j	.L773	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L772:
	ori	$2,$2,0x44	 # tmp234, F.539,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L773:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb3d
	.size	op_tb3d, .-op_tb3d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb4d
	.type	op_tb4d, @function
op_tb4d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(D)($28)	 # D, D
	andi	$3,$3,0x10	 # tmp231, D,
	beq	$3,$0,.L775	 #, tmp231,,
	ori	$2,$2,0x10	 # F.482, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.482, tmp232
	j	.L776	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L775:
	ori	$2,$2,0x44	 # tmp234, F.482,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L776:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb4d
	.size	op_tb4d, .-op_tb4d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb5d
	.type	op_tb5d, @function
op_tb5d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(D)($28)	 # D, D
	andi	$3,$3,0x20	 # tmp231, D,
	beq	$3,$0,.L778	 #, tmp231,,
	ori	$2,$2,0x10	 # F.425, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.425, tmp232
	j	.L779	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L778:
	ori	$2,$2,0x44	 # tmp234, F.425,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L779:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb5d
	.size	op_tb5d, .-op_tb5d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb6d
	.type	op_tb6d, @function
op_tb6d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(D)($28)	 # D, D
	andi	$3,$3,0x40	 # tmp231, D,
	beq	$3,$0,.L781	 #, tmp231,,
	ori	$2,$2,0x10	 # F.368, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.368, tmp232
	j	.L782	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L781:
	ori	$2,$2,0x44	 # tmp234, F.368,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L782:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb6d
	.size	op_tb6d, .-op_tb6d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb7d
	.type	op_tb7d, @function
op_tb7d:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-3			# 0xfffffffd	 # tmp230,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp228, F, tmp230
	ori	$3,$2,0x10	 # F.305, tmp228,
	lb	$2,%gp_rel(D)($28)	 # D, D
	bgezl	$2,.L784	 #, D,
	ori	$3,$3,0x44	 # tmp235, F.305,

	li	$2,-69			# 0xffffffbb	 # tmp233,
	and	$3,$3,$2	 # tmp232, F.305, tmp233
	ori	$3,$3,0x80	 # tmp234, tmp232,
	j	.L785	 #
	sw	$3,%gp_rel(F)($28)	 # tmp234, F

.L784:
	li	$4,-129			# 0xffffff7f	 # tmp236,
	and	$3,$3,$4	 # tmp237, tmp235, tmp236
	sw	$3,%gp_rel(F)($28)	 # tmp237, F
.L785:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb7d
	.size	op_tb7d, .-op_tb7d
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb0e
	.type	op_tb0e, @function
op_tb0e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(E)($28)	 # E, E
	andi	$3,$3,0x1	 # tmp231, E,
	beq	$3,$0,.L787	 #, tmp231,,
	ori	$2,$2,0x10	 # F.703, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.703, tmp232
	j	.L788	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L787:
	ori	$2,$2,0x44	 # tmp234, F.703,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L788:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb0e
	.size	op_tb0e, .-op_tb0e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb1e
	.type	op_tb1e, @function
op_tb1e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(E)($28)	 # E, E
	andi	$3,$3,0x2	 # tmp231, E,
	beq	$3,$0,.L790	 #, tmp231,,
	ori	$2,$2,0x10	 # F.646, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.646, tmp232
	j	.L791	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L790:
	ori	$2,$2,0x44	 # tmp234, F.646,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L791:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb1e
	.size	op_tb1e, .-op_tb1e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb2e
	.type	op_tb2e, @function
op_tb2e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(E)($28)	 # E, E
	andi	$3,$3,0x4	 # tmp231, E,
	beq	$3,$0,.L793	 #, tmp231,,
	ori	$2,$2,0x10	 # F.589, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.589, tmp232
	j	.L794	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L793:
	ori	$2,$2,0x44	 # tmp234, F.589,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L794:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb2e
	.size	op_tb2e, .-op_tb2e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb3e
	.type	op_tb3e, @function
op_tb3e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(E)($28)	 # E, E
	andi	$3,$3,0x8	 # tmp231, E,
	beq	$3,$0,.L796	 #, tmp231,,
	ori	$2,$2,0x10	 # F.532, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.532, tmp232
	j	.L797	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L796:
	ori	$2,$2,0x44	 # tmp234, F.532,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L797:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb3e
	.size	op_tb3e, .-op_tb3e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb4e
	.type	op_tb4e, @function
op_tb4e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(E)($28)	 # E, E
	andi	$3,$3,0x10	 # tmp231, E,
	beq	$3,$0,.L799	 #, tmp231,,
	ori	$2,$2,0x10	 # F.475, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.475, tmp232
	j	.L800	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L799:
	ori	$2,$2,0x44	 # tmp234, F.475,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L800:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb4e
	.size	op_tb4e, .-op_tb4e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb5e
	.type	op_tb5e, @function
op_tb5e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(E)($28)	 # E, E
	andi	$3,$3,0x20	 # tmp231, E,
	beq	$3,$0,.L802	 #, tmp231,,
	ori	$2,$2,0x10	 # F.418, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.418, tmp232
	j	.L803	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L802:
	ori	$2,$2,0x44	 # tmp234, F.418,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L803:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb5e
	.size	op_tb5e, .-op_tb5e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb6e
	.type	op_tb6e, @function
op_tb6e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(E)($28)	 # E, E
	andi	$3,$3,0x40	 # tmp231, E,
	beq	$3,$0,.L805	 #, tmp231,,
	ori	$2,$2,0x10	 # F.361, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.361, tmp232
	j	.L806	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L805:
	ori	$2,$2,0x44	 # tmp234, F.361,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L806:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb6e
	.size	op_tb6e, .-op_tb6e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb7e
	.type	op_tb7e, @function
op_tb7e:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-3			# 0xfffffffd	 # tmp230,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp228, F, tmp230
	ori	$3,$2,0x10	 # F.296, tmp228,
	lb	$2,%gp_rel(E)($28)	 # E, E
	bgezl	$2,.L808	 #, E,
	ori	$3,$3,0x44	 # tmp235, F.296,

	li	$2,-69			# 0xffffffbb	 # tmp233,
	and	$3,$3,$2	 # tmp232, F.296, tmp233
	ori	$3,$3,0x80	 # tmp234, tmp232,
	j	.L809	 #
	sw	$3,%gp_rel(F)($28)	 # tmp234, F

.L808:
	li	$4,-129			# 0xffffff7f	 # tmp236,
	and	$3,$3,$4	 # tmp237, tmp235, tmp236
	sw	$3,%gp_rel(F)($28)	 # tmp237, F
.L809:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb7e
	.size	op_tb7e, .-op_tb7e
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb0h
	.type	op_tb0h, @function
op_tb0h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(H)($28)	 # H, H
	andi	$3,$3,0x1	 # tmp231, H,
	beq	$3,$0,.L811	 #, tmp231,,
	ori	$2,$2,0x10	 # F.696, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.696, tmp232
	j	.L812	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L811:
	ori	$2,$2,0x44	 # tmp234, F.696,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L812:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb0h
	.size	op_tb0h, .-op_tb0h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb1h
	.type	op_tb1h, @function
op_tb1h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(H)($28)	 # H, H
	andi	$3,$3,0x2	 # tmp231, H,
	beq	$3,$0,.L814	 #, tmp231,,
	ori	$2,$2,0x10	 # F.639, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.639, tmp232
	j	.L815	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L814:
	ori	$2,$2,0x44	 # tmp234, F.639,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L815:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb1h
	.size	op_tb1h, .-op_tb1h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb2h
	.type	op_tb2h, @function
op_tb2h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(H)($28)	 # H, H
	andi	$3,$3,0x4	 # tmp231, H,
	beq	$3,$0,.L817	 #, tmp231,,
	ori	$2,$2,0x10	 # F.582, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.582, tmp232
	j	.L818	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L817:
	ori	$2,$2,0x44	 # tmp234, F.582,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L818:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb2h
	.size	op_tb2h, .-op_tb2h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb3h
	.type	op_tb3h, @function
op_tb3h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(H)($28)	 # H, H
	andi	$3,$3,0x8	 # tmp231, H,
	beq	$3,$0,.L820	 #, tmp231,,
	ori	$2,$2,0x10	 # F.525, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.525, tmp232
	j	.L821	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L820:
	ori	$2,$2,0x44	 # tmp234, F.525,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L821:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb3h
	.size	op_tb3h, .-op_tb3h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb4h
	.type	op_tb4h, @function
op_tb4h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(H)($28)	 # H, H
	andi	$3,$3,0x10	 # tmp231, H,
	beq	$3,$0,.L823	 #, tmp231,,
	ori	$2,$2,0x10	 # F.468, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.468, tmp232
	j	.L824	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L823:
	ori	$2,$2,0x44	 # tmp234, F.468,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L824:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb4h
	.size	op_tb4h, .-op_tb4h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb5h
	.type	op_tb5h, @function
op_tb5h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(H)($28)	 # H, H
	andi	$3,$3,0x20	 # tmp231, H,
	beq	$3,$0,.L826	 #, tmp231,,
	ori	$2,$2,0x10	 # F.411, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.411, tmp232
	j	.L827	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L826:
	ori	$2,$2,0x44	 # tmp234, F.411,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L827:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb5h
	.size	op_tb5h, .-op_tb5h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb6h
	.type	op_tb6h, @function
op_tb6h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(H)($28)	 # H, H
	andi	$3,$3,0x40	 # tmp231, H,
	beq	$3,$0,.L829	 #, tmp231,,
	ori	$2,$2,0x10	 # F.354, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.354, tmp232
	j	.L830	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L829:
	ori	$2,$2,0x44	 # tmp234, F.354,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L830:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb6h
	.size	op_tb6h, .-op_tb6h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb7h
	.type	op_tb7h, @function
op_tb7h:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-3			# 0xfffffffd	 # tmp230,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp228, F, tmp230
	ori	$3,$2,0x10	 # F.287, tmp228,
	lb	$2,%gp_rel(H)($28)	 # H, H
	bgezl	$2,.L832	 #, H,
	ori	$3,$3,0x44	 # tmp235, F.287,

	li	$2,-69			# 0xffffffbb	 # tmp233,
	and	$3,$3,$2	 # tmp232, F.287, tmp233
	ori	$3,$3,0x80	 # tmp234, tmp232,
	j	.L833	 #
	sw	$3,%gp_rel(F)($28)	 # tmp234, F

.L832:
	li	$4,-129			# 0xffffff7f	 # tmp236,
	and	$3,$3,$4	 # tmp237, tmp235, tmp236
	sw	$3,%gp_rel(F)($28)	 # tmp237, F
.L833:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb7h
	.size	op_tb7h, .-op_tb7h
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb0l
	.type	op_tb0l, @function
op_tb0l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(L)($28)	 # L, L
	andi	$3,$3,0x1	 # tmp231, L,
	beq	$3,$0,.L835	 #, tmp231,,
	ori	$2,$2,0x10	 # F.689, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.689, tmp232
	j	.L836	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L835:
	ori	$2,$2,0x44	 # tmp234, F.689,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L836:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb0l
	.size	op_tb0l, .-op_tb0l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb1l
	.type	op_tb1l, @function
op_tb1l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(L)($28)	 # L, L
	andi	$3,$3,0x2	 # tmp231, L,
	beq	$3,$0,.L838	 #, tmp231,,
	ori	$2,$2,0x10	 # F.632, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.632, tmp232
	j	.L839	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L838:
	ori	$2,$2,0x44	 # tmp234, F.632,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L839:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb1l
	.size	op_tb1l, .-op_tb1l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb2l
	.type	op_tb2l, @function
op_tb2l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(L)($28)	 # L, L
	andi	$3,$3,0x4	 # tmp231, L,
	beq	$3,$0,.L841	 #, tmp231,,
	ori	$2,$2,0x10	 # F.575, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.575, tmp232
	j	.L842	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L841:
	ori	$2,$2,0x44	 # tmp234, F.575,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L842:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb2l
	.size	op_tb2l, .-op_tb2l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb3l
	.type	op_tb3l, @function
op_tb3l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(L)($28)	 # L, L
	andi	$3,$3,0x8	 # tmp231, L,
	beq	$3,$0,.L844	 #, tmp231,,
	ori	$2,$2,0x10	 # F.518, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.518, tmp232
	j	.L845	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L844:
	ori	$2,$2,0x44	 # tmp234, F.518,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L845:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb3l
	.size	op_tb3l, .-op_tb3l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb4l
	.type	op_tb4l, @function
op_tb4l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(L)($28)	 # L, L
	andi	$3,$3,0x10	 # tmp231, L,
	beq	$3,$0,.L847	 #, tmp231,,
	ori	$2,$2,0x10	 # F.461, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.461, tmp232
	j	.L848	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L847:
	ori	$2,$2,0x44	 # tmp234, F.461,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L848:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb4l
	.size	op_tb4l, .-op_tb4l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb5l
	.type	op_tb5l, @function
op_tb5l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(L)($28)	 # L, L
	andi	$3,$3,0x20	 # tmp231, L,
	beq	$3,$0,.L850	 #, tmp231,,
	ori	$2,$2,0x10	 # F.404, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.404, tmp232
	j	.L851	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L850:
	ori	$2,$2,0x44	 # tmp234, F.404,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L851:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb5l
	.size	op_tb5l, .-op_tb5l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb6l
	.type	op_tb6l, @function
op_tb6l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp229,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp227, F, tmp229
	lbu	$3,%gp_rel(L)($28)	 # L, L
	andi	$3,$3,0x40	 # tmp231, L,
	beq	$3,$0,.L853	 #, tmp231,,
	ori	$2,$2,0x10	 # F.347, tmp227,

	li	$3,-69			# 0xffffffbb	 # tmp232,
	and	$2,$2,$3	 # tmp233, F.347, tmp232
	j	.L854	 #
	sw	$2,%gp_rel(F)($28)	 # tmp233, F

.L853:
	ori	$2,$2,0x44	 # tmp234, F.347,
	sw	$2,%gp_rel(F)($28)	 # tmp234, F
.L854:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb6l
	.size	op_tb6l, .-op_tb6l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb7l
	.type	op_tb7l, @function
op_tb7l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-3			# 0xfffffffd	 # tmp230,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp228, F, tmp230
	ori	$3,$2,0x10	 # F.278, tmp228,
	lb	$2,%gp_rel(L)($28)	 # L, L
	bgezl	$2,.L856	 #, L,
	ori	$3,$3,0x44	 # tmp235, F.278,

	li	$2,-69			# 0xffffffbb	 # tmp233,
	and	$3,$3,$2	 # tmp232, F.278, tmp233
	ori	$3,$3,0x80	 # tmp234, tmp232,
	j	.L857	 #
	sw	$3,%gp_rel(F)($28)	 # tmp234, F

.L856:
	li	$4,-129			# 0xffffff7f	 # tmp236,
	and	$3,$3,$4	 # tmp237, tmp235, tmp236
	sw	$3,%gp_rel(F)($28)	 # tmp237, F
.L857:
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb7l
	.size	op_tb7l, .-op_tb7l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb0hl
	.type	op_tb0hl, @function
op_tb0hl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp236,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp234, F, tmp236
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp239, H,
	lbu	$4,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$4	 # tmp241, tmp239, L
	lui	$4,%hi(ram)	 # tmp237,
	addiu	$4,$4,%lo(ram)	 # tmp243, tmp237,
	addu	$3,$3,$4	 # tmp242, tmp241, tmp243
	lbu	$3,0($3)	 # tmp244, ram
	andi	$3,$3,0x1	 # tmp245, tmp244,
	beq	$3,$0,.L859	 #, tmp245,,
	ori	$2,$2,0x10	 # F.681, tmp234,

	li	$3,-69			# 0xffffffbb	 # tmp246,
	and	$2,$2,$3	 # tmp247, F.681, tmp246
	j	.L860	 #
	sw	$2,%gp_rel(F)($28)	 # tmp247, F

.L859:
	ori	$2,$2,0x44	 # tmp248, F.681,
	sw	$2,%gp_rel(F)($28)	 # tmp248, F
.L860:
	j	$31
	li	$2,12			# 0xc	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb0hl
	.size	op_tb0hl, .-op_tb0hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb1hl
	.type	op_tb1hl, @function
op_tb1hl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp236,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp234, F, tmp236
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp239, H,
	lbu	$4,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$4	 # tmp241, tmp239, L
	lui	$4,%hi(ram)	 # tmp237,
	addiu	$4,$4,%lo(ram)	 # tmp243, tmp237,
	addu	$3,$3,$4	 # tmp242, tmp241, tmp243
	lbu	$3,0($3)	 # tmp244, ram
	andi	$3,$3,0x2	 # tmp245, tmp244,
	beq	$3,$0,.L862	 #, tmp245,,
	ori	$2,$2,0x10	 # F.624, tmp234,

	li	$3,-69			# 0xffffffbb	 # tmp246,
	and	$2,$2,$3	 # tmp247, F.624, tmp246
	j	.L863	 #
	sw	$2,%gp_rel(F)($28)	 # tmp247, F

.L862:
	ori	$2,$2,0x44	 # tmp248, F.624,
	sw	$2,%gp_rel(F)($28)	 # tmp248, F
.L863:
	j	$31
	li	$2,12			# 0xc	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb1hl
	.size	op_tb1hl, .-op_tb1hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb2hl
	.type	op_tb2hl, @function
op_tb2hl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp236,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp234, F, tmp236
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp239, H,
	lbu	$4,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$4	 # tmp241, tmp239, L
	lui	$4,%hi(ram)	 # tmp237,
	addiu	$4,$4,%lo(ram)	 # tmp243, tmp237,
	addu	$3,$3,$4	 # tmp242, tmp241, tmp243
	lbu	$3,0($3)	 # tmp244, ram
	andi	$3,$3,0x4	 # tmp245, tmp244,
	beq	$3,$0,.L865	 #, tmp245,,
	ori	$2,$2,0x10	 # F.567, tmp234,

	li	$3,-69			# 0xffffffbb	 # tmp246,
	and	$2,$2,$3	 # tmp247, F.567, tmp246
	j	.L866	 #
	sw	$2,%gp_rel(F)($28)	 # tmp247, F

.L865:
	ori	$2,$2,0x44	 # tmp248, F.567,
	sw	$2,%gp_rel(F)($28)	 # tmp248, F
.L866:
	j	$31
	li	$2,12			# 0xc	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb2hl
	.size	op_tb2hl, .-op_tb2hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb3hl
	.type	op_tb3hl, @function
op_tb3hl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp236,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp234, F, tmp236
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp239, H,
	lbu	$4,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$4	 # tmp241, tmp239, L
	lui	$4,%hi(ram)	 # tmp237,
	addiu	$4,$4,%lo(ram)	 # tmp243, tmp237,
	addu	$3,$3,$4	 # tmp242, tmp241, tmp243
	lbu	$3,0($3)	 # tmp244, ram
	andi	$3,$3,0x8	 # tmp245, tmp244,
	beq	$3,$0,.L868	 #, tmp245,,
	ori	$2,$2,0x10	 # F.510, tmp234,

	li	$3,-69			# 0xffffffbb	 # tmp246,
	and	$2,$2,$3	 # tmp247, F.510, tmp246
	j	.L869	 #
	sw	$2,%gp_rel(F)($28)	 # tmp247, F

.L868:
	ori	$2,$2,0x44	 # tmp248, F.510,
	sw	$2,%gp_rel(F)($28)	 # tmp248, F
.L869:
	j	$31
	li	$2,12			# 0xc	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb3hl
	.size	op_tb3hl, .-op_tb3hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb4hl
	.type	op_tb4hl, @function
op_tb4hl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp236,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp234, F, tmp236
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp239, H,
	lbu	$4,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$4	 # tmp241, tmp239, L
	lui	$4,%hi(ram)	 # tmp237,
	addiu	$4,$4,%lo(ram)	 # tmp243, tmp237,
	addu	$3,$3,$4	 # tmp242, tmp241, tmp243
	lbu	$3,0($3)	 # tmp244, ram
	andi	$3,$3,0x10	 # tmp245, tmp244,
	beq	$3,$0,.L871	 #, tmp245,,
	ori	$2,$2,0x10	 # F.453, tmp234,

	li	$3,-69			# 0xffffffbb	 # tmp246,
	and	$2,$2,$3	 # tmp247, F.453, tmp246
	j	.L872	 #
	sw	$2,%gp_rel(F)($28)	 # tmp247, F

.L871:
	ori	$2,$2,0x44	 # tmp248, F.453,
	sw	$2,%gp_rel(F)($28)	 # tmp248, F
.L872:
	j	$31
	li	$2,12			# 0xc	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb4hl
	.size	op_tb4hl, .-op_tb4hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb5hl
	.type	op_tb5hl, @function
op_tb5hl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp236,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp234, F, tmp236
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp239, H,
	lbu	$4,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$4	 # tmp241, tmp239, L
	lui	$4,%hi(ram)	 # tmp237,
	addiu	$4,$4,%lo(ram)	 # tmp243, tmp237,
	addu	$3,$3,$4	 # tmp242, tmp241, tmp243
	lbu	$3,0($3)	 # tmp244, ram
	andi	$3,$3,0x20	 # tmp245, tmp244,
	beq	$3,$0,.L874	 #, tmp245,,
	ori	$2,$2,0x10	 # F.396, tmp234,

	li	$3,-69			# 0xffffffbb	 # tmp246,
	and	$2,$2,$3	 # tmp247, F.396, tmp246
	j	.L875	 #
	sw	$2,%gp_rel(F)($28)	 # tmp247, F

.L874:
	ori	$2,$2,0x44	 # tmp248, F.396,
	sw	$2,%gp_rel(F)($28)	 # tmp248, F
.L875:
	j	$31
	li	$2,12			# 0xc	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb5hl
	.size	op_tb5hl, .-op_tb5hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb6hl
	.type	op_tb6hl, @function
op_tb6hl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp236,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp234, F, tmp236
	lbu	$3,%gp_rel(H)($28)	 # H, H
	sll	$3,$3,8	 # tmp239, H,
	lbu	$4,%gp_rel(L)($28)	 # L, L
	addu	$3,$3,$4	 # tmp241, tmp239, L
	lui	$4,%hi(ram)	 # tmp237,
	addiu	$4,$4,%lo(ram)	 # tmp243, tmp237,
	addu	$3,$3,$4	 # tmp242, tmp241, tmp243
	lbu	$3,0($3)	 # tmp244, ram
	andi	$3,$3,0x40	 # tmp245, tmp244,
	beq	$3,$0,.L877	 #, tmp245,,
	ori	$2,$2,0x10	 # F.339, tmp234,

	li	$3,-69			# 0xffffffbb	 # tmp246,
	and	$2,$2,$3	 # tmp247, F.339, tmp246
	j	.L878	 #
	sw	$2,%gp_rel(F)($28)	 # tmp247, F

.L877:
	ori	$2,$2,0x44	 # tmp248, F.339,
	sw	$2,%gp_rel(F)($28)	 # tmp248, F
.L878:
	j	$31
	li	$2,12			# 0xc	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb6hl
	.size	op_tb6hl, .-op_tb6hl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb7hl
	.type	op_tb7hl, @function
op_tb7hl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-3			# 0xfffffffd	 # tmp237,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp235, F, tmp237
	ori	$4,$2,0x10	 # F.269, tmp235,
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sll	$2,$2,8	 # tmp240, H,
	lbu	$3,%gp_rel(L)($28)	 # L, L
	addu	$2,$2,$3	 # tmp242, tmp240, L
	lui	$3,%hi(ram)	 # tmp238,
	addiu	$3,$3,%lo(ram)	 # tmp244, tmp238,
	addu	$2,$2,$3	 # tmp243, tmp242, tmp244
	lb	$2,0($2)	 # tmp245, ram
	bgezl	$2,.L880	 #, tmp245,
	ori	$4,$4,0x44	 # tmp249, F.269,

	li	$2,-69			# 0xffffffbb	 # tmp247,
	and	$4,$4,$2	 # tmp246, F.269, tmp247
	ori	$4,$4,0x80	 # tmp248, tmp246,
	j	.L881	 #
	sw	$4,%gp_rel(F)($28)	 # tmp248, F

.L880:
	li	$3,-129			# 0xffffff7f	 # tmp250,
	and	$4,$4,$3	 # tmp251, tmp249, tmp250
	sw	$4,%gp_rel(F)($28)	 # tmp251, F
.L881:
	j	$31
	li	$2,12			# 0xc	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb7hl
	.size	op_tb7hl, .-op_tb7hl
	.align	2
	.globl	op_cb_handel
	.set	nomips16
	.set	nomicromips
	.ent	op_cb_handel
	.type	op_cb_handel, @function
op_cb_handel:
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
	lui	$2,%hi(op_cb.1825)	 # tmp226,
	addiu	$2,$2,%lo(op_cb.1825)	 # tmp230, tmp226,
	addu	$2,$4,$2	 # tmp229, tmp228, tmp230
	lw	$2,0($2)	 # D.3409, op_cb
	addiu	$3,$3,1	 # tmp231, PC.0,
	jalr	$2	 # D.3409
	sw	$3,%gp_rel(PC)($28)	 # tmp231, PC

	lui	$3,%hi(ram+65535)	 # tmp235,
	addiu	$3,$3,%lo(ram+65535)	 # tmp234, tmp235,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	sltu	$3,$3,$4	 # tmp233, tmp234, PC
	beq	$3,$0,.L883	 #, tmp233,,
	lui	$3,%hi(ram)	 # tmp237,

	addiu	$3,$3,%lo(ram)	 # tmp236, tmp237,
	sw	$3,%gp_rel(PC)($28)	 # tmp236, PC
.L883:
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cb_handel
	.size	op_cb_handel, .-op_cb_handel
	.section	.rodata,code
	.align	2
	.type	op_cb.1825, @object
	.size	op_cb.1825, 1024
op_cb.1825:
	.word	op_rlcb
	.word	op_rlcc
	.word	op_rlcd
	.word	op_rlce
	.word	op_rlch
	.word	op_rlcl
	.word	op_rlchl
	.word	op_rlcra
	.word	op_rrcb
	.word	op_rrcc
	.word	op_rrcd
	.word	op_rrce
	.word	op_rrch
	.word	op_rrcl
	.word	op_rrchl
	.word	op_rrcra
	.word	op_rlb
	.word	op_rlc
	.word	op_rld
	.word	op_rle
	.word	op_rlh
	.word	op_rll
	.word	op_rlhl
	.word	op_rlra
	.word	op_rrb
	.word	op_rrc
	.word	op_rrd
	.word	op_rre
	.word	op_rrh
	.word	op_rrl
	.word	op_rrhl
	.word	op_rrra
	.word	op_slab
	.word	op_slac
	.word	op_slad
	.word	op_slae
	.word	op_slah
	.word	op_slal
	.word	op_slahl
	.word	op_slaa
	.word	op_srab
	.word	op_srac
	.word	op_srad
	.word	op_srae
	.word	op_srah
	.word	op_sral
	.word	op_srahl
	.word	op_sraa
	.word	trap_cb
	.word	trap_cb
	.word	trap_cb
	.word	trap_cb
	.word	trap_cb
	.word	trap_cb
	.word	trap_cb
	.word	trap_cb
	.word	op_srlb
	.word	op_srlc
	.word	op_srld
	.word	op_srle
	.word	op_srlh
	.word	op_srll
	.word	op_srlhl
	.word	op_srla
	.word	op_tb0b
	.word	op_tb0c
	.word	op_tb0d
	.word	op_tb0e
	.word	op_tb0h
	.word	op_tb0l
	.word	op_tb0hl
	.word	op_tb0a
	.word	op_tb1b
	.word	op_tb1c
	.word	op_tb1d
	.word	op_tb1e
	.word	op_tb1h
	.word	op_tb1l
	.word	op_tb1hl
	.word	op_tb1a
	.word	op_tb2b
	.word	op_tb2c
	.word	op_tb2d
	.word	op_tb2e
	.word	op_tb2h
	.word	op_tb2l
	.word	op_tb2hl
	.word	op_tb2a
	.word	op_tb3b
	.word	op_tb3c
	.word	op_tb3d
	.word	op_tb3e
	.word	op_tb3h
	.word	op_tb3l
	.word	op_tb3hl
	.word	op_tb3a
	.word	op_tb4b
	.word	op_tb4c
	.word	op_tb4d
	.word	op_tb4e
	.word	op_tb4h
	.word	op_tb4l
	.word	op_tb4hl
	.word	op_tb4a
	.word	op_tb5b
	.word	op_tb5c
	.word	op_tb5d
	.word	op_tb5e
	.word	op_tb5h
	.word	op_tb5l
	.word	op_tb5hl
	.word	op_tb5a
	.word	op_tb6b
	.word	op_tb6c
	.word	op_tb6d
	.word	op_tb6e
	.word	op_tb6h
	.word	op_tb6l
	.word	op_tb6hl
	.word	op_tb6a
	.word	op_tb7b
	.word	op_tb7c
	.word	op_tb7d
	.word	op_tb7e
	.word	op_tb7h
	.word	op_tb7l
	.word	op_tb7hl
	.word	op_tb7a
	.word	op_rb0b
	.word	op_rb0c
	.word	op_rb0d
	.word	op_rb0e
	.word	op_rb0h
	.word	op_rb0l
	.word	op_rb0hl
	.word	op_rb0a
	.word	op_rb1b
	.word	op_rb1c
	.word	op_rb1d
	.word	op_rb1e
	.word	op_rb1h
	.word	op_rb1l
	.word	op_rb1hl
	.word	op_rb1a
	.word	op_rb2b
	.word	op_rb2c
	.word	op_rb2d
	.word	op_rb2e
	.word	op_rb2h
	.word	op_rb2l
	.word	op_rb2hl
	.word	op_rb2a
	.word	op_rb3b
	.word	op_rb3c
	.word	op_rb3d
	.word	op_rb3e
	.word	op_rb3h
	.word	op_rb3l
	.word	op_rb3hl
	.word	op_rb3a
	.word	op_rb4b
	.word	op_rb4c
	.word	op_rb4d
	.word	op_rb4e
	.word	op_rb4h
	.word	op_rb4l
	.word	op_rb4hl
	.word	op_rb4a
	.word	op_rb5b
	.word	op_rb5c
	.word	op_rb5d
	.word	op_rb5e
	.word	op_rb5h
	.word	op_rb5l
	.word	op_rb5hl
	.word	op_rb5a
	.word	op_rb6b
	.word	op_rb6c
	.word	op_rb6d
	.word	op_rb6e
	.word	op_rb6h
	.word	op_rb6l
	.word	op_rb6hl
	.word	op_rb6a
	.word	op_rb7b
	.word	op_rb7c
	.word	op_rb7d
	.word	op_rb7e
	.word	op_rb7h
	.word	op_rb7l
	.word	op_rb7hl
	.word	op_rb7a
	.word	op_sb0b
	.word	op_sb0c
	.word	op_sb0d
	.word	op_sb0e
	.word	op_sb0h
	.word	op_sb0l
	.word	op_sb0hl
	.word	op_sb0a
	.word	op_sb1b
	.word	op_sb1c
	.word	op_sb1d
	.word	op_sb1e
	.word	op_sb1h
	.word	op_sb1l
	.word	op_sb1hl
	.word	op_sb1a
	.word	op_sb2b
	.word	op_sb2c
	.word	op_sb2d
	.word	op_sb2e
	.word	op_sb2h
	.word	op_sb2l
	.word	op_sb2hl
	.word	op_sb2a
	.word	op_sb3b
	.word	op_sb3c
	.word	op_sb3d
	.word	op_sb3e
	.word	op_sb3h
	.word	op_sb3l
	.word	op_sb3hl
	.word	op_sb3a
	.word	op_sb4b
	.word	op_sb4c
	.word	op_sb4d
	.word	op_sb4e
	.word	op_sb4h
	.word	op_sb4l
	.word	op_sb4hl
	.word	op_sb4a
	.word	op_sb5b
	.word	op_sb5c
	.word	op_sb5d
	.word	op_sb5e
	.word	op_sb5h
	.word	op_sb5l
	.word	op_sb5hl
	.word	op_sb5a
	.word	op_sb6b
	.word	op_sb6c
	.word	op_sb6d
	.word	op_sb6e
	.word	op_sb6h
	.word	op_sb6l
	.word	op_sb6hl
	.word	op_sb6a
	.word	op_sb7b
	.word	op_sb7c
	.word	op_sb7d
	.word	op_sb7e
	.word	op_sb7h
	.word	op_sb7l
	.word	op_sb7hl
	.word	op_sb7a
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
