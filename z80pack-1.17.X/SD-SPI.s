	.file	1 "SD-SPI.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed SD-SPI.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/1352663294/SD-SPI.o -O1
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
	.globl	MDD_SDSPI_MediaDetect
	.set	nomips16
	.set	nomicromips
	.ent	MDD_SDSPI_MediaDetect
	.type	MDD_SDSPI_MediaDetect, @function
MDD_SDSPI_MediaDetect:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	li	$2,1			# 0x1	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	MDD_SDSPI_MediaDetect
	.size	MDD_SDSPI_MediaDetect, .-MDD_SDSPI_MediaDetect
	.align	2
	.globl	MDD_SDSPI_ReadSectorSize
	.set	nomips16
	.set	nomicromips
	.ent	MDD_SDSPI_ReadSectorSize
	.type	MDD_SDSPI_ReadSectorSize, @function
MDD_SDSPI_ReadSectorSize:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	lhu	$2,%gp_rel(gMediaSectorSize)($28)	 #, gMediaSectorSize

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	MDD_SDSPI_ReadSectorSize
	.size	MDD_SDSPI_ReadSectorSize, .-MDD_SDSPI_ReadSectorSize
	.align	2
	.globl	MDD_SDSPI_ReadCapacity
	.set	nomips16
	.set	nomicromips
	.ent	MDD_SDSPI_ReadCapacity
	.type	MDD_SDSPI_ReadCapacity, @function
MDD_SDSPI_ReadCapacity:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	lw	$2,%gp_rel(MDD_SDSPI_finalLBA)($28)	 #, MDD_SDSPI_finalLBA

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	MDD_SDSPI_ReadCapacity
	.size	MDD_SDSPI_ReadCapacity, .-MDD_SDSPI_ReadCapacity
	.align	2
	.globl	MDD_SDSPI_InitIO
	.set	nomips16
	.set	nomicromips
	.ent	MDD_SDSPI_InitIO
	.type	MDD_SDSPI_InitIO, @function
MDD_SDSPI_InitIO:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(LATD)	 # tmp218,
	lw	$3,%lo(LATD)($2)	 # tmp219,
	li	$4,1			# 0x1	 # tmp220,
	ins	$3,$4,5,1	 # tmp219, tmp220,,
	sw	$3,%lo(LATD)($2)	 # tmp219,
	lui	$2,%hi(TRISD)	 # tmp221,
	lw	$3,%lo(TRISD)($2)	 # tmp222,
	ins	$3,$0,5,1	 # tmp222,,,
	sw	$3,%lo(TRISD)($2)	 # tmp222,
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	MDD_SDSPI_InitIO
	.size	MDD_SDSPI_InitIO, .-MDD_SDSPI_InitIO
	.align	2
	.globl	MDD_SDSPI_WriteProtectState
	.set	nomips16
	.set	nomicromips
	.ent	MDD_SDSPI_WriteProtectState
	.type	MDD_SDSPI_WriteProtectState, @function
MDD_SDSPI_WriteProtectState:
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
	.end	MDD_SDSPI_WriteProtectState
	.size	MDD_SDSPI_WriteProtectState, .-MDD_SDSPI_WriteProtectState
	.align	2
	.globl	Delayms
	.set	nomips16
	.set	nomicromips
	.ent	Delayms
	.type	Delayms, @function
Delayms:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff	 # milliseconds, milliseconds
	.set	noreorder
	.set	nomacro
	j	.L7	 #
	li	$3,-1			# 0xffffffff	 # tmp228,
	.set	macro
	.set	reorder

.L9:
	addiu	$2,$2,-1	 # count, count,
.L11:
	.set	noreorder
	.set	nomacro
	bnel	$2,$3,.L11	 #, count, tmp228,
	addiu	$2,$2,-1	 # count, count,
	.set	macro
	.set	reorder

	addiu	$4,$4,-1	 # tmp226, milliseconds,
	andi	$4,$4,0x00ff	 # milliseconds, tmp226
.L7:
	.set	noreorder
	.set	nomacro
	bnel	$4,$0,.L9	 #, milliseconds,,
	li	$2,9995			# 0x270b	 # count,
	.set	macro
	.set	reorder

 #APP
 # 870 "../SDCard/Microchip/MDD File System/SD-SPI.c" 1
	.set	noreorder
	ssnop
	.set	reorder
 # 0 "" 2
 #NO_APP
	j	$31
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Delayms
	.size	Delayms, .-Delayms
	.align	2
	.globl	CloseSPIM
	.set	nomips16
	.set	nomicromips
	.ent	CloseSPIM
	.type	CloseSPIM, @function
CloseSPIM:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(SPI3STAT)	 # tmp220,
	lw	$3,%lo(SPI3STAT)($2)	 # SPI3STAT.5, SPI3STAT
	andi	$3,$3,0x7fff	 # SPI3STAT.6, SPI3STAT.5,
	sw	$3,%lo(SPI3STAT)($2)	 # SPI3STAT.6, SPI3STAT
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	CloseSPIM
	.size	CloseSPIM, .-CloseSPIM
	.align	2
	.globl	MDD_SDSPI_ShutdownMedia
	.set	nomips16
	.set	nomicromips
	.ent	MDD_SDSPI_ShutdownMedia
	.type	MDD_SDSPI_ShutdownMedia, @function
