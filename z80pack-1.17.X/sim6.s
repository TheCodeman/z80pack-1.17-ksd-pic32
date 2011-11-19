	.file	1 "sim6.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed sim6.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/664612396/sim6.o -O1
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
	.ent	trap_ddcb
	.type	trap_ddcb, @function
trap_ddcb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,6			# 0x6	 # tmp219,
	sw	$2,%gp_rel(cpu_error)($28)	 # tmp219, cpu_error
	sb	$0,%gp_rel(cpu_state)($28)	 #, cpu_state
	j	$31
	move	$2,$0	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	trap_ddcb
	.size	trap_ddcb, .-trap_ddcb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb0ixd
	.type	op_tb0ixd, @function
op_tb0ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp234,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp232, F, tmp234
	lhu	$3,%gp_rel(IX)($28)	 # IX, IX
	addu	$3,$4,$3	 # tmp237, data, IX
	lui	$5,%hi(ram)	 # tmp235,
	addiu	$5,$5,%lo(ram)	 # tmp239, tmp235,
	addu	$3,$3,$5	 # tmp238, tmp237, tmp239
	lbu	$3,0($3)	 # tmp240, ram
	andi	$3,$3,0x1	 # tmp241, tmp240,
	beq	$3,$0,.L3	 #, tmp241,,
	ori	$2,$2,0x10	 # F.93, tmp232,

	li	$3,-69			# 0xffffffbb	 # tmp242,
	and	$2,$2,$3	 # tmp243, F.93, tmp242
	j	.L4	 #
	sw	$2,%gp_rel(F)($28)	 # tmp243, F

.L3:
	ori	$2,$2,0x44	 # tmp244, F.93,
	sw	$2,%gp_rel(F)($28)	 # tmp244, F
.L4:
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb0ixd
	.size	op_tb0ixd, .-op_tb0ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb1ixd
	.type	op_tb1ixd, @function
op_tb1ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp234,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp232, F, tmp234
	lhu	$3,%gp_rel(IX)($28)	 # IX, IX
	addu	$3,$4,$3	 # tmp237, data, IX
	lui	$5,%hi(ram)	 # tmp235,
	addiu	$5,$5,%lo(ram)	 # tmp239, tmp235,
	addu	$3,$3,$5	 # tmp238, tmp237, tmp239
	lbu	$3,0($3)	 # tmp240, ram
	andi	$3,$3,0x2	 # tmp241, tmp240,
	beq	$3,$0,.L6	 #, tmp241,,
	ori	$2,$2,0x10	 # F.85, tmp232,

	li	$3,-69			# 0xffffffbb	 # tmp242,
	and	$2,$2,$3	 # tmp243, F.85, tmp242
	j	.L7	 #
	sw	$2,%gp_rel(F)($28)	 # tmp243, F

.L6:
	ori	$2,$2,0x44	 # tmp244, F.85,
	sw	$2,%gp_rel(F)($28)	 # tmp244, F
.L7:
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb1ixd
	.size	op_tb1ixd, .-op_tb1ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb2ixd
	.type	op_tb2ixd, @function
op_tb2ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp234,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp232, F, tmp234
	lhu	$3,%gp_rel(IX)($28)	 # IX, IX
	addu	$3,$4,$3	 # tmp237, data, IX
	lui	$5,%hi(ram)	 # tmp235,
	addiu	$5,$5,%lo(ram)	 # tmp239, tmp235,
	addu	$3,$3,$5	 # tmp238, tmp237, tmp239
	lbu	$3,0($3)	 # tmp240, ram
	andi	$3,$3,0x4	 # tmp241, tmp240,
	beq	$3,$0,.L9	 #, tmp241,,
	ori	$2,$2,0x10	 # F.77, tmp232,

	li	$3,-69			# 0xffffffbb	 # tmp242,
	and	$2,$2,$3	 # tmp243, F.77, tmp242
	j	.L10	 #
	sw	$2,%gp_rel(F)($28)	 # tmp243, F

.L9:
	ori	$2,$2,0x44	 # tmp244, F.77,
	sw	$2,%gp_rel(F)($28)	 # tmp244, F
.L10:
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb2ixd
	.size	op_tb2ixd, .-op_tb2ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb3ixd
	.type	op_tb3ixd, @function
op_tb3ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp234,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp232, F, tmp234
	lhu	$3,%gp_rel(IX)($28)	 # IX, IX
	addu	$3,$4,$3	 # tmp237, data, IX
	lui	$5,%hi(ram)	 # tmp235,
	addiu	$5,$5,%lo(ram)	 # tmp239, tmp235,
	addu	$3,$3,$5	 # tmp238, tmp237, tmp239
	lbu	$3,0($3)	 # tmp240, ram
	andi	$3,$3,0x8	 # tmp241, tmp240,
	beq	$3,$0,.L12	 #, tmp241,,
	ori	$2,$2,0x10	 # F.69, tmp232,

	li	$3,-69			# 0xffffffbb	 # tmp242,
	and	$2,$2,$3	 # tmp243, F.69, tmp242
	j	.L13	 #
	sw	$2,%gp_rel(F)($28)	 # tmp243, F

.L12:
	ori	$2,$2,0x44	 # tmp244, F.69,
	sw	$2,%gp_rel(F)($28)	 # tmp244, F
