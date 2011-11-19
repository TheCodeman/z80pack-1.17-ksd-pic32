	.file	1 "disas.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed disas.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/664612396/disas.o -O1
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

	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"\012\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	iout
	.type	iout, @function
iout:
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
	move	$3,$4	 # s, s
	lw	$2,0($5)	 # tmp227,* p
	lui	$16,%hi(Disass_Str)	 # tmp229,
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp229,
	move	$5,$3	 #, s
	jal	sprintf	 #
	lbu	$6,1($2)	 #,

	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp229,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp233, tmp229,
	addu	$16,$16,$2	 # tmp232, tmp233,
	lui	$2,%hi(.LC0)	 # tmp235,
	lbu	$3,%lo(.LC0)($2)	 #,
	sb	$3,0($16)	 # tmp236,
	addiu	$2,$2,%lo(.LC0)	 # tmp237, tmp235,
	lbu	$2,1($2)	 #,
	sb	$2,1($16)	 # tmp238,
	li	$2,2			# 0x2	 #,
	lw	$31,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	iout
	.size	iout, .-iout
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	inout
	.type	inout, @function
inout:
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
	move	$3,$4	 # s, s
	lw	$2,0($5)	 # D.7206,* p
	lbu	$6,2($2)	 # tmp232,
	sll	$6,$6,8	 # tmp233, tmp232,
	lbu	$2,1($2)	 # tmp234,
	lui	$16,%hi(Disass_Str)	 # tmp236,
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp236,
	move	$5,$3	 #, s
	jal	sprintf	 #
	addu	$6,$6,$2	 #, tmp233, tmp234

	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp236,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp240, tmp236,
	addu	$16,$16,$2	 # tmp239, tmp240,
	lui	$2,%hi(.LC0)	 # tmp242,
	lbu	$3,%lo(.LC0)($2)	 #,
	sb	$3,0($16)	 # tmp243,
	addiu	$2,$2,%lo(.LC0)	 # tmp244, tmp242,
	lbu	$2,1($2)	 #,
	sb	$2,1($16)	 # tmp245,
	li	$2,3			# 0x3	 #,
	lw	$31,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	inout
	.size	inout, .-inout
	.section	.rodata,code
	.align	2
.LC1:
	.ascii	"%s%04X\012\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	rout
	.type	rout, @function
rout:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	move	$6,$4	 # s, s
	lw	$7,%gp_rel(addr)($28)	 # addr, addr
	addiu	$7,$7,2	 # tmp228, addr,
	lw	$2,0($5)	 # tmp230,* p
	lb	$2,1($2)	 # tmp231,
	lui	$4,%hi(Disass_Str)	 # tmp233,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp233,
	lui	$5,%hi(.LC1)	 # tmp234,
	addiu	$5,$5,%lo(.LC1)	 #, tmp234,
	jal	sprintf	 #
	addu	$7,$7,$2	 #, tmp228, tmp231

	li	$2,2			# 0x2	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	rout
	.size	rout, .-rout
	.section	.rodata,code
	.align	2
.LC2:
	.ascii	"%s%02X\012\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	nout
	.type	nout, @function
nout:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	move	$6,$4	 # s, s
	lw	$2,0($5)	 # tmp225,* p
	lui	$4,%hi(Disass_Str)	 # tmp227,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp227,
	lui	$5,%hi(.LC2)	 # tmp228,
	addiu	$5,$5,%lo(.LC2)	 #, tmp228,
	jal	sprintf	 #
	lbu	$7,1($2)	 #,

	li	$2,2			# 0x2	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	nout
	.size	nout, .-nout
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	nnout
	.type	nnout, @function
nnout:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	move	$6,$4	 # s, s
	lw	$2,0($5)	 # D.7233,* p
	lbu	$7,2($2)	 # tmp230,
	sll	$7,$7,8	 # tmp231, tmp230,
	lbu	$2,1($2)	 # tmp232,
	lui	$4,%hi(Disass_Str)	 # tmp234,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp234,
	lui	$5,%hi(.LC1)	 # tmp235,
	addiu	$5,$5,%lo(.LC1)	 #, tmp235,
	jal	sprintf	 #
	addu	$7,$7,$2	 #, tmp231, tmp232

	li	$2,3			# 0x3	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	nnout
	.size	nnout, .-nnout
	.section	.rodata,code
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	opout
	.type	opout, @function
opout:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	move	$6,$4	 # s, s
	lui	$4,%hi(Disass_Str)	 # tmp221,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp221,
	lui	$5,%hi(.LC3)	 # tmp222,
	jal	sprintf	 #
	addiu	$5,$5,%lo(.LC3)	 #, tmp222,

	li	$2,1			# 0x1	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	opout
	.size	opout, .-opout
	.section	.rodata,code
	.align	2
.LC4:
	.ascii	"IN\011B,(C)\012\000"
	.align	2
.LC5:
	.ascii	"OUT\011(C),B\012\000"
	.align	2
.LC6:
	.ascii	"SBC\011HL,BC\012\000"
	.align	2
.LC7:
	.ascii	"LD\011(%04X),BC\012\000"
	.align	2
.LC8:
	.ascii	"NEG\012\000"
	.align	2
.LC9:
	.ascii	"RETN\012\000"
	.align	2
.LC10:
	.ascii	"IM\0110\012\000"
	.align	2
.LC11:
	.ascii	"LD\011I,A\012\000"
	.align	2
.LC12:
	.ascii	"IN\011C,(C)\012\000"
	.align	2
.LC13:
	.ascii	"OUT\011(C),C\012\000"
	.align	2
.LC14:
	.ascii	"ADC\011HL,BC\012\000"
	.align	2
.LC15:
	.ascii	"LD\011BC,(%04X)\012\000"
	.align	2
.LC16:
	.ascii	"RETI\012\000"
	.align	2
.LC17:
	.ascii	"LD\011R,A\012\000"
	.align	2
.LC18:
	.ascii	"IN\011D,(C)\012\000"
	.align	2
.LC19:
	.ascii	"OUT\011(C),D\012\000"
	.align	2
.LC20:
	.ascii	"SBC\011HL,DE\012\000"
	.align	2
.LC21:
	.ascii	"LD\011(%04X),DE\012\000"
	.align	2
.LC22:
	.ascii	"IM\0111\012\000"
	.align	2
.LC23:
	.ascii	"LD\011A,I\012\000"
	.align	2
.LC24:
	.ascii	"IN\011E,(C)\012\000"
	.align	2
.LC25:
	.ascii	"OUT\011(C),E\012\000"
	.align	2
.LC26:
	.ascii	"ADC\011HL,DE\012\000"
	.align	2
.LC27:
	.ascii	"LD\011DE,(%04X)\012\000"
	.align	2
.LC28:
	.ascii	"IM\0112\012\000"
	.align	2
.LC29:
	.ascii	"LD\011A,R\012\000"
	.align	2
.LC30:
	.ascii	"IN\011H,(C)\012\000"
	.align	2
.LC31:
	.ascii	"OUT\011(C),H\012\000"
	.align	2
.LC32:
	.ascii	"SBC\011HL,HL\012\000"
	.align	2
.LC33:
	.ascii	"RRD\012\000"
	.align	2
.LC34:
	.ascii	"IN\011L,(C)\012\000"
	.align	2
.LC35:
	.ascii	"OUT\011(C),L\012\000"
	.align	2
.LC36:
	.ascii	"ADC\011HL,HL\012\000"
	.align	2
.LC37:
	.ascii	"RLD\012\000"
	.align	2
.LC38:
	.ascii	"SBC\011HL,SP\012\000"
	.align	2
.LC39:
	.ascii	"LD\011(%04X),SP\012\000"
	.align	2
.LC40:
	.ascii	"IN\011A,(C)\012\000"
	.align	2
.LC41:
	.ascii	"OUT\011(C),A\012\000"
	.align	2
.LC42:
	.ascii	"ADC\011HL,SP\012\000"
	.align	2
.LC43:
	.ascii	"LD\011SP,(%04X)\012\000"
	.align	2
.LC44:
	.ascii	"LDI\012\000"
	.align	2
.LC45:
	.ascii	"CPI\012\000"
	.align	2
.LC46:
	.ascii	"INI\012\000"
	.align	2
.LC47:
	.ascii	"OUTI\012\000"
	.align	2
.LC48:
	.ascii	"LDD\012\000"
	.align	2
.LC49:
	.ascii	"CPD\012\000"
	.align	2
.LC50:
	.ascii	"IND\012\000"
	.align	2
.LC51:
	.ascii	"OUTD\012\000"
	.align	2
.LC52:
	.ascii	"LDIR\012\000"
	.align	2
.LC53:
	.ascii	"CPIR\012\000"
	.align	2
.LC54:
	.ascii	"INIR\012\000"
	.align	2
.LC55:
	.ascii	"OTIR\012\000"
	.align	2
.LC56:
	.ascii	"LDDR\012\000"
	.align	2
.LC57:
	.ascii	"CPDR\012\000"
	.align	2
.LC58:
	.ascii	"INDR\012\000"
	.align	2
.LC59:
	.ascii	"OTDR\012\000"
	.align	2
.LC60:
	.ascii	"???\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	edop
	.type	edop, @function
edop:
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
	lui	$2,%hi(Disass_Str)	 # tmp375,
	sb	$0,%lo(Disass_Str)($2)	 #, Disass_Str
	lw	$3,0($5)	 # D.7018,* p
	lbu	$2,1($3)	 #,
	addiu	$2,$2,-64	 # tmp377, tmp376,
	andi	$4,$2,0x00ff	 # tmp378, tmp377
	sltu	$4,$4,124	 # tmp379, tmp378,
	beql	$4,$0,.L67	 #, tmp379,,
	lui	$16,%hi(Disass_Str)	 # tmp968,

	andi	$2,$2,0x00ff	 # tmp380, tmp377
	sll	$2,$2,2	 # tmp381, tmp380,
	lui	$4,%hi(.L65)	 # tmp384,
	addiu	$4,$4,%lo(.L65)	 # tmp383, tmp384,
	addu	$2,$4,$2	 # tmp382, tmp383, tmp381
	lw	$2,0($2)	 # tmp385,
	j	$2
	nop
	 # tmp385
	.align	2
	.align	2
.L65:
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
	.word	.L8
	.word	.L21
	.word	.L8
	.word	.L22
	.word	.L23
	.word	.L24
	.word	.L25
	.word	.L26
	.word	.L8
	.word	.L8
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
	.word	.L8
	.word	.L8
	.word	.L33
	.word	.L34
	.word	.L35
	.word	.L36
	.word	.L37
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L38
	.word	.L39
	.word	.L40
	.word	.L41
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L42
	.word	.L8
	.word	.L8
	.word	.L43
	.word	.L44
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L45
	.word	.L46
	.word	.L47
	.word	.L48
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L49
	.word	.L50
	.word	.L51
	.word	.L52
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L53
	.word	.L54
	.word	.L55
	.word	.L56
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L57
	.word	.L58
	.word	.L59
	.word	.L60
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L64
.L9:
	lui	$16,%hi(Disass_Str)	 # tmp386,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp386,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp389, tmp386,
	addu	$16,$16,$2	 # tmp388, tmp389,
	lui	$2,%hi(.LC4)	 # tmp391,
	lw	$4,%lo(.LC4)($2)	 # tmp392,
	addiu	$2,$2,%lo(.LC4)	 # tmp394, tmp391,
	lw	$3,4($2)	 # tmp393,
	swl	$4,3($16)	 # tmp392,
	swr	$4,0($16)	 # tmp392,
	swl	$3,7($16)	 # tmp393,
	swr	$3,4($16)	 # tmp393,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp396,
	lbu	$2,9($2)	 #,
	sb	$2,9($16)	 # tmp397,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L10:
	lui	$16,%hi(Disass_Str)	 # tmp398,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp398,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp401, tmp398,
	addu	$16,$16,$2	 # tmp400, tmp401,
	lui	$2,%hi(.LC5)	 # tmp403,
	lw	$4,%lo(.LC5)($2)	 # tmp404,
	addiu	$2,$2,%lo(.LC5)	 # tmp406, tmp403,
	lw	$3,4($2)	 # tmp405,
	swl	$4,3($16)	 # tmp404,
	swr	$4,0($16)	 # tmp404,
	swl	$3,7($16)	 # tmp405,
	swr	$3,4($16)	 # tmp405,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp408,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp409,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp410,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L11:
	lui	$16,%hi(Disass_Str)	 # tmp411,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp411,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp414, tmp411,
	addu	$16,$16,$2	 # tmp413, tmp414,
	lui	$2,%hi(.LC6)	 # tmp416,
	lw	$4,%lo(.LC6)($2)	 # tmp417,
	addiu	$2,$2,%lo(.LC6)	 # tmp419, tmp416,
	lw	$3,4($2)	 # tmp418,
	swl	$4,3($16)	 # tmp417,
	swr	$4,0($16)	 # tmp417,
	swl	$3,7($16)	 # tmp418,
	swr	$3,4($16)	 # tmp418,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp421,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp422,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp423,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L12:
	lbu	$6,3($3)	 # tmp424,
	sll	$6,$6,8	 # tmp425, tmp424,
	lbu	$2,2($3)	 # tmp426,
	lui	$4,%hi(Disass_Str)	 # tmp428,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp428,
	lui	$5,%hi(.LC7)	 # tmp429,
	addiu	$5,$5,%lo(.LC7)	 #, tmp429,
	jal	sprintf	 #
	addu	$6,$6,$2	 #, tmp425, tmp426

	j	.L66	 #
	li	$2,4			# 0x4	 # len,

