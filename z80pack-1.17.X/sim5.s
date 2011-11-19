	.file	1 "sim5.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed sim5.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/664612396/sim5.o -O1
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
	.ent	trap_fd
	.type	trap_fd, @function
trap_fd:
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
	.end	trap_fd
	.size	trap_fd, .-trap_fd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_popiy
	.type	op_popiy, @function
op_popiy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp233,
	addiu	$2,$2,%lo(ram)	 # tmp232, tmp233,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp231, tmp232, STACK
	bne	$2,$0,.L5	 #, tmp231,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.12, STACK

	lui	$2,%hi(ram+65536)	 # tmp235,
	addiu	$2,$2,%lo(ram+65536)	 # tmp234, tmp235,
	sw	$2,%gp_rel(STACK)($28)	 # tmp234, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.12, STACK
.L5:
	lbu	$3,0($2)	 # tmp236,* STACK.12
	andi	$4,$3,0xffff	 # IY.14, tmp236
	sh	$3,%gp_rel(IY)($28)	 # tmp236, IY
	addiu	$2,$2,1	 # STACK.13, STACK.12,
	sw	$2,%gp_rel(STACK)($28)	 # STACK.13, STACK
	lui	$3,%hi(ram)	 # tmp239,
	addiu	$3,$3,%lo(ram)	 # tmp238, tmp239,
	sltu	$2,$3,$2	 # tmp237, tmp238, STACK.13
	bnel	$2,$0,.L6	 #, tmp237,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.12, STACK

	lui	$2,%hi(ram+65536)	 # tmp241,
	addiu	$2,$2,%lo(ram+65536)	 # tmp240, tmp241,
	sw	$2,%gp_rel(STACK)($28)	 # tmp240, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK.12, STACK
.L6:
	lbu	$3,0($2)	 # tmp242,* STACK.12
	sll	$3,$3,8	 # tmp243, tmp242,
	addu	$3,$4,$3	 # tmp245, IY.14, tmp243
	sh	$3,%gp_rel(IY)($28)	 # tmp245, IY
	addiu	$2,$2,1	 # tmp246, STACK.12,
	sw	$2,%gp_rel(STACK)($28)	 # tmp246, STACK
	j	$31
	li	$2,14			# 0xe	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_popiy
	.size	op_popiy, .-op_popiy
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_pusiy
	.type	op_pusiy, @function
op_pusiy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(ram)	 # tmp233,
	addiu	$2,$2,%lo(ram)	 # tmp232, tmp233,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp231, tmp232, STACK
	bne	$2,$0,.L10	 #, tmp231,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp235,
	addiu	$2,$2,%lo(ram+65536)	 # tmp234, tmp235,
	sw	$2,%gp_rel(STACK)($28)	 # tmp234, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L10:
	addiu	$3,$2,-1	 # STACK.7, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.7, STACK
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	srl	$3,$3,8	 # tmp238, IY,
	sb	$3,-1($2)	 # tmp238,
	lui	$2,%hi(ram)	 # tmp242,
	addiu	$2,$2,%lo(ram)	 # tmp241, tmp242,
	lw	$3,%gp_rel(STACK)($28)	 # STACK, STACK
	sltu	$2,$2,$3	 # tmp240, tmp241, STACK
	bnel	$2,$0,.L11	 #, tmp240,,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK

	lui	$2,%hi(ram+65536)	 # tmp244,
	addiu	$2,$2,%lo(ram+65536)	 # tmp243, tmp244,
	sw	$2,%gp_rel(STACK)($28)	 # tmp243, STACK
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
.L11:
	addiu	$3,$2,-1	 # STACK.7, STACK,
	sw	$3,%gp_rel(STACK)($28)	 # STACK.7, STACK
	lhu	$3,%gp_rel(IY)($28)	 #, IY
	sb	$3,-1($2)	 # IY,
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_pusiy
	.size	op_pusiy, .-op_pusiy
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_jpiy
	.type	op_jpiy, @function
op_jpiy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	lui	$2,%hi(ram)	 # tmp224,
	addiu	$2,$2,%lo(ram)	 # tmp223, tmp224,
	addu	$2,$2,$3	 # tmp225, tmp223, IY
	sw	$2,%gp_rel(PC)($28)	 # tmp225, PC
	j	$31
	li	$2,8			# 0x8	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_jpiy
	.size	op_jpiy, .-op_jpiy
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_exspy
	.type	op_exspy, @function
op_exspy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(STACK)($28)	 # STACK.9, STACK
	lbu	$3,1($2)	 # tmp235,
	sll	$3,$3,8	 # tmp236, tmp235,
	lbu	$4,0($2)	 # tmp237,* STACK.9
	addu	$3,$3,$4	 # i, tmp236, tmp237
	lhu	$4,%gp_rel(IY)($28)	 #, IY
	sb	$4,0($2)	 # IY,* STACK.9
	lhu	$4,%gp_rel(IY)($28)	 # IY, IY
	srl	$4,$4,8	 # tmp241, IY,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	sb	$4,1($2)	 # tmp241,
	sh	$3,%gp_rel(IY)($28)	 # i, IY
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_exspy
	.size	op_exspy, .-op_exspy
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldspy
	.type	op_ldspy, @function
op_ldspy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	lui	$2,%hi(ram)	 # tmp224,
	addiu	$2,$2,%lo(ram)	 # tmp223, tmp224,
	addu	$2,$2,$3	 # tmp225, tmp223, IY
	sw	$2,%gp_rel(STACK)($28)	 # tmp225, STACK
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldspy
	.size	op_ldspy, .-op_ldspy
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldiynn
	.type	op_ldiynn, @function
op_ldiynn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.323, PC
	lbu	$3,0($2)	 # tmp228,* PC.323
	sh	$3,%gp_rel(IY)($28)	 # tmp228, IY
	addiu	$4,$2,1	 # PC.324, PC.323,
	sw	$4,%gp_rel(PC)($28)	 # PC.324, PC
	lbu	$4,1($2)	 # tmp229,
	sll	$4,$4,8	 # tmp230, tmp229,
	addu	$3,$4,$3	 # tmp232, tmp230, tmp228
	sh	$3,%gp_rel(IY)($28)	 # tmp232, IY
	addiu	$2,$2,2	 # tmp233, PC.323,
	sw	$2,%gp_rel(PC)($28)	 # tmp233, PC
	j	$31
	li	$2,14			# 0xe	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldiynn
	.size	op_ldiynn, .-op_ldiynn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldiyinn
	.type	op_ldiyinn, @function
op_ldiyinn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.303, PC
	lbu	$4,0($2)	 # tmp237,* PC.303
	lui	$3,%hi(ram)	 # tmp239,
	addiu	$3,$3,%lo(ram)	 # tmp238, tmp239,
	addu	$3,$3,$4	 # p, tmp238, tmp237
	addiu	$4,$2,1	 # PC.304, PC.303,
	sw	$4,%gp_rel(PC)($28)	 # PC.304, PC
	lbu	$4,1($2)	 # tmp240,
	sll	$4,$4,8	 # tmp241, tmp240,
	addu	$3,$3,$4	 # p, p, tmp241
	addiu	$2,$2,2	 # tmp242, PC.303,
	sw	$2,%gp_rel(PC)($28)	 # tmp242, PC
	lbu	$2,1($3)	 # tmp243,
	sll	$2,$2,8	 # tmp244, tmp243,
	lbu	$3,0($3)	 # tmp245,* p
	addu	$2,$2,$3	 # tmp247, tmp244, tmp245
	sh	$2,%gp_rel(IY)($28)	 # tmp247, IY
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldiyinn
	.size	op_ldiyinn, .-op_ldiyinn
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldiny
	.type	op_ldiny, @function