.L13:
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb3ixd
	.size	op_tb3ixd, .-op_tb3ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb4ixd
	.type	op_tb4ixd, @function
op_tb4ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp234,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp232, F, tmp234
	lhu	$3,%gp_rel(IX)($28)	 # IX, IX
	addu	$3,$4,$3	 # tmp237, data, IX
	lui	$5,%hi(ram)	 # tmp235,
	addiu	$5,$5,%lo(ram)	 # tmp239, tmp235,
	addu	$3,$3,$5	 # tmp238, tmp237, tmp239
	lbu	$3,0($3)	 # tmp240, ram
	andi	$3,$3,0x10	 # tmp241, tmp240,
	beq	$3,$0,.L15	 #, tmp241,,
	ori	$2,$2,0x10	 # F.61, tmp232,

	li	$3,-69			# 0xffffffbb	 # tmp242,
	and	$2,$2,$3	 # tmp243, F.61, tmp242
	j	.L16	 #
	sw	$2,%gp_rel(F)($28)	 # tmp243, F

.L15:
	ori	$2,$2,0x44	 # tmp244, F.61,
	sw	$2,%gp_rel(F)($28)	 # tmp244, F
.L16:
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb4ixd
	.size	op_tb4ixd, .-op_tb4ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb5ixd
	.type	op_tb5ixd, @function
op_tb5ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp234,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp232, F, tmp234
	lhu	$3,%gp_rel(IX)($28)	 # IX, IX
	addu	$3,$4,$3	 # tmp237, data, IX
	lui	$5,%hi(ram)	 # tmp235,
	addiu	$5,$5,%lo(ram)	 # tmp239, tmp235,
	addu	$3,$3,$5	 # tmp238, tmp237, tmp239
	lbu	$3,0($3)	 # tmp240, ram
	andi	$3,$3,0x20	 # tmp241, tmp240,
	beq	$3,$0,.L18	 #, tmp241,,
	ori	$2,$2,0x10	 # F.53, tmp232,

	li	$3,-69			# 0xffffffbb	 # tmp242,
	and	$2,$2,$3	 # tmp243, F.53, tmp242
	j	.L19	 #
	sw	$2,%gp_rel(F)($28)	 # tmp243, F

.L18:
	ori	$2,$2,0x44	 # tmp244, F.53,
	sw	$2,%gp_rel(F)($28)	 # tmp244, F
.L19:
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb5ixd
	.size	op_tb5ixd, .-op_tb5ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb6ixd
	.type	op_tb6ixd, @function
op_tb6ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-131			# 0xffffff7d	 # tmp234,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp232, F, tmp234
	lhu	$3,%gp_rel(IX)($28)	 # IX, IX
	addu	$3,$4,$3	 # tmp237, data, IX
	lui	$5,%hi(ram)	 # tmp235,
	addiu	$5,$5,%lo(ram)	 # tmp239, tmp235,
	addu	$3,$3,$5	 # tmp238, tmp237, tmp239
	lbu	$3,0($3)	 # tmp240, ram
	andi	$3,$3,0x40	 # tmp241, tmp240,
	beq	$3,$0,.L21	 #, tmp241,,
	ori	$2,$2,0x10	 # F.45, tmp232,

	li	$3,-69			# 0xffffffbb	 # tmp242,
	and	$2,$2,$3	 # tmp243, F.45, tmp242
	j	.L22	 #
	sw	$2,%gp_rel(F)($28)	 # tmp243, F

.L21:
	ori	$2,$2,0x44	 # tmp244, F.45,
	sw	$2,%gp_rel(F)($28)	 # tmp244, F
.L22:
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb6ixd
	.size	op_tb6ixd, .-op_tb6ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_tb7ixd
	.type	op_tb7ixd, @function
op_tb7ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$2,-3			# 0xfffffffd	 # tmp235,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp233, F, tmp235
	ori	$3,$2,0x10	 # F.36, tmp233,
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # tmp238, data, IX
	lui	$5,%hi(ram)	 # tmp236,
	addiu	$5,$5,%lo(ram)	 # tmp240, tmp236,
	addu	$2,$2,$5	 # tmp239, tmp238, tmp240
	lb	$2,0($2)	 # tmp241, ram
	bgezl	$2,.L24	 #, tmp241,
	ori	$3,$3,0x44	 # tmp245, F.36,

	li	$2,-69			# 0xffffffbb	 # tmp243,
	and	$3,$3,$2	 # tmp242, F.36, tmp243
	ori	$3,$3,0x80	 # tmp244, tmp242,
	j	.L25	 #
	sw	$3,%gp_rel(F)($28)	 # tmp244, F

.L24:
	li	$4,-129			# 0xffffff7f	 # tmp246,
	and	$3,$3,$4	 # tmp247, tmp245, tmp246
	sw	$3,%gp_rel(F)($28)	 # tmp247, F
.L25:
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_tb7ixd
	.size	op_tb7ixd, .-op_tb7ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb0ixd
	.type	op_rb0ixd, @function
op_rb0ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2435, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2435, tmp229
	lbu	$3,0($2)	 # tmp235, ram
	andi	$3,$3,0xfe	 # tmp234, tmp235,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb0ixd
	.size	op_rb0ixd, .-op_rb0ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb1ixd
	.type	op_rb1ixd, @function