.L13:
	lui	$16,%hi(Disass_Str)	 # tmp430,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp430,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp433, tmp430,
	addu	$16,$16,$2	 # tmp432, tmp433,
	lui	$2,%hi(.LC8)	 # tmp435,
	lw	$3,%lo(.LC8)($2)	 # tmp436,
	swl	$3,3($16)	 # tmp436,
	swr	$3,0($16)	 # tmp436,
	addiu	$2,$2,%lo(.LC8)	 # tmp437, tmp435,
	lbu	$2,4($2)	 #,
	sb	$2,4($16)	 # tmp438,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L14:
	lui	$16,%hi(Disass_Str)	 # tmp439,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp439,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp442, tmp439,
	addu	$16,$16,$2	 # tmp441, tmp442,
	lui	$2,%hi(.LC9)	 # tmp444,
	lw	$3,%lo(.LC9)($2)	 # tmp445,
	swl	$3,3($16)	 # tmp445,
	swr	$3,0($16)	 # tmp445,
	addiu	$2,$2,%lo(.LC9)	 # tmp446, tmp444,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp447,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp448,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L15:
	lui	$16,%hi(Disass_Str)	 # tmp449,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp449,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp452, tmp449,
	addu	$16,$16,$2	 # tmp451, tmp452,
	lui	$2,%hi(.LC10)	 # tmp454,
	lw	$3,%lo(.LC10)($2)	 # tmp455,
	swl	$3,3($16)	 # tmp455,
	swr	$3,0($16)	 # tmp455,
	addiu	$2,$2,%lo(.LC10)	 # tmp456, tmp454,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp457,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp458,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L16:
	lui	$16,%hi(Disass_Str)	 # tmp459,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp459,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp462, tmp459,
	addu	$16,$16,$2	 # tmp461, tmp462,
	lui	$2,%hi(.LC11)	 # tmp464,
	lw	$3,%lo(.LC11)($2)	 # tmp465,
	addiu	$2,$2,%lo(.LC11)	 # tmp467, tmp464,
	lw	$2,4($2)	 # tmp466,
	swl	$3,3($16)	 # tmp465,
	swr	$3,0($16)	 # tmp465,
	swl	$2,7($16)	 # tmp466,
	swr	$2,4($16)	 # tmp466,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L17:
	lui	$16,%hi(Disass_Str)	 # tmp468,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp468,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp471, tmp468,
	addu	$16,$16,$2	 # tmp470, tmp471,
	lui	$2,%hi(.LC12)	 # tmp473,
	lw	$4,%lo(.LC12)($2)	 # tmp474,
	addiu	$2,$2,%lo(.LC12)	 # tmp476, tmp473,
	lw	$3,4($2)	 # tmp475,
	swl	$4,3($16)	 # tmp474,
	swr	$4,0($16)	 # tmp474,
	swl	$3,7($16)	 # tmp475,
	swr	$3,4($16)	 # tmp475,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp478,
	lbu	$2,9($2)	 #,
	sb	$2,9($16)	 # tmp479,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L18:
	lui	$16,%hi(Disass_Str)	 # tmp480,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp480,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp483, tmp480,
	addu	$16,$16,$2	 # tmp482, tmp483,
	lui	$2,%hi(.LC13)	 # tmp485,
	lw	$4,%lo(.LC13)($2)	 # tmp486,
	addiu	$2,$2,%lo(.LC13)	 # tmp488, tmp485,
	lw	$3,4($2)	 # tmp487,
	swl	$4,3($16)	 # tmp486,
	swr	$4,0($16)	 # tmp486,
	swl	$3,7($16)	 # tmp487,
	swr	$3,4($16)	 # tmp487,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp490,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp491,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp492,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L19:
	lui	$16,%hi(Disass_Str)	 # tmp493,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp493,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp496, tmp493,
	addu	$16,$16,$2	 # tmp495, tmp496,
	lui	$2,%hi(.LC14)	 # tmp498,
	lw	$4,%lo(.LC14)($2)	 # tmp499,
	addiu	$2,$2,%lo(.LC14)	 # tmp501, tmp498,
	lw	$3,4($2)	 # tmp500,
	swl	$4,3($16)	 # tmp499,
	swr	$4,0($16)	 # tmp499,
	swl	$3,7($16)	 # tmp500,
	swr	$3,4($16)	 # tmp500,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp503,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp504,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp505,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L20:
	lbu	$6,3($3)	 # tmp506,
	sll	$6,$6,8	 # tmp507, tmp506,
	lbu	$2,2($3)	 # tmp508,
	lui	$4,%hi(Disass_Str)	 # tmp510,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp510,
	lui	$5,%hi(.LC15)	 # tmp511,
	addiu	$5,$5,%lo(.LC15)	 #, tmp511,
	jal	sprintf	 #
	addu	$6,$6,$2	 #, tmp507, tmp508

	j	.L66	 #
	li	$2,4			# 0x4	 # len,

.L21:
	lui	$16,%hi(Disass_Str)	 # tmp512,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp512,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp515, tmp512,
	addu	$16,$16,$2	 # tmp514, tmp515,
	lui	$2,%hi(.LC16)	 # tmp517,
	lw	$3,%lo(.LC16)($2)	 # tmp518,
	swl	$3,3($16)	 # tmp518,
	swr	$3,0($16)	 # tmp518,
	addiu	$2,$2,%lo(.LC16)	 # tmp519, tmp517,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp520,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp521,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L22:
	lui	$16,%hi(Disass_Str)	 # tmp522,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp522,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp525, tmp522,
	addu	$16,$16,$2	 # tmp524, tmp525,
	lui	$2,%hi(.LC17)	 # tmp527,
	lw	$3,%lo(.LC17)($2)	 # tmp528,
	addiu	$2,$2,%lo(.LC17)	 # tmp530, tmp527,
	lw	$2,4($2)	 # tmp529,
	swl	$3,3($16)	 # tmp528,
	swr	$3,0($16)	 # tmp528,
	swl	$2,7($16)	 # tmp529,
	swr	$2,4($16)	 # tmp529,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L23:
	lui	$16,%hi(Disass_Str)	 # tmp531,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp531,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp534, tmp531,
	addu	$16,$16,$2	 # tmp533, tmp534,
	lui	$2,%hi(.LC18)	 # tmp536,
	lw	$4,%lo(.LC18)($2)	 # tmp537,
	addiu	$2,$2,%lo(.LC18)	 # tmp539, tmp536,
	lw	$3,4($2)	 # tmp538,
	swl	$4,3($16)	 # tmp537,
	swr	$4,0($16)	 # tmp537,
	swl	$3,7($16)	 # tmp538,
	swr	$3,4($16)	 # tmp538,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp541,
	lbu	$2,9($2)	 #,
	sb	$2,9($16)	 # tmp542,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L24:
	lui	$16,%hi(Disass_Str)	 # tmp543,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp543,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp546, tmp543,
	addu	$16,$16,$2	 # tmp545, tmp546,
	lui	$2,%hi(.LC19)	 # tmp548,
	lw	$4,%lo(.LC19)($2)	 # tmp549,
	addiu	$2,$2,%lo(.LC19)	 # tmp551, tmp548,
	lw	$3,4($2)	 # tmp550,
	swl	$4,3($16)	 # tmp549,
	swr	$4,0($16)	 # tmp549,
	swl	$3,7($16)	 # tmp550,
	swr	$3,4($16)	 # tmp550,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp553,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp554,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp555,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L25:
	lui	$16,%hi(Disass_Str)	 # tmp556,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp556,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp559, tmp556,
	addu	$16,$16,$2	 # tmp558, tmp559,
	lui	$2,%hi(.LC20)	 # tmp561,
	lw	$4,%lo(.LC20)($2)	 # tmp562,
	addiu	$2,$2,%lo(.LC20)	 # tmp564, tmp561,
	lw	$3,4($2)	 # tmp563,
	swl	$4,3($16)	 # tmp562,
	swr	$4,0($16)	 # tmp562,
	swl	$3,7($16)	 # tmp563,
	swr	$3,4($16)	 # tmp563,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp566,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp567,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp568,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L26:
	lbu	$6,3($3)	 # tmp569,
	sll	$6,$6,8	 # tmp570, tmp569,
	lbu	$2,2($3)	 # tmp571,
	lui	$4,%hi(Disass_Str)	 # tmp573,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp573,
	lui	$5,%hi(.LC21)	 # tmp574,
	addiu	$5,$5,%lo(.LC21)	 #, tmp574,
	jal	sprintf	 #
	addu	$6,$6,$2	 #, tmp570, tmp571

	j	.L66	 #
	li	$2,4			# 0x4	 # len,

.L27:
	lui	$16,%hi(Disass_Str)	 # tmp575,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp575,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp578, tmp575,
	addu	$16,$16,$2	 # tmp577, tmp578,
	lui	$2,%hi(.LC22)	 # tmp580,
	lw	$3,%lo(.LC22)($2)	 # tmp581,
	swl	$3,3($16)	 # tmp581,
	swr	$3,0($16)	 # tmp581,
	addiu	$2,$2,%lo(.LC22)	 # tmp582, tmp580,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp583,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp584,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L28:
	lui	$16,%hi(Disass_Str)	 # tmp585,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp585,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp588, tmp585,
	addu	$16,$16,$2	 # tmp587, tmp588,
	lui	$2,%hi(.LC23)	 # tmp590,
	lw	$3,%lo(.LC23)($2)	 # tmp591,
	addiu	$2,$2,%lo(.LC23)	 # tmp593, tmp590,
	lw	$2,4($2)	 # tmp592,
	swl	$3,3($16)	 # tmp591,
	swr	$3,0($16)	 # tmp591,
	swl	$2,7($16)	 # tmp592,
	swr	$2,4($16)	 # tmp592,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L29:
	lui	$16,%hi(Disass_Str)	 # tmp594,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp594,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp597, tmp594,
	addu	$16,$16,$2	 # tmp596, tmp597,
	lui	$2,%hi(.LC24)	 # tmp599,
	lw	$4,%lo(.LC24)($2)	 # tmp600,
	addiu	$2,$2,%lo(.LC24)	 # tmp602, tmp599,
	lw	$3,4($2)	 # tmp601,
	swl	$4,3($16)	 # tmp600,
	swr	$4,0($16)	 # tmp600,
	swl	$3,7($16)	 # tmp601,
	swr	$3,4($16)	 # tmp601,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp604,
	lbu	$2,9($2)	 #,
	sb	$2,9($16)	 # tmp605,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L30:
	lui	$16,%hi(Disass_Str)	 # tmp606,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp606,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp609, tmp606,
	addu	$16,$16,$2	 # tmp608, tmp609,
	lui	$2,%hi(.LC25)	 # tmp611,
	lw	$4,%lo(.LC25)($2)	 # tmp612,
	addiu	$2,$2,%lo(.LC25)	 # tmp614, tmp611,
	lw	$3,4($2)	 # tmp613,
	swl	$4,3($16)	 # tmp612,
	swr	$4,0($16)	 # tmp612,
	swl	$3,7($16)	 # tmp613,
	swr	$3,4($16)	 # tmp613,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp616,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp617,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp618,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L31:
	lui	$16,%hi(Disass_Str)	 # tmp619,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp619,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp622, tmp619,
	addu	$16,$16,$2	 # tmp621, tmp622,
	lui	$2,%hi(.LC26)	 # tmp624,
	lw	$4,%lo(.LC26)($2)	 # tmp625,
	addiu	$2,$2,%lo(.LC26)	 # tmp627, tmp624,
	lw	$3,4($2)	 # tmp626,
	swl	$4,3($16)	 # tmp625,
	swr	$4,0($16)	 # tmp625,
	swl	$3,7($16)	 # tmp626,
	swr	$3,4($16)	 # tmp626,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp629,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp630,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp631,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L32:
	lbu	$6,3($3)	 # tmp632,
	sll	$6,$6,8	 # tmp633, tmp632,
	lbu	$2,2($3)	 # tmp634,
	lui	$4,%hi(Disass_Str)	 # tmp636,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp636,
	lui	$5,%hi(.LC27)	 # tmp637,
	addiu	$5,$5,%lo(.LC27)	 #, tmp637,
	jal	sprintf	 #
	addu	$6,$6,$2	 #, tmp633, tmp634

	j	.L66	 #
	li	$2,4			# 0x4	 # len,

.L33:
	lui	$16,%hi(Disass_Str)	 # tmp638,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp638,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp641, tmp638,
	addu	$16,$16,$2	 # tmp640, tmp641,
	lui	$2,%hi(.LC28)	 # tmp643,
	lw	$3,%lo(.LC28)($2)	 # tmp644,
	swl	$3,3($16)	 # tmp644,
	swr	$3,0($16)	 # tmp644,
	addiu	$2,$2,%lo(.LC28)	 # tmp645, tmp643,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp646,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp647,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L34:
	lui	$16,%hi(Disass_Str)	 # tmp648,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp648,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp651, tmp648,
	addu	$16,$16,$2	 # tmp650, tmp651,
	lui	$2,%hi(.LC29)	 # tmp653,
	lw	$3,%lo(.LC29)($2)	 # tmp654,
	addiu	$2,$2,%lo(.LC29)	 # tmp656, tmp653,
	lw	$2,4($2)	 # tmp655,
	swl	$3,3($16)	 # tmp654,
	swr	$3,0($16)	 # tmp654,
	swl	$2,7($16)	 # tmp655,
	swr	$2,4($16)	 # tmp655,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L35:
	lui	$16,%hi(Disass_Str)	 # tmp657,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp657,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp660, tmp657,
	addu	$16,$16,$2	 # tmp659, tmp660,
	lui	$2,%hi(.LC30)	 # tmp662,
	lw	$4,%lo(.LC30)($2)	 # tmp663,
	addiu	$2,$2,%lo(.LC30)	 # tmp665, tmp662,
	lw	$3,4($2)	 # tmp664,
	swl	$4,3($16)	 # tmp663,
	swr	$4,0($16)	 # tmp663,
	swl	$3,7($16)	 # tmp664,
	swr	$3,4($16)	 # tmp664,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp667,
	lbu	$2,9($2)	 #,
	sb	$2,9($16)	 # tmp668,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L36:
	lui	$16,%hi(Disass_Str)	 # tmp669,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp669,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp672, tmp669,
	addu	$16,$16,$2	 # tmp671, tmp672,
	lui	$2,%hi(.LC31)	 # tmp674,
	lw	$4,%lo(.LC31)($2)	 # tmp675,
	addiu	$2,$2,%lo(.LC31)	 # tmp677, tmp674,
	lw	$3,4($2)	 # tmp676,
	swl	$4,3($16)	 # tmp675,
	swr	$4,0($16)	 # tmp675,
	swl	$3,7($16)	 # tmp676,
	swr	$3,4($16)	 # tmp676,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp679,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp680,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp681,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L37:
	lui	$16,%hi(Disass_Str)	 # tmp682,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp682,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp685, tmp682,
	addu	$16,$16,$2	 # tmp684, tmp685,
	lui	$2,%hi(.LC32)	 # tmp687,
	lw	$4,%lo(.LC32)($2)	 # tmp688,
	addiu	$2,$2,%lo(.LC32)	 # tmp690, tmp687,
	lw	$3,4($2)	 # tmp689,
	swl	$4,3($16)	 # tmp688,
	swr	$4,0($16)	 # tmp688,
	swl	$3,7($16)	 # tmp689,
	swr	$3,4($16)	 # tmp689,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp692,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp693,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp694,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L38:
	lui	$16,%hi(Disass_Str)	 # tmp695,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp695,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp698, tmp695,
	addu	$16,$16,$2	 # tmp697, tmp698,
	lui	$2,%hi(.LC33)	 # tmp700,
	lw	$3,%lo(.LC33)($2)	 # tmp701,
	swl	$3,3($16)	 # tmp701,
	swr	$3,0($16)	 # tmp701,
	addiu	$2,$2,%lo(.LC33)	 # tmp702, tmp700,
	lbu	$2,4($2)	 #,
	sb	$2,4($16)	 # tmp703,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L39:
	lui	$16,%hi(Disass_Str)	 # tmp704,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp704,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp707, tmp704,
	addu	$16,$16,$2	 # tmp706, tmp707,
	lui	$2,%hi(.LC34)	 # tmp709,
	lw	$4,%lo(.LC34)($2)	 # tmp710,
	addiu	$2,$2,%lo(.LC34)	 # tmp712, tmp709,
	lw	$3,4($2)	 # tmp711,
	swl	$4,3($16)	 # tmp710,
	swr	$4,0($16)	 # tmp710,
	swl	$3,7($16)	 # tmp711,
	swr	$3,4($16)	 # tmp711,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp714,
	lbu	$2,9($2)	 #,
	sb	$2,9($16)	 # tmp715,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L40:
	lui	$16,%hi(Disass_Str)	 # tmp716,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp716,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp719, tmp716,
	addu	$16,$16,$2	 # tmp718, tmp719,
	lui	$2,%hi(.LC35)	 # tmp721,
	lw	$4,%lo(.LC35)($2)	 # tmp722,
	addiu	$2,$2,%lo(.LC35)	 # tmp724, tmp721,
	lw	$3,4($2)	 # tmp723,
	swl	$4,3($16)	 # tmp722,
	swr	$4,0($16)	 # tmp722,
	swl	$3,7($16)	 # tmp723,
	swr	$3,4($16)	 # tmp723,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp726,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp727,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp728,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L41:
	lui	$16,%hi(Disass_Str)	 # tmp729,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp729,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp732, tmp729,
	addu	$16,$16,$2	 # tmp731, tmp732,
	lui	$2,%hi(.LC36)	 # tmp734,
	lw	$4,%lo(.LC36)($2)	 # tmp735,
	addiu	$2,$2,%lo(.LC36)	 # tmp737, tmp734,
	lw	$3,4($2)	 # tmp736,
	swl	$4,3($16)	 # tmp735,
	swr	$4,0($16)	 # tmp735,
	swl	$3,7($16)	 # tmp736,
	swr	$3,4($16)	 # tmp736,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp739,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp740,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp741,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L42:
	lui	$16,%hi(Disass_Str)	 # tmp742,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp742,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp745, tmp742,
	addu	$16,$16,$2	 # tmp744, tmp745,
	lui	$2,%hi(.LC37)	 # tmp747,
	lw	$3,%lo(.LC37)($2)	 # tmp748,
	swl	$3,3($16)	 # tmp748,
	swr	$3,0($16)	 # tmp748,
	addiu	$2,$2,%lo(.LC37)	 # tmp749, tmp747,
	lbu	$2,4($2)	 #,
	sb	$2,4($16)	 # tmp750,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L43:
	lui	$16,%hi(Disass_Str)	 # tmp751,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp751,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp754, tmp751,
	addu	$16,$16,$2	 # tmp753, tmp754,
	lui	$2,%hi(.LC38)	 # tmp756,
	lw	$4,%lo(.LC38)($2)	 # tmp757,
	addiu	$2,$2,%lo(.LC38)	 # tmp759, tmp756,
	lw	$3,4($2)	 # tmp758,
	swl	$4,3($16)	 # tmp757,
	swr	$4,0($16)	 # tmp757,
	swl	$3,7($16)	 # tmp758,
	swr	$3,4($16)	 # tmp758,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp761,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp762,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp763,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L44:
	lbu	$6,3($3)	 # tmp764,
	sll	$6,$6,8	 # tmp765, tmp764,
	lbu	$2,2($3)	 # tmp766,
	lui	$4,%hi(Disass_Str)	 # tmp768,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp768,
	lui	$5,%hi(.LC39)	 # tmp769,
	addiu	$5,$5,%lo(.LC39)	 #, tmp769,
	jal	sprintf	 #
	addu	$6,$6,$2	 #, tmp765, tmp766

	j	.L66	 #
	li	$2,4			# 0x4	 # len,

