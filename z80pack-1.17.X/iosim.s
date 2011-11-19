	.file	1 "iosim.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed iosim.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/664612396/iosim.o -O1
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
	.ent	io_trap
	.type	io_trap, @function
io_trap:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lw	$2,%gp_rel(i_flag)($28)	 # i_flag, i_flag
	beq	$2,$0,.L2
	nop
	 #, i_flag,,
	li	$2,2			# 0x2	 # tmp221,
	sw	$2,%gp_rel(cpu_error)($28)	 # tmp221, cpu_error
	sb	$0,%gp_rel(cpu_state)($28)	 #, cpu_state
.L2:
	j	$31
	move	$2,$0	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	io_trap
	.size	io_trap, .-io_trap
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	p001_out
	.type	p001_out, @function
p001_out:
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
	andi	$4,$4,0x00ff	 #, data
	lui	$16,%hi(_iob+20)	 # tmp221,
	jal	fputc	 #
	addiu	$5,$16,%lo(_iob+20)	 #, tmp221,

	jal	fflush	 #
	addiu	$4,$16,%lo(_iob+20)	 #, tmp221,

	lw	$31,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	p001_out
	.size	p001_out, .-p001_out
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	p001_in
	.type	p001_in, @function
p001_in:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lui	$4,%hi(_iob)	 # tmp221,
	jal	fgetc	 #
	addiu	$4,$4,%lo(_iob)	 #, tmp221,

	andi	$2,$2,0x00ff	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	p001_in
	.size	p001_in, .-p001_in
	.align	2
	.globl	init_io
	.set	nomips16
	.set	nomicromips
	.ent	init_io
	.type	init_io, @function
init_io:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(port+20)	 # tmp260,
	addiu	$2,$2,%lo(port+20)	 # ivtmp.17, tmp260,
	lui	$4,%hi(port+2052)	 # tmp269,
	addiu	$4,$4,%lo(port+2052)	 # D.6971, tmp269,
	lui	$3,%hi(io_trap)	 # tmp267,
	addiu	$3,$3,%lo(io_trap)	 # tmp268, tmp267,
	sw	$3,0($2)	 # tmp268, port
.L8:
	sw	$3,-4($2)	 # tmp268, port
	addiu	$2,$2,8	 # ivtmp.17, ivtmp.17,
	bnel	$2,$4,.L8	 #, ivtmp.17, D.6971,
	sw	$3,0($2)	 # tmp268, port

	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	init_io
	.size	init_io, .-init_io
	.align	2
	.globl	exit_io
	.set	nomips16
	.set	nomicromips
	.ent	exit_io
	.type	exit_io, @function
exit_io:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	exit_io
	.size	exit_io, .-exit_io
	.align	2
	.globl	io_in
	.set	nomips16
	.set	nomicromips
	.ent	io_in
	.type	io_in, @function
io_in:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	andi	$4,$4,0x00ff	 # adr, adr
	sll	$4,$4,3	 # tmp225, adr,
	lui	$2,%hi(port)	 # tmp224,
	addiu	$2,$2,%lo(port)	 # tmp227, tmp224,
	addu	$4,$4,$2	 # tmp226, tmp225, tmp227
	lw	$2,0($4)	 # tmp228, port
	jalr	$2
	nop
	 # tmp228
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	io_in
	.size	io_in, .-io_in
	.align	2
	.globl	io_out
	.set	nomips16
	.set	nomicromips
	.ent	io_out
	.type	io_out, @function
io_out:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	andi	$4,$4,0x00ff	 # adr, adr
	sll	$4,$4,3	 # tmp227, adr,
	lui	$2,%hi(port)	 # tmp225,
	addiu	$2,$2,%lo(port)	 # tmp228, tmp225,
	addu	$4,$4,$2	 # tmp226, tmp227, tmp228
	lw	$2,4($4)	 # tmp229, port
	jalr	$2	 # tmp229
	andi	$4,$5,0x00ff	 #, data

	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	io_out
	.size	io_out, .-io_out
	.section	.data, data
	.align	2
	.type	port, @object
	.size	port, 2048
port:
	.word	io_trap
	.word	io_trap
	.word	p001_in
	.word	p001_out
	.space	2032
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
