	.file	1 "uart2.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed uart2.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/1472/uart2.o -O1
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
	.globl	UART2GetBaudError
	.set	nomips16
	.set	nomicromips
	.ent	UART2GetBaudError
	.type	UART2GetBaudError, @function
UART2GetBaudError:
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
	.end	UART2GetBaudError
	.size	UART2GetBaudError, .-UART2GetBaudError
	.align	2
	.globl	UART2GetChar
	.set	nomips16
	.set	nomicromips
	.ent	UART2GetChar
	.type	UART2GetChar, @function
UART2GetChar:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$3,%hi(IFS1)	 # tmp230,
.L3:
	lw	$2,%lo(IFS1)($3)	 # D.28009,
	andi	$2,$2,0x200	 # tmp224, D.28009,
	beq	$2,$0,.L3	 #, tmp224,,
	lui	$2,%hi(U2RXREG)	 # tmp225,

	lw	$2,%lo(U2RXREG)($2)	 # U2RXREG.4, U2RXREG
	lui	$3,%hi(IFS1)	 # tmp226,
	lw	$4,%lo(IFS1)($3)	 # tmp227,
	ins	$4,$0,9,1	 # tmp227,,,
	sw	$4,%lo(IFS1)($3)	 # tmp227,
	j	$31
	seb	$2,$2	 #, U2RXREG.4

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2GetChar
	.size	UART2GetChar, .-UART2GetChar
	.align	2
	.globl	UART2Init
	.set	nomips16
	.set	nomicromips
	.ent	UART2Init
	.type	UART2Init, @function
UART2Init:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	li	$3,173			# 0xad	 # tmp219,
	lui	$2,%hi(U2BRG)	 # tmp218,
	sw	$3,%lo(U2BRG)($2)	 # tmp219, U2BRG
	lui	$2,%hi(U2MODE)	 # tmp220,
	sw	$0,%lo(U2MODE)($2)	 #, U2MODE
	lui	$2,%hi(U2MODE)	 # tmp221,
	lw	$4,%lo(U2MODE)($2)	 # tmp222,
	li	$3,1			# 0x1	 # tmp223,
	ins	$4,$3,3,1	 # tmp222, tmp223,,
	sw	$4,%lo(U2MODE)($2)	 # tmp222,
	lui	$4,%hi(U2STA)	 # tmp224,
	sw	$0,%lo(U2STA)($4)	 #, U2STA
	lw	$4,%lo(U2MODE)($2)	 # tmp226,
	ins	$4,$3,15,1	 # tmp226, tmp223,,
	sw	$4,%lo(U2MODE)($2)	 # tmp226,
	lui	$2,%hi(U2STA)	 # tmp228,
	lw	$4,%lo(U2STA)($2)	 # tmp229,
	ins	$4,$3,10,1	 # tmp229, tmp223,,
	sw	$4,%lo(U2STA)($2)	 # tmp229,
	lui	$4,%hi(IFS1)	 # tmp231,
	lw	$5,%lo(IFS1)($4)	 # tmp232,
	ins	$5,$0,9,1	 # tmp232,,,
	sw	$5,%lo(IFS1)($4)	 # tmp232,
	lw	$4,%lo(U2STA)($2)	 # tmp234,
	ins	$4,$3,12,1	 # tmp234, tmp223,,
	sw	$4,%lo(U2STA)($2)	 # tmp234,
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2Init
	.size	UART2Init, .-UART2Init
	.align	2
	.globl	UART2IsPressed
	.set	nomips16
	.set	nomicromips
	.ent	UART2IsPressed
	.type	UART2IsPressed, @function
UART2IsPressed:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(IFS1)	 # tmp222,
	lw	$2,%lo(IFS1)($2)	 # D.28003,
	j	$31
	ext	$2,$2,9,1	 #, D.28003,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2IsPressed
	.size	UART2IsPressed, .-UART2IsPressed
	.align	2
	.globl	UART2PutChar
	.set	nomips16
	.set	nomicromips
	.ent	UART2PutChar
	.type	UART2PutChar, @function