op_rb1ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2426, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2426, tmp229
	lbu	$3,0($2)	 # tmp235, ram
	andi	$3,$3,0xfd	 # tmp234, tmp235,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb1ixd
	.size	op_rb1ixd, .-op_rb1ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb2ixd
	.type	op_rb2ixd, @function
op_rb2ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2417, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2417, tmp229
	lbu	$3,0($2)	 # tmp235, ram
	andi	$3,$3,0xfb	 # tmp234, tmp235,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb2ixd
	.size	op_rb2ixd, .-op_rb2ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb3ixd
	.type	op_rb3ixd, @function
op_rb3ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2408, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2408, tmp229
	lbu	$3,0($2)	 # tmp235, ram
	andi	$3,$3,0xf7	 # tmp234, tmp235,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb3ixd
	.size	op_rb3ixd, .-op_rb3ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb4ixd
	.type	op_rb4ixd, @function
op_rb4ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2399, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2399, tmp229
	lbu	$3,0($2)	 # tmp235, ram
	andi	$3,$3,0xef	 # tmp234, tmp235,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb4ixd
	.size	op_rb4ixd, .-op_rb4ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb5ixd
	.type	op_rb5ixd, @function
op_rb5ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2390, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2390, tmp229
	lbu	$3,0($2)	 # tmp235, ram
	andi	$3,$3,0xdf	 # tmp234, tmp235,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb5ixd
	.size	op_rb5ixd, .-op_rb5ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb6ixd
	.type	op_rb6ixd, @function
op_rb6ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2381, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2381, tmp229
	lbu	$3,0($2)	 # tmp235, ram
	andi	$3,$3,0xbf	 # tmp234, tmp235,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb6ixd
	.size	op_rb6ixd, .-op_rb6ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rb7ixd
	.type	op_rb7ixd, @function
op_rb7ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2372, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2372, tmp229
	lbu	$3,0($2)	 #, ram
	andi	$3,$3,0x7f	 # tmp234, tmp233,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rb7ixd
	.size	op_rb7ixd, .-op_rb7ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb0ixd
	.type	op_sb0ixd, @function
op_sb0ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2363, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2363, tmp229
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x1	 # tmp234, tmp233,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb0ixd
	.size	op_sb0ixd, .-op_sb0ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb1ixd
	.type	op_sb1ixd, @function
op_sb1ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2354, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2354, tmp229
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x2	 # tmp234, tmp233,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb1ixd
	.size	op_sb1ixd, .-op_sb1ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb2ixd
	.type	op_sb2ixd, @function
op_sb2ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2345, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2345, tmp229
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x4	 # tmp234, tmp233,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb2ixd
	.size	op_sb2ixd, .-op_sb2ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb3ixd
	.type	op_sb3ixd, @function
op_sb3ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2336, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2336, tmp229
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x8	 # tmp234, tmp233,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb3ixd
	.size	op_sb3ixd, .-op_sb3ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb4ixd
	.type	op_sb4ixd, @function
op_sb4ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2327, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2327, tmp229
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x10	 # tmp234, tmp233,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb4ixd
	.size	op_sb4ixd, .-op_sb4ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb5ixd
	.type	op_sb5ixd, @function
op_sb5ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2318, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2318, tmp229
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x20	 # tmp234, tmp233,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb5ixd
	.size	op_sb5ixd, .-op_sb5ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb6ixd
	.type	op_sb6ixd, @function
op_sb6ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2309, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2309, tmp229
	lbu	$3,0($2)	 #, ram
	ori	$3,$3,0x40	 # tmp234, tmp233,
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb6ixd
	.size	op_sb6ixd, .-op_sb6ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sb7ixd
	.type	op_sb7ixd, @function
op_sb7ixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$2,$4,$2	 # D.2300, data, IX
	lui	$3,%hi(ram)	 # tmp227,
	addiu	$3,$3,%lo(ram)	 # tmp229, tmp227,
	addu	$2,$2,$3	 # tmp228, D.2300, tmp229
	lbu	$4,0($2)	 #, ram
	li	$3,-128			# 0xffffff80	 # tmp235,
	or	$3,$4,$3	 # tmp234, tmp233, tmp235
	sb	$3,0($2)	 # tmp234, ram
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sb7ixd
	.size	op_sb7ixd, .-op_sb7ixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlcixd
	.type	op_rlcixd, @function
op_rlcixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$4,$4,$2	 # D.2837, data, IX
	lui	$2,%hi(ram)	 # tmp249,
	addiu	$2,$2,%lo(ram)	 # tmp251, tmp249,
	addu	$2,$4,$2	 # tmp250, D.2837, tmp251
	lbu	$2,0($2)	 # D.2838, ram
	andi	$3,$2,0x80	 # tmp252, D.2838,
	beql	$3,$0,.L43	 #, tmp252,,
	li	$3,-2			# 0xfffffffe	 # tmp264,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp253, F,
	li	$5,-19			# 0xffffffed	 # tmp255,
	and	$3,$3,$5	 # F.201, tmp253, tmp255
	lui	$5,%hi(ram)	 # tmp256,
	addiu	$5,$5,%lo(ram)	 # tmp258, tmp256,
	addu	$5,$4,$5	 # tmp257, D.2837, tmp258
	sll	$2,$2,1	 # tmp259, D.2838,
	ori	$2,$2,0x1	 # tmp261, tmp259,
	j	.L44	 #
	sb	$2,0($5)	 # tmp261, ram