.L45:
	lui	$16,%hi(Disass_Str)	 # tmp770,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp770,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp773, tmp770,
	addu	$16,$16,$2	 # tmp772, tmp773,
	lui	$2,%hi(.LC40)	 # tmp775,
	lw	$4,%lo(.LC40)($2)	 # tmp776,
	addiu	$2,$2,%lo(.LC40)	 # tmp778, tmp775,
	lw	$3,4($2)	 # tmp777,
	swl	$4,3($16)	 # tmp776,
	swr	$4,0($16)	 # tmp776,
	swl	$3,7($16)	 # tmp777,
	swr	$3,4($16)	 # tmp777,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp780,
	lbu	$2,9($2)	 #,
	sb	$2,9($16)	 # tmp781,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L46:
	lui	$16,%hi(Disass_Str)	 # tmp782,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp782,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp785, tmp782,
	addu	$16,$16,$2	 # tmp784, tmp785,
	lui	$2,%hi(.LC41)	 # tmp787,
	lw	$4,%lo(.LC41)($2)	 # tmp788,
	addiu	$2,$2,%lo(.LC41)	 # tmp790, tmp787,
	lw	$3,4($2)	 # tmp789,
	swl	$4,3($16)	 # tmp788,
	swr	$4,0($16)	 # tmp788,
	swl	$3,7($16)	 # tmp789,
	swr	$3,4($16)	 # tmp789,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp792,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp793,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp794,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L47:
	lui	$16,%hi(Disass_Str)	 # tmp795,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp795,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp798, tmp795,
	addu	$16,$16,$2	 # tmp797, tmp798,
	lui	$2,%hi(.LC42)	 # tmp800,
	lw	$4,%lo(.LC42)($2)	 # tmp801,
	addiu	$2,$2,%lo(.LC42)	 # tmp803, tmp800,
	lw	$3,4($2)	 # tmp802,
	swl	$4,3($16)	 # tmp801,
	swr	$4,0($16)	 # tmp801,
	swl	$3,7($16)	 # tmp802,
	swr	$3,4($16)	 # tmp802,
	lbu	$3,8($2)	 #,
	sb	$3,8($16)	 # tmp805,
	lbu	$3,9($2)	 #,
	sb	$3,9($16)	 # tmp806,
	lbu	$2,10($2)	 #,
	sb	$2,10($16)	 # tmp807,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L48:
	lbu	$6,3($3)	 # tmp808,
	sll	$6,$6,8	 # tmp809, tmp808,
	lbu	$2,2($3)	 # tmp810,
	lui	$4,%hi(Disass_Str)	 # tmp812,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp812,
	lui	$5,%hi(.LC43)	 # tmp813,
	addiu	$5,$5,%lo(.LC43)	 #, tmp813,
	jal	sprintf	 #
	addu	$6,$6,$2	 #, tmp809, tmp810

	j	.L66	 #
	li	$2,4			# 0x4	 # len,

.L49:
	lui	$16,%hi(Disass_Str)	 # tmp814,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp814,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp817, tmp814,
	addu	$16,$16,$2	 # tmp816, tmp817,
	lui	$2,%hi(.LC44)	 # tmp819,
	lw	$3,%lo(.LC44)($2)	 # tmp820,
	swl	$3,3($16)	 # tmp820,
	swr	$3,0($16)	 # tmp820,
	addiu	$2,$2,%lo(.LC44)	 # tmp821, tmp819,
	lbu	$2,4($2)	 #,
	sb	$2,4($16)	 # tmp822,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L50:
	lui	$16,%hi(Disass_Str)	 # tmp823,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp823,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp826, tmp823,
	addu	$16,$16,$2	 # tmp825, tmp826,
	lui	$2,%hi(.LC45)	 # tmp828,
	lw	$3,%lo(.LC45)($2)	 # tmp829,
	swl	$3,3($16)	 # tmp829,
	swr	$3,0($16)	 # tmp829,
	addiu	$2,$2,%lo(.LC45)	 # tmp830, tmp828,
	lbu	$2,4($2)	 #,
	sb	$2,4($16)	 # tmp831,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L51:
	lui	$16,%hi(Disass_Str)	 # tmp832,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp832,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp835, tmp832,
	addu	$16,$16,$2	 # tmp834, tmp835,
	lui	$2,%hi(.LC46)	 # tmp837,
	lw	$3,%lo(.LC46)($2)	 # tmp838,
	swl	$3,3($16)	 # tmp838,
	swr	$3,0($16)	 # tmp838,
	addiu	$2,$2,%lo(.LC46)	 # tmp839, tmp837,
	lbu	$2,4($2)	 #,
	sb	$2,4($16)	 # tmp840,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L52:
	lui	$16,%hi(Disass_Str)	 # tmp841,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp841,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp844, tmp841,
	addu	$16,$16,$2	 # tmp843, tmp844,
	lui	$2,%hi(.LC47)	 # tmp846,
	lw	$3,%lo(.LC47)($2)	 # tmp847,
	swl	$3,3($16)	 # tmp847,
	swr	$3,0($16)	 # tmp847,
	addiu	$2,$2,%lo(.LC47)	 # tmp848, tmp846,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp849,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp850,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L53:
	lui	$16,%hi(Disass_Str)	 # tmp851,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp851,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp854, tmp851,
	addu	$16,$16,$2	 # tmp853, tmp854,
	lui	$2,%hi(.LC48)	 # tmp856,
	lw	$3,%lo(.LC48)($2)	 # tmp857,
	swl	$3,3($16)	 # tmp857,
	swr	$3,0($16)	 # tmp857,
	addiu	$2,$2,%lo(.LC48)	 # tmp858, tmp856,
	lbu	$2,4($2)	 #,
	sb	$2,4($16)	 # tmp859,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L54:
	lui	$16,%hi(Disass_Str)	 # tmp860,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp860,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp863, tmp860,
	addu	$16,$16,$2	 # tmp862, tmp863,
	lui	$2,%hi(.LC49)	 # tmp865,
	lw	$3,%lo(.LC49)($2)	 # tmp866,
	swl	$3,3($16)	 # tmp866,
	swr	$3,0($16)	 # tmp866,
	addiu	$2,$2,%lo(.LC49)	 # tmp867, tmp865,
	lbu	$2,4($2)	 #,
	sb	$2,4($16)	 # tmp868,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L55:
	lui	$16,%hi(Disass_Str)	 # tmp869,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp869,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp872, tmp869,
	addu	$16,$16,$2	 # tmp871, tmp872,
	lui	$2,%hi(.LC50)	 # tmp874,
	lw	$3,%lo(.LC50)($2)	 # tmp875,
	swl	$3,3($16)	 # tmp875,
	swr	$3,0($16)	 # tmp875,
	addiu	$2,$2,%lo(.LC50)	 # tmp876, tmp874,
	lbu	$2,4($2)	 #,
	sb	$2,4($16)	 # tmp877,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L56:
	lui	$16,%hi(Disass_Str)	 # tmp878,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp878,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp881, tmp878,
	addu	$16,$16,$2	 # tmp880, tmp881,
	lui	$2,%hi(.LC51)	 # tmp883,
	lw	$3,%lo(.LC51)($2)	 # tmp884,
	swl	$3,3($16)	 # tmp884,
	swr	$3,0($16)	 # tmp884,
	addiu	$2,$2,%lo(.LC51)	 # tmp885, tmp883,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp886,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp887,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L57:
	lui	$16,%hi(Disass_Str)	 # tmp888,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp888,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp891, tmp888,
	addu	$16,$16,$2	 # tmp890, tmp891,
	lui	$2,%hi(.LC52)	 # tmp893,
	lw	$3,%lo(.LC52)($2)	 # tmp894,
	swl	$3,3($16)	 # tmp894,
	swr	$3,0($16)	 # tmp894,
	addiu	$2,$2,%lo(.LC52)	 # tmp895, tmp893,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp896,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp897,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L58:
	lui	$16,%hi(Disass_Str)	 # tmp898,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp898,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp901, tmp898,
	addu	$16,$16,$2	 # tmp900, tmp901,
	lui	$2,%hi(.LC53)	 # tmp903,
	lw	$3,%lo(.LC53)($2)	 # tmp904,
	swl	$3,3($16)	 # tmp904,
	swr	$3,0($16)	 # tmp904,
	addiu	$2,$2,%lo(.LC53)	 # tmp905, tmp903,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp906,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp907,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L59:
	lui	$16,%hi(Disass_Str)	 # tmp908,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp908,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp911, tmp908,
	addu	$16,$16,$2	 # tmp910, tmp911,
	lui	$2,%hi(.LC54)	 # tmp913,
	lw	$3,%lo(.LC54)($2)	 # tmp914,
	swl	$3,3($16)	 # tmp914,
	swr	$3,0($16)	 # tmp914,
	addiu	$2,$2,%lo(.LC54)	 # tmp915, tmp913,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp916,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp917,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L60:
	lui	$16,%hi(Disass_Str)	 # tmp918,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp918,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp921, tmp918,
	addu	$16,$16,$2	 # tmp920, tmp921,
	lui	$2,%hi(.LC55)	 # tmp923,
	lw	$3,%lo(.LC55)($2)	 # tmp924,
	swl	$3,3($16)	 # tmp924,
	swr	$3,0($16)	 # tmp924,
	addiu	$2,$2,%lo(.LC55)	 # tmp925, tmp923,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp926,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp927,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L61:
	lui	$16,%hi(Disass_Str)	 # tmp928,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp928,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp931, tmp928,
	addu	$16,$16,$2	 # tmp930, tmp931,
	lui	$2,%hi(.LC56)	 # tmp933,
	lw	$3,%lo(.LC56)($2)	 # tmp934,
	swl	$3,3($16)	 # tmp934,
	swr	$3,0($16)	 # tmp934,
	addiu	$2,$2,%lo(.LC56)	 # tmp935, tmp933,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp936,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp937,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L62:
	lui	$16,%hi(Disass_Str)	 # tmp938,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp938,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp941, tmp938,
	addu	$16,$16,$2	 # tmp940, tmp941,
	lui	$2,%hi(.LC57)	 # tmp943,
	lw	$3,%lo(.LC57)($2)	 # tmp944,
	swl	$3,3($16)	 # tmp944,
	swr	$3,0($16)	 # tmp944,
	addiu	$2,$2,%lo(.LC57)	 # tmp945, tmp943,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp946,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp947,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L63:
	lui	$16,%hi(Disass_Str)	 # tmp948,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp948,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp951, tmp948,
	addu	$16,$16,$2	 # tmp950, tmp951,
	lui	$2,%hi(.LC58)	 # tmp953,
	lw	$3,%lo(.LC58)($2)	 # tmp954,
	swl	$3,3($16)	 # tmp954,
	swr	$3,0($16)	 # tmp954,
	addiu	$2,$2,%lo(.LC58)	 # tmp955, tmp953,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp956,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp957,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L64:
	lui	$16,%hi(Disass_Str)	 # tmp958,
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp958,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp961, tmp958,
	addu	$16,$16,$2	 # tmp960, tmp961,
	lui	$2,%hi(.LC59)	 # tmp963,
	lw	$3,%lo(.LC59)($2)	 # tmp964,
	swl	$3,3($16)	 # tmp964,
	swr	$3,0($16)	 # tmp964,
	addiu	$2,$2,%lo(.LC59)	 # tmp965, tmp963,
	lbu	$3,4($2)	 #,
	sb	$3,4($16)	 # tmp966,
	lbu	$2,5($2)	 #,
	sb	$2,5($16)	 # tmp967,
	j	.L66	 #
	li	$2,2			# 0x2	 # len,

.L8:
	lui	$16,%hi(Disass_Str)	 # tmp968,
.L67:
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp968,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp971, tmp968,
	addu	$16,$16,$2	 # tmp970, tmp971,
	lui	$2,%hi(.LC60)	 # tmp973,
	lw	$2,%lo(.LC60)($2)	 # tmp974,
	swl	$2,3($16)	 # tmp974, Disass_Str
	swr	$2,0($16)	 # tmp974, Disass_Str
	li	$2,2			# 0x2	 # len,
.L66:
	lw	$31,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	edop
	.size	edop, .-edop
	.section	.rodata,code
	.align	2
.LC61:
	.ascii	"IX\000"
	.align	2
.LC62:
	.ascii	"IY\000"
	.align	2
.LC63:
	.ascii	"LD\011(%s+%02X),%s\012\000"
	.align	2