op_ldiny:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.320, PC
	lbu	$4,0($2)	 # tmp235,* PC.320
	lui	$3,%hi(ram)	 # tmp237,
	addiu	$3,$3,%lo(ram)	 # tmp236, tmp237,
	addu	$3,$3,$4	 # p, tmp236, tmp235
	addiu	$4,$2,1	 # PC.321, PC.320,
	sw	$4,%gp_rel(PC)($28)	 # PC.321, PC
	lbu	$4,1($2)	 # tmp238,
	sll	$4,$4,8	 # tmp239, tmp238,
	addu	$3,$3,$4	 # p, p, tmp239
	addiu	$2,$2,2	 # tmp240, PC.320,
	sw	$2,%gp_rel(PC)($28)	 # tmp240, PC
	lhu	$2,%gp_rel(IY)($28)	 # IY.322, IY
	sb	$2,0($3)	 # IY.322,* p
	srl	$2,$2,8	 # tmp241, IY.322,
	sb	$2,1($3)	 # tmp241,
	j	$31
	li	$2,20			# 0x14	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldiny
	.size	op_ldiny, .-op_ldiny
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_adayd
	.type	op_adayd, @function
op_adayd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(PC)($28)	 # PC.169, PC
	lb	$4,0($3)	 # tmp267,* PC.169
	lhu	$2,%gp_rel(IY)($28)	 # IY, IY
	addu	$2,$4,$2	 # tmp269, tmp267, IY
	lui	$4,%hi(ram)	 # tmp266,
	addiu	$4,$4,%lo(ram)	 # tmp271, tmp266,
	addu	$2,$2,$4	 # tmp270, tmp269, tmp271
	lbu	$2,0($2)	 # P, ram
	addiu	$3,$3,1	 # tmp272, PC.169,
	sw	$3,%gp_rel(PC)($28)	 # tmp272, PC
	lbu	$3,%gp_rel(A)($28)	 # A.172, A
	andi	$5,$2,0xf	 # tmp273, P,
	andi	$4,$3,0xf	 # tmp274, A.172,
	addu	$4,$5,$4	 # tmp275, tmp273, tmp274
	slt	$4,$4,16	 # tmp276, tmp275,
	bne	$4,$0,.L19	 #, tmp276,,
	li	$4,-17			# 0xffffffef	 # tmp280,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp278, F,
	j	.L20	 #
	sw	$4,%gp_rel(F)($28)	 # tmp278, F

.L19:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp281, F, tmp280
	sw	$4,%gp_rel(F)($28)	 # tmp281, F
.L20:
	addu	$4,$2,$3	 # tmp282, P, A.172
	slt	$4,$4,256	 # tmp283, tmp282,
	bne	$4,$0,.L21	 #, tmp283,,
	li	$4,-2			# 0xfffffffe	 # tmp287,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp285, F,
	j	.L22	 #
	sw	$4,%gp_rel(F)($28)	 # tmp285, F

.L21:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp288, F, tmp287
	sw	$4,%gp_rel(F)($28)	 # tmp288, F
.L22:
	seb	$2,$2	 # P, P
	seb	$3,$3	 # A.172, A.172
	addu	$2,$2,$3	 # i, P, A.172
	andi	$3,$2,0x00ff	 # A.181, i
	addiu	$4,$2,128	 # tmp291, i,
	sltu	$4,$4,256	 # tmp292, tmp291,
	bne	$4,$0,.L23	 #, tmp292,,
	sb	$3,%gp_rel(A)($28)	 # A.181, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp294, F,
	j	.L24	 #
	sw	$4,%gp_rel(F)($28)	 # tmp294, F

.L23:
	li	$4,-5			# 0xfffffffb	 # tmp296,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp297, F, tmp296
	sw	$4,%gp_rel(F)($28)	 # tmp297, F
.L24:
	andi	$2,$2,0x80	 # tmp298, i,
	beq	$2,$0,.L25	 #, tmp298,,
	li	$2,-129			# 0xffffff7f	 # tmp302,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp300, F,
	j	.L26	 #
	sw	$2,%gp_rel(F)($28)	 # tmp300, F

.L25:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp303, F, tmp302
	sw	$2,%gp_rel(F)($28)	 # tmp303, F
.L26:
	beql	$3,$0,.L27	 #, A.181,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp305,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp306, F, tmp305
	j	.L28	 #
	sw	$2,%gp_rel(F)($28)	 # tmp306, F

.L27:
	ori	$2,$2,0x40	 # tmp308, F,
	sw	$2,%gp_rel(F)($28)	 # tmp308, F
.L28:
	li	$2,-3			# 0xfffffffd	 # tmp310,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp311, F, tmp310
	sw	$2,%gp_rel(F)($28)	 # tmp311, F
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_adayd
	.size	op_adayd, .-op_adayd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_acayd
	.type	op_acayd, @function
op_acayd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.143, F
	andi	$4,$5,0x1	 # carry, F.143,
	lw	$2,%gp_rel(PC)($28)	 # PC.145, PC
	lb	$6,0($2)	 # tmp270,* PC.145
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$6,$3	 # tmp272, tmp270, IY
	lui	$6,%hi(ram)	 # tmp269,
	addiu	$6,$6,%lo(ram)	 # tmp274, tmp269,
	addu	$3,$3,$6	 # tmp273, tmp272, tmp274
	lbu	$3,0($3)	 # P, ram
	addiu	$2,$2,1	 # tmp275, PC.145,
	sw	$2,%gp_rel(PC)($28)	 # tmp275, PC
	lbu	$2,%gp_rel(A)($28)	 # A.148, A
	andi	$6,$2,0xf	 # tmp276, A.148,
	addu	$6,$6,$4	 # tmp277, tmp276, carry
	andi	$7,$3,0xf	 # tmp278, P,
	addu	$6,$6,$7	 # tmp279, tmp277, tmp278
	slt	$6,$6,16	 # tmp280, tmp279,
	bne	$6,$0,.L30	 #, tmp280,,
	li	$6,-17			# 0xffffffef	 # tmp282,

	ori	$5,$5,0x10	 # tmp281, F.143,
	j	.L31	 #
	sw	$5,%gp_rel(F)($28)	 # tmp281, F

.L30:
	and	$5,$5,$6	 # tmp283, F.143, tmp282
	sw	$5,%gp_rel(F)($28)	 # tmp283, F
.L31:
	addu	$5,$2,$4	 # tmp284, A.148, carry
	addu	$5,$5,$3	 # tmp285, tmp284, P
	slt	$5,$5,256	 # tmp286, tmp285,
	bne	$5,$0,.L32	 #, tmp286,,
	li	$5,-2			# 0xfffffffe	 # tmp290,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp288, F,
	j	.L33	 #
	sw	$5,%gp_rel(F)($28)	 # tmp288, F

.L32:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp291, F, tmp290
	sw	$5,%gp_rel(F)($28)	 # tmp291, F
.L33:
	seb	$2,$2	 # A.148, A.148
	addu	$2,$2,$4	 # tmp293, A.148, carry
	seb	$3,$3	 # P, P
	addu	$2,$2,$3	 # i, tmp293, P
	andi	$3,$2,0x00ff	 # A.156, i
	addiu	$4,$2,128	 # tmp295, i,
	sltu	$4,$4,256	 # tmp296, tmp295,
	bne	$4,$0,.L34	 #, tmp296,,
	sb	$3,%gp_rel(A)($28)	 # A.156, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp298, F,
	j	.L35	 #
	sw	$4,%gp_rel(F)($28)	 # tmp298, F

.L34:
	li	$4,-5			# 0xfffffffb	 # tmp300,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp301, F, tmp300
	sw	$4,%gp_rel(F)($28)	 # tmp301, F