MDD_SDSPI_ShutdownMedia:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	jal	CloseSPIM
	nop
	 #
	lui	$2,%hi(LATD)	 # tmp219,
	lw	$3,%lo(LATD)($2)	 # tmp220,
	li	$4,1			# 0x1	 # tmp221,
	ins	$3,$4,5,1	 # tmp220, tmp221,,
	sw	$3,%lo(LATD)($2)	 # tmp220,
	move	$2,$0	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	MDD_SDSPI_ShutdownMedia
	.size	MDD_SDSPI_ShutdownMedia, .-MDD_SDSPI_ShutdownMedia
	.align	2
	.globl	WriteSPIM
	.set	nomips16
	.set	nomicromips
	.ent	WriteSPIM
	.type	WriteSPIM, @function
WriteSPIM:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	andi	$5,$4,0x00ff	 # data_out, data_out
	jal	SpiChnPutC	 #
	li	$4,3			# 0x3	 #,

	jal	SpiChnGetC	 #
	li	$4,3			# 0x3	 #,

	move	$2,$0	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	WriteSPIM
	.size	WriteSPIM, .-WriteSPIM
	.align	2
	.globl	MDD_SDSPI_ReadMedia
	.set	nomips16
	.set	nomicromips
	.ent	MDD_SDSPI_ReadMedia
	.type	MDD_SDSPI_ReadMedia, @function
MDD_SDSPI_ReadMedia:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	li	$4,3			# 0x3	 #,
	jal	SpiChnPutC	 #
	li	$5,255			# 0xff	 #,

	jal	SpiChnGetC	 #
	li	$4,3			# 0x3	 #,

	andi	$2,$2,0x00ff	 #,
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	MDD_SDSPI_ReadMedia
	.size	MDD_SDSPI_ReadMedia, .-MDD_SDSPI_ReadMedia
	.align	2
	.globl	SendMMCCmd
	.set	nomips16
	.set	nomicromips
	.ent	SendMMCCmd
	.type	SendMMCCmd, @function
SendMMCCmd:
	.frame	$sp,72,$31		# vars= 16, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-72	 #,,
	sw	$31,68($sp)	 #,
	sw	$fp,64($sp)	 #,
	sw	$23,60($sp)	 #,
	sw	$22,56($sp)	 #,
	sw	$21,52($sp)	 #,
	sw	$20,48($sp)	 #,
	sw	$19,44($sp)	 #,
	sw	$18,40($sp)	 #,
	sw	$17,36($sp)	 #,
	sw	$16,32($sp)	 #,
	move	$22,$4	 # D.28857, D.28857
	andi	$19,$5,0x00ff	 # cmd, cmd
	lui	$2,%hi(LATD)	 # tmp268,
	lw	$3,%lo(LATD)($2)	 # tmp269,
	ins	$3,$0,5,1	 # tmp269,,,
	sw	$3,%lo(LATD)($2)	 # tmp269,
	sll	$2,$19,2	 # tmp272, cmd,
	sll	$17,$19,4	 # tmp273, cmd,
	subu	$17,$17,$2	 # tmp274, tmp273, tmp272
	lui	$2,%hi(sdmmc_cmdtable)	 # tmp270,
	addiu	$2,$2,%lo(sdmmc_cmdtable)	 # tmp276, tmp270,
	addu	$17,$17,$2	 # tmp275, tmp274, tmp276
	lbu	$2,0($17)	 #, sdmmc_cmdtable[D.28707_6].CmdCode
	sb	$2,24($sp)	 # sdmmc_cmdtable[D.28707_6].CmdCode, CmdPacket.D.22021.cmd
	sw	$6,20($sp)	 # address, CmdPacket.D.22029.address
	lbu	$18,1($17)	 # D.28709, sdmmc_cmdtable[D.28707_6].CRC
	lw	$4,24($sp)	 # tmp286,
	li	$2,1			# 0x1	 # tmp287,
	ins	$4,$2,6,1	 # tmp286, tmp287,,
	sw	$4,24($sp)	 # tmp286,
	jal	WriteSPIM	 #
	andi	$4,$4,0x00ff	 #, tmp286

	jal	WriteSPIM	 #
	lbu	$4,23($sp)	 #, CmdPacket.D.22021.addr3

	jal	WriteSPIM	 #
	lbu	$4,22($sp)	 #, CmdPacket.D.22021.addr2

	jal	WriteSPIM	 #
	lbu	$4,21($sp)	 #, CmdPacket.D.22021.addr1

	jal	WriteSPIM	 #
	lbu	$4,20($sp)	 #, CmdPacket.D.22021.addr0

	jal	WriteSPIM	 #
	move	$4,$18	 #, D.28709

	lw	$2,4($17)	 # D.28725, sdmmc_cmdtable[D.28707_6].responsetype
	sltu	$3,$2,2	 # tmp300, D.28725,
	bne	$3,$0,.L26	 #, tmp300,,
	li	$3,4			# 0x4	 # tmp301,

	bne	$2,$3,.L31	 #, D.28725, tmp301,
	li	$17,8			# 0x8	 # timeout,

	j	.L27	 #
	li	$18,255			# 0xff	 # tmp352,

.L26:
	li	$17,8			# 0x8	 # timeout,
	li	$18,255			# 0xff	 # tmp352,
.L27:
	jal	MDD_SDSPI_ReadMedia
	nop
	 #
	bne	$2,$18,.L19	 #, response$r1$_byte, tmp352,
	move	$16,$2	 # response$r1$_byte,

	addiu	$17,$17,-1	 # tmp304, timeout,
	andi	$17,$17,0xffff	 # timeout, tmp304
	bne	$17,$0,.L27	 #, timeout,,
	sll	$2,$19,2	 # tmp312, cmd,

	j	.L34	 #
	sll	$3,$19,4	 # tmp313, cmd,