.LC64:
	.ascii	"ADD\011%s,BC\012\000"
	.align	2
.LC65:
	.ascii	"ADD\011%s,DE\012\000"
	.align	2
.LC66:
	.ascii	"LD\011%s,%04X\012\000"
	.align	2
.LC67:
	.ascii	"LD\011(%04X),%s\012\000"
	.align	2
.LC68:
	.ascii	"INC\011%s\012\000"
	.align	2
.LC69:
	.ascii	"ADD\011IX,IX\012\000"
	.align	2
.LC70:
	.ascii	"ADD\011IY,IY\012\000"
	.align	2
.LC71:
	.ascii	"LD\011%s,(%04X)\012\000"
	.align	2
.LC72:
	.ascii	"DEC\011%s\012\000"
	.align	2
.LC73:
	.ascii	"INC\011(%s+%02X)\012\000"
	.align	2
.LC74:
	.ascii	"DEC\011(%s+%02X)\012\000"
	.align	2
.LC75:
	.ascii	"LD\011(%s+%02X),%02X\012\000"
	.align	2
.LC76:
	.ascii	"ADD\011%s,SP\012\000"
	.align	2
.LC77:
	.ascii	"LD\011B,(%s+%02X)\012\000"
	.align	2
.LC78:
	.ascii	"LD\011C,(%s+%02X)\012\000"
	.align	2
.LC79:
	.ascii	"LD\011D,(%s+%02X)\012\000"
	.align	2
.LC80:
	.ascii	"LD\011E,(%s+%02X)\012\000"
	.align	2
.LC81:
	.ascii	"LD\011H,(%s+%02X)\012\000"
	.align	2
.LC82:
	.ascii	"LD\011L,(%s+%02X)\012\000"
	.align	2
.LC83:
	.ascii	"LD\011A,(%s+%02X)\012\000"
	.align	2
.LC84:
	.ascii	"ADD\011A,(%s+%02X)\012\000"
	.align	2
.LC85:
	.ascii	"ADC\011A,(%s+%02X)\012\000"
	.align	2
.LC86:
	.ascii	"SUB\011(%s+%02X)\012\000"
	.align	2
.LC87:
	.ascii	"SBC\011A,(%s+%02X)\012\000"
	.align	2
.LC88:
	.ascii	"AND\011(%s+%02X)\012\000"
	.align	2
.LC89:
	.ascii	"XOR\011(%s+%02X)\012\000"
	.align	2
.LC90:
	.ascii	"OR\011(%s+%02X)\012\000"
	.align	2
.LC91:
	.ascii	"CP\011(%s+%02X)\012\000"
	.align	2
.LC92:
	.ascii	"RLC\011(%s+%02X)\012\000"
	.align	2
.LC93:
	.ascii	"RRC\011(%s+%02X)\012\000"
	.align	2
.LC94:
	.ascii	"RL\011(%s+%02X)\012\000"
	.align	2
.LC95:
	.ascii	"RR\011(%s+%02X)\012\000"
	.align	2
.LC96:
	.ascii	"SLA\011(%s+%02X)\012\000"
	.align	2
.LC97:
	.ascii	"SRA\011(%s+%02X)\012\000"
	.align	2
.LC98:
	.ascii	"SRL\011(%s+%02X)\012\000"
	.align	2
.LC99:
	.ascii	"BIT\0110,(%s+%02X)\012\000"
	.align	2
.LC100:
	.ascii	"BIT\0111,(%s+%02X)\012\000"
	.align	2
.LC101:
	.ascii	"BIT\0112,(%s+%02X)\012\000"
	.align	2
.LC102:
	.ascii	"BIT\0113,(%s+%02X)\012\000"
	.align	2
.LC103:
	.ascii	"BIT\0114,(%s+%02X)\012\000"
	.align	2
.LC104:
	.ascii	"BIT\0115,(%s+%02X)\012\000"
	.align	2
.LC105:
	.ascii	"BIT\0116,(%s+%02X)\012\000"
	.align	2
.LC106:
	.ascii	"BIT\0117,(%s+%02X)\012\000"
	.align	2
.LC107:
	.ascii	"RES\0110,(%s+%02X)\012\000"
	.align	2
.LC108:
	.ascii	"RES\0111,(%s+%02X)\012\000"
	.align	2
.LC109:
	.ascii	"RES\0112,(%s+%02X)\012\000"
	.align	2
.LC110:
	.ascii	"RES\0113,(%s+%02X)\012\000"
	.align	2
.LC111:
	.ascii	"RES\0114,(%s+%02X)\012\000"
	.align	2
.LC112:
	.ascii	"RES\0115,(%s+%02X)\012\000"
	.align	2
.LC113:
	.ascii	"RES\0116,(%s+%02X)\012\000"
	.align	2
.LC114:
	.ascii	"RES\0117,(%s+%02X)\012\000"
	.align	2
.LC115:
	.ascii	"SET\0110,(%s+%02X)\012\000"
	.align	2
.LC116:
	.ascii	"SET\0111,(%s+%02X)\012\000"
	.align	2
.LC117:
	.ascii	"SET\0112,(%s+%02X)\012\000"
	.align	2
.LC118:
	.ascii	"SET\0113,(%s+%02X)\012\000"
	.align	2
.LC119:
	.ascii	"SET\0114,(%s+%02X)\012\000"
	.align	2
.LC120:
	.ascii	"SET\0115,(%s+%02X)\012\000"
	.align	2
.LC121:
	.ascii	"SET\0116,(%s+%02X)\012\000"
	.align	2
.LC122:
	.ascii	"SET\0117,(%s+%02X)\012\000"
	.align	2
.LC123:
	.ascii	"POP\011%s\012\000"
	.align	2
.LC124:
	.ascii	"EX\011(SP),%s\012\000"
	.align	2
.LC125:
	.ascii	"PUSH\011%s\012\000"
	.align	2
.LC126:
	.ascii	"JP\011(%s)\012\000"
	.align	2
.LC127:
	.ascii	"LD\011SP,%s\012\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	ddfd
	.type	ddfd, @function
ddfd:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 24, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32	 #,,
	sw	$31,28($sp)	 #,
	sw	$16,24($sp)	 #,
	lw	$2,0($5)	 # D.7131,* p
	lbu	$5,0($2)	 # D.7132,* D.7131
	li	$3,221			# 0xdd	 # tmp417,
	bnel	$5,$3,.L141	 #, D.7132, tmp417,
	lui	$3,%hi(.LC62)	 # tmp416,

	lui	$3,%hi(.LC61)	 # tmp415,
	j	.L69	 #
	addiu	$3,$3,%lo(.LC61)	 # ireg, tmp415,

.L141:
	addiu	$3,$3,%lo(.LC62)	 # ireg, tmp416,
.L69:
	lbu	$4,1($2)	 # D.7137,
	addiu	$6,$4,-112	 # tmp418, D.7137,
	sltu	$6,$6,8	 # tmp419, tmp418,
	beql	$6,$0,.L70	 #, tmp419,,
	addiu	$4,$4,-9	 # tmp429, D.7137,

	lbu	$7,2($2)	 # tmp420,
	andi	$4,$4,0x7	 # tmp422, D.7137,
	sll	$4,$4,2	 # tmp423, tmp422,
	lui	$2,%hi(reg)	 # tmp421,
	addiu	$2,$2,%lo(reg)	 # tmp425, tmp421,
	addu	$4,$4,$2	 # tmp424, tmp423, tmp425
	lw	$2,0($4)	 # tmp426, reg
	sw	$2,16($sp)	 # tmp426,
	lui	$4,%hi(Disass_Str)	 # tmp427,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp427,
	lui	$5,%hi(.LC63)	 # tmp428,
	addiu	$5,$5,%lo(.LC63)	 #, tmp428,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L70:
	andi	$6,$4,0x00ff	 # tmp430, tmp429
	sltu	$6,$6,241	 # tmp431, tmp430,
	beq	$6,$0,.L142	 #, tmp431,,
	lui	$16,%hi(Disass_Str)	 # tmp662,

	andi	$4,$4,0x00ff	 # tmp432, tmp429
	sll	$4,$4,2	 # tmp433, tmp432,
	lui	$6,%hi(.L106)	 # tmp436,
	addiu	$6,$6,%lo(.L106)	 # tmp435, tmp436,
	addu	$4,$6,$4	 # tmp434, tmp435, tmp433
	lw	$4,0($4)	 # tmp437,
	j	$4
	nop
	 # tmp437
	.align	2
	.align	2
.L106:
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
	.word	.L74
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L75
	.word	.L76
	.word	.L77
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L78
	.word	.L79
	.word	.L80
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L81
	.word	.L82
	.word	.L83
	.word	.L72
	.word	.L72
	.word	.L84
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
	.word	.L85
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L86
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L87
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L88
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L89
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L90
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
	.word	.L91
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L92
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L93
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L94
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L95
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L96
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L97
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L98
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L99
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
	.word	.L100
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
	.word	.L101
	.word	.L72
	.word	.L102
	.word	.L72
	.word	.L103
	.word	.L72
	.word	.L72
	.word	.L72
	.word	.L104
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
	.word	.L105
.L73:
	lui	$4,%hi(Disass_Str)	 # tmp438,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp438,
	lui	$5,%hi(.LC64)	 # tmp439,
	addiu	$5,$5,%lo(.LC64)	 #, tmp439,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L74:
	lui	$4,%hi(Disass_Str)	 # tmp440,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp440,
	lui	$5,%hi(.LC65)	 # tmp441,
	addiu	$5,$5,%lo(.LC65)	 #, tmp441,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L75:
	lbu	$7,3($2)	 # tmp442,
	sll	$7,$7,8	 # tmp443, tmp442,
	lbu	$2,2($2)	 # tmp444,
	lui	$4,%hi(Disass_Str)	 # tmp446,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp446,
	lui	$5,%hi(.LC66)	 # tmp447,
	addiu	$5,$5,%lo(.LC66)	 #, tmp447,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	addu	$7,$7,$2	 #, tmp443, tmp444

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L76:
	lbu	$6,3($2)	 # tmp448,
	sll	$6,$6,8	 # tmp449, tmp448,
	lbu	$2,2($2)	 # tmp450,
	lui	$4,%hi(Disass_Str)	 # tmp452,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp452,
	lui	$5,%hi(.LC67)	 # tmp453,
	addiu	$5,$5,%lo(.LC67)	 #, tmp453,
	addu	$6,$6,$2	 #, tmp449, tmp450
	jal	sprintf	 #
	move	$7,$3	 #, ireg

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L77:
	lui	$4,%hi(Disass_Str)	 # tmp454,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp454,
	lui	$5,%hi(.LC68)	 # tmp455,
	addiu	$5,$5,%lo(.LC68)	 #, tmp455,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L78:
	li	$2,221			# 0xdd	 # tmp456,
	bne	$5,$2,.L107	 #, D.7132, tmp456,
	lui	$2,%hi(Disass_Str)	 # tmp467,

	lui	$3,%hi(.LC69)	 # tmp458,
	lw	$5,%lo(.LC69)($3)	 # tmp459,
	addiu	$3,$3,%lo(.LC69)	 # tmp461, tmp458,
	lw	$4,4($3)	 # tmp460,
	sw	$5,%lo(Disass_Str)($2)	 # tmp459, Disass_Str
	addiu	$2,$2,%lo(Disass_Str)	 # tmp462, tmp457,
	sw	$4,4($2)	 # tmp460, Disass_Str
	lhu	$4,8($3)	 #,
	sh	$4,8($2)	 # tmp465, Disass_Str
	lbu	$3,10($3)	 #,
	sb	$3,10($2)	 # tmp466, Disass_Str
	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L107:
	lui	$3,%hi(.LC70)	 # tmp468,
	lw	$5,%lo(.LC70)($3)	 # tmp469,
	addiu	$3,$3,%lo(.LC70)	 # tmp471, tmp468,
	lw	$4,4($3)	 # tmp470,
	sw	$5,%lo(Disass_Str)($2)	 # tmp469, Disass_Str
	addiu	$2,$2,%lo(Disass_Str)	 # tmp472, tmp467,
	sw	$4,4($2)	 # tmp470, Disass_Str
	lhu	$4,8($3)	 #,
	sh	$4,8($2)	 # tmp475, Disass_Str
	lbu	$3,10($3)	 #,
	sb	$3,10($2)	 # tmp476, Disass_Str
	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L79:
	lbu	$7,3($2)	 # tmp477,
	sll	$7,$7,8	 # tmp478, tmp477,
	lbu	$2,2($2)	 # tmp479,
	lui	$4,%hi(Disass_Str)	 # tmp481,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp481,
	lui	$5,%hi(.LC71)	 # tmp482,
	addiu	$5,$5,%lo(.LC71)	 #, tmp482,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	addu	$7,$7,$2	 #, tmp478, tmp479

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L80:
	lui	$4,%hi(Disass_Str)	 # tmp483,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp483,
	lui	$5,%hi(.LC72)	 # tmp484,
	addiu	$5,$5,%lo(.LC72)	 #, tmp484,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L81:
	lui	$4,%hi(Disass_Str)	 # tmp486,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp486,
	lui	$5,%hi(.LC73)	 # tmp487,
	addiu	$5,$5,%lo(.LC73)	 #, tmp487,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L82:
	lui	$4,%hi(Disass_Str)	 # tmp489,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp489,
	lui	$5,%hi(.LC74)	 # tmp490,
	addiu	$5,$5,%lo(.LC74)	 #, tmp490,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L83:
	lbu	$7,2($2)	 # tmp491,
	lbu	$2,3($2)	 # tmp492,
	sw	$2,16($sp)	 # tmp492,
	lui	$4,%hi(Disass_Str)	 # tmp493,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp493,
	lui	$5,%hi(.LC75)	 # tmp494,
	addiu	$5,$5,%lo(.LC75)	 #, tmp494,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L84:
	lui	$4,%hi(Disass_Str)	 # tmp495,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp495,
	lui	$5,%hi(.LC76)	 # tmp496,
	addiu	$5,$5,%lo(.LC76)	 #, tmp496,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L85:
	lui	$4,%hi(Disass_Str)	 # tmp498,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp498,
	lui	$5,%hi(.LC77)	 # tmp499,
	addiu	$5,$5,%lo(.LC77)	 #, tmp499,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L86:
	lui	$4,%hi(Disass_Str)	 # tmp501,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp501,
	lui	$5,%hi(.LC78)	 # tmp502,
	addiu	$5,$5,%lo(.LC78)	 #, tmp502,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L87:
	lui	$4,%hi(Disass_Str)	 # tmp504,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp504,
	lui	$5,%hi(.LC79)	 # tmp505,
	addiu	$5,$5,%lo(.LC79)	 #, tmp505,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L88:
	lui	$4,%hi(Disass_Str)	 # tmp507,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp507,
	lui	$5,%hi(.LC80)	 # tmp508,
	addiu	$5,$5,%lo(.LC80)	 #, tmp508,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L89:
	lui	$4,%hi(Disass_Str)	 # tmp510,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp510,
	lui	$5,%hi(.LC81)	 # tmp511,
	addiu	$5,$5,%lo(.LC81)	 #, tmp511,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L90:
	lui	$4,%hi(Disass_Str)	 # tmp513,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp513,
	lui	$5,%hi(.LC82)	 # tmp514,
	addiu	$5,$5,%lo(.LC82)	 #, tmp514,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L91:
	lui	$4,%hi(Disass_Str)	 # tmp516,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp516,
	lui	$5,%hi(.LC83)	 # tmp517,
	addiu	$5,$5,%lo(.LC83)	 #, tmp517,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L92:
	lui	$4,%hi(Disass_Str)	 # tmp519,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp519,
	lui	$5,%hi(.LC84)	 # tmp520,
	addiu	$5,$5,%lo(.LC84)	 #, tmp520,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L93:
	lui	$4,%hi(Disass_Str)	 # tmp522,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp522,
	lui	$5,%hi(.LC85)	 # tmp523,
	addiu	$5,$5,%lo(.LC85)	 #, tmp523,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L94:
	lui	$4,%hi(Disass_Str)	 # tmp525,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp525,
	lui	$5,%hi(.LC86)	 # tmp526,
	addiu	$5,$5,%lo(.LC86)	 #, tmp526,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L95:
	lui	$4,%hi(Disass_Str)	 # tmp528,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp528,
	lui	$5,%hi(.LC87)	 # tmp529,
	addiu	$5,$5,%lo(.LC87)	 #, tmp529,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L96:
	lui	$4,%hi(Disass_Str)	 # tmp531,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp531,
	lui	$5,%hi(.LC88)	 # tmp532,
	addiu	$5,$5,%lo(.LC88)	 #, tmp532,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L97:
	lui	$4,%hi(Disass_Str)	 # tmp534,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp534,
	lui	$5,%hi(.LC89)	 # tmp535,
	addiu	$5,$5,%lo(.LC89)	 #, tmp535,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L98:
	lui	$4,%hi(Disass_Str)	 # tmp537,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp537,
	lui	$5,%hi(.LC90)	 # tmp538,
	addiu	$5,$5,%lo(.LC90)	 #, tmp538,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L99:
	lui	$4,%hi(Disass_Str)	 # tmp540,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp540,
	lui	$5,%hi(.LC91)	 # tmp541,
	addiu	$5,$5,%lo(.LC91)	 #, tmp541,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,3			# 0x3	 # len,

