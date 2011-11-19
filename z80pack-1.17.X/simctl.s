	.file	1 "simctl.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed simctl.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/664612396/simctl.o -O1
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
	.ent	timeout
	.type	timeout, @function
timeout:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	sb	$0,%gp_rel(cpu_state)($28)	 #, cpu_state

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	timeout
	.size	timeout, .-timeout
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"HALT Op-Code reached at %04x\012\000"
	.align	2
.LC1:
	.ascii	"I/O Trap at %04x\012\000"
	.align	2
.LC2:
	.ascii	"Fatal I/O Error at %04x\012\000"
	.align	2
.LC3:
	.ascii	"Op-code trap at %04x %02x\012\000"
	.align	2
.LC4:
	.ascii	"Op-code trap at %04x %02x %02x\012\000"
	.align	2
.LC5:
	.ascii	"Op-code trap at %04x %02x %02x %02x %02x\012\000"
	.align	2
.LC6:
	.ascii	"User Interrupt\000"
	.align	2
.LC7:
	.ascii	"Unknown error %d\012\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	cpu_err_msg
	.type	cpu_err_msg, @function
cpu_err_msg:
	.frame	$sp,32,$31		# vars= 0, regs= 1/0, args= 24, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32	 #,,
	sw	$31,28($sp)	 #,
	lw	$5,%gp_rel(cpu_error)($28)	 # cpu_error.12, cpu_error
	li	$2,4			# 0x4	 # tmp271,
	beq	$5,$2,.L8	 #, cpu_error.12, tmp271,
	slt	$2,$5,5	 # tmp272, cpu_error.12,

	beq	$2,$0,.L12	 #, tmp272,,
	li	$2,6			# 0x6	 # tmp277,

	li	$2,1			# 0x1	 # tmp273,
	beq	$5,$2,.L5	 #, cpu_error.12, tmp273,
	slt	$2,$5,2	 # tmp274, cpu_error.12,

	beq	$2,$0,.L13	 #, tmp274,,
	li	$2,2			# 0x2	 # tmp275,

	beq	$5,$0,.L17	 #, cpu_error.12,,
	lw	$31,28($sp)	 #,

	j	.L15	 #
	lui	$4,%hi(.LC7)	 # tmp318,

.L13:
	beq	$5,$2,.L6	 #, cpu_error.12, tmp275,
	li	$2,3			# 0x3	 # tmp276,

	bnel	$5,$2,.L15	 #, cpu_error.12, tmp276,
	lui	$4,%hi(.LC7)	 # tmp318,

	j	.L14	 #
	lui	$4,%hi(.LC2)	 # tmp296,

.L12:
	beq	$5,$2,.L10	 #, cpu_error.12, tmp277,
	slt	$2,$5,6	 # tmp278, cpu_error.12,

	bne	$2,$0,.L9	 #, tmp278,,
	lw	$2,%gp_rel(PC)($28)	 # PC.13, PC

	li	$2,7			# 0x7	 # tmp279,
	beq	$5,$2,.L11	 #, cpu_error.12, tmp279,
	li	$2,255			# 0xff	 # tmp280,

	bnel	$5,$2,.L3	 #, cpu_error.12, tmp280,
	lui	$4,%hi(.LC7)	 # tmp318,

	j	.L16	 #
	lw	$31,28($sp)	 #,

.L5:
	lui	$2,%hi(ram)	 # tmp283,
	addiu	$2,$2,%lo(ram)	 # tmp282, tmp283,
	nor	$2,$0,$2	 # tmp281, tmp282
	lui	$4,%hi(.LC0)	 # tmp286,
	addiu	$4,$4,%lo(.LC0)	 #, tmp286,
	lw	$5,%gp_rel(PC)($28)	 # PC, PC
	jal	_printf_cdnopuxX	 #
	addu	$5,$5,$2	 #, PC, tmp281

	j	.L16	 #
	lw	$31,28($sp)	 #,

.L6:
	lui	$4,%hi(.LC1)	 # tmp291,
	addiu	$4,$4,%lo(.LC1)	 #, tmp291,
	lw	$5,%gp_rel(PC)($28)	 # PC, PC
	lui	$2,%hi(ram)	 # tmp289,
	addiu	$2,$2,%lo(ram)	 # tmp288, tmp289,
	jal	_printf_cdnopuxX	 #
	subu	$5,$5,$2	 #, PC, tmp288

	j	.L16	 #
	lw	$31,28($sp)	 #,

.L14:
	addiu	$4,$4,%lo(.LC2)	 #, tmp296,
	lw	$5,%gp_rel(PC)($28)	 # PC, PC
	lui	$2,%hi(ram)	 # tmp294,
	addiu	$2,$2,%lo(ram)	 # tmp293, tmp294,
	jal	_printf_cdnopuxX	 #
	subu	$5,$5,$2	 #, PC, tmp293

	j	.L16	 #
	lw	$31,28($sp)	 #,

.L8:
	lw	$2,%gp_rel(PC)($28)	 # PC, PC
	addiu	$5,$2,-1	 # D.28548, PC,
	lui	$4,%hi(.LC3)	 # tmp302,
	addiu	$4,$4,%lo(.LC3)	 #, tmp302,
	lui	$3,%hi(ram)	 # tmp300,
	addiu	$3,$3,%lo(ram)	 # tmp299, tmp300,
	subu	$5,$5,$3	 #, D.28548, tmp299
	jal	_printf_cdnopuxX	 #
	lbu	$6,-1($2)	 #,

	j	.L16	 #
	lw	$31,28($sp)	 #,

.L9:
	addiu	$5,$2,-2	 # D.28554, PC.13,
	lui	$4,%hi(.LC4)	 # tmp308,
	addiu	$4,$4,%lo(.LC4)	 #, tmp308,
	lui	$3,%hi(ram)	 # tmp305,
	addiu	$3,$3,%lo(ram)	 # tmp304, tmp305,
	subu	$5,$5,$3	 #, D.28554, tmp304
	lbu	$6,-2($2)	 #,
	jal	_printf_cdnopuxX	 #
	lbu	$7,-1($2)	 #,

	j	.L16	 #
	lw	$31,28($sp)	 #,

.L10:
	lw	$2,%gp_rel(PC)($28)	 # PC.13, PC
	addiu	$5,$2,-4	 # D.28560, PC.13,
	lbu	$6,-4($2)	 # tmp312,
	lbu	$7,-3($2)	 # tmp313,
	lbu	$3,-2($2)	 # tmp314,
	sw	$3,16($sp)	 # tmp314,
	lbu	$2,-1($2)	 # tmp315,
	sw	$2,20($sp)	 # tmp315,
	lui	$4,%hi(.LC5)	 # tmp316,
	addiu	$4,$4,%lo(.LC5)	 #, tmp316,
	lui	$2,%hi(ram)	 # tmp311,
	addiu	$2,$2,%lo(ram)	 # tmp310, tmp311,
	jal	_printf_cdnopuxX	 #
	subu	$5,$5,$2	 #, D.28560, tmp310

	j	.L16	 #
	lw	$31,28($sp)	 #,

.L11:
	lui	$4,%hi(.LC6)	 # tmp317,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC6)	 #, tmp317,

	j	.L16	 #
	lw	$31,28($sp)	 #,

.L3:
.L15:
	jal	_printf_cdnopuxX	 #
	addiu	$4,$4,%lo(.LC7)	 #, tmp318,

	lw	$31,28($sp)	 #,
.L16:
.L17:
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cpu_err_msg
	.size	cpu_err_msg, .-cpu_err_msg
	.section	.rodata,code
	.align	2
.LC8:
	.ascii	"Software breakpoint %d reached at %04x\012\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	handel_break
	.type	handel_break, @function
handel_break:
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
	lw	$3,%gp_rel(PC)($28)	 # PC.6, PC
	lui	$16,%hi(ram)	 # tmp245,
	addiu	$16,$16,%lo(ram)	 # tmp244, tmp245,
	nor	$16,$0,$16	 # tmp243, tmp244
	addu	$16,$3,$16	 # break_address, PC.6, tmp243
	lui	$2,%hi(soft)	 # tmp246,
	lhu	$2,%lo(soft)($2)	 # soft[0].sb_adr, soft[0].sb_adr
	beql	$2,$16,.L23	 #, soft[0].sb_adr, break_address,
	move	$18,$0	 # i,

	lui	$2,%hi(soft+12)	 # tmp249,
	lhu	$2,%lo(soft+12)($2)	 # soft[1].sb_adr, soft[1].sb_adr
	beql	$2,$16,.L19	 #, soft[1].sb_adr, break_address,
	li	$18,1			# 0x1	 # i,

	lui	$2,%hi(soft+24)	 # tmp252,
	lhu	$2,%lo(soft+24)($2)	 # soft[2].sb_adr, soft[2].sb_adr
	beq	$2,$16,.L19	 #, soft[2].sb_adr, break_address,
	li	$18,2			# 0x2	 # i,

	lui	$2,%hi(soft+36)	 # tmp255,
	lhu	$4,%lo(soft+36)($2)	 # soft[3].sb_adr, soft[3].sb_adr
	move	$2,$0	 # D.28524,
	bne	$4,$16,.L21	 #, soft[3].sb_adr, break_address,
	li	$18,3			# 0x3	 # i,

	j	.L28	 #
	lw	$2,%gp_rel(h_next)($28)	 # h_next, h_next

.L23:
.L19:
	lw	$2,%gp_rel(h_next)($28)	 # h_next, h_next
.L28:
	addiu	$2,$2,-1	 # h_next.10, h_next,
	slt	$4,$2,0	 # tmp312, h_next.10,
	movn	$2,$0,$4	 #, tmp311,, tmp312
	sw	$2,%gp_rel(h_next)($28)	 # tmp311, h_next
	sw	$0,%gp_rel(cpu_error)($28)	 #, cpu_error
	addiu	$2,$3,-1	 # PC.11, PC.6,
	sw	$2,%gp_rel(PC)($28)	 # PC.11, PC
	sll	$2,$18,2	 # tmp260, i,
	sll	$17,$18,4	 # tmp261, i,
	subu	$17,$17,$2	 # tmp262, tmp261, tmp260
	lui	$2,%hi(soft)	 # tmp258,
	addiu	$2,$2,%lo(soft)	 # tmp264, tmp258,
	addu	$17,$17,$2	 # tmp263, tmp262, tmp264
	lbu	$2,2($17)	 #, soft[i_49].sb_oldopc
	sb	$2,-1($3)	 # soft[i_49].sb_oldopc,
	li	$2,3			# 0x3	 # tmp266,
	jal	cpu	 #
	sb	$2,%gp_rel(cpu_state)($28)	 # tmp266, cpu_state

	lhu	$3,0($17)	 # soft[i_49].sb_adr, soft[i_49].sb_adr
	lui	$2,%hi(ram)	 # tmp267,
	addiu	$2,$2,%lo(ram)	 # tmp277, tmp267,
	addu	$2,$3,$2	 # tmp276, soft[i_49].sb_adr, tmp277
	li	$3,118			# 0x76	 # tmp278,
	sb	$3,0($2)	 # tmp278, ram
	lw	$3,4($17)	 # soft[i_49].sb_passcount, soft[i_49].sb_passcount
	addiu	$3,$3,1	 # D.28534, soft[i_49].sb_passcount,
	sw	$3,4($17)	 # D.28534, soft[i_49].sb_passcount
	lw	$4,8($17)	 # soft[i_49].sb_pass, soft[i_49].sb_pass
	bne	$3,$4,.L21	 #, D.28534, soft[i_49].sb_pass,
	li	$2,1			# 0x1	 # D.28524,

	lui	$4,%hi(.LC8)	 # tmp302,
	addiu	$4,$4,%lo(.LC8)	 #, tmp302,
	move	$5,$18	 #, i
	jal	_printf_cdnopuxX	 #
	move	$6,$16	 #, break_address

	sw	$0,4($17)	 #, soft[i_49].sb_passcount
	move	$2,$0	 # D.28524,
.L21:
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
	.end	handel_break
	.size	handel_break, .-handel_break
	.section	.rodata,code
	.align	2
.LC9:
	.ascii	"\012PC   A  SZHPNC I  IFF BC   DE   HL   A'F' B'C' D'E' "
	.ascii	"H'L' IX   IY   SP\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	print_head
	.type	print_head, @function
print_head:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	lui	$4,%hi(.LC9)	 # tmp218,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC9)	 #, tmp218,

	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	print_head
	.size	print_head, .-print_head
	.section	.rodata,code
	.align	2
.LC10:
	.ascii	"%04x %02x \000"
	.align	2
.LC11:
	.ascii	" %02x \000"
	.align	2
.LC12:
	.ascii	"  %02x%02x %02x%02x %02x%02x %02x%02x %02x%02x %02x%02x "
	.ascii	"%02x%02x %04x %04x %04x\012\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	print_reg
	.type	print_reg, @function