.L31:
	li	$3,2			# 0x2	 # tmp305,
	bne	$2,$3,.L32	 #, D.28725, tmp305,
	sll	$2,$19,2	 # tmp312, cmd,

	jal	MDD_SDSPI_ReadMedia
	nop
	 #
	jal	MDD_SDSPI_ReadMedia
	nop
	 #
	jal	MDD_SDSPI_ReadMedia	 #
	move	$23,$2	 # response$r2$D22049$_byte1,

	move	$16,$2	 # response$r1$_byte,
.L19:
	sll	$2,$19,2	 # tmp312, cmd,
.L32:
	sll	$3,$19,4	 # tmp313, cmd,
.L34:
	subu	$3,$3,$2	 # tmp314, tmp313, tmp312
	lui	$2,%hi(sdmmc_cmdtable)	 # tmp308,
	addiu	$2,$2,%lo(sdmmc_cmdtable)	 # tmp309, tmp308,
	addu	$2,$2,$3	 # tmp310, tmp309, tmp314
	lw	$3,4($2)	 # sdmmc_cmdtable[D.28707_6].responsetype, sdmmc_cmdtable[D.28707_6].responsetype
	li	$2,1			# 0x1	 # tmp316,
	bne	$3,$2,.L33	 #, sdmmc_cmdtable[D.28707_6].responsetype, tmp316,
	sll	$2,$19,2	 # tmp325, cmd,

	move	$18,$0	 # index,
	li	$20,65535			# 0xffff	 # timeout,
	li	$21,255			# 0xff	 # tmp351,
	move	$17,$20	 # timeout, timeout
.L22:
	jal	MDD_SDSPI_ReadMedia
	nop
	 #
	bne	$2,$0,.L21	 #, response$r1$_byte,,
	move	$16,$2	 # response$r1$_byte,

	addiu	$17,$17,-1	 # tmp318, timeout,
	andi	$17,$17,0xffff	 # timeout, tmp318
	bne	$17,$0,.L22
	nop
	 #, timeout,,
.L21:
	addiu	$18,$18,1	 # tmp319, index,
	andi	$18,$18,0x00ff	 # index, tmp319
	beq	$18,$21,.L33	 #, index, tmp351,
	sll	$2,$19,2	 # tmp325, cmd,

	beql	$16,$0,.L22	 #, response$r1$_byte,,
	move	$17,$20	 # timeout, timeout

	sll	$2,$19,2	 # tmp325, cmd,
.L33:
	sll	$3,$19,4	 # tmp326, cmd,
	subu	$3,$3,$2	 # tmp327, tmp326, tmp325
	lui	$2,%hi(sdmmc_cmdtable)	 # tmp321,
	addiu	$2,$2,%lo(sdmmc_cmdtable)	 # tmp322, tmp321,
	addu	$2,$2,$3	 # tmp323, tmp322, tmp327
	lw	$3,4($2)	 # sdmmc_cmdtable[D.28707_6].responsetype, sdmmc_cmdtable[D.28707_6].responsetype
	li	$2,4			# 0x4	 # tmp329,
	bne	$3,$2,.L24
	nop
	 #, sdmmc_cmdtable[D.28707_6].responsetype, tmp329,
	jal	MDD_SDSPI_ReadMedia
	nop
	 #
	jal	MDD_SDSPI_ReadMedia	 #
	move	$17,$2	 # tmp330,

	jal	MDD_SDSPI_ReadMedia	 #
	move	$18,$2	 # tmp331,

	jal	MDD_SDSPI_ReadMedia	 #
	move	$20,$2	 # tmp332,

	sll	$17,$17,24	 # tmp334, tmp330,
	sll	$18,$18,16	 # tmp335, tmp331,
	addu	$17,$17,$18	 # tmp336, tmp334, tmp335
	addu	$2,$17,$2	 # tmp337, tmp336,
	sll	$20,$20,8	 # tmp338, tmp332,
	addu	$fp,$2,$20	 # response$r7$bytewise$_returnVal, tmp337, tmp338
.L24:
	jal	WriteSPIM	 #
	li	$4,255			# 0xff	 #,

	sll	$2,$19,2	 # tmp342, cmd,
	sll	$19,$19,4	 # tmp343, cmd,
	subu	$19,$19,$2	 # tmp344, tmp343, tmp342
	lui	$2,%hi(sdmmc_cmdtable)	 # tmp339,
	addiu	$2,$2,%lo(sdmmc_cmdtable)	 # tmp345, tmp339,
	addu	$2,$19,$2	 # tmp340, tmp344, tmp345
	lbu	$2,8($2)	 # sdmmc_cmdtable[D.28707_6].moredataexpected, sdmmc_cmdtable[D.28707_6].moredataexpected
	bne	$2,$0,.L25	 #, sdmmc_cmdtable[D.28707_6].moredataexpected,,
	lui	$2,%hi(LATD)	 # tmp347,

	lw	$3,%lo(LATD)($2)	 # tmp348,
	li	$4,1			# 0x1	 # tmp349,
	ins	$3,$4,5,1	 # tmp348, tmp349,,
	sw	$3,%lo(LATD)($2)	 # tmp348,