UART2PutChar:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	seb	$4,$4	 # ch, ch
	lui	$2,%hi(U2TXREG)	 # tmp223,
	sw	$4,%lo(U2TXREG)($2)	 # ch, U2TXREG
	lui	$3,%hi(U2STA)	 # tmp226,
.L8:
	lw	$2,%lo(U2STA)($3)	 # D.27997,
	andi	$2,$2,0x100	 # tmp225, D.27997,
	beq	$2,$0,.L8
	nop
	 #, tmp225,,
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2PutChar
	.size	UART2PutChar, .-UART2PutChar
	.align	2
	.globl	UART2PrintString
	.set	nomips16
	.set	nomicromips
	.ent	UART2PrintString
	.type	UART2PrintString, @function
UART2PrintString:
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
	move	$16,$4	 # str, str
	lb	$4,0($4)	 # D.28001,* str
	beq	$4,$0,.L10	 #, D.28001,,
	addiu	$16,$16,1	 # str, str,

.L12:
	jal	UART2PutChar
	nop
	 #
	lb	$4,0($16)	 # D.28001,* str
	bne	$4,$0,.L12	 #, D.28001,,
	addiu	$16,$16,1	 # str, str,

.L10:
	lw	$31,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2PrintString
	.size	UART2PrintString, .-UART2PrintString
	.align	2
	.globl	UART2PutDec
	.set	nomips16
	.set	nomicromips
	.ent	UART2PutDec
	.type	UART2PutDec, @function
UART2PutDec:
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
	andi	$17,$4,0x00ff	 # dec, dec
	sltu	$2,$17,100	 # tmp238, dec,
	bne	$2,$0,.L15	 #, tmp238,,
	move	$4,$0	 # printed_already,

	li	$4,1374355456			# 0x51eb0000	 # tmp242,
	ori	$4,$4,0x851f	 # tmp241, tmp242,
	multu	$17,$4	 # dec, tmp241
	mfhi	$4	 # tmp240
	srl	$4,$4,5	 # tmp239, tmp240,
	addiu	$4,$4,48	 # tmp244, tmp239,
	jal	UART2PutChar	 #
	seb	$4,$4	 #, tmp244

	li	$4,1			# 0x1	 # printed_already,
.L15:
	li	$2,1374355456			# 0x51eb0000	 # tmp249,
	ori	$2,$2,0x851f	 # tmp248, tmp249,
	multu	$17,$2	 # dec, tmp248
	mfhi	$2	 # tmp247
	srl	$2,$2,5	 # tmp246, tmp247,
	sll	$3,$2,3	 # tmp252, tmp246,
	sll	$16,$3,2	 # tmp254, tmp252,
	addu	$16,$3,$16	 # tmp257, tmp252, tmp254
	subu	$16,$16,$2	 # tmp259, tmp257, tmp246
	sll	$16,$16,2	 # tmp261, tmp259,
	addu	$16,$17,$16	 # tmp263, dec, tmp261
	andi	$16,$16,0x00ff	 # res, tmp263
	sltu	$2,$16,10	 # tmp264, res,
	beql	$2,$0,.L19	 #, tmp264,,
	li	$4,-859045888			# 0xcccc0000	 # tmp269,

	beql	$4,$0,.L20	 #, printed_already,,
	addiu	$4,$16,48	 # tmp273, res,

	li	$4,-859045888			# 0xcccc0000	 # tmp269,
.L19:
	ori	$4,$4,0xcccd	 # tmp268, tmp269,
	multu	$16,$4	 # res, tmp268
	mfhi	$4	 # tmp267
	srl	$4,$4,3	 # tmp266, tmp267,
	addiu	$4,$4,48	 # tmp271, tmp266,
	jal	UART2PutChar	 #
	seb	$4,$4	 #, tmp271

	addiu	$4,$16,48	 # tmp273, res,