.L35:
	andi	$2,$2,0x80	 # tmp302, i,
	beq	$2,$0,.L36	 #, tmp302,,
	li	$2,-129			# 0xffffff7f	 # tmp306,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp304, F,
	j	.L37	 #
	sw	$2,%gp_rel(F)($28)	 # tmp304, F

.L36:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp307, F, tmp306
	sw	$2,%gp_rel(F)($28)	 # tmp307, F
.L37:
	beql	$3,$0,.L38	 #, A.156,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp309,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp310, F, tmp309
	j	.L39	 #
	sw	$2,%gp_rel(F)($28)	 # tmp310, F

.L38:
	ori	$2,$2,0x40	 # tmp312, F,
	sw	$2,%gp_rel(F)($28)	 # tmp312, F
.L39:
	li	$2,-3			# 0xfffffffd	 # tmp314,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp315, F, tmp314
	sw	$2,%gp_rel(F)($28)	 # tmp315, F
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_acayd
	.size	op_acayd, .-op_acayd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_suayd
	.type	op_suayd, @function
op_suayd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.119, PC
	lb	$4,0($2)	 # tmp265,* PC.119
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp267, tmp265, IY
	lui	$4,%hi(ram)	 # tmp264,
	addiu	$4,$4,%lo(ram)	 # tmp269, tmp264,
	addu	$3,$3,$4	 # tmp268, tmp267, tmp269
	lbu	$3,0($3)	 # P, ram
	addiu	$2,$2,1	 # tmp270, PC.119,
	sw	$2,%gp_rel(PC)($28)	 # tmp270, PC
	lbu	$2,%gp_rel(A)($28)	 # A.122, A
	andi	$5,$3,0xf	 # tmp271, P,
	andi	$4,$2,0xf	 # tmp272, A.122,
	slt	$4,$4,$5	 # tmp273, tmp272, tmp271
	beq	$4,$0,.L41	 #, tmp273,,
	li	$4,-17			# 0xffffffef	 # tmp277,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp275, F,
	j	.L42	 #
	sw	$4,%gp_rel(F)($28)	 # tmp275, F

.L41:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp278, F, tmp277
	sw	$4,%gp_rel(F)($28)	 # tmp278, F
.L42:
	sltu	$4,$2,$3	 # tmp279, A.122, P
	beq	$4,$0,.L43	 #, tmp279,,
	li	$4,-2			# 0xfffffffe	 # tmp283,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp281, F,
	j	.L44	 #
	sw	$4,%gp_rel(F)($28)	 # tmp281, F

.L43:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp284, F, tmp283
	sw	$4,%gp_rel(F)($28)	 # tmp284, F
.L44:
	seb	$2,$2	 # A.122, A.122
	seb	$3,$3	 # P, P
	subu	$2,$2,$3	 # i, A.122, P
	andi	$3,$2,0x00ff	 # A.131, i
	addiu	$4,$2,128	 # tmp287, i,
	sltu	$4,$4,256	 # tmp288, tmp287,
	bne	$4,$0,.L45	 #, tmp288,,
	sb	$3,%gp_rel(A)($28)	 # A.131, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp290, F,
	j	.L46	 #
	sw	$4,%gp_rel(F)($28)	 # tmp290, F

.L45:
	li	$4,-5			# 0xfffffffb	 # tmp292,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp293, F, tmp292
	sw	$4,%gp_rel(F)($28)	 # tmp293, F
.L46:
	andi	$2,$2,0x80	 # tmp294, i,
	beq	$2,$0,.L47	 #, tmp294,,
	li	$2,-129			# 0xffffff7f	 # tmp298,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp296, F,
	j	.L48	 #
	sw	$2,%gp_rel(F)($28)	 # tmp296, F

.L47:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp299, F, tmp298
	sw	$2,%gp_rel(F)($28)	 # tmp299, F
.L48:
	beql	$3,$0,.L49	 #, A.131,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp301,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp302, F, tmp301
	j	.L50	 #
	sw	$2,%gp_rel(F)($28)	 # tmp302, F

.L49:
	ori	$2,$2,0x40	 # tmp304, F,
	sw	$2,%gp_rel(F)($28)	 # tmp304, F
.L50:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp306, F,
	sw	$2,%gp_rel(F)($28)	 # tmp306, F
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_suayd
	.size	op_suayd, .-op_suayd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_scayd
	.type	op_scayd, @function
op_scayd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$5,%gp_rel(F)($28)	 # F.93, F
	andi	$3,$5,0x1	 # carry, F.93,
	lw	$2,%gp_rel(PC)($28)	 # PC.95, PC
	lb	$6,0($2)	 # tmp268,* PC.95
	lhu	$4,%gp_rel(IY)($28)	 # IY, IY
	addu	$4,$6,$4	 # tmp270, tmp268, IY
	lui	$6,%hi(ram)	 # tmp267,
	addiu	$6,$6,%lo(ram)	 # tmp272, tmp267,
	addu	$4,$4,$6	 # tmp271, tmp270, tmp272
	lbu	$4,0($4)	 # P, ram
	addiu	$2,$2,1	 # tmp273, PC.95,
	sw	$2,%gp_rel(PC)($28)	 # tmp273, PC
	lbu	$2,%gp_rel(A)($28)	 # A.98, A
	andi	$6,$4,0xf	 # tmp274, P,
	addu	$6,$6,$3	 # tmp275, tmp274, carry
	andi	$7,$2,0xf	 # tmp276, A.98,
	slt	$6,$7,$6	 # tmp277, tmp276, tmp275
	beq	$6,$0,.L52	 #, tmp277,,
	li	$6,-17			# 0xffffffef	 # tmp279,

	ori	$5,$5,0x10	 # tmp278, F.93,
	j	.L53	 #
	sw	$5,%gp_rel(F)($28)	 # tmp278, F

.L52:
	and	$5,$5,$6	 # tmp280, F.93, tmp279
	sw	$5,%gp_rel(F)($28)	 # tmp280, F
.L53:
	addu	$5,$4,$3	 # tmp281, P, carry
	slt	$5,$2,$5	 # tmp282, A.98, tmp281
	beq	$5,$0,.L54	 #, tmp282,,
	li	$5,-2			# 0xfffffffe	 # tmp286,

	lw	$5,%gp_rel(F)($28)	 # F, F
	ori	$5,$5,0x1	 # tmp284, F,
	j	.L55	 #
	sw	$5,%gp_rel(F)($28)	 # tmp284, F

.L54:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$5,$6,$5	 # tmp287, F, tmp286
	sw	$5,%gp_rel(F)($28)	 # tmp287, F
.L55:
	seb	$2,$2	 # A.98, A.98
	seb	$4,$4	 # P, P
	subu	$2,$2,$4	 # tmp290, A.98, P
	subu	$2,$2,$3	 # i, tmp290, carry
	andi	$3,$2,0x00ff	 # A.106, i
	addiu	$4,$2,128	 # tmp291, i,
	sltu	$4,$4,256	 # tmp292, tmp291,
	bne	$4,$0,.L56	 #, tmp292,,
	sb	$3,%gp_rel(A)($28)	 # A.106, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x4	 # tmp294, F,
	j	.L57	 #
	sw	$4,%gp_rel(F)($28)	 # tmp294, F

.L56:
	li	$4,-5			# 0xfffffffb	 # tmp296,
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp297, F, tmp296
	sw	$4,%gp_rel(F)($28)	 # tmp297, F
.L57:
	andi	$2,$2,0x80	 # tmp298, i,
	beq	$2,$0,.L58	 #, tmp298,,
	li	$2,-129			# 0xffffff7f	 # tmp302,

	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x80	 # tmp300, F,
	j	.L59	 #
	sw	$2,%gp_rel(F)($28)	 # tmp300, F