.L25:
	sb	$16,0($22)	 # response$r1$_byte, <retval>.r1._byte
	sb	$23,1($22)	 # response$r2$D22049$_byte1, <retval>.r2.D.22049._byte1
	sw	$fp,4($22)	 # response$r7$bytewise$_returnVal, <retval>.r7.bytewise._returnVal
	move	$2,$22	 #, D.28857
	lw	$31,68($sp)	 #,
	lw	$fp,64($sp)	 #,
	lw	$23,60($sp)	 #,
	lw	$22,56($sp)	 #,
	lw	$21,52($sp)	 #,
	lw	$20,48($sp)	 #,
	lw	$19,44($sp)	 #,
	lw	$18,40($sp)	 #,
	lw	$17,36($sp)	 #,
	lw	$16,32($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,72	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	SendMMCCmd
	.size	SendMMCCmd, .-SendMMCCmd
	.align	2
	.globl	MDD_SDSPI_SectorWrite
	.set	nomips16
	.set	nomicromips
	.ent	MDD_SDSPI_SectorWrite
	.type	MDD_SDSPI_SectorWrite, @function
MDD_SDSPI_SectorWrite:
	.frame	$sp,40,$31		# vars= 8, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40	 #,,
	sw	$31,36($sp)	 #,
	sw	$17,32($sp)	 #,
	sw	$16,28($sp)	 #,
	move	$2,$4	 # sector_addr, sector_addr
	move	$17,$5	 # buffer, buffer
	bne	$4,$0,.L36	 #, sector_addr,,
	andi	$6,$6,0x00ff	 # allowWriteToZero, allowWriteToZero

	beq	$6,$0,.L37	 #, allowWriteToZero,,
	move	$16,$0	 # status,

.L36:
	lbu	$3,%gp_rel(gSDMode)($28)	 # gSDMode, gSDMode
	bne	$3,$0,.L38	 #, gSDMode,,
	addiu	$4,$sp,16	 #,,

	li	$5,10			# 0xa	 #,
	jal	SendMMCCmd	 #
	sll	$6,$2,9	 #, sector_addr,

	j	.L39	 #
	lbu	$2,16($sp)	 # response$r1$_byte, response.r1._byte

.L38:
	li	$5,10			# 0xa	 #,
	jal	SendMMCCmd	 #
	move	$6,$2	 #, sector_addr

	lbu	$2,16($sp)	 # response$r1$_byte, response.r1._byte
.L39:
	bne	$2,$0,.L40	 #, response$r1$_byte,,
	move	$16,$0	 # status,

	jal	WriteSPIM	 #
	li	$4,254			# 0xfe	 #,

	lhu	$2,%gp_rel(gMediaSectorSize)($28)	 # gMediaSectorSize, gMediaSectorSize
	beq	$2,$0,.L41	 #, gMediaSectorSize,,
	addu	$2,$17,$16	 # tmp246, buffer, index

.L51:
	jal	WriteSPIM	 #
	lbu	$4,0($2)	 #,

	addiu	$16,$16,1	 # tmp248, index,
	andi	$16,$16,0xffff	 # index, tmp248
	lhu	$2,%gp_rel(gMediaSectorSize)($28)	 # gMediaSectorSize, gMediaSectorSize
	sltu	$2,$16,$2	 # tmp250, index, gMediaSectorSize
	bne	$2,$0,.L51	 #, tmp250,,
	addu	$2,$17,$16	 # tmp246, buffer, index

.L41:
	jal	WriteSPIM	 #
	li	$4,255			# 0xff	 #,

	jal	WriteSPIM	 #
	li	$4,255			# 0xff	 #,

	jal	MDD_SDSPI_ReadMedia	 #
	move	$16,$0	 # status,

	andi	$2,$2,0xf	 # tmp252,,
	li	$3,5			# 0x5	 # tmp253,
	bne	$2,$3,.L43	 #, tmp252, tmp253,
	li	$4,3			# 0x3	 #,

.L52:
	jal	SpiChnPutC	 #
	li	$5,255			# 0xff	 #,

	jal	SpiChnGetC	 #
	li	$4,3			# 0x3	 #,

	andi	$2,$2,0x00ff	 # D.28680,
	beq	$2,$0,.L52	 #, D.28680,,
	li	$4,3			# 0x3	 #,

	li	$16,1			# 0x1	 # status,
.L43:
	jal	WriteSPIM	 #
	li	$4,255			# 0xff	 #,

.L40:
	lui	$2,%hi(LATD)	 # tmp256,
	lw	$3,%lo(LATD)($2)	 # tmp257,
	li	$4,1			# 0x1	 # tmp258,
	ins	$3,$4,5,1	 # tmp257, tmp258,,
	sw	$3,%lo(LATD)($2)	 # tmp257,
.L37:
	move	$2,$16	 #, status
	lw	$31,36($sp)	 #,
	lw	$17,32($sp)	 #,
	lw	$16,28($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	MDD_SDSPI_SectorWrite
	.size	MDD_SDSPI_SectorWrite, .-MDD_SDSPI_SectorWrite
	.align	2
	.globl	MDD_SDSPI_SectorRead
	.set	nomips16
	.set	nomicromips
	.ent	MDD_SDSPI_SectorRead
	.type	MDD_SDSPI_SectorRead, @function
MDD_SDSPI_SectorRead:
	.frame	$sp,40,$31		# vars= 8, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40	 #,,
	sw	$31,36($sp)	 #,
	sw	$18,32($sp)	 #,
	sw	$17,28($sp)	 #,
	sw	$16,24($sp)	 #,
	move	$18,$5	 # buffer, buffer
	lbu	$16,%gp_rel(gSDMode)($28)	 # gSDMode, gSDMode
	sll	$2,$4,9	 # tmp271, sector_addr,
	movz	$4,$2,$16	 #, sector_addr, tmp271, gSDMode
	move	$16,$4	 # new_addr, sector_addr
	addiu	$4,$sp,16	 #,,
	li	$5,8			# 0x8	 #,
	jal	SendMMCCmd	 #
	move	$6,$16	 #, new_addr

	lbu	$2,16($sp)	 # response.r1._byte, response.r1._byte
	beq	$2,$0,.L57	 #, response.r1._byte,,
	li	$2,64			# 0x40	 # ivtmp.78,

	addiu	$4,$sp,16	 #,,
	li	$5,8			# 0x8	 #,
	jal	SendMMCCmd	 #
	move	$6,$16	 #, new_addr

	lbu	$2,16($sp)	 # response.r1._byte, response.r1._byte
	bne	$2,$0,.L56	 #, response.r1._byte,,
	move	$17,$0	 # status,

	li	$2,64			# 0x40	 # ivtmp.78,
.L57:
	addiu	$2,$2,-1	 # tmp253, ivtmp.78,
.L74:
	andi	$2,$2,0xffff	 # ivtmp.78, tmp253
	bne	$2,$0,.L74	 #, ivtmp.78,,
	addiu	$2,$2,-1	 # tmp253, ivtmp.78,

	li	$16,767			# 0x2ff	 # index,
	li	$17,255			# 0xff	 # tmp272,
.L60:
	jal	MDD_SDSPI_ReadMedia	 #
	addiu	$16,$16,-1	 # tmp255, index,

	andi	$16,$16,0xffff	 # index, tmp255
	li	$3,64			# 0x40	 # ivtmp.77,
	addiu	$3,$3,-1	 # tmp256, ivtmp.77,
.L75:
	andi	$3,$3,0xffff	 # ivtmp.77, tmp256
	bnel	$3,$0,.L75	 #, ivtmp.77,,
	addiu	$3,$3,-1	 # tmp256, ivtmp.77,

	bne	$2,$17,.L59
	nop
	 #, data_token, tmp272,
	bne	$16,$0,.L60
	nop
	 #, index,,
	j	.L61	 #
	move	$17,$0	 # status,

.L59:
	beq	$16,$0,.L61	 #, index,,
	move	$17,$0	 # status,

	li	$3,254			# 0xfe	 # tmp258,
	bne	$2,$3,.L61	 #, data_token, tmp258,
	lhu	$2,%gp_rel(gMediaSectorSize)($28)	 # gMediaSectorSize, gMediaSectorSize

	beq	$2,$0,.L62	 #, gMediaSectorSize,,
	move	$16,$0	 # index,

.L65:
	beq	$18,$0,.L63
	nop
	 #, buffer,,
	jal	MDD_SDSPI_ReadMedia
	nop
	 #
	addu	$3,$18,$16	 # tmp261, buffer, index
	j	.L64	 #
	sb	$2,0($3)	 #,

.L63:
	jal	MDD_SDSPI_ReadMedia
	nop
	 #
.L64:
	addiu	$16,$16,1	 # tmp262, index,
	andi	$16,$16,0xffff	 # index, tmp262
	lhu	$2,%gp_rel(gMediaSectorSize)($28)	 # gMediaSectorSize, gMediaSectorSize
	sltu	$2,$16,$2	 # tmp264, index, gMediaSectorSize
	bne	$2,$0,.L65
	nop
	 #, tmp264,,
.L62:
	jal	WriteSPIM	 #
	li	$4,255			# 0xff	 #,

	jal	WriteSPIM	 #
	li	$4,255			# 0xff	 #,

	li	$17,1			# 0x1	 # status,
.L61:
	jal	WriteSPIM	 #
	li	$4,255			# 0xff	 #,

	lui	$2,%hi(LATD)	 # tmp265,
	lw	$3,%lo(LATD)($2)	 # tmp266,
	li	$4,1			# 0x1	 # tmp267,
	ins	$3,$4,5,1	 # tmp266, tmp267,,
	sw	$3,%lo(LATD)($2)	 # tmp266,
.L56:
	move	$2,$17	 #, status
	lw	$31,36($sp)	 #,
	lw	$18,32($sp)	 #,
	lw	$17,28($sp)	 #,
	lw	$16,24($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	MDD_SDSPI_SectorRead
	.size	MDD_SDSPI_SectorRead, .-MDD_SDSPI_SectorRead
	.align	2
	.globl	OpenSPIM
	.set	nomips16
	.set	nomicromips
	.ent	OpenSPIM
	.type	OpenSPIM, @function
OpenSPIM:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lui	$2,%hi(SPI3STAT)	 # tmp219,
	sw	$0,%lo(SPI3STAT)($2)	 #, SPI3STAT
	lui	$2,%hi(SPI3CON)	 # tmp220,
	lw	$3,%lo(SPI3CON)($2)	 # tmp221,
	li	$4,1			# 0x1	 # tmp222,
	ins	$3,$4,6,1	 # tmp221, tmp222,,
	sw	$3,%lo(SPI3CON)($2)	 # tmp221,
	lw	$3,%lo(SPI3CON)($2)	 # tmp224,
	ins	$3,$0,8,1	 # tmp224,,,
	sw	$3,%lo(SPI3CON)($2)	 # tmp224,
	lui	$3,%hi(TRISD)	 # tmp225,
	lw	$5,%lo(TRISD)($3)	 # tmp226,
	ins	$5,$0,1,1	 # tmp226,,,
	sw	$5,%lo(TRISD)($3)	 # tmp226,
	lw	$5,%lo(TRISD)($3)	 # tmp228,
	ins	$5,$0,3,1	 # tmp228,,,
	sw	$5,%lo(TRISD)($3)	 # tmp228,
	lw	$5,%lo(TRISD)($3)	 # tmp230,
	ins	$5,$4,2,1	 # tmp230, tmp222,,
	sw	$5,%lo(TRISD)($3)	 # tmp230,
	lw	$3,%lo(SPI3CON)($2)	 # tmp233,
	ins	$3,$4,15,1	 # tmp233, tmp222,,
	sw	$3,%lo(SPI3CON)($2)	 # tmp233,
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OpenSPIM
	.size	OpenSPIM, .-OpenSPIM
	.align	2
	.globl	MDD_SDSPI_MediaInitialize
	.set	nomips16
	.set	nomicromips
	.ent	MDD_SDSPI_MediaInitialize
	.type	MDD_SDSPI_MediaInitialize, @function
MDD_SDSPI_MediaInitialize:
	.frame	$sp,72,$31		# vars= 32, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-72	 #,,
	sw	$31,68($sp)	 #,
	sw	$19,64($sp)	 #,
	sw	$18,60($sp)	 #,
	sw	$17,56($sp)	 #,
	sw	$16,52($sp)	 #,
	sb	$0,%gp_rel(mediaInformation)($28)	 #, mediaInformation.errorCode
	sb	$0,%gp_rel(mediaInformation+1)($28)	 #, mediaInformation.validityFlags.value
	sw	$0,%gp_rel(MDD_SDSPI_finalLBA)($28)	 #, MDD_SDSPI_finalLBA
	lui	$2,%hi(LATD)	 # tmp322,
	lw	$3,%lo(LATD)($2)	 # tmp323,
	li	$4,1			# 0x1	 # tmp324,
	ins	$3,$4,5,1	 # tmp323, tmp324,,
	sw	$3,%lo(LATD)($2)	 # tmp323,
	li	$4,3			# 0x3	 #,
	li	$5,800			# 0x320	 #,
	jal	SpiChnOpen	 #
	li	$6,32768			# 0x8000	 #,

	li	$3,99			# 0x63	 # tmp326,
	lui	$2,%hi(SPI3BRG)	 # tmp325,
	sw	$3,%lo(SPI3BRG)($2)	 # tmp326, SPI3BRG
	jal	Delayms	 #
	li	$4,1			# 0x1	 #,

	move	$16,$0	 # timeout,
	li	$17,10			# 0xa	 # tmp441,
.L78:
	jal	WriteSPIM	 #
	li	$4,255			# 0xff	 #,

	addiu	$16,$16,1	 # tmp327, timeout,
	andi	$16,$16,0xffff	 # timeout, tmp327
	bne	$16,$17,.L78	 #, timeout, tmp441,
	lui	$2,%hi(LATD)	 # tmp329,

	lw	$3,%lo(LATD)($2)	 # tmp330,
	ins	$3,$0,5,1	 # tmp330,,,
	sw	$3,%lo(LATD)($2)	 # tmp330,
	jal	Delayms	 #
	li	$4,1			# 0x1	 #,

	addiu	$4,$sp,16	 #,,
	move	$5,$0	 #,
	jal	SendMMCCmd	 #
	move	$6,$0	 #,

	lbu	$2,16($sp)	 # response$r1$_byte, response.r1._byte
	li	$3,255			# 0xff	 # tmp331,
	beq	$2,$3,.L79	 #, response$r1$_byte, tmp331,
	andi	$2,$2,0xf7	 # tmp332, response$r1$_byte,

	li	$3,1			# 0x1	 # tmp333,
	beq	$2,$3,.L80	 #, tmp332, tmp333,
	addiu	$4,$sp,16	 #,,

.L79:
	lui	$2,%hi(LATD)	 # tmp334,
	lw	$3,%lo(LATD)($2)	 # tmp335,
	li	$4,1			# 0x1	 # tmp336,
	ins	$3,$4,5,1	 # tmp335, tmp336,,
	sw	$3,%lo(LATD)($2)	 # tmp335,
	li	$2,2			# 0x2	 # tmp338,
	j	.L81	 #
	sb	$2,%gp_rel(mediaInformation)($28)	 # tmp338, mediaInformation.errorCode

.L80:
	li	$5,2			# 0x2	 #,
	jal	SendMMCCmd	 #
	li	$6,426			# 0x1aa	 #,

	lw	$3,20($sp)	 # response.r7.bytewise._returnVal, response.r7.bytewise._returnVal
	andi	$3,$3,0xfff	 # tmp339, response.r7.bytewise._returnVal,
	li	$2,426			# 0x1aa	 # tmp341,
	bne	$3,$2,.L82	 #, tmp339, tmp341,
	lbu	$4,16($sp)	 # response$r1$_byte, response.r1._byte

	sb	$4,16($sp)	 # response$r1$_byte, response.r1._byte
	lw	$2,16($sp)	 # tmp343,
	andi	$2,$2,0x4	 # tmp342, tmp343,
	bnel	$2,$0,.L106	 #, tmp342,,
	sb	$0,%gp_rel(gSDMode)($28)	 #, gSDMode

	li	$16,4095			# 0xfff	 # timeout,
	addiu	$4,$sp,16	 #,,
.L107:
	li	$5,1			# 0x1	 #,
	jal	SendMMCCmd	 #
	li	$6,1073741824			# 0x40000000	 #,

	addiu	$16,$16,-1	 # tmp344, timeout,
	lbu	$2,16($sp)	 # response.r1._byte, response.r1._byte
	beq	$2,$0,.L83	 #, response.r1._byte,,
	andi	$16,$16,0xffff	 # timeout, tmp344

	bnel	$16,$0,.L107	 #, timeout,,
	addiu	$4,$sp,16	 #,,

.L83:
	addiu	$4,$sp,16	 #,,
	li	$5,16			# 0x10	 #,
	jal	SendMMCCmd	 #
	move	$6,$0	 #,

	li	$2,-1073741824			# 0xc0000000	 # tmp348,
	lw	$3,20($sp)	 # response.r7.bytewise._returnVal, response.r7.bytewise._returnVal
	and	$3,$3,$2	 # tmp346, response.r7.bytewise._returnVal, tmp348
	bne	$3,$2,.L85	 #, tmp346, tmp348,
	lbu	$4,16($sp)	 # response$r1$_byte, response.r1._byte

	bnel	$4,$0,.L86	 #, response$r1$_byte,,
	sb	$0,%gp_rel(gSDMode)($28)	 #, gSDMode

	li	$2,1			# 0x1	 # tmp350,
	j	.L86	 #
	sb	$2,%gp_rel(gSDMode)($28)	 # tmp350, gSDMode

.L85:
	j	.L86	 #
	sb	$0,%gp_rel(gSDMode)($28)	 #, gSDMode

.L82:
	sb	$0,%gp_rel(gSDMode)($28)	 #, gSDMode
.L106:
	li	$16,4095			# 0xfff	 # timeout,
	addiu	$4,$sp,16	 #,,
.L108:
	li	$5,1			# 0x1	 #,
	jal	SendMMCCmd	 #
	move	$6,$0	 #,

	addiu	$16,$16,-1	 # tmp351, timeout,
	lbu	$2,16($sp)	 # response.r1._byte, response.r1._byte
	beq	$2,$0,.L86	 #, response.r1._byte,,
	andi	$16,$16,0xffff	 # timeout, tmp351

	bne	$16,$0,.L108	 #, timeout,,
	addiu	$4,$sp,16	 #,,

	j	.L104	 #
	li	$2,2			# 0x2	 # tmp354,

.L86:
	bne	$16,$0,.L89	 #, timeout,,
	li	$2,2			# 0x2	 # tmp354,

.L104:
	sb	$2,%gp_rel(mediaInformation)($28)	 # tmp354, mediaInformation.errorCode
	lui	$2,%hi(LATD)	 # tmp355,
	lw	$3,%lo(LATD)($2)	 # tmp356,
	li	$4,1			# 0x1	 # tmp357,
	ins	$3,$4,5,1	 # tmp356, tmp357,,
	sw	$3,%lo(LATD)($2)	 # tmp356,
	j	.L105	 #
	addiu	$2,$28,%gp_rel(mediaInformation)	 #,,

.L89:
	jal	Delayms	 #
	li	$4,2			# 0x2	 #,

	li	$3,1			# 0x1	 # tmp359,
	lui	$2,%hi(SPI3BRG)	 # tmp358,
	sw	$3,%lo(SPI3BRG)($2)	 # tmp359, SPI3BRG
	li	$16,4095			# 0xfff	 # timeout,
	addiu	$4,$sp,16	 #,,
.L109:
	li	$5,3			# 0x3	 #,
	jal	SendMMCCmd	 #
	move	$6,$0	 #,

	lbu	$2,16($sp)	 # response.r1._byte, response.r1._byte
	beq	$2,$0,.L97	 #, response.r1._byte,,
	addiu	$16,$16,-1	 # tmp361, timeout,

	andi	$16,$16,0xffff	 # timeout, tmp361
	bne	$16,$0,.L109	 #, timeout,,
	addiu	$4,$sp,16	 #,,

	li	$16,1			# 0x1	 # ivtmp.104,
	j	.L90	 #
	move	$17,$0	 # index,

.L98:
.L93:
	addiu	$16,$16,1	 # tmp362, ivtmp.104,
	j	.L103	 #
	andi	$16,$16,0x00ff	 # ivtmp.104, tmp362

.L97:
	li	$16,1			# 0x1	 # ivtmp.104,
	move	$17,$0	 # index,
.L90:
	li	$18,1			# 0x1	 # tmp436,
	li	$19,254			# 0xfe	 # tmp437,
.L103:
	jal	MDD_SDSPI_ReadMedia
	nop
	 #
	addiu	$4,$sp,16	 #,,
	addu	$3,$4,$17	 # tmp364,, index
	bne	$16,$18,.L92	 #, ivtmp.104, tmp436,
	sb	$2,8($3)	 #, CSDResponse

	lbu	$2,24($sp)	 # CSDResponse, CSDResponse
	beql	$2,$19,.L98	 #, CSDResponse, tmp437,
	move	$17,$0	 # index,

.L92:
	sltu	$2,$16,20	 # tmp368, ivtmp.104,
	beq	$2,$0,.L94	 #, tmp368,,
	addiu	$17,$17,1	 # tmp369, index,

	j	.L93	 #
	andi	$17,$17,0x00ff	 # index, tmp369

.L94:
	li	$2,512			# 0x200	 # tmp370,
	sh	$2,%gp_rel(gMediaSectorSize)($28)	 # tmp370, gMediaSectorSize
	addiu	$3,$28,%gp_rel(mediaInformation)	 # tmp373,,
	lw	$4,0($3)	 # tmp374,
	li	$5,1			# 0x1	 # tmp375,
	ins	$4,$5,8,1	 # tmp374, tmp375,,
	sw	$4,0($3)	 # tmp374,
	sh	$2,%gp_rel(mediaInformation+2)($28)	 # tmp370, mediaInformation.sectorSize
	lbu	$2,24($sp)	 # CSDResponse, CSDResponse
	andi	$2,$2,0xc0	 # tmp379, CSDResponse,
	beq	$2,$0,.L95	 #, tmp379,,
	lbu	$4,30($sp)	 # CSDResponse, CSDResponse

	lbu	$3,31($sp)	 # CSDResponse, CSDResponse
	andi	$3,$3,0x3f	 # tmp381, CSDResponse,
	sll	$3,$3,16	 # tmp382, tmp381,
	lbu	$2,32($sp)	 # CSDResponse, CSDResponse
	sll	$2,$2,8	 # tmp384, CSDResponse,
	or	$3,$3,$2	 # tmp385, tmp382, tmp384
	lbu	$2,33($sp)	 # CSDResponse, CSDResponse
	or	$2,$3,$2	 # tmp387, tmp385, CSDResponse
	sll	$2,$2,10	 # tmp389, tmp387,
	addiu	$2,$2,1023	 # tmp390, tmp389,
	j	.L96	 #
	sw	$2,%gp_rel(MDD_SDSPI_finalLBA)($28)	 # tmp390, MDD_SDSPI_finalLBA

.L95:
	sll	$4,$4,16	 # tmp392, CSDResponse,
	lbu	$2,32($sp)	 # CSDResponse, CSDResponse
	or	$4,$4,$2	 # tmp394, tmp392, CSDResponse
	lbu	$2,31($sp)	 # CSDResponse, CSDResponse
	sll	$2,$2,8	 # tmp396, CSDResponse,
	or	$4,$4,$2	 # c_size, tmp394, tmp396
	li	$2,196608			# 0x30000	 # tmp398,
	ori	$2,$2,0xffc0	 # tmp397, tmp398,
	and	$4,$4,$2	 # c_size, c_size, tmp397
	lbu	$3,29($sp)	 #, CSDResponse
	andi	$3,$3,0xf	 # tmp401, CSDResponse,
	addiu	$3,$3,-9	 # tmp402, tmp401,
	li	$2,1			# 0x1	 # tmp403,
	sll	$3,$2,$3	 # D.28621, tmp403, tmp402
	srl	$4,$4,6	 # tmp404, c_size,
	addiu	$4,$4,1	 # tmp405, tmp404,
	andi	$3,$3,0x00ff	 # D.28621, D.28621
	mul	$5,$4,$3	 # tmp407, tmp405, D.28621
	lbu	$4,33($sp)	 #, CSDResponse
	andi	$4,$4,0x3	 # tmp409, CSDResponse,
	sll	$4,$4,1	 # tmp411, tmp409,
	lbu	$3,34($sp)	 # CSDResponse, CSDResponse
	srl	$3,$3,7	 # tmp413, CSDResponse,
	or	$3,$4,$3	 # tmp417, tmp411, tmp413
	addiu	$3,$3,2	 # tmp418, tmp417,
	sll	$2,$2,$3	 # tmp419, tmp403, tmp418
	andi	$2,$2,0xffff	 # tmp421, tmp419
	mul	$2,$5,$2	 # tmp422, tmp407, tmp421
	addiu	$2,$2,-1	 # tmp423, tmp422,
	sw	$2,%gp_rel(MDD_SDSPI_finalLBA)($28)	 # tmp423, MDD_SDSPI_finalLBA
.L96:
	addiu	$4,$sp,16	 #,,
	li	$5,17			# 0x11	 #,
	jal	SendMMCCmd	 #
	move	$6,$0	 #,

	addiu	$4,$sp,16	 #,,
	li	$5,7			# 0x7	 #,
	jal	SendMMCCmd	 #
	lhu	$6,%gp_rel(gMediaSectorSize)($28)	 #, gMediaSectorSize

.L81:
	addiu	$2,$28,%gp_rel(mediaInformation)	 #,,
.L105:
	lw	$31,68($sp)	 #,
	lw	$19,64($sp)	 #,
	lw	$18,60($sp)	 #,
	lw	$17,56($sp)	 #,
	lw	$16,52($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,72	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	MDD_SDSPI_MediaInitialize
	.size	MDD_SDSPI_MediaInitialize, .-MDD_SDSPI_MediaInitialize
	.globl	sdmmc_cmdtable
	.section	.rodata,code
	.align	2
	.type	sdmmc_cmdtable, @object
	.size	sdmmc_cmdtable, 216
sdmmc_cmdtable:
 # CmdCode:
	.byte	0
 # CRC:
	.byte	-107
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	1
 # CRC:
	.byte	-7
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	8
 # CRC:
	.byte	-121
 # responsetype:
	.space	2
	.word	4
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	9
 # CRC:
	.byte	-81
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	1
	.space	3
 # CmdCode:
	.byte	10
 # CRC:
	.byte	27
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	1
	.space	3
 # CmdCode:
	.byte	12
 # CRC:
	.byte	-61
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	13
 # CRC:
	.byte	-81
 # responsetype:
	.space	2
	.word	2
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	16
 # CRC:
	.byte	-1
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	17
 # CRC:
	.byte	-1
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	1
	.space	3
 # CmdCode:
	.byte	18
 # CRC:
	.byte	-1
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	1
	.space	3
 # CmdCode:
	.byte	24
 # CRC:
	.byte	-1
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	1
	.space	3
 # CmdCode:
	.byte	25
 # CRC:
	.byte	-1
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	1
	.space	3
 # CmdCode:
	.byte	32
 # CRC:
	.byte	-1
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	33
 # CRC:
	.byte	-1
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	38
 # CRC:
	.byte	-33
 # responsetype:
	.space	2
	.word	1
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	55
 # CRC:
	.byte	115
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	58
 # CRC:
	.byte	37
 # responsetype:
	.space	2
	.word	4
 # moredataexpected:
	.byte	0
	.space	3
 # CmdCode:
	.byte	59
 # CRC:
	.byte	37
 # responsetype:
	.space	2
	.word	0
 # moredataexpected:
	.byte	0
	.space	3

	.comm	MDD_SDSPI_finalLBA,4,4

	.comm	gMediaSectorSize,2,2

	.comm	gSDMode,1,1
	.section	.sbss,bss,near
	.align	2
	.type	mediaInformation, @object
	.size	mediaInformation, 6
mediaInformation:
	.space	6
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