.L43:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$3,$5,$3	 # tmp262, F, tmp264
	li	$5,-19			# 0xffffffed	 # tmp265,
	and	$3,$3,$5	 # F.201, tmp262, tmp265
	lui	$5,%hi(ram)	 # tmp266,
	addiu	$5,$5,%lo(ram)	 # tmp268, tmp266,
	addu	$5,$4,$5	 # tmp267, D.2837, tmp268
	sll	$2,$2,1	 # tmp269, D.2838,
	sb	$2,0($5)	 # tmp269, ram
.L44:
	lui	$2,%hi(ram)	 # tmp270,
	addiu	$2,$2,%lo(ram)	 # tmp272, tmp270,
	addu	$4,$4,$2	 # tmp271, D.2837, tmp272
	lbu	$2,0($4)	 # D.2838, ram
	beql	$2,$0,.L45	 #, D.2838,,
	ori	$3,$3,0x40	 # tmp275, F.201,

	li	$4,-65			# 0xffffffbf	 # tmp273,
	and	$3,$3,$4	 # F.203, F.201, tmp273
	seb	$4,$2	 # D.2838, D.2838
	bltz	$4,.L46	 #, D.2838,
	sw	$3,%gp_rel(F)($28)	 # F.203, F

	j	.L51	 #
	li	$3,-129			# 0xffffff7f	 # tmp278,

.L45:
	j	.L47	 #
	sw	$3,%gp_rel(F)($28)	 # tmp275, F

.L46:
	ori	$3,$3,0x80	 # tmp276, F.203,
	j	.L48	 #
	sw	$3,%gp_rel(F)($28)	 # tmp276, F

.L47:
	li	$3,-129			# 0xffffff7f	 # tmp278,
.L51:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp279, F, tmp278
	sw	$3,%gp_rel(F)($28)	 # tmp279, F
.L48:
	sll	$2,$2,2	 # tmp281, D.2838,
	lui	$3,%hi(parrity)	 # tmp280,
	addiu	$3,$3,%lo(parrity)	 # tmp283, tmp280,
	addu	$2,$2,$3	 # tmp282, tmp281, tmp283
	lw	$2,0($2)	 # tmp284, parrity
	beql	$2,$0,.L49	 #, tmp284,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp286,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp287, F, tmp286
	j	.L50	 #
	sw	$2,%gp_rel(F)($28)	 # tmp287, F

.L49:
	ori	$2,$2,0x4	 # tmp289, F,
	sw	$2,%gp_rel(F)($28)	 # tmp289, F
.L50:
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlcixd
	.size	op_rlcixd, .-op_rlcixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrcixd
	.type	op_rrcixd, @function
op_rrcixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$4,$4,$2	 # D.2797, data, IX
	lui	$2,%hi(ram)	 # tmp249,
	addiu	$2,$2,%lo(ram)	 # tmp251, tmp249,
	addu	$2,$4,$2	 # tmp250, D.2797, tmp251
	lbu	$2,0($2)	 # D.2798, ram
	andi	$3,$2,0x1	 # tmp252, D.2798,
	beql	$3,$0,.L53	 #, tmp252,,
	li	$3,-2			# 0xfffffffe	 # tmp265,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x1	 # tmp253, F,
	li	$5,-19			# 0xffffffed	 # tmp255,
	and	$3,$3,$5	 # F.185, tmp253, tmp255
	lui	$5,%hi(ram)	 # tmp256,
	addiu	$5,$5,%lo(ram)	 # tmp258, tmp256,
	addu	$5,$4,$5	 # tmp257, D.2797, tmp258
	srl	$2,$2,1	 # tmp259, D.2798,
	li	$6,-128			# 0xffffff80	 # tmp262,
	or	$2,$2,$6	 # tmp261, tmp259, tmp262
	j	.L54	 #
	sb	$2,0($5)	 # tmp261, ram

.L53:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$3,$5,$3	 # tmp263, F, tmp265
	li	$5,-19			# 0xffffffed	 # tmp266,
	and	$3,$3,$5	 # F.185, tmp263, tmp266
	lui	$5,%hi(ram)	 # tmp267,
	addiu	$5,$5,%lo(ram)	 # tmp269, tmp267,
	addu	$5,$4,$5	 # tmp268, D.2797, tmp269
	srl	$2,$2,1	 # tmp270, D.2798,
	sb	$2,0($5)	 # tmp270, ram
.L54:
	lui	$2,%hi(ram)	 # tmp271,
	addiu	$2,$2,%lo(ram)	 # tmp273, tmp271,
	addu	$4,$4,$2	 # tmp272, D.2797, tmp273
	lbu	$2,0($4)	 # D.2798, ram
	beql	$2,$0,.L55	 #, D.2798,,
	ori	$3,$3,0x40	 # tmp276, F.185,

	li	$4,-65			# 0xffffffbf	 # tmp274,
	and	$3,$3,$4	 # F.187, F.185, tmp274
	seb	$4,$2	 # D.2798, D.2798
	bltz	$4,.L56	 #, D.2798,
	sw	$3,%gp_rel(F)($28)	 # F.187, F

	j	.L61	 #
	li	$3,-129			# 0xffffff7f	 # tmp279,

.L55:
	j	.L57	 #
	sw	$3,%gp_rel(F)($28)	 # tmp276, F