.L58:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$2,$4,$2	 # tmp303, F, tmp302
	sw	$2,%gp_rel(F)($28)	 # tmp303, F
.L59:
	beql	$3,$0,.L60	 #, A.106,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp305,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp306, F, tmp305
	j	.L61	 #
	sw	$2,%gp_rel(F)($28)	 # tmp306, F

.L60:
	ori	$2,$2,0x40	 # tmp308, F,
	sw	$2,%gp_rel(F)($28)	 # tmp308, F
.L61:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp310, F,
	sw	$2,%gp_rel(F)($28)	 # tmp310, F
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_scayd
	.size	op_scayd, .-op_scayd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_andyd
	.type	op_andyd, @function
op_andyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(PC)($28)	 # PC.76, PC
	lb	$4,0($3)	 # tmp248,* PC.76
	lhu	$2,%gp_rel(IY)($28)	 # IY, IY
	addu	$2,$4,$2	 # tmp250, tmp248, IY
	lui	$4,%hi(ram)	 # tmp247,
	addiu	$4,$4,%lo(ram)	 # tmp252, tmp247,
	addu	$2,$2,$4	 # tmp251, tmp250, tmp252
	lbu	$4,0($2)	 # tmp255, ram
	lbu	$2,%gp_rel(A)($28)	 #, A
	and	$2,$4,$2	 # A.79, tmp255, A
	sb	$2,%gp_rel(A)($28)	 # A.79, A
	addiu	$3,$3,1	 # tmp256, PC.76,
	sw	$3,%gp_rel(PC)($28)	 # tmp256, PC
	seb	$3,$2	 # A.79, A.79
	bgez	$3,.L63	 #, A.79,
	li	$3,-129			# 0xffffff7f	 # tmp261,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp259, F,
	j	.L64	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L63:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L64:
	beql	$2,$0,.L65	 #, A.79,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp264,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp265, F, tmp264
	j	.L66	 #
	sw	$3,%gp_rel(F)($28)	 # tmp265, F

.L65:
	ori	$3,$3,0x40	 # tmp267, F,
	sw	$3,%gp_rel(F)($28)	 # tmp267, F
.L66:
	lw	$3,%gp_rel(F)($28)	 # F, F
	sll	$2,$2,2	 # tmp270, A.79,
	lui	$4,%hi(parrity)	 # tmp269,
	addiu	$4,$4,%lo(parrity)	 # tmp272, tmp269,
	addu	$2,$2,$4	 # tmp271, tmp270, tmp272
	lw	$2,0($2)	 # tmp273, parrity
	beq	$2,$0,.L67	 #, tmp273,,
	ori	$3,$3,0x10	 # F.88, F,

	li	$2,-5			# 0xfffffffb	 # tmp274,
	and	$3,$3,$2	 # tmp275, F.88, tmp274
	j	.L68	 #
	sw	$3,%gp_rel(F)($28)	 # tmp275, F

.L67:
	ori	$3,$3,0x4	 # tmp276, F.88,
	sw	$3,%gp_rel(F)($28)	 # tmp276, F
.L68:
	li	$2,-4			# 0xfffffffc	 # tmp278,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp279, F, tmp278
	sw	$2,%gp_rel(F)($28)	 # tmp279, F
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_andyd
	.size	op_andyd, .-op_andyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_xoryd
	.type	op_xoryd, @function
op_xoryd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(PC)($28)	 # PC.59, PC
	lb	$4,0($3)	 # tmp248,* PC.59
	lhu	$2,%gp_rel(IY)($28)	 # IY, IY
	addu	$2,$4,$2	 # tmp250, tmp248, IY
	lui	$4,%hi(ram)	 # tmp247,
	addiu	$4,$4,%lo(ram)	 # tmp252, tmp247,
	addu	$2,$2,$4	 # tmp251, tmp250, tmp252
	lbu	$4,0($2)	 #, ram
	lbu	$2,%gp_rel(A)($28)	 #, A
	xor	$2,$4,$2	 # tmp255, tmp253, A
	andi	$2,$2,0x00ff	 # A.62, tmp255
	sb	$2,%gp_rel(A)($28)	 # A.62, A
	addiu	$3,$3,1	 # tmp256, PC.59,
	sw	$3,%gp_rel(PC)($28)	 # tmp256, PC
	seb	$3,$2	 # A.62, A.62
	bgez	$3,.L70	 #, A.62,
	li	$3,-129			# 0xffffff7f	 # tmp261,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp259, F,
	j	.L71	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L70:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L71:
	beq	$2,$0,.L72	 #, A.62,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp264,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp265, F, tmp264
	j	.L73	 #
	sw	$3,%gp_rel(F)($28)	 # tmp265, F

.L72:
	ori	$3,$3,0x40	 # tmp267, F,
	sw	$3,%gp_rel(F)($28)	 # tmp267, F
.L73:
	sll	$2,$2,2	 # tmp269, A.62,
	lui	$3,%hi(parrity)	 # tmp268,
	addiu	$3,$3,%lo(parrity)	 # tmp271, tmp268,
	addu	$2,$2,$3	 # tmp270, tmp269, tmp271
	lw	$2,0($2)	 # tmp272, parrity
	beql	$2,$0,.L74	 #, tmp272,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp274,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp275, F, tmp274
	j	.L75	 #
	sw	$2,%gp_rel(F)($28)	 # tmp275, F

.L74:
	ori	$2,$2,0x4	 # tmp277, F,
	sw	$2,%gp_rel(F)($28)	 # tmp277, F
.L75:
	li	$2,-20			# 0xffffffec	 # tmp279,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp280, F, tmp279
	sw	$2,%gp_rel(F)($28)	 # tmp280, F
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_xoryd
	.size	op_xoryd, .-op_xoryd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_oryd
	.type	op_oryd, @function
op_oryd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$3,%gp_rel(PC)($28)	 # PC.42, PC
	lb	$4,0($3)	 # tmp248,* PC.42
	lhu	$2,%gp_rel(IY)($28)	 # IY, IY
	addu	$2,$4,$2	 # tmp250, tmp248, IY
	lui	$4,%hi(ram)	 # tmp247,
	addiu	$4,$4,%lo(ram)	 # tmp252, tmp247,
	addu	$2,$2,$4	 # tmp251, tmp250, tmp252
	lbu	$4,0($2)	 #, ram
	lbu	$2,%gp_rel(A)($28)	 #, A
	or	$2,$4,$2	 # tmp255, tmp253, A
	andi	$2,$2,0x00ff	 # A.45, tmp255
	sb	$2,%gp_rel(A)($28)	 # A.45, A
	addiu	$3,$3,1	 # tmp256, PC.42,
	sw	$3,%gp_rel(PC)($28)	 # tmp256, PC
	seb	$3,$2	 # A.45, A.45
	bgez	$3,.L77	 #, A.45,
	li	$3,-129			# 0xffffff7f	 # tmp261,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp259, F,
	j	.L78	 #
	sw	$3,%gp_rel(F)($28)	 # tmp259, F

.L77:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp262, F, tmp261
	sw	$3,%gp_rel(F)($28)	 # tmp262, F
.L78:
	beq	$2,$0,.L79	 #, A.45,,
	lw	$3,%gp_rel(F)($28)	 # F, F

	li	$3,-65			# 0xffffffbf	 # tmp264,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp265, F, tmp264
	j	.L80	 #
	sw	$3,%gp_rel(F)($28)	 # tmp265, F

.L79:
	ori	$3,$3,0x40	 # tmp267, F,
	sw	$3,%gp_rel(F)($28)	 # tmp267, F