.L100:
	lbu	$4,3($2)	 #,
	addiu	$4,$4,-6	 # tmp543, tmp542,
	andi	$5,$4,0x00ff	 # tmp544, tmp543
	sltu	$5,$5,249	 # tmp545, tmp544,
	beq	$5,$0,.L143	 #, tmp545,,
	lui	$16,%hi(Disass_Str)	 # tmp645,

	andi	$4,$4,0x00ff	 # tmp546, tmp543
	sll	$4,$4,2	 # tmp547, tmp546,
	lui	$5,%hi(.L140)	 # tmp550,
	addiu	$5,$5,%lo(.L140)	 # tmp549, tmp550,
	addu	$4,$5,$4	 # tmp548, tmp549, tmp547
	lw	$4,0($4)	 # tmp551,
	j	$4
	nop
	 # tmp551
	.align	2
	.align	2
.L140:
	.word	.L109
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L110
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L111
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L112
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L113
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L114
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L115
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L116
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L117
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L118
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L119
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L120
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L121
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L122
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L123
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L124
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L125
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L126
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L127
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L128
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L129
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L130
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L131
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L132
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L133
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L134
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L135
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L136
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L137
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L138
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L139
.L109:
	lui	$4,%hi(Disass_Str)	 # tmp553,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp553,
	lui	$5,%hi(.LC92)	 # tmp554,
	addiu	$5,$5,%lo(.LC92)	 #, tmp554,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L110:
	lui	$4,%hi(Disass_Str)	 # tmp556,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp556,
	lui	$5,%hi(.LC93)	 # tmp557,
	addiu	$5,$5,%lo(.LC93)	 #, tmp557,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L111:
	lui	$4,%hi(Disass_Str)	 # tmp559,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp559,
	lui	$5,%hi(.LC94)	 # tmp560,
	addiu	$5,$5,%lo(.LC94)	 #, tmp560,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L112:
	lui	$4,%hi(Disass_Str)	 # tmp562,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp562,
	lui	$5,%hi(.LC95)	 # tmp563,
	addiu	$5,$5,%lo(.LC95)	 #, tmp563,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L113:
	lui	$4,%hi(Disass_Str)	 # tmp565,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp565,
	lui	$5,%hi(.LC96)	 # tmp566,
	addiu	$5,$5,%lo(.LC96)	 #, tmp566,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L114:
	lui	$4,%hi(Disass_Str)	 # tmp568,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp568,
	lui	$5,%hi(.LC97)	 # tmp569,
	addiu	$5,$5,%lo(.LC97)	 #, tmp569,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L115:
	lui	$4,%hi(Disass_Str)	 # tmp571,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp571,
	lui	$5,%hi(.LC98)	 # tmp572,
	addiu	$5,$5,%lo(.LC98)	 #, tmp572,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L116:
	lui	$4,%hi(Disass_Str)	 # tmp574,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp574,
	lui	$5,%hi(.LC99)	 # tmp575,
	addiu	$5,$5,%lo(.LC99)	 #, tmp575,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L117:
	lui	$4,%hi(Disass_Str)	 # tmp577,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp577,
	lui	$5,%hi(.LC100)	 # tmp578,
	addiu	$5,$5,%lo(.LC100)	 #, tmp578,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L118:
	lui	$4,%hi(Disass_Str)	 # tmp580,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp580,
	lui	$5,%hi(.LC101)	 # tmp581,
	addiu	$5,$5,%lo(.LC101)	 #, tmp581,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L119:
	lui	$4,%hi(Disass_Str)	 # tmp583,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp583,
	lui	$5,%hi(.LC102)	 # tmp584,
	addiu	$5,$5,%lo(.LC102)	 #, tmp584,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L120:
	lui	$4,%hi(Disass_Str)	 # tmp586,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp586,
	lui	$5,%hi(.LC103)	 # tmp587,
	addiu	$5,$5,%lo(.LC103)	 #, tmp587,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L121:
	lui	$4,%hi(Disass_Str)	 # tmp589,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp589,
	lui	$5,%hi(.LC104)	 # tmp590,
	addiu	$5,$5,%lo(.LC104)	 #, tmp590,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L122:
	lui	$4,%hi(Disass_Str)	 # tmp592,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp592,
	lui	$5,%hi(.LC105)	 # tmp593,
	addiu	$5,$5,%lo(.LC105)	 #, tmp593,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L123:
	lui	$4,%hi(Disass_Str)	 # tmp595,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp595,
	lui	$5,%hi(.LC106)	 # tmp596,
	addiu	$5,$5,%lo(.LC106)	 #, tmp596,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L124:
	lui	$4,%hi(Disass_Str)	 # tmp598,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp598,
	lui	$5,%hi(.LC107)	 # tmp599,
	addiu	$5,$5,%lo(.LC107)	 #, tmp599,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L125:
	lui	$4,%hi(Disass_Str)	 # tmp601,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp601,
	lui	$5,%hi(.LC108)	 # tmp602,
	addiu	$5,$5,%lo(.LC108)	 #, tmp602,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L126:
	lui	$4,%hi(Disass_Str)	 # tmp604,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp604,
	lui	$5,%hi(.LC109)	 # tmp605,
	addiu	$5,$5,%lo(.LC109)	 #, tmp605,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L127:
	lui	$4,%hi(Disass_Str)	 # tmp607,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp607,
	lui	$5,%hi(.LC110)	 # tmp608,
	addiu	$5,$5,%lo(.LC110)	 #, tmp608,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L128:
	lui	$4,%hi(Disass_Str)	 # tmp610,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp610,
	lui	$5,%hi(.LC111)	 # tmp611,
	addiu	$5,$5,%lo(.LC111)	 #, tmp611,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L129:
	lui	$4,%hi(Disass_Str)	 # tmp613,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp613,
	lui	$5,%hi(.LC112)	 # tmp614,
	addiu	$5,$5,%lo(.LC112)	 #, tmp614,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L130:
	lui	$4,%hi(Disass_Str)	 # tmp616,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp616,
	lui	$5,%hi(.LC113)	 # tmp617,
	addiu	$5,$5,%lo(.LC113)	 #, tmp617,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L131:
	lui	$4,%hi(Disass_Str)	 # tmp619,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp619,
	lui	$5,%hi(.LC114)	 # tmp620,
	addiu	$5,$5,%lo(.LC114)	 #, tmp620,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L132:
	lui	$4,%hi(Disass_Str)	 # tmp622,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp622,
	lui	$5,%hi(.LC115)	 # tmp623,
	addiu	$5,$5,%lo(.LC115)	 #, tmp623,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L133:
	lui	$4,%hi(Disass_Str)	 # tmp625,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp625,
	lui	$5,%hi(.LC116)	 # tmp626,
	addiu	$5,$5,%lo(.LC116)	 #, tmp626,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L134:
	lui	$4,%hi(Disass_Str)	 # tmp628,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp628,
	lui	$5,%hi(.LC117)	 # tmp629,
	addiu	$5,$5,%lo(.LC117)	 #, tmp629,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L135:
	lui	$4,%hi(Disass_Str)	 # tmp631,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp631,
	lui	$5,%hi(.LC118)	 # tmp632,
	addiu	$5,$5,%lo(.LC118)	 #, tmp632,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L136:
	lui	$4,%hi(Disass_Str)	 # tmp634,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp634,
	lui	$5,%hi(.LC119)	 # tmp635,
	addiu	$5,$5,%lo(.LC119)	 #, tmp635,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L137:
	lui	$4,%hi(Disass_Str)	 # tmp637,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp637,
	lui	$5,%hi(.LC120)	 # tmp638,
	addiu	$5,$5,%lo(.LC120)	 #, tmp638,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L138:
	lui	$4,%hi(Disass_Str)	 # tmp640,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp640,
	lui	$5,%hi(.LC121)	 # tmp641,
	addiu	$5,$5,%lo(.LC121)	 #, tmp641,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L139:
	lui	$4,%hi(Disass_Str)	 # tmp643,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp643,
	lui	$5,%hi(.LC122)	 # tmp644,
	addiu	$5,$5,%lo(.LC122)	 #, tmp644,
	move	$6,$3	 #, ireg
	jal	sprintf	 #
	lbu	$7,2($2)	 #,

	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L108:
	lui	$16,%hi(Disass_Str)	 # tmp645,
.L143:
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp645,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp648, tmp645,
	addu	$16,$16,$2	 # tmp647, tmp648,
	lui	$2,%hi(.LC60)	 # tmp650,
	lw	$2,%lo(.LC60)($2)	 # tmp651,
	swl	$2,3($16)	 # tmp651, Disass_Str
	swr	$2,0($16)	 # tmp651, Disass_Str
	j	.L71	 #
	li	$2,4			# 0x4	 # len,

.L101:
	lui	$4,%hi(Disass_Str)	 # tmp652,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp652,
	lui	$5,%hi(.LC123)	 # tmp653,
	addiu	$5,$5,%lo(.LC123)	 #, tmp653,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L102:
	lui	$4,%hi(Disass_Str)	 # tmp654,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp654,
	lui	$5,%hi(.LC124)	 # tmp655,
	addiu	$5,$5,%lo(.LC124)	 #, tmp655,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L103:
	lui	$4,%hi(Disass_Str)	 # tmp656,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp656,
	lui	$5,%hi(.LC125)	 # tmp657,
	addiu	$5,$5,%lo(.LC125)	 #, tmp657,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L104:
	lui	$4,%hi(Disass_Str)	 # tmp658,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp658,
	lui	$5,%hi(.LC126)	 # tmp659,
	addiu	$5,$5,%lo(.LC126)	 #, tmp659,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L105:
	lui	$4,%hi(Disass_Str)	 # tmp660,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp660,
	lui	$5,%hi(.LC127)	 # tmp661,
	addiu	$5,$5,%lo(.LC127)	 #, tmp661,
	jal	sprintf	 #
	move	$6,$3	 #, ireg

	j	.L71	 #
	li	$2,2			# 0x2	 # len,

.L72:
	lui	$16,%hi(Disass_Str)	 # tmp662,
.L142:
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp662,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp665, tmp662,
	addu	$16,$16,$2	 # tmp664, tmp665,
	lui	$2,%hi(.LC60)	 # tmp667,
	lw	$2,%lo(.LC60)($2)	 # tmp668,
	swl	$2,3($16)	 # tmp668, Disass_Str
	swr	$2,0($16)	 # tmp668, Disass_Str
	li	$2,3			# 0x3	 # len,