.L56:
	ori	$3,$3,0x80	 # tmp277, F.187,
	j	.L58	 #
	sw	$3,%gp_rel(F)($28)	 # tmp277, F

.L57:
	li	$3,-129			# 0xffffff7f	 # tmp279,
.L61:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp280, F, tmp279
	sw	$3,%gp_rel(F)($28)	 # tmp280, F
.L58:
	sll	$2,$2,2	 # tmp282, D.2798,
	lui	$3,%hi(parrity)	 # tmp281,
	addiu	$3,$3,%lo(parrity)	 # tmp284, tmp281,
	addu	$2,$2,$3	 # tmp283, tmp282, tmp284
	lw	$2,0($2)	 # tmp285, parrity
	beql	$2,$0,.L59	 #, tmp285,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp287,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp288, F, tmp287
	j	.L60	 #
	sw	$2,%gp_rel(F)($28)	 # tmp288, F

.L59:
	ori	$2,$2,0x4	 # tmp290, F,
	sw	$2,%gp_rel(F)($28)	 # tmp290, F
.L60:
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrcixd
	.size	op_rrcixd, .-op_rrcixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rlixd
	.type	op_rlixd, @function
op_rlixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$4,$4,$2	 # D.2757, data, IX
	lw	$3,%gp_rel(F)($28)	 # F.165, F
	lui	$2,%hi(ram)	 # tmp248,
	addiu	$2,$2,%lo(ram)	 # tmp250, tmp248,
	addu	$2,$4,$2	 # tmp249, D.2757, tmp250
	lbu	$2,0($2)	 # D.2760, ram
	seb	$6,$2	 # D.2760, D.2760
	bgez	$6,.L63	 #, D.2760,
	andi	$5,$3,0x1	 # old_c_flag, F.165,

	ori	$3,$3,0x1	 # tmp252, F.165,
	j	.L64	 #
	sw	$3,%gp_rel(F)($28)	 # tmp252, F

.L63:
	li	$6,-2			# 0xfffffffe	 # tmp253,
	and	$3,$3,$6	 # tmp254, F.165, tmp253
	sw	$3,%gp_rel(F)($28)	 # tmp254, F
.L64:
	sll	$2,$2,1	 # tmp255, D.2760,
	andi	$2,$2,0x00ff	 # D.2767, tmp255
	lui	$3,%hi(ram)	 # tmp256,
	addiu	$3,$3,%lo(ram)	 # tmp258, tmp256,
	addu	$3,$4,$3	 # tmp257, D.2757, tmp258
	beq	$5,$0,.L65	 #, old_c_flag,,
	sb	$2,0($3)	 # D.2767, ram

	lui	$3,%hi(ram)	 # tmp259,
	addiu	$3,$3,%lo(ram)	 # tmp261, tmp259,
	addu	$3,$4,$3	 # tmp260, D.2757, tmp261
	ori	$2,$2,0x1	 # tmp262, D.2767,
	sb	$2,0($3)	 # tmp262, ram
.L65:
	li	$2,-19			# 0xffffffed	 # tmp264,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.169, F, tmp264
	lui	$2,%hi(ram)	 # tmp265,
	addiu	$2,$2,%lo(ram)	 # tmp267, tmp265,
	addu	$4,$4,$2	 # tmp266, D.2757, tmp267
	lbu	$2,0($4)	 # D.2760, ram
	beql	$2,$0,.L66	 #, D.2760,,
	ori	$3,$3,0x40	 # tmp270, F.169,

	li	$4,-65			# 0xffffffbf	 # tmp268,
	and	$3,$3,$4	 # F.171, F.169, tmp268
	seb	$4,$2	 # D.2760, D.2760
	bltz	$4,.L67	 #, D.2760,
	sw	$3,%gp_rel(F)($28)	 # F.171, F

	j	.L72	 #
	li	$3,-129			# 0xffffff7f	 # tmp273,

.L66:
	j	.L68	 #
	sw	$3,%gp_rel(F)($28)	 # tmp270, F

.L67:
	ori	$3,$3,0x80	 # tmp271, F.171,
	j	.L69	 #
	sw	$3,%gp_rel(F)($28)	 # tmp271, F

.L68:
	li	$3,-129			# 0xffffff7f	 # tmp273,
.L72:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp274, F, tmp273
	sw	$3,%gp_rel(F)($28)	 # tmp274, F
.L69:
	sll	$2,$2,2	 # tmp276, D.2760,
	lui	$3,%hi(parrity)	 # tmp275,
	addiu	$3,$3,%lo(parrity)	 # tmp278, tmp275,
	addu	$2,$2,$3	 # tmp277, tmp276, tmp278
	lw	$2,0($2)	 # tmp279, parrity
	beql	$2,$0,.L70	 #, tmp279,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp281,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp282, F, tmp281
	j	.L71	 #
	sw	$2,%gp_rel(F)($28)	 # tmp282, F

.L70:
	ori	$2,$2,0x4	 # tmp284, F,
	sw	$2,%gp_rel(F)($28)	 # tmp284, F
.L71:
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rlixd
	.size	op_rlixd, .-op_rlixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_rrixd
	.type	op_rrixd, @function