.L80:
	sll	$2,$2,2	 # tmp269, A.45,
	lui	$3,%hi(parrity)	 # tmp268,
	addiu	$3,$3,%lo(parrity)	 # tmp271, tmp268,
	addu	$2,$2,$3	 # tmp270, tmp269, tmp271
	lw	$2,0($2)	 # tmp272, parrity
	beql	$2,$0,.L81	 #, tmp272,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-5			# 0xfffffffb	 # tmp274,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp275, F, tmp274
	j	.L82	 #
	sw	$2,%gp_rel(F)($28)	 # tmp275, F

.L81:
	ori	$2,$2,0x4	 # tmp277, F,
	sw	$2,%gp_rel(F)($28)	 # tmp277, F
.L82:
	li	$2,-20			# 0xffffffec	 # tmp279,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp280, F, tmp279
	sw	$2,%gp_rel(F)($28)	 # tmp280, F
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_oryd
	.size	op_oryd, .-op_oryd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_cpyd
	.type	op_cpyd, @function
op_cpyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.18, PC
	lb	$4,0($2)	 # tmp264,* PC.18
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp266, tmp264, IY
	lui	$4,%hi(ram)	 # tmp263,
	addiu	$4,$4,%lo(ram)	 # tmp268, tmp263,
	addu	$3,$3,$4	 # tmp267, tmp266, tmp268
	lbu	$3,0($3)	 # P, ram
	addiu	$2,$2,1	 # tmp269, PC.18,
	sw	$2,%gp_rel(PC)($28)	 # tmp269, PC
	lbu	$2,%gp_rel(A)($28)	 # A.21, A
	andi	$5,$3,0xf	 # tmp270, P,
	andi	$4,$2,0xf	 # tmp271, A.21,
	slt	$4,$4,$5	 # tmp272, tmp271, tmp270
	beq	$4,$0,.L84	 #, tmp272,,
	li	$4,-17			# 0xffffffef	 # tmp276,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp274, F,
	j	.L85	 #
	sw	$4,%gp_rel(F)($28)	 # tmp274, F

.L84:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp277, F, tmp276
	sw	$4,%gp_rel(F)($28)	 # tmp277, F
.L85:
	sltu	$4,$2,$3	 # tmp278, A.21, P
	beq	$4,$0,.L86	 #, tmp278,,
	li	$4,-2			# 0xfffffffe	 # tmp282,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp280, F,
	j	.L87	 #
	sw	$4,%gp_rel(F)($28)	 # tmp280, F

.L86:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp283, F, tmp282
	sw	$4,%gp_rel(F)($28)	 # tmp283, F
.L87:
	seb	$2,$2	 # A.21, A.21
	seb	$3,$3	 # P, P
	subu	$2,$2,$3	 # i, A.21, P
	addiu	$3,$2,128	 # tmp286, i,
	sltu	$3,$3,256	 # tmp287, tmp286,
	bne	$3,$0,.L88	 #, tmp287,,
	li	$3,-5			# 0xfffffffb	 # tmp291,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp289, F,
	j	.L89	 #
	sw	$3,%gp_rel(F)($28)	 # tmp289, F

.L88:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp292, F, tmp291
	sw	$3,%gp_rel(F)($28)	 # tmp292, F
.L89:
	andi	$3,$2,0x80	 # tmp293, i,
	beq	$3,$0,.L90	 #, tmp293,,
	li	$3,-129			# 0xffffff7f	 # tmp297,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp295, F,
	j	.L91	 #
	sw	$3,%gp_rel(F)($28)	 # tmp295, F

.L90:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp298, F, tmp297
	sw	$3,%gp_rel(F)($28)	 # tmp298, F
.L91:
	beql	$2,$0,.L92	 #, i,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp300,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp301, F, tmp300
	j	.L93	 #
	sw	$2,%gp_rel(F)($28)	 # tmp301, F

.L92:
	ori	$2,$2,0x40	 # tmp303, F,
	sw	$2,%gp_rel(F)($28)	 # tmp303, F
.L93:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp305, F,
	sw	$2,%gp_rel(F)($28)	 # tmp305, F
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_cpyd
	.size	op_cpyd, .-op_cpyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_incyd
	.type	op_incyd, @function
op_incyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.285, PC
	lb	$4,0($2)	 # tmp250,* PC.285
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # D.3104, tmp250, IY
	addiu	$2,$2,1	 # tmp252, PC.285,
	sw	$2,%gp_rel(PC)($28)	 # tmp252, PC
	lui	$2,%hi(ram)	 # tmp253,
	addiu	$2,$2,%lo(ram)	 # tmp255, tmp253,
	addu	$2,$3,$2	 # tmp254, D.3104, tmp255
	lbu	$2,0($2)	 # D.3106, ram
	andi	$4,$2,0xf	 # tmp256, D.3106,
	addiu	$4,$4,1	 # tmp257, tmp256,
	slt	$4,$4,16	 # tmp258, tmp257,
	bne	$4,$0,.L95	 #, tmp258,,
	li	$4,-17			# 0xffffffef	 # tmp262,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp260, F,
	j	.L96	 #
	sw	$4,%gp_rel(F)($28)	 # tmp260, F

.L95:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp263, F, tmp262
	sw	$4,%gp_rel(F)($28)	 # tmp263, F
.L96:
	addiu	$2,$2,1	 # tmp264, D.3106,
	andi	$2,$2,0x00ff	 # D.3116, tmp264
	lui	$4,%hi(ram)	 # tmp265,
	addiu	$4,$4,%lo(ram)	 # tmp267, tmp265,
	addu	$3,$3,$4	 # tmp266, D.3104, tmp267
	sb	$2,0($3)	 # D.3116, ram
	li	$3,128			# 0x80	 # tmp268,
	bne	$2,$3,.L97	 #, D.3116, tmp268,
	li	$3,-5			# 0xfffffffb	 # tmp272,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp270, F,
	j	.L98	 #
	sw	$3,%gp_rel(F)($28)	 # tmp270, F

.L97:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.293, F, tmp272
	seb	$4,$2	 # D.3116, D.3116
	bgez	$4,.L99	 #, D.3116,
	sw	$3,%gp_rel(F)($28)	 # F.293, F

.L98:
	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x80	 # tmp275, F,
	j	.L100	 #
	sw	$3,%gp_rel(F)($28)	 # tmp275, F

.L99:
	li	$4,-129			# 0xffffff7f	 # tmp276,
	and	$3,$3,$4	 # tmp277, F.293, tmp276
	sw	$3,%gp_rel(F)($28)	 # tmp277, F
.L100:
	beql	$2,$0,.L101	 #, D.3116,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp279,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp280, F, tmp279
	j	.L102	 #
	sw	$2,%gp_rel(F)($28)	 # tmp280, F

.L101:
	ori	$2,$2,0x40	 # tmp282, F,
	sw	$2,%gp_rel(F)($28)	 # tmp282, F
.L102:
	li	$2,-3			# 0xfffffffd	 # tmp284,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp285, F, tmp284
	sw	$2,%gp_rel(F)($28)	 # tmp285, F
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_incyd
	.size	op_incyd, .-op_incyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_decyd
	.type	op_decyd, @function
op_decyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.268, PC
	lb	$4,0($2)	 # tmp250,* PC.268
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # D.3062, tmp250, IY
	addiu	$2,$2,1	 # tmp252, PC.268,
	sw	$2,%gp_rel(PC)($28)	 # tmp252, PC
	lui	$2,%hi(ram)	 # tmp253,
	addiu	$2,$2,%lo(ram)	 # tmp255, tmp253,
	addu	$2,$3,$2	 # tmp254, D.3062, tmp255
	lbu	$2,0($2)	 # D.3064, ram
	addiu	$5,$2,-1	 # tmp256, D.3064,
	andi	$5,$5,0xf	 # tmp257, tmp256,
	li	$4,15			# 0xf	 # tmp258,
	bne	$5,$4,.L104	 #, tmp257, tmp258,
	li	$4,-17			# 0xffffffef	 # tmp262,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp260, F,
	j	.L105	 #
	sw	$4,%gp_rel(F)($28)	 # tmp260, F