.L71:
	lw	$31,28($sp)	 #,
	lw	$16,24($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	ddfd
	.size	ddfd, .-ddfd
	.section	.rodata,code
	.align	2
.LC128:
	.ascii	"RLC\011%s\012\000"
	.align	2
.LC129:
	.ascii	"RRC\011%s\012\000"
	.align	2
.LC130:
	.ascii	"RL\011%s\012\000"
	.align	2
.LC131:
	.ascii	"RR\011%s\012\000"
	.align	2
.LC132:
	.ascii	"SLA\011%s\012\000"
	.align	2
.LC133:
	.ascii	"SRA\011%s\012\000"
	.align	2
.LC134:
	.ascii	"SRL\011%s\012\000"
	.align	2
.LC135:
	.ascii	"BIT\011%c,%s\012\000"
	.align	2
.LC136:
	.ascii	"RES\011%c,%s\012\000"
	.align	2
.LC137:
	.ascii	"SET\011%c,%s\012\000"
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	cbop
	.type	cbop, @function
cbop:
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
	lw	$2,0($5)	 # tmp265,* p
	lbu	$2,1($2)	 # b2,
	sltu	$3,$2,8	 # tmp266, b2,
	beq	$3,$0,.L145	 #, tmp266,,
	addiu	$3,$2,-8	 # tmp275, b2,

	andi	$2,$2,0x7	 # tmp268, b2,
	sll	$2,$2,2	 # tmp269, tmp268,
	lui	$3,%hi(reg)	 # tmp267,
	addiu	$3,$3,%lo(reg)	 # tmp271, tmp267,
	addu	$2,$2,$3	 # tmp270, tmp269, tmp271
	lui	$4,%hi(Disass_Str)	 # tmp273,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp273,
	lui	$5,%hi(.LC128)	 # tmp274,
	addiu	$5,$5,%lo(.LC128)	 #, tmp274,
	jal	sprintf	 #
	lw	$6,0($2)	 #, reg

	j	.L156	 #
	li	$2,2			# 0x2	 #,

.L145:
	sltu	$3,$3,8	 # tmp276, tmp275,
	beq	$3,$0,.L147	 #, tmp276,,
	addiu	$3,$2,-16	 # tmp285, b2,

	andi	$2,$2,0x7	 # tmp278, b2,
	sll	$2,$2,2	 # tmp279, tmp278,
	lui	$3,%hi(reg)	 # tmp277,
	addiu	$3,$3,%lo(reg)	 # tmp281, tmp277,
	addu	$2,$2,$3	 # tmp280, tmp279, tmp281
	lui	$4,%hi(Disass_Str)	 # tmp283,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp283,
	lui	$5,%hi(.LC129)	 # tmp284,
	addiu	$5,$5,%lo(.LC129)	 #, tmp284,
	jal	sprintf	 #
	lw	$6,0($2)	 #, reg

	j	.L156	 #
	li	$2,2			# 0x2	 #,

.L147:
	sltu	$3,$3,8	 # tmp286, tmp285,
	beq	$3,$0,.L148	 #, tmp286,,
	addiu	$3,$2,-24	 # tmp295, b2,

	andi	$2,$2,0x7	 # tmp288, b2,
	sll	$2,$2,2	 # tmp289, tmp288,
	lui	$3,%hi(reg)	 # tmp287,
	addiu	$3,$3,%lo(reg)	 # tmp291, tmp287,
	addu	$2,$2,$3	 # tmp290, tmp289, tmp291
	lui	$4,%hi(Disass_Str)	 # tmp293,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp293,
	lui	$5,%hi(.LC130)	 # tmp294,
	addiu	$5,$5,%lo(.LC130)	 #, tmp294,
	jal	sprintf	 #
	lw	$6,0($2)	 #, reg

	j	.L156	 #
	li	$2,2			# 0x2	 #,

.L148:
	sltu	$3,$3,8	 # tmp296, tmp295,
	beq	$3,$0,.L149	 #, tmp296,,
	addiu	$3,$2,-32	 # tmp305, b2,

	andi	$2,$2,0x7	 # tmp298, b2,
	sll	$2,$2,2	 # tmp299, tmp298,
	lui	$3,%hi(reg)	 # tmp297,
	addiu	$3,$3,%lo(reg)	 # tmp301, tmp297,
	addu	$2,$2,$3	 # tmp300, tmp299, tmp301
	lui	$4,%hi(Disass_Str)	 # tmp303,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp303,
	lui	$5,%hi(.LC131)	 # tmp304,
	addiu	$5,$5,%lo(.LC131)	 #, tmp304,
	jal	sprintf	 #
	lw	$6,0($2)	 #, reg

	j	.L156	 #
	li	$2,2			# 0x2	 #,

.L149:
	sltu	$3,$3,8	 # tmp306, tmp305,
	beq	$3,$0,.L150	 #, tmp306,,
	addiu	$3,$2,-40	 # tmp315, b2,

	andi	$2,$2,0x7	 # tmp308, b2,
	sll	$2,$2,2	 # tmp309, tmp308,
	lui	$3,%hi(reg)	 # tmp307,
	addiu	$3,$3,%lo(reg)	 # tmp311, tmp307,
	addu	$2,$2,$3	 # tmp310, tmp309, tmp311
	lui	$4,%hi(Disass_Str)	 # tmp313,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp313,
	lui	$5,%hi(.LC132)	 # tmp314,
	addiu	$5,$5,%lo(.LC132)	 #, tmp314,
	jal	sprintf	 #
	lw	$6,0($2)	 #, reg

	j	.L156	 #
	li	$2,2			# 0x2	 #,

.L150:
	sltu	$3,$3,8	 # tmp316, tmp315,
	beq	$3,$0,.L151	 #, tmp316,,
	addiu	$3,$2,-56	 # tmp325, b2,

	andi	$2,$2,0x7	 # tmp318, b2,
	sll	$2,$2,2	 # tmp319, tmp318,
	lui	$3,%hi(reg)	 # tmp317,
	addiu	$3,$3,%lo(reg)	 # tmp321, tmp317,
	addu	$2,$2,$3	 # tmp320, tmp319, tmp321
	lui	$4,%hi(Disass_Str)	 # tmp323,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp323,
	lui	$5,%hi(.LC133)	 # tmp324,
	addiu	$5,$5,%lo(.LC133)	 #, tmp324,
	jal	sprintf	 #
	lw	$6,0($2)	 #, reg

	j	.L156	 #
	li	$2,2			# 0x2	 #,

.L151:
	sltu	$3,$3,8	 # tmp326, tmp325,
	beq	$3,$0,.L152	 #, tmp326,,
	addiu	$3,$2,-64	 # tmp335, b2,

	andi	$2,$2,0x7	 # tmp328, b2,
	sll	$2,$2,2	 # tmp329, tmp328,
	lui	$3,%hi(reg)	 # tmp327,
	addiu	$3,$3,%lo(reg)	 # tmp331, tmp327,
	addu	$2,$2,$3	 # tmp330, tmp329, tmp331
	lui	$4,%hi(Disass_Str)	 # tmp333,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp333,
	lui	$5,%hi(.LC134)	 # tmp334,
	addiu	$5,$5,%lo(.LC134)	 #, tmp334,
	jal	sprintf	 #
	lw	$6,0($2)	 #, reg

	j	.L156	 #
	li	$2,2			# 0x2	 #,

.L152:
	sltu	$3,$3,64	 # tmp336, tmp335,
	beq	$3,$0,.L153	 #, tmp336,,
	addiu	$3,$2,-128	 # tmp348, b2,

	ext	$6,$2,3,3	 # tmp338, b2,,
	andi	$2,$2,0x7	 # tmp341, b2,
	sll	$2,$2,2	 # tmp342, tmp341,
	lui	$3,%hi(reg)	 # tmp340,
	addiu	$3,$3,%lo(reg)	 # tmp344, tmp340,
	addu	$2,$2,$3	 # tmp343, tmp342, tmp344
	lui	$4,%hi(Disass_Str)	 # tmp346,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp346,
	lui	$5,%hi(.LC135)	 # tmp347,
	addiu	$5,$5,%lo(.LC135)	 #, tmp347,
	addiu	$6,$6,48	 #, tmp338,
	jal	sprintf	 #
	lw	$7,0($2)	 #, reg

	j	.L156	 #
	li	$2,2			# 0x2	 #,

.L153:
	sltu	$3,$3,64	 # tmp349, tmp348,
	beq	$3,$0,.L154	 #, tmp349,,
	slt	$3,$2,192	 # tmp361, b2,

	ext	$6,$2,3,3	 # tmp351, b2,,
	andi	$2,$2,0x7	 # tmp354, b2,
	sll	$2,$2,2	 # tmp355, tmp354,
	lui	$3,%hi(reg)	 # tmp353,
	addiu	$3,$3,%lo(reg)	 # tmp357, tmp353,
	addu	$2,$2,$3	 # tmp356, tmp355, tmp357
	lui	$4,%hi(Disass_Str)	 # tmp359,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp359,
	lui	$5,%hi(.LC136)	 # tmp360,
	addiu	$5,$5,%lo(.LC136)	 #, tmp360,
	addiu	$6,$6,48	 #, tmp351,
	jal	sprintf	 #
	lw	$7,0($2)	 #, reg

	j	.L156	 #
	li	$2,2			# 0x2	 #,

.L154:
	bne	$3,$0,.L155	 #, tmp361,,
	lui	$16,%hi(Disass_Str)	 # tmp373,

	ext	$6,$2,3,3	 # tmp363, b2,,
	andi	$2,$2,0x7	 # tmp366, b2,
	sll	$2,$2,2	 # tmp367, tmp366,
	lui	$3,%hi(reg)	 # tmp365,
	addiu	$3,$3,%lo(reg)	 # tmp369, tmp365,
	addu	$2,$2,$3	 # tmp368, tmp367, tmp369
	lui	$4,%hi(Disass_Str)	 # tmp371,
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp371,
	lui	$5,%hi(.LC137)	 # tmp372,
	addiu	$5,$5,%lo(.LC137)	 #, tmp372,
	addiu	$6,$6,48	 #, tmp363,
	jal	sprintf	 #
	lw	$7,0($2)	 #, reg

	j	.L156	 #
	li	$2,2			# 0x2	 #,

.L155:
	jal	strlen	 #
	addiu	$4,$16,%lo(Disass_Str)	 #, tmp373,

	addiu	$16,$16,%lo(Disass_Str)	 # tmp376, tmp373,
	addu	$16,$16,$2	 # tmp375, tmp376,
	lui	$2,%hi(.LC60)	 # tmp378,
	lw	$2,%lo(.LC60)($2)	 # tmp379,
	swl	$2,3($16)	 # tmp379, Disass_Str
	swr	$2,0($16)	 # tmp379, Disass_Str
	li	$2,2			# 0x2	 #,
.L156:
	lw	$31,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cbop
	.size	cbop, .-cbop
	.align	2
	.globl	disass
	.set	nomips16
	.set	nomicromips
	.ent	disass
	.type	disass, @function
disass:
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
	move	$16,$4	 # p, p
	sw	$5,%gp_rel(addr)($28)	 # adr, addr
	lw	$2,0($4)	 # tmp229,* p
	lbu	$3,0($2)	 # D.7013,
	sll	$3,$3,3	 # tmp231, D.7013,
	lui	$2,%hi(optab)	 # tmp230,
	addiu	$2,$2,%lo(optab)	 # tmp233, tmp230,
	addu	$3,$3,$2	 # tmp232, tmp231, tmp233
	lw	$2,0($3)	 # optab[D.7013_5].fun, optab[D.7013_5].fun
	lw	$4,4($3)	 #, optab[D.7013_5].text
	jalr	$2	 # optab[D.7013_5].fun
	move	$5,$16	 #, p

	move	$17,$2	 # len,
	lui	$4,%hi(Disass_Str)	 # tmp240,
	jal	printf	 #
	addiu	$4,$4,%lo(Disass_Str)	 #, tmp240,

	lw	$2,0($16)	 # tmp241,* p
	addu	$17,$2,$17	 # tmp242, tmp241, len
	sw	$17,0($16)	 # tmp242,* p
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	disass
	.size	disass, .-disass

	.comm	Disass_Str,64,4

	.comm	Opcode_Str,64,4
	.section	.sbss,bss,near
	.align	2
	.type	addr, @object
	.size	addr, 4
addr:
	.space	4
	.section	.rodata,code
	.align	2
.LC138:
	.ascii	"NOP\000"
	.align	2
.LC139:
	.ascii	"LD\011BC,\000"
	.align	2
.LC140:
	.ascii	"LD\011(BC),A\000"
	.align	2
.LC141:
	.ascii	"INC\011BC\000"
	.align	2
.LC142:
	.ascii	"INC\011B\000"
	.align	2
.LC143:
	.ascii	"DEC\011B\000"
	.align	2
.LC144:
	.ascii	"LD\011B,\000"
	.align	2
.LC145:
	.ascii	"RLCA\000"
	.align	2
.LC146:
	.ascii	"EX\011AF,AF'\000"
	.align	2
.LC147:
	.ascii	"ADD\011HL,BC\000"
	.align	2
.LC148:
	.ascii	"LD\011A,(BC)\000"
	.align	2
.LC149:
	.ascii	"DEC\011BC\000"
	.align	2
.LC150:
	.ascii	"INC\011C\000"
	.align	2
.LC151:
	.ascii	"DEC\011C\000"
	.align	2
.LC152:
	.ascii	"LD\011C,\000"
	.align	2
.LC153:
	.ascii	"RRCA\000"
	.align	2
.LC154:
	.ascii	"DJNZ\011\000"
	.align	2
.LC155:
	.ascii	"LD\011DE,\000"
	.align	2
.LC156:
	.ascii	"LD\011(DE),A\000"
	.align	2
.LC157:
	.ascii	"INC\011DE\000"
	.align	2
.LC158:
	.ascii	"INC\011D\000"
	.align	2
.LC159:
	.ascii	"DEC\011D\000"
	.align	2
.LC160:
	.ascii	"LD\011D,\000"
	.align	2
.LC161:
	.ascii	"RLA\000"
	.align	2
.LC162:
	.ascii	"JR\011\000"
	.align	2
.LC163:
	.ascii	"ADD\011HL,DE\000"
	.align	2
.LC164:
	.ascii	"LD\011A,(DE)\000"
	.align	2
.LC165:
	.ascii	"DEC\011DE\000"
	.align	2
.LC166:
	.ascii	"INC\011E\000"
	.align	2
.LC167:
	.ascii	"DEC\011E\000"
	.align	2
.LC168:
	.ascii	"LD\011E,\000"
	.align	2
.LC169:
	.ascii	"RRA\000"
	.align	2
.LC170:
	.ascii	"JR\011NZ,\000"
	.align	2
.LC171:
	.ascii	"LD\011HL,\000"
	.align	2
.LC172:
	.ascii	"LD\011(%04X),HL\000"
	.align	2
.LC173:
	.ascii	"INC\011HL\000"
	.align	2
.LC174:
	.ascii	"INC\011H\000"
	.align	2
.LC175:
	.ascii	"DEC\011H\000"
	.align	2
.LC176:
	.ascii	"LD\011H,\000"
	.align	2
.LC177:
	.ascii	"DAA\000"
	.align	2
.LC178:
	.ascii	"JR\011Z,\000"
	.align	2
.LC179:
	.ascii	"ADD\011HL,HL\000"
	.align	2
.LC180:
	.ascii	"LD\011HL,(%04X)\000"
	.align	2
.LC181:
	.ascii	"DEC\011HL\000"
	.align	2
.LC182:
	.ascii	"INC\011L\000"
	.align	2
.LC183:
	.ascii	"DEC\011L\000"
	.align	2
.LC184:
	.ascii	"LD\011L,\000"
	.align	2
.LC185:
	.ascii	"CPL\000"
	.align	2
.LC186:
	.ascii	"JR\011NC,\000"
	.align	2
.LC187:
	.ascii	"LD\011SP,\000"
	.align	2
.LC188:
	.ascii	"LD\011(%04X),A\000"
	.align	2
.LC189:
	.ascii	"INC\011SP\000"
	.align	2
.LC190:
	.ascii	"INC\011(HL)\000"
	.align	2
.LC191:
	.ascii	"DEC\011(HL)\000"
	.align	2
.LC192:
	.ascii	"LD\011(HL),\000"
	.align	2
.LC193:
	.ascii	"SCF\000"
	.align	2
.LC194:
	.ascii	"JR\011C,\000"
	.align	2
.LC195:
	.ascii	"ADD\011HL,SP\000"
	.align	2
.LC196:
	.ascii	"LD\011A,(%04X)\000"
	.align	2
.LC197:
	.ascii	"DEC\011SP\000"
	.align	2
.LC198:
	.ascii	"INC\011A\000"
	.align	2
.LC199:
	.ascii	"DEC\011A\000"
	.align	2
.LC200:
	.ascii	"LD\011A,\000"
	.align	2
.LC201:
	.ascii	"CCF\000"
	.align	2
.LC202:
	.ascii	"LD\011B,B\000"
	.align	2
.LC203:
	.ascii	"LD\011B,C\000"
	.align	2
.LC204:
	.ascii	"LD\011B,D\000"
	.align	2
.LC205:
	.ascii	"LD\011B,E\000"
	.align	2
.LC206:
	.ascii	"LD\011B,H\000"
	.align	2
.LC207:
	.ascii	"LD\011B,L\000"
	.align	2
.LC208:
	.ascii	"LD\011B,(HL)\000"
	.align	2
.LC209:
	.ascii	"LD\011B,A\000"
	.align	2
.LC210:
	.ascii	"LD\011C,B\000"
	.align	2
.LC211:
	.ascii	"LD\011C,C\000"
	.align	2
.LC212:
	.ascii	"LD\011C,D\000"
	.align	2
.LC213:
	.ascii	"LD\011C,E\000"
	.align	2
.LC214:
	.ascii	"LD\011C,H\000"
	.align	2
.LC215:
	.ascii	"LD\011C,L\000"
	.align	2
.LC216:
	.ascii	"LD\011C,(HL)\000"
	.align	2
.LC217:
	.ascii	"LD\011C,A\000"
	.align	2
.LC218:
	.ascii	"LD\011D,B\000"
	.align	2
.LC219:
	.ascii	"LD\011D,C\000"
	.align	2
.LC220:
	.ascii	"LD\011D,D\000"
	.align	2
.LC221:
	.ascii	"LD\011D,E\000"
	.align	2
.LC222:
	.ascii	"LD\011D,H\000"
	.align	2
.LC223:
	.ascii	"LD\011D,L\000"
	.align	2
.LC224:
	.ascii	"LD\011D,(HL)\000"
	.align	2
.LC225:
	.ascii	"LD\011D,A\000"
	.align	2
.LC226:
	.ascii	"LD\011E,B\000"
	.align	2
.LC227:
	.ascii	"LD\011E,C\000"
	.align	2
.LC228:
	.ascii	"LD\011E,D\000"
	.align	2
.LC229:
	.ascii	"LD\011E,E\000"
	.align	2
.LC230:
	.ascii	"LD\011E,H\000"
	.align	2
.LC231:
	.ascii	"LD\011E,L\000"
	.align	2
.LC232:
	.ascii	"LD\011E,(HL)\000"
	.align	2
.LC233:
	.ascii	"LD\011E,A\000"
	.align	2
.LC234:
	.ascii	"LD\011H,B\000"
	.align	2
.LC235:
	.ascii	"LD\011H,C\000"
	.align	2
.LC236:
	.ascii	"LD\011H,D\000"
	.align	2
.LC237:
	.ascii	"LD\011H,E\000"
	.align	2
.LC238:
	.ascii	"LD\011H,H\000"
	.align	2
.LC239:
	.ascii	"LD\011H,L\000"
	.align	2
.LC240:
	.ascii	"LD\011H,(HL)\000"
	.align	2
.LC241:
	.ascii	"LD\011H,A\000"
	.align	2
.LC242:
	.ascii	"LD\011L,B\000"
	.align	2
.LC243:
	.ascii	"LD\011L,C\000"
	.align	2
.LC244:
	.ascii	"LD\011L,D\000"
	.align	2
.LC245:
	.ascii	"LD\011L,E\000"
	.align	2
.LC246:
	.ascii	"LD\011L,H\000"
	.align	2
.LC247:
	.ascii	"LD\011L,L\000"
	.align	2
.LC248:
	.ascii	"LD\011L,(HL)\000"
	.align	2
.LC249:
	.ascii	"LD\011L,A\000"
	.align	2
.LC250:
	.ascii	"LD\011(HL),B\000"
	.align	2
.LC251:
	.ascii	"LD\011(HL),C\000"
	.align	2
.LC252:
	.ascii	"LD\011(HL),D\000"
	.align	2
.LC253:
	.ascii	"LD\011(HL),E\000"
	.align	2
.LC254:
	.ascii	"LD\011(HL),H\000"
	.align	2
.LC255:
	.ascii	"LD\011(HL),L\000"
	.align	2
.LC256:
	.ascii	"HALT\000"
	.align	2
.LC257:
	.ascii	"LD\011(HL),A\000"
	.align	2
.LC258:
	.ascii	"LD\011A,B\000"
	.align	2
.LC259:
	.ascii	"LD\011A,C\000"
	.align	2
.LC260:
	.ascii	"LD\011A,D\000"
	.align	2
.LC261:
	.ascii	"LD\011A,E\000"
	.align	2
.LC262:
	.ascii	"LD\011A,H\000"
	.align	2
.LC263:
	.ascii	"LD\011A,L\000"
	.align	2
.LC264:
	.ascii	"LD\011A,(HL)\000"
	.align	2
.LC265:
	.ascii	"LD\011A,A\000"
	.align	2
.LC266:
	.ascii	"ADD\011A,B\000"
	.align	2
.LC267:
	.ascii	"ADD\011A,C\000"
	.align	2
.LC268:
	.ascii	"ADD\011A,D\000"
	.align	2
.LC269:
	.ascii	"ADD\011A,E\000"
	.align	2
.LC270:
	.ascii	"ADD\011A,H\000"
	.align	2
.LC271:
	.ascii	"ADD\011A,L\000"
	.align	2
.LC272:
	.ascii	"ADD\011A,(HL)\000"
	.align	2
.LC273:
	.ascii	"ADD\011A,A\000"
	.align	2
.LC274:
	.ascii	"ADC\011A,B\000"
	.align	2
.LC275:
	.ascii	"ADC\011A,C\000"
	.align	2
.LC276:
	.ascii	"ADC\011A,D\000"
	.align	2
.LC277:
	.ascii	"ADC\011A,E\000"
	.align	2
.LC278:
	.ascii	"ADC\011A,H\000"
	.align	2
.LC279:
	.ascii	"ADC\011A,L\000"
	.align	2
.LC280:
	.ascii	"ADC\011A,(HL)\000"
	.align	2
.LC281:
	.ascii	"ADC\011A,A\000"
	.align	2
.LC282:
	.ascii	"SUB\011B\000"
	.align	2
.LC283:
	.ascii	"SUB\011C\000"
	.align	2
.LC284:
	.ascii	"SUB\011D\000"
	.align	2
.LC285:
	.ascii	"SUB\011E\000"
	.align	2
.LC286:
	.ascii	"SUB\011H\000"
	.align	2
.LC287:
	.ascii	"SUB\011L\000"
	.align	2
.LC288:
	.ascii	"SUB\011(HL)\000"
	.align	2
.LC289:
	.ascii	"SUB\011A\000"
	.align	2
.LC290:
	.ascii	"SBC\011A,B\000"
	.align	2
.LC291:
	.ascii	"SBC\011A,C\000"
	.align	2
.LC292:
	.ascii	"SBC\011A,D\000"
	.align	2
.LC293:
	.ascii	"SBC\011A,E\000"
	.align	2
.LC294:
	.ascii	"SBC\011A,H\000"
	.align	2
.LC295:
	.ascii	"SBC\011A,L\000"
	.align	2
.LC296:
	.ascii	"SBC\011A,(HL)\000"
	.align	2
.LC297:
	.ascii	"SBC\011A,A\000"
	.align	2
.LC298:
	.ascii	"AND\011B\000"
	.align	2
.LC299:
	.ascii	"AND\011C\000"
	.align	2
.LC300:
	.ascii	"AND\011D\000"
	.align	2
.LC301:
	.ascii	"AND\011E\000"
	.align	2
.LC302:
	.ascii	"AND\011H\000"
	.align	2
.LC303:
	.ascii	"AND\011L\000"
	.align	2
.LC304:
	.ascii	"AND\011(HL)\000"
	.align	2
.LC305:
	.ascii	"AND\011A\000"
	.align	2
.LC306:
	.ascii	"XOR\011B\000"
	.align	2
.LC307:
	.ascii	"XOR\011C\000"
	.align	2
.LC308:
	.ascii	"XOR\011D\000"
	.align	2
.LC309:
	.ascii	"XOR\011E\000"
	.align	2
.LC310:
	.ascii	"XOR\011H\000"
	.align	2
.LC311:
	.ascii	"XOR\011L\000"
	.align	2
.LC312:
	.ascii	"XOR\011(HL)\000"
	.align	2
.LC313:
	.ascii	"XOR\011A\000"
	.align	2
.LC314:
	.ascii	"OR\011B\000"
	.align	2
.LC315:
	.ascii	"OR\011C\000"
	.align	2
.LC316:
	.ascii	"OR\011D\000"
	.align	2
.LC317:
	.ascii	"OR\011E\000"
	.align	2
.LC318:
	.ascii	"OR\011H\000"
	.align	2
.LC319:
	.ascii	"OR\011L\000"
	.align	2
.LC320:
	.ascii	"OR\011(HL)\000"
	.align	2
.LC321:
	.ascii	"OR\011A\000"
	.align	2
.LC322:
	.ascii	"CP\011B\000"
	.align	2
.LC323:
	.ascii	"CP\011C\000"
	.align	2
.LC324:
	.ascii	"CP\011D\000"
	.align	2
.LC325:
	.ascii	"CP\011E\000"
	.align	2
.LC326:
	.ascii	"CP\011H\000"
	.align	2
.LC327:
	.ascii	"CP\011L\000"
	.align	2
.LC328:
	.ascii	"CP\011(HL)\000"
	.align	2
.LC329:
	.ascii	"CP\011A\000"
	.align	2
.LC330:
	.ascii	"RET\011NZ\000"
	.align	2
.LC331:
	.ascii	"POP\011BC\000"
	.align	2
.LC332:
	.ascii	"JP\011NZ,\000"
	.align	2
.LC333:
	.ascii	"JP\011\000"
	.align	2
.LC334:
	.ascii	"CALL\011NZ,\000"
	.align	2
.LC335:
	.ascii	"PUSH\011BC\000"
	.align	2
.LC336:
	.ascii	"ADD\011A,\000"
	.align	2
.LC337:
	.ascii	"RST\0110\000"
	.align	2
.LC338:
	.ascii	"RET\011Z\000"
	.align	2
.LC339:
	.ascii	"RET\000"
	.align	2
.LC340:
	.ascii	"JP\011Z,\000"
	.align	2
.LC341:
	.ascii	"\000"
	.align	2
.LC342:
	.ascii	"CALL\011Z,\000"
	.align	2
.LC343:
	.ascii	"CALL\011\000"
	.align	2
.LC344:
	.ascii	"ADC\011A,\000"
	.align	2
.LC345:
	.ascii	"RST\0118\000"
	.align	2
.LC346:
	.ascii	"RET\011NC\000"
	.align	2
.LC347:
	.ascii	"POP\011DE\000"
	.align	2
.LC348:
	.ascii	"JP\011NC,\000"
	.align	2
.LC349:
	.ascii	"OUT\011(%02X),A\000"
	.align	2
.LC350:
	.ascii	"CALL\011NC,\000"
	.align	2
.LC351:
	.ascii	"PUSH\011DE\000"
	.align	2
.LC352:
	.ascii	"SUB\011\000"
	.align	2
.LC353:
	.ascii	"RST\01110\000"
	.align	2
.LC354:
	.ascii	"RET\011C\000"
	.align	2
.LC355:
	.ascii	"EXX\000"
	.align	2
.LC356:
	.ascii	"JP\011C,\000"
	.align	2
.LC357:
	.ascii	"IN\011A,(%02X)\000"
	.align	2
.LC358:
	.ascii	"CALL\011C,\000"
	.align	2
.LC359:
	.ascii	"SBC\011A,\000"
	.align	2
.LC360:
	.ascii	"RST\01118\000"
	.align	2
.LC361:
	.ascii	"RET\011PO\000"
	.align	2
.LC362:
	.ascii	"POP\011HL\000"
	.align	2
.LC363:
	.ascii	"JP\011PO,\000"
	.align	2
.LC364:
	.ascii	"EX\011(SP),HL\000"
	.align	2
.LC365:
	.ascii	"CALL\011PO,\000"
	.align	2
.LC366:
	.ascii	"PUSH\011HL\000"
	.align	2
.LC367:
	.ascii	"AND\011\000"
	.align	2
.LC368:
	.ascii	"RST\01120\000"
	.align	2
.LC369:
	.ascii	"RET\011PE\000"
	.align	2
.LC370:
	.ascii	"JP\011(HL)\000"
	.align	2
.LC371:
	.ascii	"JP\011PE,\000"
	.align	2
.LC372:
	.ascii	"EX\011DE,HL\000"
	.align	2
.LC373:
	.ascii	"CALL\011PE,\000"
	.align	2
.LC374:
	.ascii	"XOR\011\000"
	.align	2
.LC375:
	.ascii	"RST\01128\000"
	.align	2
.LC376:
	.ascii	"RET\011P\000"
	.align	2
.LC377:
	.ascii	"POP\011AF\000"
	.align	2
.LC378:
	.ascii	"JP\011P,\000"
	.align	2
.LC379:
	.ascii	"DI\000"
	.align	2
.LC380:
	.ascii	"CALL\011P,\000"
	.align	2
.LC381:
	.ascii	"PUSH\011AF\000"
	.align	2
.LC382:
	.ascii	"OR\011\000"
	.align	2
.LC383:
	.ascii	"RST\01130\000"
	.align	2
.LC384:
	.ascii	"RET\011M\000"
	.align	2
.LC385:
	.ascii	"LD\011SP,HL\000"
	.align	2
.LC386:
	.ascii	"JP\011M,\000"
	.align	2
.LC387:
	.ascii	"EI\000"
	.align	2
.LC388:
	.ascii	"CALL\011M,\000"
	.align	2
.LC389:
	.ascii	"CP\011\000"
	.align	2
.LC390:
	.ascii	"RST\01138\000"
	.align	2
	.type	optab, @object
	.size	optab, 2048
optab:
 # fun:
	.word	opout
 # text:
	.word	.LC138
 # fun:
	.word	nnout
 # text:
	.word	.LC139
 # fun:
	.word	opout
 # text:
	.word	.LC140
 # fun:
	.word	opout
 # text:
	.word	.LC141
 # fun:
	.word	opout
 # text:
	.word	.LC142
 # fun:
	.word	opout
 # text:
	.word	.LC143
 # fun:
	.word	nout
 # text:
	.word	.LC144
 # fun:
	.word	opout
 # text:
	.word	.LC145
 # fun:
	.word	opout
 # text:
	.word	.LC146
 # fun:
	.word	opout
 # text:
	.word	.LC147
 # fun:
	.word	opout
 # text:
	.word	.LC148
 # fun:
	.word	opout
 # text:
	.word	.LC149
 # fun:
	.word	opout
 # text:
	.word	.LC150
 # fun:
	.word	opout
 # text:
	.word	.LC151
 # fun:
	.word	nout
 # text:
	.word	.LC152
 # fun:
	.word	opout
 # text:
	.word	.LC153
 # fun:
	.word	rout
 # text:
	.word	.LC154
 # fun:
	.word	nnout
 # text:
	.word	.LC155
 # fun:
	.word	opout
 # text:
	.word	.LC156
 # fun:
	.word	opout
 # text:
	.word	.LC157
 # fun:
	.word	opout
 # text:
	.word	.LC158
 # fun:
	.word	opout
 # text:
	.word	.LC159
 # fun:
	.word	nout
 # text:
	.word	.LC160
 # fun:
	.word	opout
 # text:
	.word	.LC161
 # fun:
	.word	rout
 # text:
	.word	.LC162
 # fun:
	.word	opout
 # text:
	.word	.LC163
 # fun:
	.word	opout
 # text:
	.word	.LC164
 # fun:
	.word	opout
 # text:
	.word	.LC165
 # fun:
	.word	opout
 # text:
	.word	.LC166
 # fun:
	.word	opout
 # text:
	.word	.LC167
 # fun:
	.word	nout
 # text:
	.word	.LC168
 # fun:
	.word	opout
 # text:
	.word	.LC169
 # fun:
	.word	rout
 # text:
	.word	.LC170
 # fun:
	.word	nnout
 # text:
	.word	.LC171
 # fun:
	.word	inout
 # text:
	.word	.LC172
 # fun:
	.word	opout
 # text:
	.word	.LC173
 # fun:
	.word	opout
 # text:
	.word	.LC174
 # fun:
	.word	opout
 # text:
	.word	.LC175
 # fun:
	.word	nout
 # text:
	.word	.LC176
 # fun:
	.word	opout
 # text:
	.word	.LC177
 # fun:
	.word	rout
 # text:
	.word	.LC178
 # fun:
	.word	opout
 # text:
	.word	.LC179
 # fun:
	.word	inout
 # text:
	.word	.LC180
 # fun:
	.word	opout
 # text:
	.word	.LC181
 # fun:
	.word	opout
 # text:
	.word	.LC182
 # fun:
	.word	opout
 # text:
	.word	.LC183
 # fun:
	.word	nout
 # text:
	.word	.LC184
 # fun:
	.word	opout
 # text:
	.word	.LC185
 # fun:
	.word	rout
 # text:
	.word	.LC186
 # fun:
	.word	nnout
 # text:
	.word	.LC187
 # fun:
	.word	inout
 # text:
	.word	.LC188
 # fun:
	.word	opout
 # text:
	.word	.LC189
 # fun:
	.word	opout
 # text:
	.word	.LC190
 # fun:
	.word	opout
 # text:
	.word	.LC191
 # fun:
	.word	nout
 # text:
	.word	.LC192
 # fun:
	.word	opout
 # text:
	.word	.LC193
 # fun:
	.word	rout
 # text:
	.word	.LC194
 # fun:
	.word	opout
 # text:
	.word	.LC195
 # fun:
	.word	inout
 # text:
	.word	.LC196
 # fun:
	.word	opout
 # text:
	.word	.LC197
 # fun:
	.word	opout
 # text:
	.word	.LC198
 # fun:
	.word	opout
 # text:
	.word	.LC199
 # fun:
	.word	nout
 # text:
	.word	.LC200
 # fun:
	.word	opout
 # text:
	.word	.LC201
 # fun:
	.word	opout
 # text:
	.word	.LC202
 # fun:
	.word	opout
 # text:
	.word	.LC203
 # fun:
	.word	opout
 # text:
	.word	.LC204
 # fun:
	.word	opout
 # text:
	.word	.LC205
 # fun:
	.word	opout
 # text:
	.word	.LC206
 # fun:
	.word	opout
 # text:
	.word	.LC207
 # fun:
	.word	opout
 # text:
	.word	.LC208
 # fun:
	.word	opout
 # text:
	.word	.LC209
 # fun:
	.word	opout
 # text:
	.word	.LC210
 # fun:
	.word	opout
 # text:
	.word	.LC211
 # fun:
	.word	opout
 # text:
	.word	.LC212
 # fun:
	.word	opout
 # text:
	.word	.LC213
 # fun:
	.word	opout
 # text:
	.word	.LC214
 # fun:
	.word	opout
 # text:
	.word	.LC215
 # fun:
	.word	opout
 # text:
	.word	.LC216
 # fun:
	.word	opout
 # text:
	.word	.LC217
 # fun:
	.word	opout
 # text:
	.word	.LC218
 # fun:
	.word	opout
 # text:
	.word	.LC219
 # fun:
	.word	opout
 # text:
	.word	.LC220
 # fun:
	.word	opout
 # text:
	.word	.LC221
 # fun:
	.word	opout
 # text:
	.word	.LC222
 # fun:
	.word	opout
 # text:
	.word	.LC223
 # fun:
	.word	opout
 # text:
	.word	.LC224
 # fun:
	.word	opout
 # text:
	.word	.LC225
 # fun:
	.word	opout
 # text:
	.word	.LC226
 # fun:
	.word	opout
 # text:
	.word	.LC227
 # fun:
	.word	opout
 # text:
	.word	.LC228
 # fun:
	.word	opout
 # text:
	.word	.LC229
 # fun:
	.word	opout
 # text:
	.word	.LC230
 # fun:
	.word	opout
 # text:
	.word	.LC231
 # fun:
	.word	opout
 # text:
	.word	.LC232
 # fun:
	.word	opout
 # text:
	.word	.LC233
 # fun:
	.word	opout
 # text:
	.word	.LC234
 # fun:
	.word	opout
 # text:
	.word	.LC235
 # fun:
	.word	opout
 # text:
	.word	.LC236
 # fun:
	.word	opout
 # text:
	.word	.LC237
 # fun:
	.word	opout
 # text:
	.word	.LC238
 # fun:
	.word	opout
 # text:
	.word	.LC239
 # fun:
	.word	opout
 # text:
	.word	.LC240
 # fun:
	.word	opout
 # text:
	.word	.LC241
 # fun:
	.word	opout
 # text:
	.word	.LC242
 # fun:
	.word	opout
 # text:
	.word	.LC243
 # fun:
	.word	opout
 # text:
	.word	.LC244
 # fun:
	.word	opout
 # text:
	.word	.LC245
 # fun:
	.word	opout
 # text:
	.word	.LC246
 # fun:
	.word	opout
 # text:
	.word	.LC247
 # fun:
	.word	opout
 # text:
	.word	.LC248
 # fun:
	.word	opout
 # text:
	.word	.LC249
 # fun:
	.word	opout
 # text:
	.word	.LC250
 # fun:
	.word	opout
 # text:
	.word	.LC251
 # fun:
	.word	opout
 # text:
	.word	.LC252
 # fun:
	.word	opout
 # text:
	.word	.LC253
 # fun:
	.word	opout
 # text:
	.word	.LC254
 # fun:
	.word	opout
 # text:
	.word	.LC255
 # fun:
	.word	opout
 # text:
	.word	.LC256
 # fun:
	.word	opout
 # text:
	.word	.LC257
 # fun:
	.word	opout
 # text:
	.word	.LC258
 # fun:
	.word	opout
 # text:
	.word	.LC259
 # fun:
	.word	opout
 # text:
	.word	.LC260
 # fun:
	.word	opout
 # text:
	.word	.LC261
 # fun:
	.word	opout
 # text:
	.word	.LC262
 # fun:
	.word	opout
 # text:
	.word	.LC263
 # fun:
	.word	opout
 # text:
	.word	.LC264
 # fun:
	.word	opout
 # text:
	.word	.LC265
 # fun:
	.word	opout
 # text:
	.word	.LC266
 # fun:
	.word	opout
 # text:
	.word	.LC267
 # fun:
	.word	opout
 # text:
	.word	.LC268
 # fun:
	.word	opout
 # text:
	.word	.LC269
 # fun:
	.word	opout
 # text:
	.word	.LC270
 # fun:
	.word	opout
 # text:
	.word	.LC271
 # fun:
	.word	opout
 # text:
	.word	.LC272
 # fun:
	.word	opout
 # text:
	.word	.LC273
 # fun:
	.word	opout
 # text:
	.word	.LC274
 # fun:
	.word	opout
 # text:
	.word	.LC275
 # fun:
	.word	opout
 # text:
	.word	.LC276
 # fun:
	.word	opout
 # text:
	.word	.LC277
 # fun:
	.word	opout
 # text:
	.word	.LC278
 # fun:
	.word	opout
 # text:
	.word	.LC279
 # fun:
	.word	opout
 # text:
	.word	.LC280
 # fun:
	.word	opout
 # text:
	.word	.LC281
 # fun:
	.word	opout
 # text:
	.word	.LC282
 # fun:
	.word	opout
 # text:
	.word	.LC283
 # fun:
	.word	opout
 # text:
	.word	.LC284
 # fun:
	.word	opout
 # text:
	.word	.LC285
 # fun:
	.word	opout
 # text:
	.word	.LC286
 # fun:
	.word	opout
 # text:
	.word	.LC287
 # fun:
	.word	opout
 # text:
	.word	.LC288
 # fun:
	.word	opout
 # text:
	.word	.LC289
 # fun:
	.word	opout
 # text:
	.word	.LC290
 # fun:
	.word	opout
 # text:
	.word	.LC291
 # fun:
	.word	opout
 # text:
	.word	.LC292
 # fun:
	.word	opout
 # text:
	.word	.LC293
 # fun:
	.word	opout
 # text:
	.word	.LC294
 # fun:
	.word	opout
 # text:
	.word	.LC295
 # fun:
	.word	opout
 # text:
	.word	.LC296
 # fun:
	.word	opout
 # text:
	.word	.LC297
 # fun:
	.word	opout
 # text:
	.word	.LC298
 # fun:
	.word	opout
 # text:
	.word	.LC299
 # fun:
	.word	opout
 # text:
	.word	.LC300
 # fun:
	.word	opout
 # text:
	.word	.LC301
 # fun:
	.word	opout
 # text:
	.word	.LC302
 # fun:
	.word	opout
 # text:
	.word	.LC303
 # fun:
	.word	opout
 # text:
	.word	.LC304
 # fun:
	.word	opout
 # text:
	.word	.LC305
 # fun:
	.word	opout
 # text:
	.word	.LC306
 # fun:
	.word	opout
 # text:
	.word	.LC307
 # fun:
	.word	opout
 # text:
	.word	.LC308
 # fun:
	.word	opout
 # text:
	.word	.LC309
 # fun:
	.word	opout
 # text:
	.word	.LC310
 # fun:
	.word	opout
 # text:
	.word	.LC311
 # fun:
	.word	opout
 # text:
	.word	.LC312
 # fun:
	.word	opout
 # text:
	.word	.LC313
 # fun:
	.word	opout
 # text:
	.word	.LC314
 # fun:
	.word	opout
 # text:
	.word	.LC315
 # fun:
	.word	opout
 # text:
	.word	.LC316
 # fun:
	.word	opout
 # text:
	.word	.LC317
 # fun:
	.word	opout
 # text:
	.word	.LC318
 # fun:
	.word	opout
 # text:
	.word	.LC319
 # fun:
	.word	opout
 # text:
	.word	.LC320
 # fun:
	.word	opout
 # text:
	.word	.LC321
 # fun:
	.word	opout
 # text:
	.word	.LC322
 # fun:
	.word	opout
 # text:
	.word	.LC323
 # fun:
	.word	opout
 # text:
	.word	.LC324
 # fun:
	.word	opout
 # text:
	.word	.LC325
 # fun:
	.word	opout
 # text:
	.word	.LC326
 # fun:
	.word	opout
 # text:
	.word	.LC327
 # fun:
	.word	opout
 # text:
	.word	.LC328
 # fun:
	.word	opout
 # text:
	.word	.LC329
 # fun:
	.word	opout
 # text:
	.word	.LC330
 # fun:
	.word	opout
 # text:
	.word	.LC331
 # fun:
	.word	nnout
 # text:
	.word	.LC332
 # fun:
	.word	nnout
 # text:
	.word	.LC333
 # fun:
	.word	nnout
 # text:
	.word	.LC334
 # fun:
	.word	opout
 # text:
	.word	.LC335
 # fun:
	.word	nout
 # text:
	.word	.LC336
 # fun:
	.word	opout
 # text:
	.word	.LC337
 # fun:
	.word	opout
 # text:
	.word	.LC338
 # fun:
	.word	opout
 # text:
	.word	.LC339
 # fun:
	.word	nnout
 # text:
	.word	.LC340
 # fun:
	.word	cbop
 # text:
	.word	.LC341
 # fun:
	.word	nnout
 # text:
	.word	.LC342
 # fun:
	.word	nnout
 # text:
	.word	.LC343
 # fun:
	.word	nout
 # text:
	.word	.LC344
 # fun:
	.word	opout
 # text:
	.word	.LC345
 # fun:
	.word	opout
 # text:
	.word	.LC346
 # fun:
	.word	opout
 # text:
	.word	.LC347
 # fun:
	.word	nnout
 # text:
	.word	.LC348
 # fun:
	.word	iout
 # text:
	.word	.LC349
 # fun:
	.word	nnout
 # text:
	.word	.LC350
 # fun:
	.word	opout
 # text:
	.word	.LC351
 # fun:
	.word	nout
 # text:
	.word	.LC352
 # fun:
	.word	opout
 # text:
	.word	.LC353
 # fun:
	.word	opout
 # text:
	.word	.LC354
 # fun:
	.word	opout
 # text:
	.word	.LC355
 # fun:
	.word	nnout
 # text:
	.word	.LC356
 # fun:
	.word	iout
 # text:
	.word	.LC357
 # fun:
	.word	nnout
 # text:
	.word	.LC358
 # fun:
	.word	ddfd
 # text:
	.word	.LC341
 # fun:
	.word	nout
 # text:
	.word	.LC359
 # fun:
	.word	opout
 # text:
	.word	.LC360
 # fun:
	.word	opout
 # text:
	.word	.LC361
 # fun:
	.word	opout
 # text:
	.word	.LC362
 # fun:
	.word	nnout
 # text:
	.word	.LC363
 # fun:
	.word	opout
 # text:
	.word	.LC364
 # fun:
	.word	nnout
 # text:
	.word	.LC365
 # fun:
	.word	opout
 # text:
	.word	.LC366
 # fun:
	.word	nout
 # text:
	.word	.LC367
 # fun:
	.word	opout
 # text:
	.word	.LC368
 # fun:
	.word	opout
 # text:
	.word	.LC369
 # fun:
	.word	opout
 # text:
	.word	.LC370
 # fun:
	.word	nnout
 # text:
	.word	.LC371
 # fun:
	.word	opout
 # text:
	.word	.LC372
 # fun:
	.word	nnout
 # text:
	.word	.LC373
 # fun:
	.word	edop
 # text:
	.word	.LC341
 # fun:
	.word	nout
 # text:
	.word	.LC374
 # fun:
	.word	opout
 # text:
	.word	.LC375
 # fun:
	.word	opout
 # text:
	.word	.LC376
 # fun:
	.word	opout
 # text:
	.word	.LC377
 # fun:
	.word	nnout
 # text:
	.word	.LC378
 # fun:
	.word	opout
 # text:
	.word	.LC379
 # fun:
	.word	nnout
 # text:
	.word	.LC380
 # fun:
	.word	opout
 # text:
	.word	.LC381
 # fun:
	.word	nout
 # text:
	.word	.LC382
 # fun:
	.word	opout
 # text:
	.word	.LC383
 # fun:
	.word	opout
 # text:
	.word	.LC384
 # fun:
	.word	opout
 # text:
	.word	.LC385
 # fun:
	.word	nnout
 # text:
	.word	.LC386
 # fun:
	.word	opout
 # text:
	.word	.LC387
 # fun:
	.word	nnout
 # text:
	.word	.LC388
 # fun:
	.word	ddfd
 # text:
	.word	.LC341
 # fun:
	.word	nout
 # text:
	.word	.LC389
 # fun:
	.word	opout
 # text:
	.word	.LC390
	.align	2
.LC391:
	.ascii	"B\000"
	.align	2
.LC392:
	.ascii	"C\000"
	.align	2
.LC393:
	.ascii	"D\000"
	.align	2
.LC394:
	.ascii	"E\000"
	.align	2
.LC395:
	.ascii	"H\000"
	.align	2
.LC396:
	.ascii	"L\000"
	.align	2
.LC397:
	.ascii	"(HL)\000"
	.align	2
.LC398:
	.ascii	"A\000"
	.align	2
	.type	reg, @object
	.size	reg, 32
reg:
	.word	.LC391
	.word	.LC392
	.word	.LC393
	.word	.LC394
	.word	.LC395
	.word	.LC396
	.word	.LC397
	.word	.LC398
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