op_rrixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(F)($28)	 # F.147, F
	lhu	$5,%gp_rel(IX)($28)	 # IX, IX
	addu	$4,$4,$5	 # D.2716, data, IX
	lui	$5,%hi(ram)	 # tmp249,
	addiu	$5,$5,%lo(ram)	 # tmp251, tmp249,
	addu	$5,$4,$5	 # tmp250, D.2716, tmp251
	lbu	$5,0($5)	 # D.2718, ram
	andi	$6,$5,0x1	 # tmp252, D.2718,
	beq	$6,$0,.L74	 #, tmp252,,
	andi	$3,$2,0x1	 # old_c_flag, F.147,

	ori	$2,$2,0x1	 # tmp253, F.147,
	j	.L75	 #
	sw	$2,%gp_rel(F)($28)	 # tmp253, F

.L74:
	li	$6,-2			# 0xfffffffe	 # tmp254,
	and	$2,$2,$6	 # tmp255, F.147, tmp254
	sw	$2,%gp_rel(F)($28)	 # tmp255, F
.L75:
	srl	$5,$5,1	 # D.2727, D.2718,
	lui	$2,%hi(ram)	 # tmp257,
	addiu	$2,$2,%lo(ram)	 # tmp259, tmp257,
	addu	$2,$4,$2	 # tmp258, D.2716, tmp259
	beq	$3,$0,.L76	 #, old_c_flag,,
	sb	$5,0($2)	 # D.2727, ram

	lui	$2,%hi(ram)	 # tmp260,
	addiu	$2,$2,%lo(ram)	 # tmp262, tmp260,
	addu	$2,$4,$2	 # tmp261, D.2716, tmp262
	li	$3,-128			# 0xffffff80	 # tmp264,
	or	$5,$5,$3	 # tmp263, D.2727, tmp264
	sb	$5,0($2)	 # tmp263, ram
.L76:
	li	$2,-19			# 0xffffffed	 # tmp266,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$3,$3,$2	 # F.153, F, tmp266
	lui	$5,%hi(ram)	 # tmp267,
	addiu	$5,$5,%lo(ram)	 # tmp269, tmp267,
	addu	$4,$4,$5	 # tmp268, D.2716, tmp269
	lbu	$2,0($4)	 # D.2718, ram
	beql	$2,$0,.L77	 #, D.2718,,
	ori	$3,$3,0x40	 # tmp272, F.153,

	li	$4,-65			# 0xffffffbf	 # tmp270,
	and	$3,$3,$4	 # F.155, F.153, tmp270
	seb	$4,$2	 # D.2718, D.2718
	bltz	$4,.L78	 #, D.2718,
	sw	$3,%gp_rel(F)($28)	 # F.155, F

	j	.L83	 #
	li	$3,-129			# 0xffffff7f	 # tmp275,

.L77:
	j	.L79	 #
	sw	$3,%gp_rel(F)($28)	 # tmp272, F

.L78:
	ori	$3,$3,0x80	 # tmp273, F.155,
	j	.L80	 #
	sw	$3,%gp_rel(F)($28)	 # tmp273, F

.L79:
	li	$3,-129			# 0xffffff7f	 # tmp275,
.L83:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp276, F, tmp275
	sw	$3,%gp_rel(F)($28)	 # tmp276, F
.L80:
	sll	$2,$2,2	 # tmp278, D.2718,
	lui	$3,%hi(parrity)	 # tmp277,
	addiu	$3,$3,%lo(parrity)	 # tmp280, tmp277,
	addu	$2,$2,$3	 # tmp279, tmp278, tmp280
	lw	$2,0($2)	 # tmp281, parrity
	beql	$2,$0,.L81	 #, tmp281,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp283,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp284, F, tmp283
	j	.L82	 #
	sw	$2,%gp_rel(F)($28)	 # tmp284, F

.L81:
	ori	$2,$2,0x4	 # tmp286, F,
	sw	$2,%gp_rel(F)($28)	 # tmp286, F
.L82:
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_rrixd
	.size	op_rrixd, .-op_rrixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_slaixd
	.type	op_slaixd, @function
op_slaixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$4,$4,$2	 # D.2678, data, IX
	lui	$2,%hi(ram)	 # tmp246,
	addiu	$2,$2,%lo(ram)	 # tmp248, tmp246,
	addu	$2,$4,$2	 # tmp247, D.2678, tmp248
	lbu	$3,0($2)	 # D.2680, ram
	seb	$2,$3	 # D.2680, D.2680
	bgezl	$2,.L85	 #, D.2680,
	li	$2,-2			# 0xfffffffe	 # tmp253,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x1	 # tmp251, F,
	j	.L86	 #
	sw	$2,%gp_rel(F)($28)	 # tmp251, F

.L85:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$2,$5,$2	 # tmp254, F, tmp253
	sw	$2,%gp_rel(F)($28)	 # tmp254, F
.L86:
	sll	$3,$3,1	 # tmp255, D.2680,
	andi	$3,$3,0x00ff	 # D.2688, tmp255
	lui	$2,%hi(ram)	 # tmp256,
	addiu	$2,$2,%lo(ram)	 # tmp258, tmp256,
	addu	$4,$4,$2	 # tmp257, D.2678, tmp258
	sb	$3,0($4)	 # D.2688, ram
	li	$2,-19			# 0xffffffed	 # tmp260,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$3,$0,.L87	 #, D.2688,,
	and	$2,$4,$2	 # F.137, F, tmp260

	li	$4,-65			# 0xffffffbf	 # tmp261,
	and	$2,$2,$4	 # F.139, F.137, tmp261
	seb	$4,$3	 # D.2688, D.2688
	bltz	$4,.L88	 #, D.2688,
	sw	$2,%gp_rel(F)($28)	 # F.139, F

	j	.L93	 #
	li	$2,-129			# 0xffffff7f	 # tmp266,