.L104:
	lw	$5,%gp_rel(F)($28)	 # F, F
	and	$4,$5,$4	 # tmp263, F, tmp262
	sw	$4,%gp_rel(F)($28)	 # tmp263, F
.L105:
	addiu	$2,$2,-1	 # tmp264, D.3064,
	andi	$2,$2,0x00ff	 # D.3074, tmp264
	lui	$4,%hi(ram)	 # tmp265,
	addiu	$4,$4,%lo(ram)	 # tmp267, tmp265,
	addu	$3,$3,$4	 # tmp266, D.3062, tmp267
	sb	$2,0($3)	 # D.3074, ram
	li	$3,127			# 0x7f	 # tmp268,
	bne	$2,$3,.L106	 #, D.3074, tmp268,
	li	$3,-5			# 0xfffffffb	 # tmp272,

	lw	$3,%gp_rel(F)($28)	 # F, F
	ori	$3,$3,0x4	 # tmp270, F,
	j	.L107	 #
	sw	$3,%gp_rel(F)($28)	 # tmp270, F

.L106:
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # F.276, F, tmp272
	seb	$4,$2	 # D.3074, D.3074
	bgez	$4,.L107	 #, D.3074,
	sw	$3,%gp_rel(F)($28)	 # F.276, F

	ori	$3,$3,0x80	 # tmp274, F.276,
	j	.L108	 #
	sw	$3,%gp_rel(F)($28)	 # tmp274, F

.L107:
	li	$3,-129			# 0xffffff7f	 # tmp276,
	lw	$4,%gp_rel(F)($28)	 # F, F
	and	$3,$4,$3	 # tmp277, F, tmp276
	sw	$3,%gp_rel(F)($28)	 # tmp277, F
.L108:
	beql	$2,$0,.L109	 #, D.3074,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	li	$2,-65			# 0xffffffbf	 # tmp279,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp280, F, tmp279
	j	.L110	 #
	sw	$2,%gp_rel(F)($28)	 # tmp280, F

.L109:
	ori	$2,$2,0x40	 # tmp282, F,
	sw	$2,%gp_rel(F)($28)	 # tmp282, F
.L110:
	lw	$2,%gp_rel(F)($28)	 # F, F
	ori	$2,$2,0x2	 # tmp284, F,
	sw	$2,%gp_rel(F)($28)	 # tmp284, F
	j	$31
	li	$2,23			# 0x17	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_decyd
	.size	op_decyd, .-op_decyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addyb
	.type	op_addyb, @function
op_addyb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$4,%gp_rel(IY)($28)	 # IY.340, IY
	andi	$3,$4,0x00ff	 # iyl, IY.340
	srl	$4,$4,8	 # iyh, IY.340,
	lbu	$2,%gp_rel(C)($28)	 # C.341, C
	addu	$3,$3,$2	 # tmp257, iyl, C.341
	slt	$2,$3,256	 # tmp259, tmp257,
	xori	$2,$2,0x1	 # carry, tmp259,
	andi	$5,$3,0x00ff	 # iyl, tmp257
	lbu	$3,%gp_rel(B)($28)	 # B.343, B
	andi	$6,$4,0xf	 # tmp261, iyh,
	addu	$6,$2,$6	 # tmp262, carry, tmp261
	andi	$7,$3,0xf	 # tmp263, B.343,
	addu	$6,$6,$7	 # tmp264, tmp262, tmp263
	slt	$6,$6,16	 # tmp265, tmp264,
	bne	$6,$0,.L112	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp269,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x10	 # tmp267, F,
	j	.L113	 #
	sw	$6,%gp_rel(F)($28)	 # tmp267, F

.L112:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp270, F, tmp269
	sw	$6,%gp_rel(F)($28)	 # tmp270, F
.L113:
	addu	$6,$4,$3	 # tmp271, iyh, B.343
	addu	$6,$6,$2	 # tmp272, tmp271, carry
	slt	$6,$6,256	 # tmp273, tmp272,
	bne	$6,$0,.L114	 #, tmp273,,
	li	$6,-2			# 0xfffffffe	 # tmp277,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x1	 # tmp275, F,
	j	.L115	 #
	sw	$6,%gp_rel(F)($28)	 # tmp275, F

.L114:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp278, F, tmp277
	sw	$6,%gp_rel(F)($28)	 # tmp278, F
.L115:
	addu	$3,$4,$3	 # tmp279, iyh, B.343
	addu	$2,$3,$2	 # tmp281, tmp279, carry
	andi	$2,$2,0x00ff	 # tmp282, tmp281
	sll	$2,$2,8	 # tmp283, tmp282,
	addu	$3,$5,$2	 # tmp285, iyl, tmp283
	sh	$3,%gp_rel(IY)($28)	 # tmp285, IY
	li	$2,-3			# 0xfffffffd	 # tmp287,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addyb
	.size	op_addyb, .-op_addyb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addyd
	.type	op_addyd, @function
op_addyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$4,%gp_rel(IY)($28)	 # IY.328, IY
	andi	$3,$4,0x00ff	 # iyl, IY.328
	srl	$4,$4,8	 # iyh, IY.328,
	lbu	$2,%gp_rel(E)($28)	 # E.329, E
	addu	$3,$3,$2	 # tmp257, iyl, E.329
	slt	$2,$3,256	 # tmp259, tmp257,
	xori	$2,$2,0x1	 # carry, tmp259,
	andi	$5,$3,0x00ff	 # iyl, tmp257
	lbu	$3,%gp_rel(D)($28)	 # D.331, D
	andi	$6,$4,0xf	 # tmp261, iyh,
	addu	$6,$2,$6	 # tmp262, carry, tmp261
	andi	$7,$3,0xf	 # tmp263, D.331,
	addu	$6,$6,$7	 # tmp264, tmp262, tmp263
	slt	$6,$6,16	 # tmp265, tmp264,
	bne	$6,$0,.L117	 #, tmp265,,
	li	$6,-17			# 0xffffffef	 # tmp269,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x10	 # tmp267, F,
	j	.L118	 #
	sw	$6,%gp_rel(F)($28)	 # tmp267, F

.L117:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp270, F, tmp269
	sw	$6,%gp_rel(F)($28)	 # tmp270, F
.L118:
	addu	$6,$4,$3	 # tmp271, iyh, D.331
	addu	$6,$6,$2	 # tmp272, tmp271, carry
	slt	$6,$6,256	 # tmp273, tmp272,
	bne	$6,$0,.L119	 #, tmp273,,
	li	$6,-2			# 0xfffffffe	 # tmp277,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x1	 # tmp275, F,
	j	.L120	 #
	sw	$6,%gp_rel(F)($28)	 # tmp275, F

.L119:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp278, F, tmp277
	sw	$6,%gp_rel(F)($28)	 # tmp278, F
.L120:
	addu	$3,$4,$3	 # tmp279, iyh, D.331
	addu	$2,$3,$2	 # tmp281, tmp279, carry
	andi	$2,$2,0x00ff	 # tmp282, tmp281
	sll	$2,$2,8	 # tmp283, tmp282,
	addu	$3,$5,$2	 # tmp285, iyl, tmp283
	sh	$3,%gp_rel(IY)($28)	 # tmp285, IY
	li	$2,-3			# 0xfffffffd	 # tmp287,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp288, F, tmp287
	sw	$2,%gp_rel(F)($28)	 # tmp288, F
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addyd
	.size	op_addyd, .-op_addyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addys
	.type	op_addys, @function