print_reg:
	.frame	$sp,80,$31		# vars= 0, regs= 2/0, args= 72, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-80	 #,,
	sw	$31,76($sp)	 #,
	sw	$16,72($sp)	 #,
	lui	$16,%hi(ram)	 # tmp288,
	addiu	$16,$16,%lo(ram)	 # ram.18, tmp288,
	lui	$4,%hi(.LC10)	 # tmp292,
	addiu	$4,$4,%lo(.LC10)	 #, tmp292,
	lw	$5,%gp_rel(PC)($28)	 # PC, PC
	subu	$5,$5,$16	 #, PC, ram.18
	jal	_printf_cdnopuxX	 #
	lbu	$6,%gp_rel(A)($28)	 #, A

	lw	$4,%gp_rel(F)($28)	 # F, F
	andi	$4,$4,0x80	 # tmp293, F,
	li	$2,49			# 0x31	 # tmp331,
	li	$3,48			# 0x30	 # tmp330,
	movz	$2,$3,$4	 #, tmp331, tmp330, tmp293
	jal	putchar	 #
	move	$4,$2	 #, tmp331

	lw	$4,%gp_rel(F)($28)	 # F, F
	andi	$4,$4,0x40	 # tmp295, F,
	li	$2,49			# 0x31	 # tmp339,
	li	$3,48			# 0x30	 # tmp338,
	movz	$2,$3,$4	 #, tmp339, tmp338, tmp295
	jal	putchar	 #
	move	$4,$2	 #, tmp339

	lw	$4,%gp_rel(F)($28)	 # F, F
	andi	$4,$4,0x10	 # tmp297, F,
	li	$2,49			# 0x31	 # tmp333,
	li	$3,48			# 0x30	 # tmp332,
	movz	$2,$3,$4	 #, tmp333, tmp332, tmp297
	jal	putchar	 #
	move	$4,$2	 #, tmp333

	lw	$4,%gp_rel(F)($28)	 # F, F
	andi	$4,$4,0x4	 # tmp299, F,
	li	$2,49			# 0x31	 # tmp343,
	li	$3,48			# 0x30	 # tmp342,
	movz	$2,$3,$4	 #, tmp343, tmp342, tmp299
	jal	putchar	 #
	move	$4,$2	 #, tmp343

	lw	$4,%gp_rel(F)($28)	 # F, F
	andi	$4,$4,0x2	 # tmp301, F,
	li	$2,49			# 0x31	 # tmp335,
	li	$3,48			# 0x30	 # tmp334,
	movz	$2,$3,$4	 #, tmp335, tmp334, tmp301
	jal	putchar	 #
	move	$4,$2	 #, tmp335

	lw	$4,%gp_rel(F)($28)	 # F, F
	andi	$4,$4,0x1	 # tmp303, F,
	li	$2,49			# 0x31	 # tmp341,
	li	$3,48			# 0x30	 # tmp340,
	movz	$2,$3,$4	 #, tmp341, tmp340, tmp303
	jal	putchar	 #
	move	$4,$2	 #, tmp341

	lui	$4,%hi(.LC11)	 # tmp306,
	addiu	$4,$4,%lo(.LC11)	 #, tmp306,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(I)($28)	 #, I

	lbu	$4,%gp_rel(IFF)($28)	 # IFF, IFF
	andi	$4,$4,0x1	 # tmp308, IFF,
	li	$2,49			# 0x31	 # tmp337,
	li	$3,48			# 0x30	 # tmp336,
	movz	$2,$3,$4	 #, tmp337, tmp336, tmp308
	jal	putchar	 #
	move	$4,$2	 #, tmp337

	lbu	$4,%gp_rel(IFF)($28)	 # IFF, IFF
	andi	$4,$4,0x2	 # tmp310, IFF,
	li	$2,49			# 0x31	 # tmp345,
	li	$3,48			# 0x30	 # tmp344,
	movz	$2,$3,$4	 #, tmp345, tmp344, tmp310
	jal	putchar	 #
	move	$4,$2	 #, tmp345

	lbu	$5,%gp_rel(B)($28)	 # B, B
	lbu	$6,%gp_rel(C)($28)	 # C, C
	lbu	$7,%gp_rel(D)($28)	 # D, D
	lbu	$2,%gp_rel(E)($28)	 # E, E
	sw	$2,16($sp)	 # E,
	lbu	$2,%gp_rel(H)($28)	 # H, H
	sw	$2,20($sp)	 # H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	sw	$2,24($sp)	 # L,
	lbu	$2,%gp_rel(A_)($28)	 # A_, A_
	sw	$2,28($sp)	 # A_,
	lw	$2,%gp_rel(F_)($28)	 # F_, F_
	sw	$2,32($sp)	 # F_,
	lbu	$2,%gp_rel(B_)($28)	 # B_, B_
	sw	$2,36($sp)	 # B_,
	lbu	$2,%gp_rel(C_)($28)	 # C_, C_
	sw	$2,40($sp)	 # C_,
	lbu	$2,%gp_rel(D_)($28)	 # D_, D_
	sw	$2,44($sp)	 # D_,
	lbu	$2,%gp_rel(E_)($28)	 # E_, E_
	sw	$2,48($sp)	 # E_,
	lbu	$2,%gp_rel(H_)($28)	 # H_, H_
	sw	$2,52($sp)	 # H_,
	lbu	$2,%gp_rel(L_)($28)	 # L_, L_
	sw	$2,56($sp)	 # L_,
	lhu	$2,%gp_rel(IX)($28)	 # IX, IX
	sw	$2,60($sp)	 # IX,
	lhu	$2,%gp_rel(IY)($28)	 # IY, IY
	sw	$2,64($sp)	 # IY,
	lw	$2,%gp_rel(STACK)($28)	 # STACK, STACK
	subu	$16,$2,$16	 # tmp327, STACK, ram.18
	sw	$16,68($sp)	 # tmp327,
	lui	$4,%hi(.LC12)	 # tmp329,
	jal	_printf_cdnopuxX	 #
	addiu	$4,$4,%lo(.LC12)	 #, tmp329,

	lw	$31,76($sp)	 #,
	lw	$16,72($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,80	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	print_reg
	.size	print_reg, .-print_reg
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	do_go
	.type	do_go, @function
do_go:
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
	lb	$3,0($4)	 # tmp274,* s
	lui	$2,%hi(_ctype)	 # tmp273,
	addiu	$2,$2,%lo(_ctype)	 # tmp276, tmp273,
	addu	$2,$3,$2	 # tmp275, tmp274, tmp276
	lb	$2,1($2)	 # D.28679, _ctype
	andi	$3,$2,0x88	 # tmp277, D.28679,
	beq	$3,$0,.L48	 #, tmp277,,
	lui	$5,%hi(_ctype)	 # tmp294,

	addiu	$5,$5,%lo(_ctype)	 # tmp295, tmp294,
	addiu	$4,$4,1	 # s, s,
.L57:
	lb	$2,0($4)	 # tmp279,* s
	addu	$2,$2,$5	 # tmp280, tmp279, tmp295
	lb	$2,1($2)	 # D.28679, _ctype
	andi	$3,$2,0x88	 # tmp282, D.28679,
	bnel	$3,$0,.L57	 #, tmp282,,
	addiu	$4,$4,1	 # s, s,

.L48:
	andi	$2,$2,0x44	 # tmp284, D.28679,
	beq	$2,$0,.L58	 #, tmp284,,
	li	$16,1			# 0x1	 # tmp292,

	jal	exatoi
	nop
	 #
	lui	$3,%hi(ram)	 # tmp286,
	addiu	$3,$3,%lo(ram)	 # tmp285, tmp286,
	addu	$2,$3,$2	 # tmp287, tmp285,
	sw	$2,%gp_rel(PC)($28)	 # tmp287, PC
.L58:
	li	$17,1			# 0x1	 # tmp293,
	sb	$16,%gp_rel(cpu_state)($28)	 # tmp292, cpu_state
.L59:
	jal	cpu	 #
	sw	$0,%gp_rel(cpu_error)($28)	 #, cpu_error

	lw	$2,%gp_rel(cpu_error)($28)	 # cpu_error, cpu_error
	bne	$2,$17,.L51
	nop
	 #, cpu_error, tmp293,
	jal	handel_break
	nop
	 #
	beq	$2,$0,.L51	 #,,,
	lw	$2,%gp_rel(cpu_error)($28)	 # cpu_error, cpu_error

	beql	$2,$0,.L59	 #, cpu_error,,
	sb	$16,%gp_rel(cpu_state)($28)	 # tmp292, cpu_state

.L51:
	jal	cpu_err_msg
	nop
	 #
	jal	print_head
	nop
	 #
	jal	print_reg
	nop
	 #
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	do_go
	.size	do_go, .-do_go
	.align	2
	.globl	GetString
	.set	nomips16
	.set	nomicromips
	.ent	GetString
	.type	GetString, @function
GetString:
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
	move	$18,$4	 # str, str
	move	$19,$5	 # length, length
	lui	$2,%hi(uartReg+4)	 # tmp237,
	lw	$17,%lo(uartReg+4)($2)	 # D.29443, uartReg
	li	$21,27			# 0x1b	 # tmp239,
	li	$20,8			# 0x8	 # tmp240,
	j	.L68	 #
	li	$22,13			# 0xd	 # tmp241,

.L66:
	lw	$2,16($17)	 # D.29437, D.29443_4->sta.reg
	andi	$2,$2,0x1	 # tmp229, D.29437,
	beq	$2,$0,.L66
	nop
	 #, tmp229,,
.L65:
	lw	$16,48($17)	 # D.29442, D.29443_4->rx.reg
	seb	$16,$16	 # ch, D.29442
	beq	$16,$21,.L60	 #, ch, tmp239,
	sb	$16,0($18)	 # ch,* str

	bne	$16,$20,.L64
	nop
	 #, ch, tmp240,
	jal	UART2PutChar	 #
	move	$4,$20	 #, tmp240

	jal	UART2PutChar	 #
	li	$4,127			# 0x7f	 #,

	addiu	$18,$18,-1	 # str, str,
	sb	$0,0($18)	 #,* str
	j	.L68	 #
	addiu	$19,$19,1	 # length, length,

.L64:
	jal	UART2PutChar	 #
	move	$4,$16	 #, ch

	addiu	$18,$18,1	 # str, str,
	addiu	$19,$19,-1	 # length, length,
	blez	$19,.L60	 #, length,
	sb	$0,0($18)	 #,* str

	beq	$16,$22,.L69	 #, ch, tmp241,
	lw	$31,44($sp)	 #,

.L68:
	lw	$2,16($17)	 # D.29437, D.29443_4->sta.reg
	andi	$2,$2,0x1	 # tmp235, D.29437,
	beq	$2,$0,.L66
	nop
	 #, tmp235,,
	j	.L65
	nop
	 #
.L60:
	lw	$31,44($sp)	 #,
.L69:
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
	.end	GetString
	.size	GetString, .-GetString
	.section	.rodata,code
	.align	2
.LC13:
	.ascii	"on \000"
	.align	2
.LC14:
	.ascii	"off\000"
	.align	2
.LC15:
	.ascii	"\000"
	.align	2
.LC16:
	.ascii	">>> \000"
	.align	2
.LC17:
	.ascii	"Adr    \000"
	.align	2
.LC18:
	.ascii	"%02x \000"
	.align	2
.LC19:
	.ascii	" ASCII\000"
	.align	2
.LC20:
	.ascii	"%04x - \000"
	.align	2
.LC21:
	.ascii	"%04x = %02x : \000"
	.align	2
.LC22:
	.ascii	"bc'\000"
	.align	2
.LC23:
	.ascii	"BC' = %04x : \000"
	.align	2
.LC24:
	.ascii	"de'\000"
	.align	2
.LC25:
	.ascii	"DE' = %04x : \000"
	.align	2
.LC26:
	.ascii	"hl'\000"
	.align	2
.LC27:
	.ascii	"HL' = %04x : \000"
	.align	2
.LC28:
	.ascii	"pc\000"
	.align	2
.LC29:
	.ascii	"PC = %04x : \000"
	.align	2
.LC30:
	.ascii	"bc\000"
	.align	2
.LC31:
	.ascii	"BC = %04x : \000"
	.align	2
.LC32:
	.ascii	"de\000"
	.align	2
.LC33:
	.ascii	"DE = %04x : \000"
	.align	2
.LC34:
	.ascii	"hl\000"
	.align	2
.LC35:
	.ascii	"HL = %04x : \000"
	.align	2
.LC36:
	.ascii	"ix\000"
	.align	2
.LC37:
	.ascii	"IX = %04x : \000"
	.align	2
.LC38:
	.ascii	"iy\000"
	.align	2
.LC39:
	.ascii	"IY = %04x : \000"
	.align	2
.LC40:
	.ascii	"sp\000"
	.align	2
.LC41:
	.ascii	"SP = %04x : \000"
	.align	2
.LC42:
	.ascii	"fs\000"
	.align	2
.LC43:
	.ascii	"S-FLAG = %c : \000"
	.align	2
.LC44:
	.ascii	"fz\000"
	.align	2
.LC45:
	.ascii	"Z-FLAG = %c : \000"
	.align	2
.LC46:
	.ascii	"fh\000"
	.align	2
.LC47:
	.ascii	"H-FLAG = %c : \000"
	.align	2
.LC48:
	.ascii	"fp\000"
	.align	2
.LC49:
	.ascii	"P-FLAG = %c : \000"
	.align	2
.LC50:
	.ascii	"fn\000"
	.align	2
.LC51:
	.ascii	"N-FLAG = %c : \000"
	.align	2
.LC52:
	.ascii	"fc\000"
	.align	2
.LC53:
	.ascii	"C-FLAG = %c : \000"
	.align	2
.LC54:
	.ascii	"a'\000"
	.align	2
.LC55:
	.ascii	"A' = %02x : \000"
	.align	2
.LC56:
	.ascii	"f'\000"
	.align	2
.LC57:
	.ascii	"F' = %02x : \000"
	.align	2
.LC58:
	.ascii	"b'\000"
	.align	2
.LC59:
	.ascii	"B' = %02x : \000"
	.align	2
.LC60:
	.ascii	"c'\000"
	.align	2
.LC61:
	.ascii	"C' = %02x : \000"
	.align	2
.LC62:
	.ascii	"d'\000"
	.align	2
.LC63:
	.ascii	"D' = %02x : \000"
	.align	2
.LC64:
	.ascii	"e'\000"
	.align	2
.LC65:
	.ascii	"E' = %02x : \000"
	.align	2
.LC66:
	.ascii	"h'\000"
	.align	2
.LC67:
	.ascii	"H' = %02x : \000"
	.align	2
.LC68:
	.ascii	"l'\000"
	.align	2
.LC69:
	.ascii	"L' = %02x : \000"
	.align	2
.LC70:
	.ascii	"i\000"
	.align	2
.LC71:
	.ascii	"I = %02x : \000"
	.align	2
.LC72:
	.ascii	"a\000"
	.align	2
.LC73:
	.ascii	"A = %02x : \000"
	.align	2
.LC74:
	.ascii	"f\000"
	.align	2
.LC75:
	.ascii	"F = %02x : \000"
	.align	2
.LC76:
	.ascii	"b\000"
	.align	2
.LC77:
	.ascii	"B = %02x : \000"
	.align	2
.LC78:
	.ascii	"c\000"
	.align	2
.LC79:
	.ascii	"C = %02x : \000"
	.align	2
.LC80:
	.ascii	"d\000"
	.align	2
.LC81:
	.ascii	"D = %02x : \000"
	.align	2
.LC82:
	.ascii	"e\000"
	.align	2
.LC83:
	.ascii	"E = %02x : \000"
	.align	2
.LC84:
	.ascii	"h\000"
	.align	2
.LC85:
	.ascii	"H = %02x : \000"
	.align	2
.LC86:
	.ascii	"l\000"
	.align	2
.LC87:
	.ascii	"L = %02x : \000"
	.align	2
.LC88:
	.ascii	"can't change register %s\012\000"
	.align	2
.LC89:
	.ascii	"%02x = %02x : \000"
	.align	2
.LC90:
	.ascii	"No Addr Pass  Counter\000"
	.align	2
.LC91:
	.ascii	"%02d %04x %05d %05d\012\000"
	.align	2
.LC92:
	.ascii	"breakpoint %d not available\012\000"
	.align	2
.LC93:
	.ascii	"History memory is empty\000"
	.align	2
.LC94:
	.ascii	"%04x AF=%04x BC=%04x DE=%04x HL=%04x IX=%04x IY=%04x SP="
	.ascii	"%04x\012\000"
	.align	2
.LC95:
	.ascii	"q = quit, else continue: \000"
	.align	2
.LC96:
	.ascii	"start  stop  status  T-states\000"
	.align	2
.LC97:
	.ascii	"%04x   %04x    %s   %lu\012\000"
	.align	2
.LC98:
	.ascii	"clock frequency = %5.2f Mhz\012\000"
	.globl	sitofp
	.globl	fpdiv
	.align	2
.LC100:
	.ascii	"Interrupted by user\000"
	.align	2
.LC101:
	.ascii	"Release: %s\012\000"
	.align	2
.LC102:
	.ascii	"1.17\000"
	.align	2
.LC103:
	.ascii	"No. of entrys in history memory: %d\012\000"
	.align	2
.LC104:
	.ascii	"No. of software breakpoints: %d\012\000"
	.align	2
.LC105:
	.ascii	"Undocumented op-codes %sexecuted\012\000"
	.align	2
.LC106:
	.ascii	"not \000"
	.align	2
.LC107:
	.ascii	"Stackpointer turn around %schecked\012\000"
	.align	2
.LC108:
	.ascii	"Programcounter turn around %schecked\012\000"
	.align	2
.LC109:
	.ascii	"T-State counting %spossible\012\000"
	.align	2
.LC110:
	.ascii	"CPU simulation %sstopped on cntl-c\012\000"
	.align	2
.LC111:
	.ascii	"CPU simulation %sstopped on cntl-\\\012\000"
	.align	2
.LC112:
	.ascii	"r filename[,address]      read object into memory\000"
	.align	2
.LC113:
	.ascii	"d [address]               dump memory\000"
	.align	2
.LC114:
	.ascii	"l [address]               list memory\000"
	.align	2
.LC115:
	.ascii	"m [address]               modify memory\000"
	.align	2
.LC116:
	.ascii	"f address,count,value     fill memory\000"
	.align	2
.LC117:
	.ascii	"v from,to,count           move memory\000"
	.align	2
.LC118:
	.ascii	"p address                 show/modify port\000"
	.align	2
.LC119:
	.ascii	"g [address]               run program\000"
	.align	2
.LC120:
	.ascii	"t [count]                 trace program\000"
	.align	2
.LC121:
	.ascii	"return                    single step program\000"
	.align	2
.LC122:
	.ascii	"x [register]              show/modify register\000"
	.align	2
.LC123:
	.ascii	"x f<flag>                 modify flag\000"
	.align	2
.LC124:
	.ascii	"b[no] address[,pass]      set soft breakpoint\000"
	.align	2
.LC125:
	.ascii	"b                         show soft breakpoints\000"
	.align	2
.LC126:
	.ascii	"b[no] c                   clear soft breakpoint\000"
	.align	2
.LC127:
	.ascii	"h [address]               show history\000"
	.align	2
.LC128:
	.ascii	"h c                       clear history\000"
	.align	2
.LC129:
	.ascii	"z start,stop              set trigger adr for t-state co"
	.ascii	"unt\000"
	.align	2
.LC130:
	.ascii	"z                         show t-state count\000"
	.align	2
.LC131:
	.ascii	"c                         measure clock frequency\000"
	.align	2
.LC132:
	.ascii	"s                         show settings\000"
	.align	2
.LC133:
	.ascii	"! command                 execute UNIX command\000"
	.align	2
.LC134:
	.ascii	"q                         quit\000"
	.align	2
.LC135:
	.ascii	"what??\000"
	.align	2
.LC136:
	.ascii	"count missing\000"
	.align	2
.LC137:
	.ascii	"value missing\000"
	.align	2
.LC138:
	.ascii	"to missing\000"
	.section	.text,code
	.align	2
	.globl	mon
	.set	nomips16
	.set	nomicromips
	.ent	mon
	.type	mon, @function
mon:
	.frame	$sp,104,$31		# vars= 24, regs= 10/0, args= 40, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-104	 #,,
	sw	$31,100($sp)	 #,
	sw	$fp,96($sp)	 #,
	sw	$23,92($sp)	 #,
	sw	$22,88($sp)	 #,
	sw	$21,84($sp)	 #,
	sw	$20,80($sp)	 #,
	sw	$19,76($sp)	 #,
	sw	$18,72($sp)	 #,
	sw	$17,68($sp)	 #,
	sw	$16,64($sp)	 #,
	lw	$2,%gp_rel(x_flag)($28)	 # x_flag, x_flag
	beq	$2,$0,.L314	 #, x_flag,,
	lui	$fp,%hi(.LC16)	 # tmp1972,

	lui	$4,%hi(xfn)	 # tmp950,
	jal	load_file	 #
	addiu	$4,$4,%lo(xfn)	 #, tmp950,

	bne	$2,$0,.L314	 #,,,
	lui	$fp,%hi(.LC16)	 # tmp1972,

	lui	$4,%hi(.LC15)	 # tmp951,
	jal	do_go	 #
	addiu	$4,$4,%lo(.LC15)	 #, tmp951,

	lui	$fp,%hi(.LC16)	 # tmp1972,
.L314:
	addiu	$fp,$fp,%lo(.LC16)	 # tmp1973, tmp1972,
	lui	$20,%hi(cmd.22150)	 # tmp1974,
	lui	$2,%hi(.L92)	 # tmp1975,
	addiu	$2,$2,%lo(.L92)	 #, tmp1975,
	sw	$2,48($sp)	 #, %sfp
	lui	$2,%hi(ram)	 #,
	addiu	$19,$2,%lo(ram)	 # tmp1978,,
	lui	$2,%hi(.LC99)	 # tmp1979,
	lw	$2,%lo(.LC99)($2)	 #,
	sw	$2,60($sp)	 #, %sfp
.L306:
	jal	_printf_cdnopuxX	 #
	move	$4,$fp	 #, tmp1973

	addiu	$4,$20,%lo(cmd.22150)	 #, tmp1974,
	jal	GetString	 #
	li	$5,80			# 0x50	 #,

	lbu	$2,%lo(cmd.22150)($20)	 #, cmd
	addiu	$2,$2,-10	 # tmp956, cmd,
	andi	$3,$2,0x00ff	 # tmp957, tmp956
	sltu	$3,$3,113	 # tmp958, tmp957,
	beq	$3,$0,.L315	 #, tmp958,,
	lui	$4,%hi(.LC135)	 # tmp1865,

	andi	$2,$2,0x00ff	 # tmp959, tmp956
	sll	$2,$2,2	 # tmp960, tmp959,
	lw	$3,48($sp)	 #, %sfp
	addu	$2,$3,$2	 # tmp961,, tmp960
	lw	$2,0($2)	 # tmp964,
	j	$2
	nop
	 # tmp964
	.align	2
	.align	2
.L92:
	.word	.L73
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L74
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L75
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L76
	.word	.L77
	.word	.L78
	.word	.L72
	.word	.L79
	.word	.L80
	.word	.L81
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L82
	.word	.L83
	.word	.L72
	.word	.L72
	.word	.L84
	.word	.L70
	.word	.L86
	.word	.L87
	.word	.L88
	.word	.L72
	.word	.L89
	.word	.L72
	.word	.L90
	.word	.L72
	.word	.L91
.L91:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp966, tmp1974,
	lb	$2,1($2)	 # D.29921, cmd
	lui	$3,%hi(_ctype)	 # tmp967,
	addiu	$3,$3,%lo(_ctype)	 # tmp969, tmp967,
	addu	$3,$2,$3	 # tmp968, D.29921, tmp969
	lb	$3,1($3)	 # tmp970, _ctype
	andi	$3,$3,0x88	 # tmp971, tmp970,
	bne	$3,$0,.L238	 #, tmp971,,
	lui	$16,%hi(cmd.22150+1)	 # tmp945,

	j	.L94	 #
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp946,

.L90:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp973, tmp1974,
	lb	$2,1($2)	 # D.29812, cmd
	lui	$3,%hi(_ctype)	 # tmp974,
	addiu	$3,$3,%lo(_ctype)	 # tmp976, tmp974,
	addu	$3,$2,$3	 # tmp975, D.29812, tmp976
	lb	$3,1($3)	 # tmp977, _ctype
	andi	$3,$3,0x88	 # tmp978, tmp977,
	bne	$3,$0,.L239	 #, tmp978,,
	lui	$16,%hi(cmd.22150+1)	 # tmp936,

	j	.L96	 #
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp937,

.L89:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp981, tmp1974,
	lb	$3,1($2)	 # cmd, cmd
	lui	$2,%hi(_ctype)	 # tmp979,
	addiu	$2,$2,%lo(_ctype)	 # tmp984, tmp979,
	addu	$2,$3,$2	 # tmp983, cmd, tmp984
	lb	$2,1($2)	 # tmp985, _ctype
	andi	$2,$2,0x88	 # tmp986, tmp985,
	bne	$2,$0,.L240	 #, tmp986,,
	lui	$16,%hi(cmd.22150+1)	 # tmp932,

	j	.L98	 #
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp933,

.L88:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp988, tmp1974,
	lb	$2,1($2)	 # D.29489, cmd
	lui	$3,%hi(_ctype)	 # tmp989,
	addiu	$3,$3,%lo(_ctype)	 # tmp991, tmp989,
	addu	$3,$2,$3	 # tmp990, D.29489, tmp991
	lb	$3,1($3)	 # tmp992, _ctype
	andi	$3,$3,0x88	 # tmp993, tmp992,
	bne	$3,$0,.L241	 #, tmp993,,
	lui	$4,%hi(cmd.22150+1)	 # tmp921,

	j	.L100	 #
	addiu	$4,$4,%lo(cmd.22150+1)	 # s, tmp922,

.L84:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp996, tmp1974,
	lb	$3,1($2)	 # cmd, cmd
	lui	$2,%hi(_ctype)	 # tmp994,
	addiu	$2,$2,%lo(_ctype)	 # tmp999, tmp994,
	addu	$2,$3,$2	 # tmp998, cmd, tmp999
	lb	$2,1($2)	 # tmp1000, _ctype
	andi	$2,$2,0x88	 # tmp1001, tmp1000,
	bne	$2,$0,.L242	 #, tmp1001,,
	lui	$4,%hi(cmd.22150+1)	 # tmp938,

	j	.L102	 #
	addiu	$4,$4,%lo(cmd.22150+1)	 # s, tmp939,

.L83:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp1004, tmp1974,
	lb	$3,1($2)	 # cmd, cmd
	lui	$2,%hi(_ctype)	 # tmp1002,
	addiu	$2,$2,%lo(_ctype)	 # tmp1007, tmp1002,
	addu	$2,$3,$2	 # tmp1006, cmd, tmp1007
	lb	$2,1($2)	 # D.29567, _ctype
	andi	$3,$2,0x88	 # tmp1008, D.29567,
	bne	$3,$0,.L243	 #, tmp1008,,
	lui	$4,%hi(cmd.22150+1)	 # tmp927,

	j	.L104	 #
	addiu	$4,$4,%lo(cmd.22150+1)	 # s, tmp928,

.L82:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp1011, tmp1974,
	lb	$3,1($2)	 # cmd, cmd
	lui	$2,%hi(_ctype)	 # tmp1009,
	addiu	$2,$2,%lo(_ctype)	 # tmp1014, tmp1009,
	addu	$2,$3,$2	 # tmp1013, cmd, tmp1014
	lb	$2,1($2)	 # D.29537, _ctype
	andi	$3,$2,0x88	 # tmp1015, D.29537,
	bne	$3,$0,.L244	 #, tmp1015,,
	lui	$4,%hi(cmd.22150+1)	 # tmp925,

	j	.L106	 #
	addiu	$4,$4,%lo(cmd.22150+1)	 # s, tmp926,

.L81:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp1017, tmp1974,
	lb	$2,1($2)	 # D.29894, cmd
	lui	$3,%hi(_ctype)	 # tmp1018,
	addiu	$3,$3,%lo(_ctype)	 # tmp1020, tmp1018,
	addu	$3,$2,$3	 # tmp1019, D.29894, tmp1020
	lb	$3,1($3)	 # tmp1021, _ctype
	andi	$3,$3,0x88	 # tmp1022, tmp1021,
	bne	$3,$0,.L245	 #, tmp1022,,
	lui	$4,%hi(cmd.22150+1)	 # tmp943,

	j	.L108	 #
	addiu	$4,$4,%lo(cmd.22150+1)	 # s, tmp944,

.L79:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp1025, tmp1974,
	lb	$3,1($2)	 # cmd, cmd
	lui	$2,%hi(_ctype)	 # tmp1023,
	addiu	$2,$2,%lo(_ctype)	 # tmp1028, tmp1023,
	addu	$2,$3,$2	 # tmp1027, cmd, tmp1028
	lb	$2,1($2)	 # tmp1029, _ctype
	andi	$2,$2,0x88	 # tmp1030, tmp1029,
	bne	$2,$0,.L246	 #, tmp1030,,
	lui	$16,%hi(cmd.22150+1)	 # tmp929,

	j	.L110	 #
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp930,

.L78:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp1033, tmp1974,
	lb	$3,1($2)	 # cmd, cmd
	lui	$2,%hi(_ctype)	 # tmp1031,
	addiu	$2,$2,%lo(_ctype)	 # tmp1036, tmp1031,
	addu	$2,$3,$2	 # tmp1035, cmd, tmp1036
	lb	$2,1($2)	 # D.29518, _ctype
	andi	$3,$2,0x88	 # tmp1037, D.29518,
	bne	$3,$0,.L247	 #, tmp1037,,
	lui	$16,%hi(cmd.22150+1)	 # tmp923,

	j	.L112	 #
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp924,

.L73:
	li	$2,3			# 0x3	 # tmp1038,
	sb	$2,%gp_rel(cpu_state)($28)	 # tmp1038, cpu_state
	jal	cpu	 #
	sw	$0,%gp_rel(cpu_error)($28)	 #, cpu_error

	li	$2,1			# 0x1	 # tmp1040,
	lw	$3,%gp_rel(cpu_error)($28)	 # cpu_error, cpu_error
	bne	$3,$2,.L113
	nop
	 #, cpu_error, tmp1040,
	jal	handel_break
	nop
	 #
.L113:
	jal	cpu_err_msg
	nop
	 #
	jal	print_head
	nop
	 #
	jal	print_reg
	nop
	 #
	lw	$5,%gp_rel(PC)($28)	 # PC.2, PC
	sw	$5,40($sp)	 # PC.2, p
	addiu	$4,$sp,40	 #,,
	jal	disass	 #
	subu	$5,$5,$19	 #, PC.2, tmp1978

	j	.L306
	nop
	 #
.L241:
	addiu	$4,$4,%lo(cmd.22150+1)	 # s, tmp921,
	lui	$5,%hi(_ctype)	 # tmp1958,
	addiu	$5,$5,%lo(_ctype)	 # tmp1959, tmp1958,
	addiu	$4,$4,1	 # s, s,
.L316:
	lb	$2,0($4)	 # D.29489,* s
	addu	$3,$2,$5	 # tmp1045, D.29489, tmp1959
	lb	$3,1($3)	 # tmp1047, _ctype
	andi	$3,$3,0x88	 # tmp1048, tmp1047,
	bnel	$3,$0,.L316	 #, tmp1048,,
	addiu	$4,$4,1	 # s, s,

.L100:
	beq	$2,$0,.L115	 #, D.29489,,
	li	$2,3			# 0x3	 # tmp1866,

	jal	atoi
	nop
	 #
	move	$17,$2	 # count,
	li	$2,3			# 0x3	 # tmp1049,
	sb	$2,%gp_rel(cpu_state)($28)	 # tmp1049, cpu_state
	jal	print_head	 #
	sw	$0,%gp_rel(cpu_error)($28)	 #, cpu_error

	jal	print_reg
	nop
	 #
	bgtzl	$17,.L317	 #, count,
	move	$16,$0	 # i,

	j	.L117
	nop
	 #
.L119:
	jal	cpu
	nop
	 #
	jal	print_reg
	nop
	 #
	lw	$2,%gp_rel(cpu_error)($28)	 # cpu_error.49, cpu_error
	beql	$2,$0,.L318	 #, cpu_error.49,,
	addiu	$16,$16,1	 # i, i,

	bne	$2,$18,.L117
	nop
	 #, cpu_error.49, tmp1957,
	jal	handel_break
	nop
	 #
	beq	$2,$0,.L117
	nop
	 #,,,
	addiu	$16,$16,1	 # i, i,
.L318:
	slt	$2,$16,$17	 # tmp1051, i, count
	bne	$2,$0,.L119
	nop
	 #, tmp1051,,
.L117:
	jal	cpu_err_msg
	nop
	 #
	j	.L306
	nop
	 #
.L80:
	lui	$4,%hi(cmd.22150+1)	 # tmp1052,
	jal	do_go	 #
	addiu	$4,$4,%lo(cmd.22150+1)	 #, tmp1052,

	j	.L306
	nop
	 #
.L247:
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp923,
	lui	$4,%hi(_ctype)	 # tmp1913,
	addiu	$4,$4,%lo(_ctype)	 # tmp1914, tmp1913,
	addiu	$16,$16,1	 # s, s,
.L319:
	lb	$2,0($16)	 # tmp1054,* s
	addu	$2,$2,$4	 # tmp1055, tmp1054, tmp1914
	lb	$2,1($2)	 # D.29518, _ctype
	andi	$3,$2,0x88	 # tmp1057, D.29518,
	bnel	$3,$0,.L319	 #, tmp1057,,
	addiu	$16,$16,1	 # s, s,

.L112:
	andi	$2,$2,0x44	 # tmp1059, D.29518,
	beql	$2,$0,.L320	 #, tmp1059,,
	lui	$4,%hi(.LC17)	 # tmp1070,

	jal	exatoi	 #
	move	$4,$16	 #, s

	move	$17,$2	 # D.29512,
	jal	exatoi	 #
	move	$4,$16	 #, s

	sra	$3,$2,31	 # tmp1061, D.29510,
	srl	$3,$3,28	 # tmp1062, tmp1061,
	addu	$2,$2,$3	 # tmp1063, D.29510, tmp1062
	andi	$2,$2,0xf	 # tmp1064, tmp1063,
	subu	$3,$2,$3	 # tmp1065, tmp1064, tmp1062
	subu	$17,$17,$3	 # tmp1066, D.29512, tmp1065
	addu	$17,$19,$17	 # tmp1069, tmp1978, tmp1066
	sw	$17,%gp_rel(wrk_ram)($28)	 # tmp1069, wrk_ram
	lui	$4,%hi(.LC17)	 # tmp1070,
.L320:
	jal	_printf_cdnopuxX	 #
	addiu	$4,$4,%lo(.LC17)	 #, tmp1070,

	move	$16,$0	 # i,
	lui	$17,%hi(.LC18)	 # tmp1910,
	addiu	$17,$17,%lo(.LC18)	 # tmp1911, tmp1910,
	li	$18,16			# 0x10	 # tmp1912,
	move	$4,$17	 #, tmp1911
.L321:
	jal	_printf_cdnopuxX	 #
	move	$5,$16	 #, i

	addiu	$16,$16,1	 # i, i,
	bnel	$16,$18,.L321	 #, i, tmp1912,
	move	$4,$17	 #, tmp1911

	lui	$4,%hi(.LC19)	 # tmp1073,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC19)	 #, tmp1073,

	li	$21,16			# 0x10	 # ivtmp.186,
	lui	$23,%hi(.LC20)	 # tmp1902,
	addiu	$23,$23,%lo(.LC20)	 # tmp1903, tmp1902,
	lui	$17,%hi(.LC18)	 # tmp1904,
	addiu	$17,$17,%lo(.LC18)	 # tmp1905, tmp1904,
	lui	$18,%hi(ram+65535)	 # tmp1906,
	addiu	$18,$18,%lo(ram+65535)	 # tmp1907, tmp1906,
	lui	$22,%hi(_iob+20)	 # tmp1908,
	addiu	$22,$22,%lo(_iob+20)	 # tmp1909, tmp1908,
	move	$4,$23	 #, tmp1903
.L324:
	lw	$5,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	jal	_printf_cdnopuxX	 #
	subu	$5,$5,$19	 #, wrk_ram, tmp1978

	li	$16,16			# 0x10	 # ivtmp.188,
	move	$4,$17	 #, tmp1905
.L322:
	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	jal	_printf_cdnopuxX	 #
	lbu	$5,0($2)	 #,* wrk_ram

	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	addiu	$2,$2,1	 # wrk_ram.56, wrk_ram,
	sw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram.56, wrk_ram
	sltu	$2,$18,$2	 # tmp1083, tmp1907, wrk_ram.56
	bnel	$2,$0,.L122	 #, tmp1083,,
	sw	$19,%gp_rel(wrk_ram)($28)	 # tmp1978, wrk_ram

.L122:
	addiu	$16,$16,-1	 # ivtmp.188, ivtmp.188,
	bnel	$16,$0,.L322	 #, ivtmp.188,,
	move	$4,$17	 #, tmp1905

	li	$4,9			# 0x9	 #,
	jal	fputc	 #
	move	$5,$22	 #, tmp1909

	li	$16,-16			# 0xfffffff0	 # j,
	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
.L323:
	addu	$2,$2,$16	 # tmp1090, wrk_ram, j
	lbu	$2,0($2)	 # c,
	sltu	$3,$2,32	 # tmp1091, c,
	bne	$3,$0,.L124	 #, tmp1091,,
	li	$4,46			# 0x2e	 # iftmp.57,

	srl	$4,$2,7	 # tmp1886, c,
	li	$3,46			# 0x2e	 # tmp1885,
	movz	$3,$2,$4	 #, tmp1885, c, tmp1886
	move	$4,$3	 # iftmp.57, tmp1885
.L124:
	jal	putchar	 #
	addiu	$16,$16,1	 # j, j,

	bne	$16,$0,.L323	 #, j,,
	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram

	li	$4,10			# 0xa	 #,
	jal	fputc	 #
	move	$5,$22	 #, tmp1909

	addiu	$21,$21,-1	 # ivtmp.186, ivtmp.186,
	bne	$21,$0,.L324	 #, ivtmp.186,,
	move	$4,$23	 #, tmp1903

	j	.L306
	nop
	 #
.L244:
	addiu	$4,$4,%lo(cmd.22150+1)	 # s, tmp925,
	lui	$5,%hi(_ctype)	 # tmp1940,
	addiu	$5,$5,%lo(_ctype)	 # tmp1941, tmp1940,
	addiu	$4,$4,1	 # s, s,
.L325:
	lb	$2,0($4)	 # tmp1095,* s
	addu	$2,$2,$5	 # tmp1096, tmp1095, tmp1941
	lb	$2,1($2)	 # D.29537, _ctype
	andi	$3,$2,0x88	 # tmp1098, D.29537,
	bnel	$3,$0,.L325	 #, tmp1098,,
	addiu	$4,$4,1	 # s, s,

.L106:
	andi	$2,$2,0x44	 # tmp1100, D.29537,
	beq	$2,$0,.L326	 #, tmp1100,,
	li	$16,10			# 0xa	 # ivtmp.190,

	jal	exatoi
	nop
	 #
	addu	$2,$19,$2	 # tmp1103, tmp1978,
	sw	$2,%gp_rel(wrk_ram)($28)	 # tmp1103, wrk_ram
.L326:
	lui	$17,%hi(.LC20)	 # tmp1936,
	addiu	$17,$17,%lo(.LC20)	 # tmp1937, tmp1936,
	lui	$18,%hi(ram+65535)	 # tmp1938,
	addiu	$18,$18,%lo(ram+65535)	 # tmp1939, tmp1938,
	move	$4,$17	 #, tmp1937
.L327:
	lw	$5,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	jal	_printf_cdnopuxX	 #
	subu	$5,$5,$19	 #, wrk_ram, tmp1978

	addiu	$4,$28,%gp_rel(wrk_ram)	 #,,
	lw	$5,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	jal	disass	 #
	subu	$5,$5,$19	 #, wrk_ram, tmp1978

	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	sltu	$2,$18,$2	 # tmp1111, tmp1939, wrk_ram
	bnel	$2,$0,.L128	 #, tmp1111,,
	sw	$19,%gp_rel(wrk_ram)($28)	 # tmp1978, wrk_ram

.L128:
	addiu	$16,$16,-1	 # ivtmp.190, ivtmp.190,
	bne	$16,$0,.L327	 #, ivtmp.190,,
	move	$4,$17	 #, tmp1937

	j	.L306
	nop
	 #
.L243:
	addiu	$4,$4,%lo(cmd.22150+1)	 # s, tmp927,
	lui	$5,%hi(_ctype)	 # tmp1953,
	addiu	$5,$5,%lo(_ctype)	 # tmp1954, tmp1953,
	addiu	$4,$4,1	 # s, s,
.L328:
	lb	$2,0($4)	 # tmp1117,* s
	addu	$2,$2,$5	 # tmp1118, tmp1117, tmp1954
	lb	$2,1($2)	 # D.29567, _ctype
	andi	$3,$2,0x88	 # tmp1120, D.29567,
	bnel	$3,$0,.L328	 #, tmp1120,,
	addiu	$4,$4,1	 # s, s,

.L104:
	andi	$2,$2,0x44	 # tmp1122, D.29567,
	beq	$2,$0,.L329	 #, tmp1122,,
	lui	$18,%hi(.LC21)	 # tmp1944,

	jal	exatoi
	nop
	 #
	addu	$2,$19,$2	 # tmp1125, tmp1978,
	sw	$2,%gp_rel(wrk_ram)($28)	 # tmp1125, wrk_ram
.L329:
	addiu	$18,$18,%lo(.LC21)	 # tmp1945, tmp1944,
	lui	$17,%hi(nv.22240)	 # tmp1946,
	lui	$21,%hi(_iob)	 # tmp1947,
	addiu	$21,$21,%lo(_iob)	 # tmp1948, tmp1947,
	lui	$23,%hi(_ctype)	 # tmp1949,
	addiu	$23,$23,%lo(_ctype)	 # tmp1950, tmp1949,
	lui	$22,%hi(ram+65535)	 # tmp1951,
	addiu	$22,$22,%lo(ram+65535)	 # tmp1952, tmp1951,
.L305:
	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram.65, wrk_ram
.L308:
	move	$4,$18	 #, tmp1945
	subu	$5,$2,$19	 #, wrk_ram.65, tmp1978
	jal	_printf_cdnopuxX	 #
	lbu	$6,0($2)	 #,* wrk_ram.65

	addiu	$4,$17,%lo(nv.22240)	 #, tmp1946,
	li	$5,80			# 0x50	 #,
	jal	fgets	 #
	move	$6,$21	 #, tmp1948

	lb	$2,%lo(nv.22240)($17)	 # D.29551, nv
	li	$3,10			# 0xa	 # tmp1134,
	bne	$2,$3,.L132	 #, D.29551, tmp1134,
	addu	$2,$2,$23	 # tmp1142, D.29551, tmp1950

	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram, wrk_ram
	addiu	$2,$2,1	 # wrk_ram.68, wrk_ram,
	sw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram.68, wrk_ram
	sltu	$2,$22,$2	 # tmp1136, tmp1952, wrk_ram.68
	bnel	$2,$0,.L305	 #, tmp1136,,
	sw	$19,%gp_rel(wrk_ram)($28)	 # tmp1978, wrk_ram

	j	.L308	 #
	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram.65, wrk_ram

.L132:
	lbu	$2,1($2)	 # tmp1144, _ctype
	andi	$2,$2,0x44	 # tmp1145, tmp1144,
	beq	$2,$0,.L306	 #, tmp1145,,
	lw	$16,%gp_rel(wrk_ram)($28)	 # wrk_ram.65, wrk_ram

	jal	exatoi	 #
	addiu	$4,$17,%lo(nv.22240)	 #, tmp1946,

	sb	$2,0($16)	 #,* wrk_ram.65
	addiu	$16,$16,1	 # wrk_ram.68, wrk_ram.65,
	sw	$16,%gp_rel(wrk_ram)($28)	 # wrk_ram.68, wrk_ram
	sltu	$16,$22,$16	 # tmp1147, tmp1952, wrk_ram.68
	bnel	$16,$0,.L305	 #, tmp1147,,
	sw	$19,%gp_rel(wrk_ram)($28)	 # tmp1978, wrk_ram

	j	.L308	 #
	lw	$2,%gp_rel(wrk_ram)($28)	 # wrk_ram.65, wrk_ram

.L246:
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp929,
	lui	$3,%hi(_ctype)	 # tmp1920,
	addiu	$3,$3,%lo(_ctype)	 # tmp1921, tmp1920,
	addiu	$16,$16,1	 # s, s,
.L330:
	lb	$2,0($16)	 # tmp1153,* s
	addu	$2,$2,$3	 # tmp1154, tmp1153, tmp1921
	lb	$2,1($2)	 # tmp1156, _ctype
	andi	$2,$2,0x88	 # tmp1157, tmp1156,
	bnel	$2,$0,.L330	 #, tmp1157,,
	addiu	$16,$16,1	 # s, s,

.L110:
	jal	exatoi	 #
	move	$4,$16	 #, s

	move	$18,$2	 # D.29577,
	lb	$2,0($16)	 # D.29583,* s
	li	$3,44			# 0x2c	 # tmp1158,
	beq	$2,$3,.L331	 #, D.29583, tmp1158,
	addiu	$17,$16,1	 # s, s,

	beql	$2,$0,.L135	 #, D.29583,,
	lui	$4,%hi(.LC136)	 # tmp1867,

	addiu	$16,$16,1	 # s, s,
.L332:
	lb	$2,0($16)	 # D.29583,* s
	beq	$2,$3,.L134	 #, D.29583, tmp1919,
	addiu	$17,$16,1	 # s, s,

	bnel	$2,$0,.L332	 #, D.29583,,
	addiu	$16,$16,1	 # s, s,

	j	.L309	 #
	lui	$4,%hi(.LC136)	 # tmp1867,

.L134:
.L331:
	jal	exatoi	 #
	move	$4,$17	 #, s

	move	$21,$2	 # i,
	lb	$2,1($16)	 # D.29583,
	li	$3,44			# 0x2c	 # tmp1160,
	beql	$2,$3,.L333	 #, D.29583, tmp1160,
	addu	$16,$19,$18	 # p, tmp1978, D.29577

	beql	$2,$0,.L138	 #, D.29583,,
	lui	$4,%hi(.LC137)	 # tmp1868,

	addiu	$17,$17,1	 # s, s,
.L334:
	lb	$2,0($17)	 # D.29583,* s
	beq	$2,$3,.L137	 #, D.29583, tmp1918,
	addu	$16,$19,$18	 # p, tmp1978, D.29577

	bnel	$2,$0,.L334	 #, D.29583,,
	addiu	$17,$17,1	 # s, s,

	j	.L310	 #
	lui	$4,%hi(.LC137)	 # tmp1868,

.L137:
.L333:
	jal	exatoi	 #
	addiu	$4,$17,1	 #, s,

	andi	$2,$2,0x00ff	 # val,
	lui	$4,%hi(ram+65535)	 # tmp1915,
	j	.L140	 #
	addiu	$4,$4,%lo(ram+65535)	 # tmp1916, tmp1915,

.L142:
	addiu	$16,$16,1	 # p, p,
	sltu	$3,$4,$16	 # tmp1165, tmp1916, p
	movn	$16,$19,$3	 #, p, tmp1978, tmp1165
	addiu	$21,$21,-1	 # ivtmp.234, ivtmp.234,
.L140:
	bnel	$21,$0,.L142	 #, ivtmp.234,,
	sb	$2,0($16)	 # val,* p

	j	.L306
	nop
	 #
.L240:
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp932,
	lui	$3,%hi(_ctype)	 # tmp1965,
	addiu	$3,$3,%lo(_ctype)	 # tmp1966, tmp1965,
	addiu	$16,$16,1	 # s, s,
.L335:
	lb	$2,0($16)	 # tmp1169,* s
	addu	$2,$2,$3	 # tmp1170, tmp1169, tmp1966
	lb	$2,1($2)	 # tmp1172, _ctype
	andi	$2,$2,0x88	 # tmp1173, tmp1172,
	bnel	$2,$0,.L335	 #, tmp1173,,
	addiu	$16,$16,1	 # s, s,

.L98:
	jal	exatoi	 #
	move	$4,$16	 #, s

	move	$21,$2	 # D.29592,
	lb	$2,0($16)	 # D.29598,* s
	li	$3,44			# 0x2c	 # tmp1174,
	beq	$2,$3,.L336	 #, D.29598, tmp1174,
	addiu	$18,$16,1	 # s, s,

	beql	$2,$0,.L144	 #, D.29598,,
	lui	$4,%hi(.LC138)	 # tmp1869,

	addiu	$16,$16,1	 # s, s,
.L337:
	lb	$2,0($16)	 # D.29598,* s
	beq	$2,$3,.L143	 #, D.29598, tmp1964,
	addiu	$18,$16,1	 # s, s,

	bnel	$2,$0,.L337	 #, D.29598,,
	addiu	$16,$16,1	 # s, s,

	j	.L311	 #
	lui	$4,%hi(.LC138)	 # tmp1869,

.L143:
.L336:
	jal	exatoi	 #
	move	$4,$18	 #, s

	lb	$3,1($16)	 # D.29598,
	li	$4,44			# 0x2c	 # tmp1176,
	beql	$3,$4,.L338	 #, D.29598, tmp1176,
	addu	$16,$19,$21	 # p1, tmp1978, D.29592

	beql	$3,$0,.L147	 #, D.29598,,
	lui	$4,%hi(.LC136)	 # tmp1870,

	addiu	$18,$18,1	 # s, s,
.L339:
	lb	$3,0($18)	 # D.29598,* s
	beq	$3,$4,.L146	 #, D.29598, tmp1963,
	addu	$16,$19,$21	 # p1, tmp1978, D.29592

	bnel	$3,$0,.L339	 #, D.29598,,
	addiu	$18,$18,1	 # s, s,

	j	.L312	 #
	lui	$4,%hi(.LC136)	 # tmp1870,

.L146:
.L338:
	addu	$17,$19,$2	 # p2, tmp1978, D.29590
	jal	exatoi	 #
	addiu	$4,$18,1	 #, s,

	lui	$3,%hi(ram+65535)	 # tmp1960,
	j	.L149	 #
	addiu	$3,$3,%lo(ram+65535)	 # tmp1961, tmp1960,

.L152:
	sb	$4,0($17)	 # tmp1183,* p2
	addiu	$17,$17,1	 # p2, p2,
	addiu	$16,$16,1	 # p1, p1,
	sltu	$4,$3,$16	 # tmp1184, tmp1961, p1
	movn	$16,$19,$4	 #, p1, tmp1978, tmp1184
	sltu	$4,$3,$17	 # tmp1187, tmp1961, p2
	movn	$17,$19,$4	 #, p2, tmp1978, tmp1187
	addiu	$2,$2,-1	 # ivtmp.279, ivtmp.279,
.L149:
	bnel	$2,$0,.L152	 #, ivtmp.279,,
	lbu	$4,0($16)	 #,* p1

	j	.L306
	nop
	 #
.L239:
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp936,
	lui	$4,%hi(_ctype)	 # tmp1967,
	addiu	$4,$4,%lo(_ctype)	 # tmp1968, tmp1967,
	addiu	$16,$16,1	 # s, s,
.L340:
	lb	$2,0($16)	 # D.29812,* s
	addu	$3,$2,$4	 # tmp1191, D.29812, tmp1968
	lb	$3,1($3)	 # tmp1193, _ctype
	andi	$3,$3,0x88	 # tmp1194, tmp1193,
	bnel	$3,$0,.L340	 #, tmp1194,,
	addiu	$16,$16,1	 # s, s,

.L96:
	bne	$2,$0,.L153	 #, D.29812,,
	move	$4,$16	 #, s

	jal	print_head
	nop
	 #
	jal	print_reg
	nop
	 #
	j	.L306
	nop
	 #
.L153:
	lui	$5,%hi(.LC22)	 # tmp1195,
	addiu	$5,$5,%lo(.LC22)	 #, tmp1195,
	jal	strncmp	 #
	li	$6,3			# 0x3	 #,

	bnel	$2,$0,.L154	 #,,,
	move	$4,$16	 #, s

	lbu	$5,%gp_rel(B_)($28)	 # B_, B_
	sll	$5,$5,8	 # tmp1198, B_,
	lbu	$2,%gp_rel(C_)($28)	 # C_, C_
	lui	$4,%hi(.LC23)	 # tmp1201,
	addiu	$4,$4,%lo(.LC23)	 #, tmp1201,
	jal	_printf_cdnopuxX	 #
	addu	$5,$5,$2	 #, tmp1198, C_

	lui	$16,%hi(nv.22298)	 # tmp1202,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1202,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1203,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1203,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1202,

	ext	$2,$2,8,8	 # tmp1210,,,
	sb	$2,%gp_rel(B_)($28)	 # tmp1210, B_
	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1202,

	j	.L155	 #
	sb	$2,%gp_rel(C_)($28)	 #, C_

.L154:
	lui	$5,%hi(.LC24)	 # tmp1212,
	addiu	$5,$5,%lo(.LC24)	 #, tmp1212,
	jal	strncmp	 #
	li	$6,3			# 0x3	 #,

	bnel	$2,$0,.L156	 #,,,
	move	$4,$16	 #, s

	lbu	$5,%gp_rel(D_)($28)	 # D_, D_
	sll	$5,$5,8	 # tmp1215, D_,
	lbu	$2,%gp_rel(E_)($28)	 # E_, E_
	lui	$4,%hi(.LC25)	 # tmp1218,
	addiu	$4,$4,%lo(.LC25)	 #, tmp1218,
	jal	_printf_cdnopuxX	 #
	addu	$5,$5,$2	 #, tmp1215, E_

	lui	$16,%hi(nv.22298)	 # tmp1219,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1219,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1220,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1220,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1219,

	ext	$2,$2,8,8	 # tmp1227,,,
	sb	$2,%gp_rel(D_)($28)	 # tmp1227, D_
	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1219,

	j	.L155	 #
	sb	$2,%gp_rel(E_)($28)	 #, E_

.L156:
	lui	$5,%hi(.LC26)	 # tmp1229,
	addiu	$5,$5,%lo(.LC26)	 #, tmp1229,
	jal	strncmp	 #
	li	$6,3			# 0x3	 #,

	bnel	$2,$0,.L157	 #,,,
	move	$4,$16	 #, s

	lbu	$5,%gp_rel(H_)($28)	 # H_, H_
	sll	$5,$5,8	 # tmp1232, H_,
	lbu	$2,%gp_rel(L_)($28)	 # L_, L_
	lui	$4,%hi(.LC27)	 # tmp1235,
	addiu	$4,$4,%lo(.LC27)	 #, tmp1235,
	jal	_printf_cdnopuxX	 #
	addu	$5,$5,$2	 #, tmp1232, L_

	lui	$16,%hi(nv.22298)	 # tmp1236,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1236,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1237,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1237,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1236,

	ext	$2,$2,8,8	 # tmp1244,,,
	sb	$2,%gp_rel(H_)($28)	 # tmp1244, H_
	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1236,

	j	.L155	 #
	sb	$2,%gp_rel(L_)($28)	 #, L_

.L157:
	lui	$5,%hi(.LC28)	 # tmp1246,
	addiu	$5,$5,%lo(.LC28)	 #, tmp1246,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L158	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC29)	 # tmp1252,
	addiu	$4,$4,%lo(.LC29)	 #, tmp1252,
	lw	$5,%gp_rel(PC)($28)	 # PC, PC
	jal	_printf_cdnopuxX	 #
	subu	$5,$5,$19	 #, PC, tmp1978

	lui	$16,%hi(nv.22298)	 # tmp1253,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1253,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1254,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1254,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1253,

	andi	$2,$2,0xffff	 # tmp1256,
	addu	$2,$19,$2	 # tmp1259, tmp1978, tmp1256
	j	.L155	 #
	sw	$2,%gp_rel(PC)($28)	 # tmp1259, PC

.L158:
	lui	$5,%hi(.LC30)	 # tmp1260,
	addiu	$5,$5,%lo(.LC30)	 #, tmp1260,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L159	 #,,,
	move	$4,$16	 #, s

	lbu	$5,%gp_rel(B)($28)	 # B, B
	sll	$5,$5,8	 # tmp1263, B,
	lbu	$2,%gp_rel(C)($28)	 # C, C
	lui	$4,%hi(.LC31)	 # tmp1266,
	addiu	$4,$4,%lo(.LC31)	 #, tmp1266,
	jal	_printf_cdnopuxX	 #
	addu	$5,$5,$2	 #, tmp1263, C

	lui	$16,%hi(nv.22298)	 # tmp1267,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1267,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1268,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1268,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1267,

	ext	$2,$2,8,8	 # tmp1275,,,
	sb	$2,%gp_rel(B)($28)	 # tmp1275, B
	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1267,

	j	.L155	 #
	sb	$2,%gp_rel(C)($28)	 #, C

.L159:
	lui	$5,%hi(.LC32)	 # tmp1277,
	addiu	$5,$5,%lo(.LC32)	 #, tmp1277,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L160	 #,,,
	move	$4,$16	 #, s

	lbu	$5,%gp_rel(D)($28)	 # D, D
	sll	$5,$5,8	 # tmp1280, D,
	lbu	$2,%gp_rel(E)($28)	 # E, E
	lui	$4,%hi(.LC33)	 # tmp1283,
	addiu	$4,$4,%lo(.LC33)	 #, tmp1283,
	jal	_printf_cdnopuxX	 #
	addu	$5,$5,$2	 #, tmp1280, E

	lui	$16,%hi(nv.22298)	 # tmp1284,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1284,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1285,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1285,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1284,

	ext	$2,$2,8,8	 # tmp1292,,,
	sb	$2,%gp_rel(D)($28)	 # tmp1292, D
	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1284,

	j	.L155	 #
	sb	$2,%gp_rel(E)($28)	 #, E

.L160:
	lui	$5,%hi(.LC34)	 # tmp1294,
	addiu	$5,$5,%lo(.LC34)	 #, tmp1294,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L161	 #,,,
	move	$4,$16	 #, s

	lbu	$5,%gp_rel(H)($28)	 # H, H
	sll	$5,$5,8	 # tmp1297, H,
	lbu	$2,%gp_rel(L)($28)	 # L, L
	lui	$4,%hi(.LC35)	 # tmp1300,
	addiu	$4,$4,%lo(.LC35)	 #, tmp1300,
	jal	_printf_cdnopuxX	 #
	addu	$5,$5,$2	 #, tmp1297, L

	lui	$16,%hi(nv.22298)	 # tmp1301,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1301,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1302,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1302,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1301,

	ext	$2,$2,8,8	 # tmp1309,,,
	sb	$2,%gp_rel(H)($28)	 # tmp1309, H
	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1301,

	j	.L155	 #
	sb	$2,%gp_rel(L)($28)	 #, L

.L161:
	lui	$5,%hi(.LC36)	 # tmp1311,
	addiu	$5,$5,%lo(.LC36)	 #, tmp1311,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L162	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC37)	 # tmp1314,
	addiu	$4,$4,%lo(.LC37)	 #, tmp1314,
	jal	_printf_cdnopuxX	 #
	lhu	$5,%gp_rel(IX)($28)	 #, IX

	lui	$16,%hi(nv.22298)	 # tmp1315,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1315,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1316,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1316,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1315,

	j	.L155	 #
	sh	$2,%gp_rel(IX)($28)	 #, IX

.L162:
	lui	$5,%hi(.LC38)	 # tmp1318,
	addiu	$5,$5,%lo(.LC38)	 #, tmp1318,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L163	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC39)	 # tmp1321,
	addiu	$4,$4,%lo(.LC39)	 #, tmp1321,
	jal	_printf_cdnopuxX	 #
	lhu	$5,%gp_rel(IY)($28)	 #, IY

	lui	$16,%hi(nv.22298)	 # tmp1322,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1322,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1323,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1323,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1322,

	j	.L155	 #
	sh	$2,%gp_rel(IY)($28)	 #, IY

.L163:
	lui	$5,%hi(.LC40)	 # tmp1325,
	addiu	$5,$5,%lo(.LC40)	 #, tmp1325,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L164	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC41)	 # tmp1331,
	addiu	$4,$4,%lo(.LC41)	 #, tmp1331,
	lw	$5,%gp_rel(STACK)($28)	 # STACK, STACK
	jal	_printf_cdnopuxX	 #
	subu	$5,$5,$19	 #, STACK, tmp1978

	lui	$16,%hi(nv.22298)	 # tmp1332,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1332,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1333,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1333,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1332,

	andi	$2,$2,0xffff	 # tmp1335,
	addu	$2,$19,$2	 # tmp1338, tmp1978, tmp1335
	j	.L155	 #
	sw	$2,%gp_rel(STACK)($28)	 # tmp1338, STACK

.L164:
	lui	$5,%hi(.LC42)	 # tmp1339,
	addiu	$5,$5,%lo(.LC42)	 #, tmp1339,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L165	 #,,,
	move	$4,$16	 #, s

	lw	$5,%gp_rel(F)($28)	 # F, F
	andi	$5,$5,0x80	 # tmp1341, F,
	lui	$4,%hi(.LC43)	 # tmp1343,
	addiu	$4,$4,%lo(.LC43)	 #, tmp1343,
	li	$2,49			# 0x31	 # tmp1873,
	li	$3,48			# 0x30	 # tmp1872,
	movz	$2,$3,$5	 #, tmp1873, tmp1872, tmp1341
	jal	_printf_cdnopuxX	 #
	move	$5,$2	 #, tmp1873

	lui	$16,%hi(nv.22298)	 # tmp1344,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1344,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1345,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1345,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1344,

	beq	$2,$0,.L167	 #,,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	j	.L168	 #
	ori	$2,$2,0x80	 # iftmp.106, F,

.L167:
	li	$3,-129			# 0xffffff7f	 # tmp1348,
	and	$2,$3,$2	 # iftmp.106, tmp1348, F
.L168:
	j	.L155	 #
	sw	$2,%gp_rel(F)($28)	 # iftmp.106, F

.L165:
	lui	$5,%hi(.LC44)	 # tmp1350,
	addiu	$5,$5,%lo(.LC44)	 #, tmp1350,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L169	 #,,,
	move	$4,$16	 #, s

	lw	$5,%gp_rel(F)($28)	 # F, F
	andi	$5,$5,0x40	 # tmp1352, F,
	lui	$4,%hi(.LC45)	 # tmp1354,
	addiu	$4,$4,%lo(.LC45)	 #, tmp1354,
	li	$2,49			# 0x31	 # tmp1875,
	li	$3,48			# 0x30	 # tmp1874,
	movz	$2,$3,$5	 #, tmp1875, tmp1874, tmp1352
	jal	_printf_cdnopuxX	 #
	move	$5,$2	 #, tmp1875

	lui	$16,%hi(nv.22298)	 # tmp1355,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1355,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1356,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1356,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1355,

	beq	$2,$0,.L171	 #,,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	j	.L172	 #
	ori	$2,$2,0x40	 # iftmp.108, F,

.L171:
	li	$3,-65			# 0xffffffbf	 # tmp1359,
	and	$2,$3,$2	 # iftmp.108, tmp1359, F
.L172:
	j	.L155	 #
	sw	$2,%gp_rel(F)($28)	 # iftmp.108, F

.L169:
	lui	$5,%hi(.LC46)	 # tmp1361,
	addiu	$5,$5,%lo(.LC46)	 #, tmp1361,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L173	 #,,,
	move	$4,$16	 #, s

	lw	$5,%gp_rel(F)($28)	 # F, F
	andi	$5,$5,0x10	 # tmp1363, F,
	lui	$4,%hi(.LC47)	 # tmp1365,
	addiu	$4,$4,%lo(.LC47)	 #, tmp1365,
	li	$2,49			# 0x31	 # tmp1877,
	li	$3,48			# 0x30	 # tmp1876,
	movz	$2,$3,$5	 #, tmp1877, tmp1876, tmp1363
	jal	_printf_cdnopuxX	 #
	move	$5,$2	 #, tmp1877

	lui	$16,%hi(nv.22298)	 # tmp1366,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1366,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1367,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1367,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1366,

	beq	$2,$0,.L175	 #,,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	j	.L176	 #
	ori	$2,$2,0x10	 # iftmp.110, F,

.L175:
	li	$3,-17			# 0xffffffef	 # tmp1370,
	and	$2,$3,$2	 # iftmp.110, tmp1370, F
.L176:
	j	.L155	 #
	sw	$2,%gp_rel(F)($28)	 # iftmp.110, F

.L173:
	lui	$5,%hi(.LC48)	 # tmp1372,
	addiu	$5,$5,%lo(.LC48)	 #, tmp1372,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L177	 #,,,
	move	$4,$16	 #, s

	lw	$5,%gp_rel(F)($28)	 # F, F
	andi	$5,$5,0x4	 # tmp1374, F,
	lui	$4,%hi(.LC49)	 # tmp1376,
	addiu	$4,$4,%lo(.LC49)	 #, tmp1376,
	li	$2,49			# 0x31	 # tmp1879,
	li	$3,48			# 0x30	 # tmp1878,
	movz	$2,$3,$5	 #, tmp1879, tmp1878, tmp1374
	jal	_printf_cdnopuxX	 #
	move	$5,$2	 #, tmp1879

	lui	$16,%hi(nv.22298)	 # tmp1377,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1377,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1378,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1378,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1377,

	beq	$2,$0,.L179	 #,,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	j	.L180	 #
	ori	$2,$2,0x4	 # iftmp.112, F,

.L179:
	li	$3,-5			# 0xfffffffb	 # tmp1381,
	and	$2,$3,$2	 # iftmp.112, tmp1381, F
.L180:
	j	.L155	 #
	sw	$2,%gp_rel(F)($28)	 # iftmp.112, F

.L177:
	lui	$5,%hi(.LC50)	 # tmp1383,
	addiu	$5,$5,%lo(.LC50)	 #, tmp1383,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L181	 #,,,
	move	$4,$16	 #, s

	lw	$5,%gp_rel(F)($28)	 # F, F
	andi	$5,$5,0x2	 # tmp1385, F,
	lui	$4,%hi(.LC51)	 # tmp1387,
	addiu	$4,$4,%lo(.LC51)	 #, tmp1387,
	li	$2,49			# 0x31	 # tmp1881,
	li	$3,48			# 0x30	 # tmp1880,
	movz	$2,$3,$5	 #, tmp1881, tmp1880, tmp1385
	jal	_printf_cdnopuxX	 #
	move	$5,$2	 #, tmp1881

	lui	$16,%hi(nv.22298)	 # tmp1388,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1388,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1389,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1389,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1388,

	beq	$2,$0,.L183	 #,,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	j	.L184	 #
	ori	$2,$2,0x2	 # iftmp.114, F,

.L183:
	li	$3,-3			# 0xfffffffd	 # tmp1392,
	and	$2,$3,$2	 # iftmp.114, tmp1392, F
.L184:
	j	.L155	 #
	sw	$2,%gp_rel(F)($28)	 # iftmp.114, F

.L181:
	lui	$5,%hi(.LC52)	 # tmp1394,
	addiu	$5,$5,%lo(.LC52)	 #, tmp1394,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L185	 #,,,
	move	$4,$16	 #, s

	lw	$5,%gp_rel(F)($28)	 # F, F
	andi	$5,$5,0x1	 # tmp1396, F,
	lui	$4,%hi(.LC53)	 # tmp1398,
	addiu	$4,$4,%lo(.LC53)	 #, tmp1398,
	li	$2,49			# 0x31	 # tmp1883,
	li	$3,48			# 0x30	 # tmp1882,
	movz	$2,$3,$5	 #, tmp1883, tmp1882, tmp1396
	jal	_printf_cdnopuxX	 #
	move	$5,$2	 #, tmp1883

	lui	$16,%hi(nv.22298)	 # tmp1399,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1399,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1400,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1400,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1399,

	beq	$2,$0,.L187	 #,,,
	lw	$2,%gp_rel(F)($28)	 # F, F

	j	.L188	 #
	ori	$2,$2,0x1	 # iftmp.116, F,

.L187:
	li	$3,-2			# 0xfffffffe	 # tmp1403,
	and	$2,$3,$2	 # iftmp.116, tmp1403, F
.L188:
	j	.L155	 #
	sw	$2,%gp_rel(F)($28)	 # iftmp.116, F

.L185:
	lui	$5,%hi(.LC54)	 # tmp1405,
	addiu	$5,$5,%lo(.LC54)	 #, tmp1405,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L189	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC55)	 # tmp1408,
	addiu	$4,$4,%lo(.LC55)	 #, tmp1408,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(A_)($28)	 #, A_

	lui	$16,%hi(nv.22298)	 # tmp1409,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1409,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1410,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1410,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1409,

	j	.L155	 #
	sb	$2,%gp_rel(A_)($28)	 #, A_

.L189:
	lui	$5,%hi(.LC56)	 # tmp1412,
	addiu	$5,$5,%lo(.LC56)	 #, tmp1412,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L190	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC57)	 # tmp1415,
	addiu	$4,$4,%lo(.LC57)	 #, tmp1415,
	jal	_printf_cdnopuxX	 #
	lw	$5,%gp_rel(F_)($28)	 #, F_

	lui	$16,%hi(nv.22298)	 # tmp1416,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1416,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1417,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1417,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1416,

	andi	$2,$2,0x00ff	 # tmp1419,
	j	.L155	 #
	sw	$2,%gp_rel(F_)($28)	 # tmp1419, F_

.L190:
	lui	$5,%hi(.LC58)	 # tmp1420,
	addiu	$5,$5,%lo(.LC58)	 #, tmp1420,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L191	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC59)	 # tmp1423,
	addiu	$4,$4,%lo(.LC59)	 #, tmp1423,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(B_)($28)	 #, B_

	lui	$16,%hi(nv.22298)	 # tmp1424,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1424,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1425,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1425,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1424,

	j	.L155	 #
	sb	$2,%gp_rel(B_)($28)	 #, B_

.L191:
	lui	$5,%hi(.LC60)	 # tmp1427,
	addiu	$5,$5,%lo(.LC60)	 #, tmp1427,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L192	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC61)	 # tmp1430,
	addiu	$4,$4,%lo(.LC61)	 #, tmp1430,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(C_)($28)	 #, C_

	lui	$16,%hi(nv.22298)	 # tmp1431,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1431,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1432,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1432,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1431,

	j	.L155	 #
	sb	$2,%gp_rel(C_)($28)	 #, C_

.L192:
	lui	$5,%hi(.LC62)	 # tmp1434,
	addiu	$5,$5,%lo(.LC62)	 #, tmp1434,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L193	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC63)	 # tmp1437,
	addiu	$4,$4,%lo(.LC63)	 #, tmp1437,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(D_)($28)	 #, D_

	lui	$16,%hi(nv.22298)	 # tmp1438,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1438,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1439,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1439,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1438,

	j	.L155	 #
	sb	$2,%gp_rel(D_)($28)	 #, D_

.L193:
	lui	$5,%hi(.LC64)	 # tmp1441,
	addiu	$5,$5,%lo(.LC64)	 #, tmp1441,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L194	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC65)	 # tmp1444,
	addiu	$4,$4,%lo(.LC65)	 #, tmp1444,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(E_)($28)	 #, E_

	lui	$16,%hi(nv.22298)	 # tmp1445,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1445,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1446,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1446,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1445,

	j	.L155	 #
	sb	$2,%gp_rel(E_)($28)	 #, E_

.L194:
	lui	$5,%hi(.LC66)	 # tmp1448,
	addiu	$5,$5,%lo(.LC66)	 #, tmp1448,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L195	 #,,,
	move	$4,$16	 #, s

	lui	$4,%hi(.LC67)	 # tmp1451,
	addiu	$4,$4,%lo(.LC67)	 #, tmp1451,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(H_)($28)	 #, H_

	lui	$16,%hi(nv.22298)	 # tmp1452,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1452,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1453,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1453,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1452,

	j	.L155	 #
	sb	$2,%gp_rel(H_)($28)	 #, H_

.L195:
	lui	$5,%hi(.LC68)	 # tmp1455,
	addiu	$5,$5,%lo(.LC68)	 #, tmp1455,
	jal	strncmp	 #
	li	$6,2			# 0x2	 #,

	bnel	$2,$0,.L196	 #,,,
	lbu	$2,0($16)	 # D.29640,* s

	lui	$4,%hi(.LC69)	 # tmp1458,
	addiu	$4,$4,%lo(.LC69)	 #, tmp1458,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(L_)($28)	 #, L_

	lui	$16,%hi(nv.22298)	 # tmp1459,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1459,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1460,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1460,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1459,

	j	.L155	 #
	sb	$2,%gp_rel(L_)($28)	 #, L_

.L196:
	lui	$3,%hi(.LC70)	 # tmp1462,
	lbu	$3,%lo(.LC70)($3)	 # tmp1463,
	bne	$3,$2,.L197	 #, tmp1463, D.29640,
	lui	$3,%hi(.LC72)	 # tmp1469,

	lui	$4,%hi(.LC71)	 # tmp1465,
	addiu	$4,$4,%lo(.LC71)	 #, tmp1465,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(I)($28)	 #, I

	lui	$16,%hi(nv.22298)	 # tmp1466,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1466,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1467,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1467,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1466,

	j	.L155	 #
	sb	$2,%gp_rel(I)($28)	 #, I

.L197:
	lbu	$3,%lo(.LC72)($3)	 # tmp1470,
	bne	$3,$2,.L198	 #, tmp1470, D.29640,
	lui	$3,%hi(.LC74)	 # tmp1476,

	lui	$4,%hi(.LC73)	 # tmp1472,
	addiu	$4,$4,%lo(.LC73)	 #, tmp1472,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(A)($28)	 #, A

	lui	$16,%hi(nv.22298)	 # tmp1473,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1473,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1474,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1474,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1473,

	j	.L155	 #
	sb	$2,%gp_rel(A)($28)	 #, A

.L198:
	lbu	$3,%lo(.LC74)($3)	 # tmp1477,
	bne	$3,$2,.L199	 #, tmp1477, D.29640,
	lui	$3,%hi(.LC76)	 # tmp1484,

	lui	$4,%hi(.LC75)	 # tmp1479,
	addiu	$4,$4,%lo(.LC75)	 #, tmp1479,
	jal	_printf_cdnopuxX	 #
	lw	$5,%gp_rel(F)($28)	 #, F

	lui	$16,%hi(nv.22298)	 # tmp1480,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1480,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1481,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1481,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1480,

	andi	$2,$2,0x00ff	 # tmp1483,
	j	.L155	 #
	sw	$2,%gp_rel(F)($28)	 # tmp1483, F

.L199:
	lbu	$3,%lo(.LC76)($3)	 # tmp1485,
	bne	$3,$2,.L200	 #, tmp1485, D.29640,
	lui	$3,%hi(.LC78)	 # tmp1491,

	lui	$4,%hi(.LC77)	 # tmp1487,
	addiu	$4,$4,%lo(.LC77)	 #, tmp1487,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(B)($28)	 #, B

	lui	$16,%hi(nv.22298)	 # tmp1488,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1488,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1489,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1489,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1488,

	j	.L155	 #
	sb	$2,%gp_rel(B)($28)	 #, B

.L200:
	lbu	$3,%lo(.LC78)($3)	 # tmp1492,
	bne	$3,$2,.L201	 #, tmp1492, D.29640,
	lui	$3,%hi(.LC80)	 # tmp1498,

	lui	$4,%hi(.LC79)	 # tmp1494,
	addiu	$4,$4,%lo(.LC79)	 #, tmp1494,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(C)($28)	 #, C

	lui	$16,%hi(nv.22298)	 # tmp1495,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1495,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1496,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1496,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1495,

	j	.L155	 #
	sb	$2,%gp_rel(C)($28)	 #, C

.L201:
	lbu	$3,%lo(.LC80)($3)	 # tmp1499,
	bne	$3,$2,.L202	 #, tmp1499, D.29640,
	lui	$3,%hi(.LC82)	 # tmp1505,

	lui	$4,%hi(.LC81)	 # tmp1501,
	addiu	$4,$4,%lo(.LC81)	 #, tmp1501,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(D)($28)	 #, D

	lui	$16,%hi(nv.22298)	 # tmp1502,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1502,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1503,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1503,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1502,

	j	.L155	 #
	sb	$2,%gp_rel(D)($28)	 #, D

.L202:
	lbu	$3,%lo(.LC82)($3)	 # tmp1506,
	bne	$3,$2,.L203	 #, tmp1506, D.29640,
	lui	$3,%hi(.LC84)	 # tmp1512,

	lui	$4,%hi(.LC83)	 # tmp1508,
	addiu	$4,$4,%lo(.LC83)	 #, tmp1508,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(E)($28)	 #, E

	lui	$16,%hi(nv.22298)	 # tmp1509,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1509,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1510,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1510,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1509,

	j	.L155	 #
	sb	$2,%gp_rel(E)($28)	 #, E

.L203:
	lbu	$3,%lo(.LC84)($3)	 # tmp1513,
	bne	$3,$2,.L204	 #, tmp1513, D.29640,
	lui	$3,%hi(.LC86)	 # tmp1519,

	lui	$4,%hi(.LC85)	 # tmp1515,
	addiu	$4,$4,%lo(.LC85)	 #, tmp1515,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(H)($28)	 #, H

	lui	$16,%hi(nv.22298)	 # tmp1516,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1516,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1517,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1517,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1516,

	j	.L155	 #
	sb	$2,%gp_rel(H)($28)	 #, H

.L204:
	lbu	$3,%lo(.LC86)($3)	 # tmp1520,
	bnel	$3,$2,.L205	 #, tmp1520, D.29640,
	lui	$4,%hi(.LC88)	 # tmp1526,

	lui	$4,%hi(.LC87)	 # tmp1522,
	addiu	$4,$4,%lo(.LC87)	 #, tmp1522,
	jal	_printf_cdnopuxX	 #
	lbu	$5,%gp_rel(L)($28)	 #, L

	lui	$16,%hi(nv.22298)	 # tmp1523,
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1523,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1524,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1524,

	jal	exatoi	 #
	addiu	$4,$16,%lo(nv.22298)	 #, tmp1523,

	j	.L155	 #
	sb	$2,%gp_rel(L)($28)	 #, L

.L205:
	addiu	$4,$4,%lo(.LC88)	 #, tmp1526,
	lui	$5,%hi(nv.22298)	 # tmp1527,
	jal	_printf_cdnopuxX	 #
	addiu	$5,$5,%lo(nv.22298)	 #, tmp1527,

.L155:
	jal	print_head
	nop
	 #
	jal	print_reg
	nop
	 #
	j	.L306
	nop
	 #
.L242:
	addiu	$4,$4,%lo(cmd.22150+1)	 # s, tmp938,
	lui	$3,%hi(_ctype)	 # tmp1955,
	addiu	$3,$3,%lo(_ctype)	 # tmp1956, tmp1955,
	addiu	$4,$4,1	 # s, s,
.L341:
	lb	$2,0($4)	 # tmp1529,* s
	addu	$2,$2,$3	 # tmp1530, tmp1529, tmp1956
	lb	$2,1($2)	 # tmp1532, _ctype
	andi	$2,$2,0x88	 # tmp1533, tmp1532,
	bnel	$2,$0,.L341	 #, tmp1533,,
	addiu	$4,$4,1	 # s, s,

.L102:
	jal	exatoi	 #
	lui	$17,%hi(nv.22287)	 # tmp1536,

	andi	$16,$2,0x00ff	 # D.29827,
	jal	io_in	 #
	move	$4,$16	 #, D.29827

	lui	$4,%hi(.LC89)	 # tmp1535,
	addiu	$4,$4,%lo(.LC89)	 #, tmp1535,
	move	$5,$16	 #, D.29827
	jal	_printf_cdnopuxX	 #
	move	$6,$2	 #,

	addiu	$4,$17,%lo(nv.22287)	 #, tmp1536,
	li	$5,80			# 0x50	 #,
	lui	$6,%hi(_iob)	 # tmp1537,
	jal	fgets	 #
	addiu	$6,$6,%lo(_iob)	 #, tmp1537,

	lb	$3,%lo(nv.22287)($17)	 # nv, nv
	lui	$2,%hi(_ctype)	 # tmp1538,
	addiu	$2,$2,%lo(_ctype)	 # tmp1542, tmp1538,
	addu	$2,$3,$2	 # tmp1541, nv, tmp1542
	lbu	$2,1($2)	 # tmp1543, _ctype
	andi	$2,$2,0x44	 # tmp1544, tmp1543,
	beq	$2,$0,.L306
	nop
	 #, tmp1544,,
	jal	exatoi	 #
	addiu	$4,$17,%lo(nv.22287)	 #, tmp1545,

	move	$4,$16	 #, D.29827
	jal	io_out	 #
	andi	$5,$2,0x00ff	 #,

	j	.L306
	nop
	 #
.L76:
	addiu	$2,$20,%lo(cmd.22150)	 # tmp1548, tmp1974,
	lb	$2,1($2)	 # D.29862, cmd
	li	$3,10			# 0xa	 # tmp1549,
	bne	$2,$3,.L206	 #, D.29862, tmp1549,
	lui	$3,%hi(_ctype)	 # tmp1556,

	lui	$4,%hi(.LC90)	 # tmp1550,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC90)	 #, tmp1550,

	lui	$16,%hi(soft)	 # tmp1551,
	addiu	$16,$16,%lo(soft)	 # ivtmp.198, tmp1551,
	move	$17,$0	 # i,
	lui	$21,%hi(.LC91)	 # tmp1887,
	addiu	$21,$21,%lo(.LC91)	 # tmp1888, tmp1887,
	li	$18,4			# 0x4	 # tmp1889,
.L208:
	lw	$7,8($16)	 # D.29861, soft[i].sb_pass
	beql	$7,$0,.L342	 #, D.29861,,
	addiu	$17,$17,1	 # i, i,

	lhu	$6,0($16)	 # soft[i].sb_adr, soft[i].sb_adr
	lw	$2,4($16)	 # soft[i].sb_passcount, soft[i].sb_passcount
	sw	$2,16($sp)	 # soft[i].sb_passcount,
	move	$4,$21	 #, tmp1888
	jal	_printf_cdnopuxX	 #
	move	$5,$17	 #, i

	addiu	$17,$17,1	 # i, i,
.L342:
	bne	$17,$18,.L208	 #, i, tmp1889,
	addiu	$16,$16,12	 # ivtmp.198, ivtmp.198,

	j	.L306
	nop
	 #
.L206:
	addiu	$3,$3,%lo(_ctype)	 # tmp1558, tmp1556,
	addu	$2,$2,$3	 # tmp1557, D.29862, tmp1558
	lbu	$2,1($2)	 # tmp1559, _ctype
	andi	$2,$2,0x44	 # tmp1560, tmp1559,
	beq	$2,$0,.L209	 #, tmp1560,,
	lw	$17,%gp_rel(sb_next)($28)	 # i, sb_next

	lui	$4,%hi(cmd.22150+1)	 # tmp1561,
	jal	atoi	 #
	addiu	$4,$4,%lo(cmd.22150+1)	 #, tmp1561,

	move	$17,$2	 # i,
	slt	$2,$2,4	 # tmp1562, i,
	bne	$2,$0,.L259	 #, tmp1562,,
	lui	$16,%hi(cmd.22150+2)	 # tmp940,

	lui	$4,%hi(.LC92)	 # tmp1563,
	addiu	$4,$4,%lo(.LC92)	 #, tmp1563,
	jal	_printf_cdnopuxX	 #
	move	$5,$17	 #, i

	j	.L306
	nop
	 #
.L209:
	addiu	$2,$17,1	 # sb_next.141, i,
	li	$3,4			# 0x4	 # tmp1564,
	bne	$2,$3,.L260	 #, sb_next.141, tmp1564,
	sw	$2,%gp_rel(sb_next)($28)	 # sb_next.141, sb_next

	sw	$0,%gp_rel(sb_next)($28)	 #, sb_next
	lui	$16,%hi(cmd.22150+1)	 # tmp942,
	j	.L210	 #
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp942,

.L259:
	j	.L210	 #
	addiu	$16,$16,%lo(cmd.22150+2)	 # s, tmp940,

.L260:
	lui	$16,%hi(cmd.22150+1)	 # tmp941,
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp941,
.L210:
	lb	$2,0($16)	 # D.29862,* s
	lui	$3,%hi(_ctype)	 # tmp1565,
	addiu	$3,$3,%lo(_ctype)	 # tmp1567, tmp1565,
	addu	$3,$2,$3	 # tmp1566, D.29862, tmp1567
	lb	$3,1($3)	 # tmp1568, _ctype
	andi	$3,$3,0x88	 # tmp1569, tmp1568,
	beq	$3,$0,.L343	 #, tmp1569,,
	li	$3,99			# 0x63	 # tmp1575,

	lui	$4,%hi(_ctype)	 # tmp1892,
	addiu	$4,$4,%lo(_ctype)	 # tmp1893, tmp1892,
	addiu	$16,$16,1	 # s, s,
.L344:
	lb	$2,0($16)	 # D.29862,* s
	addu	$3,$2,$4	 # tmp1571, D.29862, tmp1893
	lb	$3,1($3)	 # tmp1573, _ctype
	andi	$3,$3,0x88	 # tmp1574, tmp1573,
	bnel	$3,$0,.L344	 #, tmp1574,,
	addiu	$16,$16,1	 # s, s,

	li	$3,99			# 0x63	 # tmp1575,
.L343:
	bne	$2,$3,.L213	 #, D.29862, tmp1575,
	sll	$2,$17,2	 # tmp1603, i,

	lui	$4,%hi(soft)	 # tmp1577,
	addiu	$4,$4,%lo(soft)	 # tmp1581, tmp1577,
	li	$2,12			# 0xc	 # tmp1579,
	mul	$3,$17,$2	 #, i, tmp1579
	addu	$4,$3,$4	 # tmp1580,, tmp1581
	lhu	$2,0($4)	 # soft[i_620].sb_adr, soft[i_620].sb_adr
	addu	$2,$2,$19	 # tmp1583, soft[i_620].sb_adr, tmp1978
	lbu	$3,2($4)	 #, soft[i_620].sb_oldopc
	sb	$3,0($2)	 # soft[i_620].sb_oldopc, ram
	move	$5,$0	 #,
	jal	memset	 #
	li	$6,12			# 0xc	 #,

	j	.L306
	nop
	 #
.L213:
	sll	$3,$17,4	 # tmp1604, i,
	subu	$3,$3,$2	 # tmp1605, tmp1604, tmp1603
	lui	$2,%hi(soft)	 # tmp1600,
	addiu	$2,$2,%lo(soft)	 # tmp1606, tmp1600,
	addu	$2,$3,$2	 # tmp1601, tmp1605, tmp1606
	lw	$2,8($2)	 # soft[i_620].sb_pass, soft[i_620].sb_pass
	beq	$2,$0,.L214	 #, soft[i_620].sb_pass,,
	sll	$2,$17,2	 # tmp1611, i,

	sll	$3,$17,4	 # tmp1612, i,
	subu	$3,$3,$2	 # tmp1613, tmp1612, tmp1611
	lui	$2,%hi(soft)	 # tmp1609,
	addiu	$2,$2,%lo(soft)	 # tmp1615, tmp1609,
	addu	$2,$3,$2	 # tmp1614, tmp1613, tmp1615
	lhu	$3,0($2)	 # soft[i_620].sb_adr, soft[i_620].sb_adr
	addu	$3,$3,$19	 # tmp1617, soft[i_620].sb_adr, tmp1978
	lbu	$2,2($2)	 #, soft[i_620].sb_oldopc
	sb	$2,0($3)	 # soft[i_620].sb_oldopc, ram
.L214:
	jal	exatoi	 #
	move	$4,$16	 #, s

	andi	$2,$2,0xffff	 # D.29841,
	sll	$3,$17,2	 # tmp1629, i,
	sll	$4,$17,4	 # tmp1630, i,
	subu	$4,$4,$3	 # tmp1631, tmp1630, tmp1629
	lui	$3,%hi(soft)	 # tmp1627,
	addiu	$3,$3,%lo(soft)	 # tmp1633, tmp1627,
	addu	$3,$4,$3	 # tmp1632, tmp1631, tmp1633
	sh	$2,0($3)	 # D.29841, soft[i_620].sb_adr
	addu	$2,$2,$19	 # tmp1642, D.29841, tmp1978
	lbu	$2,0($2)	 #, ram
	sb	$2,2($3)	 # tmp1644, soft[i_620].sb_oldopc
	lhu	$2,0($3)	 # soft[i_620].sb_adr, soft[i_620].sb_adr
	addu	$2,$2,$19	 # tmp1654, soft[i_620].sb_adr, tmp1978
	li	$3,118			# 0x76	 # tmp1656,
	sb	$3,0($2)	 # tmp1656, ram
	lb	$2,0($16)	 # D.29862,* s
	lui	$3,%hi(_ctype)	 # tmp1657,
	addiu	$3,$3,%lo(_ctype)	 # tmp1659, tmp1657,
	addu	$3,$2,$3	 # tmp1658, D.29862, tmp1659
	lbu	$3,1($3)	 # tmp1660, _ctype
	andi	$3,$3,0x30	 # tmp1661, tmp1660,
	bne	$3,$0,.L345	 #, tmp1661,,
	li	$3,44			# 0x2c	 # tmp1667,

	lui	$4,%hi(_ctype)	 # tmp1890,
	addiu	$4,$4,%lo(_ctype)	 # tmp1891, tmp1890,
	addiu	$16,$16,1	 # s, s,
.L346:
	lb	$2,0($16)	 # D.29862,* s
	addu	$3,$2,$4	 # tmp1663, D.29862, tmp1891
	lbu	$3,1($3)	 # tmp1665, _ctype
	andi	$3,$3,0x30	 # tmp1666, tmp1665,
	beql	$3,$0,.L346	 #, tmp1666,,
	addiu	$16,$16,1	 # s, s,

	li	$3,44			# 0x2c	 # tmp1667,
.L345:
	beq	$2,$3,.L217	 #, D.29862, tmp1667,
	sll	$2,$17,2	 # tmp1671, i,

	sll	$3,$17,4	 # tmp1672, i,
	subu	$3,$3,$2	 # tmp1673, tmp1672, tmp1671
	lui	$2,%hi(soft)	 # tmp1668,
	addiu	$2,$2,%lo(soft)	 # tmp1674, tmp1668,
	addu	$2,$3,$2	 # tmp1669, tmp1673, tmp1674
	li	$3,1			# 0x1	 # tmp1675,
	j	.L218	 #
	sw	$3,8($2)	 # tmp1675, soft[i_620].sb_pass

.L217:
	jal	exatoi	 #
	addiu	$4,$16,1	 #, s,

	lui	$3,%hi(soft)	 # tmp1677,
	addiu	$4,$3,%lo(soft)	 # tmp1681, tmp1677,
	li	$3,12			# 0xc	 # tmp1680,
	mul	$5,$17,$3	 #, i, tmp1680
	addu	$3,$5,$4	 # tmp1678,, tmp1681
	sw	$2,8($3)	 #, soft[i_620].sb_pass
.L218:
	sll	$2,$17,2	 # tmp1686, i,
	sll	$17,$17,4	 # tmp1687, i,
	subu	$17,$17,$2	 # tmp1688, tmp1687, tmp1686
	lui	$2,%hi(soft)	 # tmp1682,
	addiu	$2,$2,%lo(soft)	 # tmp1683, tmp1682,
	addu	$2,$2,$17	 # tmp1684, tmp1683, tmp1688
	j	.L306	 #
	sw	$0,4($2)	 #, soft[i_620].sb_passcount

.L245:
	addiu	$4,$4,%lo(cmd.22150+1)	 # s, tmp943,
	lui	$5,%hi(_ctype)	 # tmp1932,
	addiu	$5,$5,%lo(_ctype)	 # tmp1933, tmp1932,
	addiu	$4,$4,1	 # s, s,
.L347:
	lb	$2,0($4)	 # D.29894,* s
	addu	$3,$2,$5	 # tmp1690, D.29894, tmp1933
	lb	$3,1($3)	 # tmp1692, _ctype
	andi	$3,$3,0x88	 # tmp1693, tmp1692,
	bnel	$3,$0,.L347	 #, tmp1693,,
	addiu	$4,$4,1	 # s, s,

.L108:
	li	$3,99			# 0x63	 # tmp1694,
	bne	$2,$3,.L307	 #, D.29894, tmp1694,
	lw	$22,%gp_rel(h_next)($28)	 # h_next.143, h_next

	lui	$4,%hi(his)	 # tmp1695,
	addiu	$4,$4,%lo(his)	 #, tmp1695,
	move	$5,$0	 #,
	jal	memset	 #
	li	$6,1600			# 0x640	 #,

	sw	$0,%gp_rel(h_next)($28)	 #, h_next
	j	.L306	 #
	sw	$0,%gp_rel(h_flag)($28)	 #, h_flag

.L307:
	bne	$22,$0,.L221	 #, h_next.143,,
	lw	$2,%gp_rel(h_flag)($28)	 # h_flag, h_flag

	bne	$2,$0,.L223	 #, h_flag,,
	addiu	$16,$22,1	 # i, h_next.143,

	lui	$4,%hi(.LC93)	 # tmp1700,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC93)	 #, tmp1700,

	j	.L306
	nop
	 #
.L221:
	beq	$2,$0,.L223	 #, h_flag,,
	move	$16,$0	 # i,

	addiu	$16,$22,1	 # i, h_next.143,
.L223:
	lb	$2,0($4)	 # D.29894,* s
	lui	$3,%hi(_ctype)	 # tmp1702,
	addiu	$3,$3,%lo(_ctype)	 # tmp1704, tmp1702,
	addu	$3,$2,$3	 # tmp1703, D.29894, tmp1704
	lb	$3,1($3)	 # tmp1705, _ctype
	andi	$3,$3,0x88	 # tmp1706, tmp1705,
	beq	$3,$0,.L224
	nop
	 #, tmp1706,,
	lui	$5,%hi(_ctype)	 # tmp1930,
	addiu	$5,$5,%lo(_ctype)	 # tmp1931, tmp1930,
	addiu	$4,$4,1	 # s, s,
.L348:
	lb	$2,0($4)	 # D.29894,* s
	addu	$3,$2,$5	 # tmp1708, D.29894, tmp1931
	lb	$3,1($3)	 # tmp1710, _ctype
	andi	$3,$3,0x88	 # tmp1711, tmp1710,
	bnel	$3,$0,.L348	 #, tmp1711,,
	addiu	$4,$4,1	 # s, s,

.L224:
	beq	$2,$0,.L226	 #, D.29894,,
	li	$17,-1			# 0xffffffff	 # sa,

	jal	exatoi
	nop
	 #
	move	$17,$2	 # sa,
.L226:
	beq	$22,$16,.L306	 #, h_next.143, i,
	move	$18,$0	 # l,

	li	$23,100			# 0x64	 # tmp1922,
	lui	$21,%hi(his)	 # tmp1923,
	addiu	$21,$21,%lo(his)	 # tmp1924, tmp1923,
	lui	$2,%hi(.LC94)	 # tmp1925,
	addiu	$2,$2,%lo(.LC94)	 #, tmp1925,
	sw	$2,52($sp)	 #, %sfp
	lui	$2,%hi(_iob+20)	 # tmp1928,
	addiu	$2,$2,%lo(_iob+20)	 #, tmp1928,
	sw	$2,56($sp)	 #, %sfp
	xor	$2,$16,$23	 # tmp1884, i, tmp1922
.L350:
	movz	$16,$0,$2	 #, i,, tmp1884
	li	$2,-1			# 0xffffffff	 # tmp1713,
	beq	$17,$2,.L228	 #, sa, tmp1713,
	sll	$2,$16,4	 # tmp1715, i,

	addu	$2,$2,$21	 # tmp1716, tmp1715, tmp1924
	lhu	$2,0($2)	 # his[i_648].h_adr, his[i_648].h_adr
	slt	$2,$2,$17	 # tmp1719, his[i_648].h_adr, sa
	bnel	$2,$0,.L349	 #, tmp1719,,
	addiu	$16,$16,1	 # i, i,

	li	$17,-1			# 0xffffffff	 # sa,
.L228:
	sll	$2,$16,4	 # tmp1721, i,
	addu	$2,$2,$21	 # tmp1722, tmp1721, tmp1924
	lhu	$5,0($2)	 # his[i_648].h_adr, his[i_648].h_adr
	lhu	$6,2($2)	 # his[i_648].h_af, his[i_648].h_af
	lhu	$7,4($2)	 # his[i_648].h_bc, his[i_648].h_bc
	lhu	$3,6($2)	 # his[i_648].h_de, his[i_648].h_de
	sw	$3,16($sp)	 # his[i_648].h_de,
	lhu	$3,8($2)	 # his[i_648].h_hl, his[i_648].h_hl
	sw	$3,20($sp)	 # his[i_648].h_hl,
	lhu	$3,10($2)	 # his[i_648].h_ix, his[i_648].h_ix
	sw	$3,24($sp)	 # his[i_648].h_ix,
	lhu	$3,12($2)	 # his[i_648].h_iy, his[i_648].h_iy
	sw	$3,28($sp)	 # his[i_648].h_iy,
	lhu	$2,14($2)	 # his[i_648].h_sp, his[i_648].h_sp
	sw	$2,32($sp)	 # his[i_648].h_sp,
	jal	_printf_cdnopuxX	 #
	lw	$4,52($sp)	 #, %sfp

	addiu	$18,$18,1	 # l, l,
	li	$2,20			# 0x14	 # tmp1761,
	bnel	$18,$2,.L349	 #, l, tmp1761,
	addiu	$16,$16,1	 # i, i,

	lui	$2,%hi(.LC95)	 #,
	jal	_printf_cdnopuxX	 #
	addiu	$4,$2,%lo(.LC95)	 #,,

	jal	getkey
	nop
	 #
	move	$18,$2	 # c,
	li	$4,10			# 0xa	 #,
	jal	fputc	 #
	lw	$5,56($sp)	 #, %sfp

	jal	toupper	 #
	move	$4,$18	 #, c

	li	$3,81			# 0x51	 # tmp1764,
	beq	$2,$3,.L306	 #,, tmp1764,
	move	$18,$0	 # l,

	addiu	$16,$16,1	 # i, i,
.L349:
	bne	$22,$16,.L350	 #, h_next.143, i,
	xor	$2,$16,$23	 # tmp1884, i, tmp1922

	j	.L306
	nop
	 #
.L238:
	addiu	$16,$16,%lo(cmd.22150+1)	 # s, tmp945,
	lui	$4,%hi(_ctype)	 # tmp1970,
	addiu	$4,$4,%lo(_ctype)	 # tmp1971, tmp1970,
	addiu	$16,$16,1	 # s, s,
.L351:
	lb	$2,0($16)	 # D.29921,* s
	addu	$3,$2,$4	 # tmp1766, D.29921, tmp1971
	lb	$3,1($3)	 # tmp1768, _ctype
	andi	$3,$3,0x88	 # tmp1769, tmp1768,
	bnel	$3,$0,.L351	 #, tmp1769,,
	addiu	$16,$16,1	 # s, s,

.L94:
	bne	$2,$0,.L231	 #, D.29921,,
	lui	$4,%hi(.LC96)	 # tmp1770,

	jal	puts	 #
	addiu	$4,$4,%lo(.LC96)	 #, tmp1770,

	lw	$5,%gp_rel(t_start)($28)	 # t_start, t_start
	subu	$5,$5,$19	 # D.29911, t_start, tmp1978
	lw	$6,%gp_rel(t_end)($28)	 # t_end, t_end
	lw	$2,%gp_rel(t_flag)($28)	 # t_flag, t_flag
	beq	$2,$0,.L264	 #, t_flag,,
	subu	$6,$6,$19	 # D.29907, t_end, tmp1978

	lui	$7,%hi(.LC13)	 # tmp947,
	j	.L232	 #
	addiu	$7,$7,%lo(.LC13)	 # iftmp.151, tmp947,

.L264:
	lui	$7,%hi(.LC14)	 # tmp948,
	addiu	$7,$7,%lo(.LC14)	 # iftmp.151, tmp948,
.L232:
	lw	$2,%gp_rel(t_states)($28)	 # t_states, t_states
	sw	$2,16($sp)	 # t_states,
	lui	$4,%hi(.LC97)	 # tmp1776,
	jal	_printf_cdnopuxX	 #
	addiu	$4,$4,%lo(.LC97)	 #, tmp1776,

	j	.L306
	nop
	 #
.L231:
	jal	exatoi	 #
	move	$4,$16	 #, s

	addu	$2,$19,$2	 # tmp1779, tmp1978,
	sw	$2,%gp_rel(t_start)($28)	 # tmp1779, t_start
	lb	$2,0($16)	 # D.29921,* s
	li	$3,44			# 0x2c	 # tmp1780,
	beq	$2,$3,.L233
	nop
	 #, D.29921, tmp1780,
	beql	$2,$0,.L352	 #, D.29921,,
	sw	$0,%gp_rel(t_states)($28)	 #, t_states

	addiu	$16,$16,1	 # s, s,
.L353:
	lb	$2,0($16)	 # D.29921,* s
	beq	$2,$3,.L233
	nop
	 #, D.29921, tmp1969,
	bnel	$2,$0,.L353	 #, D.29921,,
	addiu	$16,$16,1	 # s, s,

	j	.L313	 #
	sw	$0,%gp_rel(t_states)($28)	 #, t_states

.L233:
	jal	exatoi	 #
	addiu	$4,$16,1	 #, s,

	addu	$2,$19,$2	 # tmp1785, tmp1978,
	sw	$2,%gp_rel(t_end)($28)	 # tmp1785, t_end
	sw	$0,%gp_rel(t_states)($28)	 #, t_states
.L313:
.L352:
	j	.L306	 #
	sw	$0,%gp_rel(t_flag)($28)	 #, t_flag

.L77:
	addiu	$16,$28,%gp_rel(save.22355)	 # tmp1786,,
	lui	$3,%hi(ram)	 #,
	lbu	$2,%lo(ram)($3)	 #, ram
	sb	$2,0($16)	 # ram, save
	addiu	$17,$28,%gp_rel(save.22355+1)	 # tmp1789,,
	lbu	$2,1($19)	 #, ram
	sb	$2,0($17)	 # ram, save
	addiu	$18,$28,%gp_rel(save.22355+2)	 # tmp1793,,
	lbu	$2,2($19)	 #, ram
	sb	$2,0($18)	 # ram, save
	li	$2,-61			# 0xffffffc3	 # tmp1798,
	sb	$2,%lo(ram)($3)	 # tmp1798, ram
	sb	$0,1($19)	 #, ram
	sb	$0,2($19)	 #, ram
	sw	$19,%gp_rel(PC)($28)	 # tmp1978, PC
	sw	$0,%gp_rel(R)($28)	 #, R
	li	$2,1			# 0x1	 # tmp1805,
	sb	$2,%gp_rel(cpu_state)($28)	 # tmp1805, cpu_state
	sw	$0,%gp_rel(cpu_error)($28)	 #, cpu_error
	li	$4,14			# 0xe	 #,
	lui	$5,%hi(timeout)	 # tmp1806,
	jal	signal	 #
	addiu	$5,$5,%lo(timeout)	 #, tmp1806,

	jal	cpu
	nop
	 #
	lbu	$2,0($16)	 #, save
	lui	$5,%hi(ram)	 #,
	sb	$2,%lo(ram)($5)	 # save, ram
	lbu	$2,0($17)	 #, save
	sb	$2,1($19)	 # save, ram
	lbu	$2,0($18)	 #, save
	sb	$2,2($19)	 # save, ram
	lw	$2,%gp_rel(cpu_error)($28)	 # cpu_error, cpu_error
	bnel	$2,$0,.L236	 #, cpu_error,,
	lui	$4,%hi(.LC100)	 # tmp1823,

	jal	sitofp	 #
	lw	$4,%gp_rel(R)($28)	 #, R

	move	$4,$2	 #,
	jal	fpdiv	 #
	lw	$5,60($sp)	 #, %sfp

	lui	$4,%hi(.LC98)	 # tmp1822,
	addiu	$4,$4,%lo(.LC98)	 #, tmp1822,
	jal	_printf_cdnopuxX	 #
	move	$5,$2	 #,

	j	.L306
	nop
	 #
.L236:
	jal	puts	 #
	addiu	$4,$4,%lo(.LC100)	 #, tmp1823,

	j	.L306
	nop
	 #
.L87:
	lui	$4,%hi(.LC101)	 # tmp1824,
	addiu	$4,$4,%lo(.LC101)	 #, tmp1824,
	lui	$5,%hi(.LC102)	 # tmp1825,
	jal	_printf_cdnopuxX	 #
	addiu	$5,$5,%lo(.LC102)	 #, tmp1825,

	lui	$4,%hi(.LC103)	 # tmp1826,
	addiu	$4,$4,%lo(.LC103)	 #, tmp1826,
	jal	_printf_cdnopuxX	 #
	li	$5,100			# 0x64	 #,

	lui	$4,%hi(.LC104)	 # tmp1827,
	addiu	$4,$4,%lo(.LC104)	 #, tmp1827,
	jal	_printf_cdnopuxX	 #
	li	$5,4			# 0x4	 #,

	lui	$4,%hi(.LC105)	 # tmp1828,
	addiu	$4,$4,%lo(.LC105)	 #, tmp1828,
	lui	$5,%hi(.LC106)	 # tmp1829,
	jal	_printf_cdnopuxX	 #
	addiu	$5,$5,%lo(.LC106)	 #, tmp1829,

	lui	$4,%hi(.LC107)	 # tmp1830,
	addiu	$4,$4,%lo(.LC107)	 #, tmp1830,
	lui	$16,%hi(.LC15)	 # tmp1831,
	jal	_printf_cdnopuxX	 #
	addiu	$5,$16,%lo(.LC15)	 #, tmp1831,

	lui	$4,%hi(.LC108)	 # tmp1832,
	addiu	$4,$4,%lo(.LC108)	 #, tmp1832,
	jal	_printf_cdnopuxX	 #
	addiu	$5,$16,%lo(.LC15)	 #, tmp1831,

	lui	$4,%hi(.LC109)	 # tmp1834,
	addiu	$4,$4,%lo(.LC109)	 #, tmp1834,
	jal	_printf_cdnopuxX	 #
	addiu	$5,$16,%lo(.LC15)	 #, tmp1831,

	lui	$4,%hi(.LC110)	 # tmp1836,
	addiu	$4,$4,%lo(.LC110)	 #, tmp1836,
	jal	_printf_cdnopuxX	 #
	addiu	$5,$16,%lo(.LC15)	 #, tmp1831,

	lui	$4,%hi(.LC111)	 # tmp1838,
	addiu	$4,$4,%lo(.LC111)	 #, tmp1838,
	jal	_printf_cdnopuxX	 #
	addiu	$5,$16,%lo(.LC15)	 #, tmp1831,

	j	.L306
	nop
	 #
.L75:
	lui	$4,%hi(.LC112)	 # tmp1840,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC112)	 #, tmp1840,

	lui	$4,%hi(.LC113)	 # tmp1841,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC113)	 #, tmp1841,

	lui	$4,%hi(.LC114)	 # tmp1842,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC114)	 #, tmp1842,

	lui	$4,%hi(.LC115)	 # tmp1843,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC115)	 #, tmp1843,

	lui	$4,%hi(.LC116)	 # tmp1844,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC116)	 #, tmp1844,

	lui	$4,%hi(.LC117)	 # tmp1845,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC117)	 #, tmp1845,

	lui	$4,%hi(.LC118)	 # tmp1846,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC118)	 #, tmp1846,

	lui	$4,%hi(.LC119)	 # tmp1847,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC119)	 #, tmp1847,

	lui	$4,%hi(.LC120)	 # tmp1848,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC120)	 #, tmp1848,

	lui	$4,%hi(.LC121)	 # tmp1849,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC121)	 #, tmp1849,

	lui	$4,%hi(.LC122)	 # tmp1850,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC122)	 #, tmp1850,

	lui	$4,%hi(.LC123)	 # tmp1851,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC123)	 #, tmp1851,

	lui	$4,%hi(.LC124)	 # tmp1852,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC124)	 #, tmp1852,

	lui	$4,%hi(.LC125)	 # tmp1853,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC125)	 #, tmp1853,

	lui	$4,%hi(.LC126)	 # tmp1854,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC126)	 #, tmp1854,

	lui	$4,%hi(.LC127)	 # tmp1855,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC127)	 #, tmp1855,

	lui	$4,%hi(.LC128)	 # tmp1856,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC128)	 #, tmp1856,

	lui	$4,%hi(.LC129)	 # tmp1857,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC129)	 #, tmp1857,

	lui	$4,%hi(.LC130)	 # tmp1858,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC130)	 #, tmp1858,

	lui	$4,%hi(.LC131)	 # tmp1859,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC131)	 #, tmp1859,

	lui	$4,%hi(.LC132)	 # tmp1860,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC132)	 #, tmp1860,

	lui	$4,%hi(.LC133)	 # tmp1861,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC133)	 #, tmp1861,

	lui	$4,%hi(.LC134)	 # tmp1862,
	jal	puts	 #
	addiu	$4,$4,%lo(.LC134)	 #, tmp1862,

	j	.L306
	nop
	 #
.L86:
	lui	$4,%hi(cmd.22150+1)	 # tmp1863,
	jal	load_file	 #
	addiu	$4,$4,%lo(cmd.22150+1)	 #, tmp1863,

	j	.L306
	nop
	 #
.L74:
	jal	int_off
	nop
	 #
	lui	$4,%hi(cmd.22150+1)	 # tmp1864,
	jal	system	 #
	addiu	$4,$4,%lo(cmd.22150+1)	 #, tmp1864,

	jal	int_on
	nop
	 #
	j	.L306
	nop
	 #
.L72:
	lui	$4,%hi(.LC135)	 # tmp1865,
.L315:
	jal	puts	 #
	addiu	$4,$4,%lo(.LC135)	 #, tmp1865,

	j	.L306
	nop
	 #
.L115:
	sb	$2,%gp_rel(cpu_state)($28)	 # tmp1866, cpu_state
	jal	print_head	 #
	sw	$0,%gp_rel(cpu_error)($28)	 #, cpu_error

	jal	print_reg	 #
	li	$17,20			# 0x14	 # count,

	move	$16,$0	 # i,
.L317:
	j	.L119	 #
	li	$18,1			# 0x1	 # tmp1957,

.L135:
.L309:
	jal	puts	 #
	addiu	$4,$4,%lo(.LC136)	 #, tmp1867,

	j	.L306
	nop
	 #
.L138:
.L310:
	jal	puts	 #
	addiu	$4,$4,%lo(.LC137)	 #, tmp1868,

	j	.L306
	nop
	 #
.L144:
.L311:
	jal	puts	 #
	addiu	$4,$4,%lo(.LC138)	 #, tmp1869,

	j	.L306
	nop
	 #
.L147:
.L312:
	jal	puts	 #
	addiu	$4,$4,%lo(.LC136)	 #, tmp1870,

	j	.L306
	nop
	 #
.L70:
	lw	$31,100($sp)	 #,
	lw	$fp,96($sp)	 #,
	lw	$23,92($sp)	 #,
	lw	$22,88($sp)	 #,
	lw	$21,84($sp)	 #,
	lw	$20,80($sp)	 #,
	lw	$19,76($sp)	 #,
	lw	$18,72($sp)	 #,
	lw	$17,68($sp)	 #,
	lw	$16,64($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,104	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	mon
	.size	mon, .-mon
	.section	.bss,bss
	.align	2
	.type	cmd.22150, @object
	.size	cmd.22150, 80
cmd.22150:
	.space	80
	.align	2
	.type	nv.22240, @object
	.size	nv.22240, 80
nv.22240:
	.space	80
	.align	2
	.type	nv.22298, @object
	.size	nv.22298, 80
nv.22298:
	.space	80
	.align	2
	.type	nv.22287, @object
	.size	nv.22287, 80
nv.22287:
	.space	80
	.section	.sbss,bss,near
	.align	2
	.type	save.22355, @object
	.size	save.22355, 3
save.22355:
	.space	3
	.section	.rodata,code
	.align	2
.LC99:
	.word	1217559552
	.weak	system
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