.L87:
	ori	$2,$2,0x40	 # tmp263, F.137,
	j	.L89	 #
	sw	$2,%gp_rel(F)($28)	 # tmp263, F

.L88:
	ori	$2,$2,0x80	 # tmp264, F.139,
	j	.L90	 #
	sw	$2,%gp_rel(F)($28)	 # tmp264, F

.L89:
	li	$2,-129			# 0xffffff7f	 # tmp266,
.L93:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp267, F, tmp266
	sw	$2,%gp_rel(F)($28)	 # tmp267, F
.L90:
	sll	$3,$3,2	 # tmp269, D.2688,
	lui	$2,%hi(parrity)	 # tmp268,
	addiu	$2,$2,%lo(parrity)	 # tmp271, tmp268,
	addu	$3,$3,$2	 # tmp270, tmp269, tmp271
	lw	$2,0($3)	 # tmp272, parrity
	beql	$2,$0,.L91	 #, tmp272,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp274,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp275, F, tmp274
	j	.L92	 #
	sw	$2,%gp_rel(F)($28)	 # tmp275, F

.L91:
	ori	$2,$2,0x4	 # tmp277, F,
	sw	$2,%gp_rel(F)($28)	 # tmp277, F
.L92:
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_slaixd
	.size	op_slaixd, .-op_slaixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_sraixd
	.type	op_sraixd, @function
op_sraixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$4,$4,$2	 # D.2636, data, IX
	lui	$2,%hi(ram)	 # tmp252,
	addiu	$2,$2,%lo(ram)	 # tmp254, tmp252,
	addu	$2,$4,$2	 # tmp253, D.2636, tmp254
	lbu	$3,0($2)	 # D.2637, ram
	andi	$2,$3,0x1	 # tmp255, D.2637,
	beq	$2,$0,.L95	 #, tmp255,,
	andi	$5,$3,0x80	 # i, D.2637,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x1	 # tmp257, F,
	j	.L96	 #
	sw	$2,%gp_rel(F)($28)	 # tmp257, F

.L95:
	li	$2,-2			# 0xfffffffe	 # tmp259,
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$2,$6,$2	 # tmp260, F, tmp259
	sw	$2,%gp_rel(F)($28)	 # tmp260, F
.L96:
	srl	$3,$3,1	 # tmp261, D.2637,
	or	$5,$5,$3	 # tmp264, i, tmp261
	seb	$5,$5	 # D.2651, tmp264
	andi	$3,$5,0x00ff	 # D.2652, D.2651
	lui	$2,%hi(ram)	 # tmp265,
	addiu	$2,$2,%lo(ram)	 # tmp267, tmp265,
	addu	$4,$4,$2	 # tmp266, D.2636, tmp267
	sb	$3,0($4)	 # D.2652, ram
	li	$2,-19			# 0xffffffed	 # tmp269,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$3,$0,.L97	 #, D.2652,,
	and	$2,$4,$2	 # F.121, F, tmp269

	li	$4,-65			# 0xffffffbf	 # tmp270,
	and	$2,$2,$4	 # tmp271, F.121, tmp270
	j	.L98	 #
	sw	$2,%gp_rel(F)($28)	 # tmp271, F

.L97:
	ori	$2,$2,0x40	 # tmp272, F.121,
	sw	$2,%gp_rel(F)($28)	 # tmp272, F
.L98:
	bgez	$5,.L99	 #, D.2651,
	li	$2,-129			# 0xffffff7f	 # tmp276,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp274, F,
	j	.L100	 #
	sw	$2,%gp_rel(F)($28)	 # tmp274, F

.L99:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp277, F, tmp276
	sw	$2,%gp_rel(F)($28)	 # tmp277, F
.L100:
	sll	$3,$3,2	 # tmp279, D.2652,
	lui	$2,%hi(parrity)	 # tmp278,
	addiu	$2,$2,%lo(parrity)	 # tmp281, tmp278,
	addu	$3,$3,$2	 # tmp280, tmp279, tmp281
	lw	$2,0($3)	 # tmp282, parrity
	beql	$2,$0,.L101	 #, tmp282,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp284,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp285, F, tmp284
	j	.L102	 #
	sw	$2,%gp_rel(F)($28)	 # tmp285, F

.L101:
	ori	$2,$2,0x4	 # tmp287, F,
	sw	$2,%gp_rel(F)($28)	 # tmp287, F
.L102:
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_sraixd
	.size	op_sraixd, .-op_sraixd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_srlixd
	.type	op_srlixd, @function
op_srlixd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	addu	$4,$4,$2	 # D.2597, data, IX
	lui	$2,%hi(ram)	 # tmp247,
	addiu	$2,$2,%lo(ram)	 # tmp249, tmp247,
	addu	$2,$4,$2	 # tmp248, D.2597, tmp249
	lbu	$3,0($2)	 # D.2599, ram
	andi	$2,$3,0x1	 # tmp250, D.2599,
	beql	$2,$0,.L104	 #, tmp250,,
	li	$2,-2			# 0xfffffffe	 # tmp254,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x1	 # tmp252, F,
	j	.L105	 #
	sw	$2,%gp_rel(F)($28)	 # tmp252, F