op_addys:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$3,%gp_rel(IY)($28)	 # IY.249, IY
	andi	$6,$3,0x00ff	 # iyl, IY.249
	srl	$3,$3,8	 # iyh, IY.249,
	lw	$2,%gp_rel(STACK)($28)	 # STACK.250, STACK
	lui	$4,%hi(ram)	 # tmp268,
	addiu	$4,$4,%lo(ram)	 # tmp267, tmp268,
	subu	$5,$2,$4	 # tmp270, STACK.250, tmp267
	andi	$5,$5,0x00ff	 # spl, tmp270
	subu	$4,$2,$4	 # tmp271, STACK.250, tmp267
	ext	$4,$4,8,8	 # sph, tmp271,,
	addu	$5,$5,$6	 # tmp275, spl, iyl
	slt	$2,$5,256	 # tmp277, tmp275,
	xori	$2,$2,0x1	 # carry, tmp277,
	andi	$6,$4,0xf	 # tmp279, sph,
	addu	$6,$2,$6	 # tmp280, carry, tmp279
	andi	$7,$3,0xf	 # tmp281, iyh,
	addu	$6,$6,$7	 # tmp282, tmp280, tmp281
	slt	$6,$6,16	 # tmp283, tmp282,
	bne	$6,$0,.L122	 #, tmp283,,
	andi	$5,$5,0x00ff	 # iyl, tmp275

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x10	 # tmp285, F,
	j	.L123	 #
	sw	$6,%gp_rel(F)($28)	 # tmp285, F

.L122:
	li	$6,-17			# 0xffffffef	 # tmp287,
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp288, F, tmp287
	sw	$6,%gp_rel(F)($28)	 # tmp288, F
.L123:
	addu	$6,$4,$3	 # tmp289, sph, iyh
	addu	$6,$6,$2	 # tmp290, tmp289, carry
	slt	$6,$6,256	 # tmp291, tmp290,
	bne	$6,$0,.L124	 #, tmp291,,
	li	$6,-2			# 0xfffffffe	 # tmp295,

	lw	$6,%gp_rel(F)($28)	 # F, F
	ori	$6,$6,0x1	 # tmp293, F,
	j	.L125	 #
	sw	$6,%gp_rel(F)($28)	 # tmp293, F

.L124:
	lw	$7,%gp_rel(F)($28)	 # F, F
	and	$6,$7,$6	 # tmp296, F, tmp295
	sw	$6,%gp_rel(F)($28)	 # tmp296, F
.L125:
	addu	$3,$4,$3	 # tmp297, sph, iyh
	addu	$2,$3,$2	 # tmp299, tmp297, carry
	andi	$2,$2,0x00ff	 # tmp300, tmp299
	sll	$2,$2,8	 # tmp301, tmp300,
	addu	$5,$5,$2	 # tmp303, iyl, tmp301
	sh	$5,%gp_rel(IY)($28)	 # tmp303, IY
	li	$2,-3			# 0xfffffffd	 # tmp305,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp306, F, tmp305
	sw	$2,%gp_rel(F)($28)	 # tmp306, F
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addys
	.size	op_addys, .-op_addys
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_addyy
	.type	op_addyy, @function
op_addyy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$3,%gp_rel(IY)($28)	 # IY.308, IY
	andi	$4,$3,0x00ff	 # iyl, IY.308
	srl	$3,$3,8	 # iyh, IY.308,
	sll	$4,$4,1	 # tmp252, iyl,
	slt	$2,$4,256	 # tmp254, tmp252,
	xori	$2,$2,0x1	 # carry, tmp254,
	andi	$5,$4,0x00ff	 # iyl, tmp252
	andi	$4,$3,0xf	 # D.3163, iyh,
	addu	$6,$4,$2	 # tmp256, D.3163, carry
	addu	$4,$6,$4	 # tmp257, tmp256, D.3163
	slt	$4,$4,16	 # tmp258, tmp257,
	bne	$4,$0,.L127	 #, tmp258,,
	li	$4,-17			# 0xffffffef	 # tmp262,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x10	 # tmp260, F,
	j	.L128	 #
	sw	$4,%gp_rel(F)($28)	 # tmp260, F

.L127:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$4,$6,$4	 # tmp263, F, tmp262
	sw	$4,%gp_rel(F)($28)	 # tmp263, F
.L128:
	sll	$4,$3,1	 # tmp264, iyh,
	addu	$4,$4,$2	 # tmp265, tmp264, carry
	slt	$4,$4,256	 # tmp266, tmp265,
	bne	$4,$0,.L129	 #, tmp266,,
	li	$4,-2			# 0xfffffffe	 # tmp270,

	lw	$4,%gp_rel(F)($28)	 # F, F
	ori	$4,$4,0x1	 # tmp268, F,
	j	.L130	 #
	sw	$4,%gp_rel(F)($28)	 # tmp268, F

.L129:
	lw	$6,%gp_rel(F)($28)	 # F, F
	and	$4,$6,$4	 # tmp271, F, tmp270
	sw	$4,%gp_rel(F)($28)	 # tmp271, F
.L130:
	sll	$3,$3,1	 # tmp272, iyh,
	addu	$2,$3,$2	 # tmp274, tmp272, carry
	andi	$2,$2,0x00ff	 # tmp275, tmp274
	sll	$2,$2,8	 # tmp276, tmp275,
	addu	$4,$5,$2	 # tmp278, iyl, tmp276
	sh	$4,%gp_rel(IY)($28)	 # tmp278, IY
	li	$2,-3			# 0xfffffffd	 # tmp280,
	lw	$3,%gp_rel(F)($28)	 # F, F
	and	$2,$3,$2	 # tmp281, F, tmp280
	sw	$2,%gp_rel(F)($28)	 # tmp281, F
	j	$31
	li	$2,15			# 0xf	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_addyy
	.size	op_addyy, .-op_addyy
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_inciy
	.type	op_inciy, @function
op_inciy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IY)($28)	 #, IY
	addiu	$2,$2,1	 # tmp222, IY,
	sh	$2,%gp_rel(IY)($28)	 # tmp222, IY
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_inciy
	.size	op_inciy, .-op_inciy
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_deciy
	.type	op_deciy, @function
op_deciy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(IY)($28)	 #, IY
	addiu	$2,$2,-1	 # tmp222, IY,
	sh	$2,%gp_rel(IY)($28)	 # tmp222, IY
	j	$31
	li	$2,10			# 0xa	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_deciy
	.size	op_deciy, .-op_deciy
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldayd
	.type	op_ldayd, @function
op_ldayd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.194, PC
	lb	$4,0($2)	 # tmp230,* PC.194
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$3,0($3)	 #, ram
	sb	$3,%gp_rel(A)($28)	 # tmp235, A
	addiu	$2,$2,1	 # tmp236, PC.194,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldayd
	.size	op_ldayd, .-op_ldayd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldbyd
	.type	op_ldbyd, @function
op_ldbyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.246, PC
	lb	$4,0($2)	 # tmp230,* PC.246
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$3,0($3)	 #, ram
	sb	$3,%gp_rel(B)($28)	 # tmp235, B
	addiu	$2,$2,1	 # tmp236, PC.246,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldbyd
	.size	op_ldbyd, .-op_ldbyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldcyd
	.type	op_ldcyd, @function
op_ldcyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.242, PC
	lb	$4,0($2)	 # tmp230,* PC.242
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$3,0($3)	 #, ram
	sb	$3,%gp_rel(C)($28)	 # tmp235, C
	addiu	$2,$2,1	 # tmp236, PC.242,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldcyd
	.size	op_ldcyd, .-op_ldcyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_lddyd
	.type	op_lddyd, @function