.L20:
	li	$2,-859045888			# 0xcccc0000	 # tmp277,
	ori	$2,$2,0xcccd	 # tmp276, tmp277,
	multu	$16,$2	 # res, tmp276
	mfhi	$16	 # tmp275
	srl	$16,$16,3	 # tmp274, tmp275,
	sll	$16,$16,1	 # tmp280, tmp274,
	sll	$2,$16,2	 # tmp282, tmp280,
	addu	$16,$16,$2	 # tmp285, tmp280, tmp282
	subu	$4,$4,$16	 # tmp290, tmp273, tmp285
	jal	UART2PutChar	 #
	seb	$4,$4	 #, tmp290

	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2PutDec
	.size	UART2PutDec, .-UART2PutDec
	.align	2
	.globl	UART2PutHex
	.set	nomips16
	.set	nomicromips
	.ent	UART2PutHex
	.type	UART2PutHex, @function
UART2PutHex:
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
	move	$16,$4	 # toPrint, toPrint
	ext	$2,$4,4,4	 # tmp229, toPrint,,
	lui	$17,%hi(CharacterArray)	 # tmp228,
	addiu	$17,$17,%lo(CharacterArray)	 # tmp231, tmp228,
	addu	$2,$2,$17	 # tmp230, tmp229, tmp231
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	andi	$16,$16,0xf	 # tmp234, toPrint,
	addu	$17,$16,$17	 # tmp235, tmp234, tmp231
	jal	UART2PutChar	 #
	lb	$4,0($17)	 #, CharacterArray

	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2PutHex
	.size	UART2PutHex, .-UART2PutHex
	.align	2
	.globl	UART2PutHexWord
	.set	nomips16
	.set	nomicromips
	.ent	UART2PutHexWord
	.type	UART2PutHexWord, @function
UART2PutHexWord:
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
	move	$16,$4	 # toPrint, toPrint
	ext	$2,$4,12,4	 # tmp240, toPrint,,
	lui	$17,%hi(CharacterArray)	 # tmp238,
	addiu	$17,$17,%lo(CharacterArray)	 # tmp242, tmp238,
	addu	$2,$2,$17	 # tmp241, tmp240, tmp242
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	ext	$2,$16,8,4	 # tmp246, toPrint,,
	addu	$2,$2,$17	 # tmp247, tmp246, tmp242
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	ext	$2,$16,4,4	 # tmp252, toPrint,,
	addu	$2,$2,$17	 # tmp253, tmp252, tmp242
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	andi	$16,$16,0xf	 # tmp257, toPrint,
	addu	$17,$16,$17	 # tmp258, tmp257, tmp242
	jal	UART2PutChar	 #
	lb	$4,0($17)	 #, CharacterArray

	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2PutHexWord
	.size	UART2PutHexWord, .-UART2PutHexWord
	.align	2
	.globl	UART2PutHexDWord
	.set	nomips16
	.set	nomicromips
	.ent	UART2PutHexDWord
	.type	UART2PutHexDWord, @function
UART2PutHexDWord:
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
	move	$16,$4	 # toPrint, toPrint
	srl	$2,$4,28	 # tmp258, toPrint,
	lui	$17,%hi(CharacterArray)	 # tmp257,
	addiu	$17,$17,%lo(CharacterArray)	 # tmp260, tmp257,
	addu	$2,$2,$17	 # tmp259, tmp258, tmp260
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	ext	$2,$16,24,4	 # tmp264, toPrint,,
	addu	$2,$2,$17	 # tmp265, tmp264, tmp260
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	ext	$2,$16,20,4	 # tmp270, toPrint,,
	addu	$2,$2,$17	 # tmp271, tmp270, tmp260
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	ext	$2,$16,16,4	 # tmp276, toPrint,,
	addu	$2,$2,$17	 # tmp277, tmp276, tmp260
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	ext	$2,$16,12,4	 # tmp282, toPrint,,
	addu	$2,$2,$17	 # tmp283, tmp282, tmp260
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	ext	$2,$16,8,4	 # tmp288, toPrint,,
	addu	$2,$2,$17	 # tmp289, tmp288, tmp260
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	ext	$2,$16,4,4	 # tmp294, toPrint,,
	addu	$2,$2,$17	 # tmp295, tmp294, tmp260
	jal	UART2PutChar	 #
	lb	$4,0($2)	 #, CharacterArray

	andi	$16,$16,0xf	 # tmp299, toPrint,
	addu	$17,$16,$17	 # tmp300, tmp299, tmp260
	jal	UART2PutChar	 #
	lb	$4,0($17)	 #, CharacterArray

	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2PutHexDWord
	.size	UART2PutHexDWord, .-UART2PutHexDWord
	.align	2
	.globl	UART2Char2Hex
	.set	nomips16
	.set	nomicromips
	.ent	UART2Char2Hex
	.type	UART2Char2Hex, @function