.L104:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$2,$5,$2	 # tmp255, F, tmp254
	sw	$2,%gp_rel(F)($28)	 # tmp255, F
.L105:
	srl	$3,$3,1	 # D.2609, D.2599,
	lui	$2,%hi(ram)	 # tmp257,
	addiu	$2,$2,%lo(ram)	 # tmp259, tmp257,
	addu	$4,$4,$2	 # tmp258, D.2597, tmp259
	sb	$3,0($4)	 # D.2609, ram
	li	$2,-19			# 0xffffffed	 # tmp261,
	lw	$4,%gp_rel(F)($28)	 # F, F
	beq	$3,$0,.L106	 #, D.2609,,
	and	$2,$4,$2	 # F.105, F, tmp261

	li	$4,-65			# 0xffffffbf	 # tmp262,
	and	$2,$2,$4	 # F.107, F.105, tmp262
	j	.L108	 #
	sw	$2,%gp_rel(F)($28)	 # F.107, F

.L106:
	ori	$2,$2,0x40	 # tmp264, F.105,
	sw	$2,%gp_rel(F)($28)	 # tmp264, F
.L108:
	li	$2,-129			# 0xffffff7f	 # tmp267,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp268, F, tmp267
	sw	$2,%gp_rel(F)($28)	 # tmp268, F
	sll	$3,$3,2	 # tmp270, D.2609,
	lui	$2,%hi(parrity)	 # tmp269,
	addiu	$2,$2,%lo(parrity)	 # tmp272, tmp269,
	addu	$3,$3,$2	 # tmp271, tmp270, tmp272
	lw	$2,0($3)	 # tmp273, parrity
	beql	$2,$0,.L110	 #, tmp273,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp275,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp276, F, tmp275
	j	.L111	 #
	sw	$2,%gp_rel(F)($28)	 # tmp276, F

.L110:
	ori	$2,$2,0x4	 # tmp278, F,
	sw	$2,%gp_rel(F)($28)	 # tmp278, F
.L111:
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_srlixd
	.size	op_srlixd, .-op_srlixd
	.align	2
	.globl	op_ddcb_handel
	.set	nomips16
	.set	nomicromips
	.ent	op_ddcb_handel
	.type	op_ddcb_handel, @function
op_ddcb_handel:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lw	$2,%gp_rel(PC)($28)	 # PC.0, PC
	lb	$4,0($2)	 # d,* PC.0
	addiu	$2,$2,1	 # PC.1, PC.0,
	sw	$2,%gp_rel(PC)($28)	 # PC.1, PC
	lui	$3,%hi(ram+65535)	 # tmp233,
	addiu	$3,$3,%lo(ram+65535)	 # tmp232, tmp233,
	sltu	$2,$3,$2	 # tmp231, tmp232, PC.1
	beq	$2,$0,.L115	 #, tmp231,,
	lw	$3,%gp_rel(PC)($28)	 # PC.0, PC

	lui	$2,%hi(ram)	 # tmp235,
	addiu	$2,$2,%lo(ram)	 # tmp234, tmp235,
	sw	$2,%gp_rel(PC)($28)	 # tmp234, PC
	lw	$3,%gp_rel(PC)($28)	 # PC.0, PC
.L115:
	lbu	$5,0($3)	 # tmp237,* PC.0
	sll	$5,$5,2	 # tmp238, tmp237,
	lui	$2,%hi(op_ddcb.1389)	 # tmp236,
	addiu	$2,$2,%lo(op_ddcb.1389)	 # tmp240, tmp236,
	addu	$2,$5,$2	 # tmp239, tmp238, tmp240
	lw	$2,0($2)	 # D.2292, op_ddcb
	addiu	$3,$3,1	 # tmp241, PC.0,
	jalr	$2	 # D.2292
	sw	$3,%gp_rel(PC)($28)	 # tmp241, PC

	lui	$3,%hi(ram+65535)	 # tmp245,
	addiu	$3,$3,%lo(ram+65535)	 # tmp244, tmp245,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	sltu	$3,$3,$4	 # tmp243, tmp244, PC
	beq	$3,$0,.L114	 #, tmp243,,
	lui	$3,%hi(ram)	 # tmp247,

	addiu	$3,$3,%lo(ram)	 # tmp246, tmp247,
	sw	$3,%gp_rel(PC)($28)	 # tmp246, PC
.L114:
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ddcb_handel
	.size	op_ddcb_handel, .-op_ddcb_handel
	.section	.rodata,code
	.align	2
	.type	op_ddcb.1389, @object
	.size	op_ddcb.1389, 1024
op_ddcb.1389:
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rlcixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rrcixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rlixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rrixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_slaixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_sraixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_srlixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_tb0ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_tb1ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_tb2ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_tb3ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_tb4ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_tb5ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_tb6ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_tb7ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rb0ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rb1ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rb2ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rb3ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rb4ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rb5ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rb6ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_rb7ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_sb0ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_sb1ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_sb2ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_sb3ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_sb4ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_sb5ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_sb6ixd
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	trap_ddcb
	.word	op_sb7ixd
	.word	trap_ddcb
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