op_lddyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.238, PC
	lb	$4,0($2)	 # tmp230,* PC.238
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$3,0($3)	 #, ram
	sb	$3,%gp_rel(D)($28)	 # tmp235, D
	addiu	$2,$2,1	 # tmp236, PC.238,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_lddyd
	.size	op_lddyd, .-op_lddyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldeyd
	.type	op_ldeyd, @function
op_ldeyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.234, PC
	lb	$4,0($2)	 # tmp230,* PC.234
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$3,0($3)	 #, ram
	sb	$3,%gp_rel(E)($28)	 # tmp235, E
	addiu	$2,$2,1	 # tmp236, PC.234,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldeyd
	.size	op_ldeyd, .-op_ldeyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldhyd
	.type	op_ldhyd, @function
op_ldhyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.230, PC
	lb	$4,0($2)	 # tmp230,* PC.230
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$3,0($3)	 #, ram
	sb	$3,%gp_rel(H)($28)	 # tmp235, H
	addiu	$2,$2,1	 # tmp236, PC.230,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldhyd
	.size	op_ldhyd, .-op_ldhyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldlyd
	.type	op_ldlyd, @function
op_ldlyd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.226, PC
	lb	$4,0($2)	 # tmp230,* PC.226
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$3,0($3)	 #, ram
	sb	$3,%gp_rel(L)($28)	 # tmp235, L
	addiu	$2,$2,1	 # tmp236, PC.226,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldlyd
	.size	op_ldlyd, .-op_ldlyd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldyda
	.type	op_ldyda, @function
op_ldyda:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.198, PC
	lb	$4,0($2)	 # tmp230,* PC.198
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$4,%gp_rel(A)($28)	 #, A
	sb	$4,0($3)	 # A, ram
	addiu	$2,$2,1	 # tmp236, PC.198,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldyda
	.size	op_ldyda, .-op_ldyda
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldydb
	.type	op_ldydb, @function
op_ldydb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.222, PC
	lb	$4,0($2)	 # tmp230,* PC.222
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$4,%gp_rel(B)($28)	 #, B
	sb	$4,0($3)	 # B, ram
	addiu	$2,$2,1	 # tmp236, PC.222,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldydb
	.size	op_ldydb, .-op_ldydb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldydc
	.type	op_ldydc, @function
op_ldydc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.218, PC
	lb	$4,0($2)	 # tmp230,* PC.218
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$4,%gp_rel(C)($28)	 #, C
	sb	$4,0($3)	 # C, ram
	addiu	$2,$2,1	 # tmp236, PC.218,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldydc
	.size	op_ldydc, .-op_ldydc
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldydd
	.type	op_ldydd, @function
op_ldydd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.214, PC
	lb	$4,0($2)	 # tmp230,* PC.214
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$4,%gp_rel(D)($28)	 #, D
	sb	$4,0($3)	 # D, ram
	addiu	$2,$2,1	 # tmp236, PC.214,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldydd
	.size	op_ldydd, .-op_ldydd
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldyde
	.type	op_ldyde, @function
op_ldyde:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.210, PC
	lb	$4,0($2)	 # tmp230,* PC.210
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$4,%gp_rel(E)($28)	 #, E
	sb	$4,0($3)	 # E, ram
	addiu	$2,$2,1	 # tmp236, PC.210,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldyde
	.size	op_ldyde, .-op_ldyde
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldydh
	.type	op_ldydh, @function
op_ldydh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.206, PC
	lb	$4,0($2)	 # tmp230,* PC.206
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$4,%gp_rel(H)($28)	 #, H
	sb	$4,0($3)	 # H, ram
	addiu	$2,$2,1	 # tmp236, PC.206,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldydh
	.size	op_ldydh, .-op_ldydh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldydl
	.type	op_ldydl, @function
op_ldydl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.202, PC
	lb	$4,0($2)	 # tmp230,* PC.202
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, tmp230, IY
	lui	$4,%hi(ram)	 # tmp229,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp229,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$4,%gp_rel(L)($28)	 #, L
	sb	$4,0($3)	 # L, ram
	addiu	$2,$2,1	 # tmp236, PC.202,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldydl
	.size	op_ldydl, .-op_ldydl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	op_ldydn
	.type	op_ldydn, @function
op_ldydn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(PC)($28)	 # PC.264, PC
	lb	$4,0($2)	 # d,* PC.264
	addiu	$3,$2,1	 # PC.265, PC.264,
	sw	$3,%gp_rel(PC)($28)	 # PC.265, PC
	lhu	$3,%gp_rel(IY)($28)	 # IY, IY
	addu	$3,$4,$3	 # tmp232, d, IY
	lui	$4,%hi(ram)	 # tmp230,
	addiu	$4,$4,%lo(ram)	 # tmp234, tmp230,
	addu	$3,$3,$4	 # tmp233, tmp232, tmp234
	lbu	$4,1($2)	 #,
	sb	$4,0($3)	 # tmp235, ram
	addiu	$2,$2,2	 # tmp236, PC.264,
	sw	$2,%gp_rel(PC)($28)	 # tmp236, PC
	j	$31
	li	$2,19			# 0x13	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_ldydn
	.size	op_ldydn, .-op_ldydn
	.align	2
	.globl	op_fd_handel
	.set	nomips16
	.set	nomicromips
	.ent	op_fd_handel
	.type	op_fd_handel, @function
op_fd_handel:
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
	lui	$2,%hi(op_fd.1420)	 # tmp226,
	addiu	$2,$2,%lo(op_fd.1420)	 # tmp230, tmp226,
	addu	$2,$4,$2	 # tmp229, tmp228, tmp230
	lw	$2,0($2)	 # D.2363, op_fd
	addiu	$3,$3,1	 # tmp231, PC.0,
	jalr	$2	 # D.2363
	sw	$3,%gp_rel(PC)($28)	 # tmp231, PC

	lui	$3,%hi(ram+65535)	 # tmp235,
	addiu	$3,$3,%lo(ram+65535)	 # tmp234, tmp235,
	lw	$4,%gp_rel(PC)($28)	 # PC, PC
	sltu	$3,$3,$4	 # tmp233, tmp234, PC
	beq	$3,$0,.L149	 #, tmp233,,
	lui	$3,%hi(ram)	 # tmp237,

	addiu	$3,$3,%lo(ram)	 # tmp236, tmp237,
	sw	$3,%gp_rel(PC)($28)	 # tmp236, PC
.L149:
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	op_fd_handel
	.size	op_fd_handel, .-op_fd_handel
	.section	.rodata,code
	.align	2
	.type	op_fd.1420, @object
	.size	op_fd.1420, 1024
op_fd.1420:
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_addyb
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_addyd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_ldiynn
	.word	op_ldiny
	.word	op_inciy
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_addyy
	.word	op_ldiyinn
	.word	op_deciy
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_incyd
	.word	op_decyd
	.word	op_ldydn
	.word	trap_fd
	.word	trap_fd
	.word	op_addys
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_ldbyd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_ldcyd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_lddyd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_ldeyd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_ldhyd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_ldlyd
	.word	trap_fd
	.word	op_ldydb
	.word	op_ldydc
	.word	op_ldydd
	.word	op_ldyde
	.word	op_ldydh
	.word	op_ldydl
	.word	trap_fd
	.word	op_ldyda
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_ldayd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_adayd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_acayd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_suayd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_scayd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_andyd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_xoryd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_oryd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_cpyd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_fdcb_handel
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_popiy
	.word	trap_fd
	.word	op_exspy
	.word	trap_fd
	.word	op_pusiy
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_jpiy
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	op_ldspy
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.word	trap_fd
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