UART2Char2Hex:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	seb	$4,$4	 # ch, ch
	slt	$3,$4,103	 # tmp228, ch,
	beq	$3,$0,.L32	 #, tmp228,,
	move	$2,$0	 # D.27940,

	slt	$2,$4,97	 # tmp229, ch,
	bnel	$2,$0,.L26	 #, tmp229,,
	slt	$3,$4,71	 # tmp232, ch,

	addiu	$4,$4,-87	 # tmp231, ch,
	j	$31
	seb	$2,$4	 # D.27940, tmp231

.L26:
	beq	$3,$0,.L32	 #, tmp232,,
	move	$2,$0	 # D.27940,

	slt	$2,$4,65	 # tmp233, ch,
	bnel	$2,$0,.L27	 #, tmp233,,
	slt	$3,$4,58	 # tmp236, ch,

	addiu	$4,$4,-55	 # tmp235, ch,
	j	$31
	seb	$2,$4	 # D.27940, tmp235

.L27:
	beq	$3,$0,.L32	 #, tmp236,,
	move	$2,$0	 # D.27940,

	slt	$3,$4,48	 # tmp237, ch,
	bne	$3,$0,.L32	 #, tmp237,,
	addiu	$4,$4,-48	 # tmp239, ch,

	seb	$2,$4	 # D.27940, tmp239
.L32:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2Char2Hex
	.size	UART2Char2Hex, .-UART2Char2Hex
	.align	2
	.globl	UART2Hex2Char
	.set	nomips16
	.set	nomicromips
	.ent	UART2Hex2Char
	.type	UART2Hex2Char, @function
UART2Hex2Char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	andi	$4,$4,0xf	 # h, hex,
	slt	$2,$4,10	 # tmp228, h,
	addiu	$3,$4,55	 # tmp234, h,
	addiu	$4,$4,48	 # tmp235, h,
	movn	$3,$4,$2	 #, tmp234, tmp235, tmp228
	j	$31
	move	$2,$3	 # D.27933, tmp234

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2Hex2Char
	.size	UART2Hex2Char, .-UART2Hex2Char
	.align	2
	.globl	UART2ClrError
	.set	nomips16
	.set	nomicromips
	.ent	UART2ClrError
	.type	UART2ClrError, @function
UART2ClrError:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(U2STA)	 # tmp220,
	lw	$2,%lo(U2STA)($2)	 # D.27927,
	andi	$2,$2,0x2	 # tmp221, D.27927,
	beq	$2,$0,.L38	 #, tmp221,,
	lui	$2,%hi(U2STA)	 # tmp222,

	lw	$3,%lo(U2STA)($2)	 # tmp223,
	ins	$3,$0,1,1	 # tmp223,,,
	sw	$3,%lo(U2STA)($2)	 # tmp223,
.L38:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UART2ClrError
	.size	UART2ClrError, .-UART2ClrError
	.globl	CharacterArray
	.section	.rodata,code
	.align	2
	.type	CharacterArray, @object
	.size	CharacterArray, 16
CharacterArray:
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
