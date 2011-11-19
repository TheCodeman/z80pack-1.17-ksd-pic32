	.file	1 "FSIO.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

 # -G value = 8, Arch = pic32mx, ISA = 33
 # GNU C (Microchip Technology) version 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816 (pic32mx)
 #	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -fpreprocessed FSIO.i
 # -mconfig-data-dir=/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/lib/./proc/32MX795F512H
 # -fverbose-asm -mprocessor=32MX795F512H -mips32r2 -mabi=32 -auxbase-strip
 # build/default/production/_ext/1352663294/FSIO.o -O1
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
	.globl	GetFullClusterNumber
	.set	nomips16
	.set	nomicromips
	.ent	GetFullClusterNumber
	.type	GetFullClusterNumber, @function
GetFullClusterNumber:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lhu	$2,20($4)	 # TempFullClusterCalc, entry_2(D)->DIR_FstClusHI
	sll	$2,$2,16	 # TempFullClusterCalc, TempFullClusterCalc,
	lhu	$3,26($4)	 # entry_2(D)->DIR_FstClusLO, entry_2(D)->DIR_FstClusLO
	j	$31
	or	$2,$2,$3	 #, TempFullClusterCalc, entry_2(D)->DIR_FstClusLO

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	GetFullClusterNumber
	.size	GetFullClusterNumber, .-GetFullClusterNumber
	.align	2
	.globl	SetClockVars
	.set	nomips16
	.set	nomicromips
	.ent	SetClockVars
	.type	SetClockVars, @function
SetClockVars:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	andi	$5,$5,0x00ff	 # month, month
	andi	$6,$6,0x00ff	 # day, day
	andi	$7,$7,0x00ff	 # hour, hour
	lbu	$3,16($sp)	 # minute, minute
	addiu	$4,$4,-1980	 # D.30966, year,
	sltu	$8,$4,128	 # tmp250, D.30966,
	beq	$8,$0,.L3	 #, tmp250,,
	lbu	$2,20($sp)	 # second, second

	beq	$5,$0,.L3	 #, month,,
	sltu	$8,$5,13	 # tmp251, month,

	beql	$8,$0,.L8	 #, tmp251,,
	li	$2,31			# 0x1f	 # tmp256,

	beq	$6,$0,.L3	 #, day,,
	sltu	$8,$6,32	 # tmp252, day,

	beq	$8,$0,.L3	 #, tmp252,,
	sltu	$8,$7,24	 # tmp253, hour,

	beq	$8,$0,.L3	 #, tmp253,,
	sltu	$8,$3,60	 # tmp254, minute,

	beq	$8,$0,.L3	 #, tmp254,,
	sltu	$8,$2,60	 # tmp255, second,

	bnel	$8,$0,.L4	 #, tmp255,,
	sll	$4,$4,9	 # result, D.30966,

.L3:
	li	$2,31			# 0x1f	 # tmp256,
.L8:
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp256, FSerrno
	j	$31
	li	$2,-1			# 0xffffffff	 # D.30974,

.L4:
	sll	$5,$5,5	 # tmp257, month,
	or	$6,$5,$6	 # result, tmp257, day
	or	$6,$6,$4	 # tmp258, result, result
	andi	$6,$6,0xffff	 # gTimeAccDate.85, tmp258
	sh	$6,%gp_rel(gTimeAccDate)($28)	 # gTimeAccDate.85, gTimeAccDate
	sh	$6,%gp_rel(gTimeCrtDate)($28)	 # gTimeAccDate.85, gTimeCrtDate
	sh	$6,%gp_rel(gTimeWrtDate)($28)	 # gTimeAccDate.85, gTimeWrtDate
	sll	$7,$7,11	 # result, hour,
	sll	$3,$3,5	 # tmp259, minute,
	or	$3,$3,$7	 # result, tmp259, result
	srl	$4,$2,1	 # tmp261, second,
	or	$3,$3,$4	 # tmp262, result, tmp261
	andi	$3,$3,0xffff	 # gTimeAccDate.85, tmp262
	sh	$3,%gp_rel(gTimeCrtTime)($28)	 # gTimeAccDate.85, gTimeCrtTime
	andi	$2,$2,0x1	 # tmp263, second,
	beq	$2,$0,.L6	 #, tmp263,,
	sh	$3,%gp_rel(gTimeWrtTime)($28)	 # gTimeAccDate.85, gTimeWrtTime

	li	$2,100			# 0x64	 # tmp264,
	j	.L7	 #
	sb	$2,%gp_rel(gTimeCrtMS)($28)	 # tmp264, gTimeCrtMS

.L6:
	sb	$0,%gp_rel(gTimeCrtMS)($28)	 #, gTimeCrtMS
.L7:
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	j	$31
	move	$2,$0	 # D.30974,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	SetClockVars
	.size	SetClockVars, .-SetClockVars
	.align	2
	.globl	FSftell
	.set	nomips16
	.set	nomicromips
	.ent	FSftell
	.type	FSftell, @function
FSftell:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	j	$31
	lw	$2,16($4)	 #, fo_1(D)->seek

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSftell
	.size	FSftell, .-FSftell
	.align	2
	.globl	FSerror
	.set	nomips16
	.set	nomicromips
	.ent	FSerror
	.type	FSerror, @function
FSerror:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	j	$31
	lbu	$2,%gp_rel(FSerrno)($28)	 #, FSerrno

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSerror
	.size	FSerror, .-FSerror
	.align	2
	.globl	FileObjectCopy
	.set	nomips16
	.set	nomicromips
	.ent	FileObjectCopy
	.type	FileObjectCopy, @function
FileObjectCopy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	move	$2,$5	 # ivtmp.125, foSource
	addiu	$5,$5,60	 # D.31826, foSource,
.L12:
	lbu	$3,0($2)	 #,* ivtmp.125
	sb	$3,0($4)	 # tmp274,* ivtmp.126
	addiu	$2,$2,1	 # ivtmp.125, ivtmp.125,
	bne	$2,$5,.L12	 #, ivtmp.125, D.31826,
	addiu	$4,$4,1	 # ivtmp.126, ivtmp.126,

	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FileObjectCopy
	.size	FileObjectCopy, .-FileObjectCopy
	.align	2
	.globl	ReadByte
	.set	nomips16
	.set	nomicromips
	.ent	ReadByte
	.type	ReadByte, @function
ReadByte:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	andi	$5,$5,0xffff	 # index, index
	addu	$4,$4,$5	 # tmp226, pBuffer, index
	j	$31
	lbu	$2,0($4)	 #,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	ReadByte
	.size	ReadByte, .-ReadByte
	.align	2
	.globl	LoadMBR
	.set	nomips16
	.set	nomicromips
	.ent	LoadMBR
	.type	LoadMBR, @function
LoadMBR:
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
	move	$16,$4	 # dsk, dsk
	lwl	$5,3($4)	 # tmp243,
	move	$4,$0	 #,
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($16)	 #,* dsk

	li	$3,1			# 0x1	 # tmp245,
	beq	$2,$3,.L16	 #,, tmp245,
	li	$2,8			# 0x8	 # tmp246,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp246, FSerrno
	j	.L17	 #
	li	$2,8			# 0x8	 # error,

.L16:
	lwl	$17,3($16)	 # tmp247,
	lwr	$17,0($16)	 # D.31532,* dsk
	lbu	$3,510($17)	 # BSec_9->Signature0, BSec_9->Signature0
	li	$2,85			# 0x55	 # tmp249,
	bne	$3,$2,.L29	 #, BSec_9->Signature0, tmp249,
	li	$2,4			# 0x4	 # tmp278,

	lbu	$3,511($17)	 # BSec_9->Signature1, BSec_9->Signature1
	li	$2,170			# 0xaa	 # tmp251,
	bnel	$3,$2,.L27	 #, BSec_9->Signature1, tmp251,
	lbu	$3,510($17)	 # Partition_35->Signature0, Partition_35->Signature0

	move	$4,$17	 #, D.31532
	jal	ReadByte	 #
	li	$5,54			# 0x36	 #,

	li	$3,70			# 0x46	 # tmp253,
	bne	$2,$3,.L28	 #,, tmp253,
	move	$4,$17	 #, D.31532

	jal	ReadByte	 #
	li	$5,55			# 0x37	 #,

	li	$3,65			# 0x41	 # tmp255,
	bne	$2,$3,.L28	 #,, tmp255,
	move	$4,$17	 #, D.31532

	jal	ReadByte	 #
	li	$5,56			# 0x38	 #,

	li	$3,84			# 0x54	 # tmp257,
	bne	$2,$3,.L28	 #,, tmp257,
	move	$4,$17	 #, D.31532

	jal	ReadByte	 #
	li	$5,57			# 0x39	 #,

	li	$3,49			# 0x31	 # tmp259,
	bne	$2,$3,.L28	 #,, tmp259,
	move	$4,$17	 #, D.31532

	jal	ReadByte	 #
	li	$5,38			# 0x26	 #,

	li	$3,41			# 0x29	 # tmp261,
	bne	$2,$3,.L19	 #,, tmp261,
	move	$4,$17	 #, D.31532

	swl	$0,7($16)	 #,
	swr	$0,4($16)	 #,
	li	$2,2			# 0x2	 # tmp262,
	sb	$2,36($16)	 # tmp262, dsk_4(D)->type
	j	.L17	 #
	move	$2,$0	 # error,

.L19:
.L28:
	jal	ReadByte	 #
	li	$5,82			# 0x52	 #,

	li	$3,70			# 0x46	 # tmp264,
	bnel	$2,$3,.L27	 #,, tmp264,
	lbu	$3,510($17)	 # Partition_35->Signature0, Partition_35->Signature0

	move	$4,$17	 #, D.31532
	jal	ReadByte	 #
	li	$5,83			# 0x53	 #,

	li	$3,65			# 0x41	 # tmp266,
	bnel	$2,$3,.L27	 #,, tmp266,
	lbu	$3,510($17)	 # Partition_35->Signature0, Partition_35->Signature0

	move	$4,$17	 #, D.31532
	jal	ReadByte	 #
	li	$5,84			# 0x54	 #,

	li	$3,84			# 0x54	 # tmp268,
	bnel	$2,$3,.L27	 #,, tmp268,
	lbu	$3,510($17)	 # Partition_35->Signature0, Partition_35->Signature0

	move	$4,$17	 #, D.31532
	jal	ReadByte	 #
	li	$5,85			# 0x55	 #,

	li	$3,51			# 0x33	 # tmp270,
	bnel	$2,$3,.L27	 #,, tmp270,
	lbu	$3,510($17)	 # Partition_35->Signature0, Partition_35->Signature0

	move	$4,$17	 #, D.31532
	jal	ReadByte	 #
	li	$5,66			# 0x42	 #,

	li	$3,41			# 0x29	 # tmp272,
	bnel	$2,$3,.L18	 #,, tmp272,
	lbu	$3,510($17)	 # Partition_35->Signature0, Partition_35->Signature0

	swl	$0,7($16)	 #,
	swr	$0,4($16)	 #,
	li	$2,3			# 0x3	 # tmp273,
	sb	$2,36($16)	 # tmp273, dsk_4(D)->type
	j	.L17	 #
	move	$2,$0	 # error,

.L18:
.L27:
	li	$2,85			# 0x55	 # tmp275,
	bne	$3,$2,.L29	 #, Partition_35->Signature0, tmp275,
	li	$2,4			# 0x4	 # tmp278,

	lbu	$3,511($17)	 # Partition_35->Signature1, Partition_35->Signature1
	li	$2,170			# 0xaa	 # tmp277,
	beq	$3,$2,.L21	 #, Partition_35->Signature1, tmp277,
	li	$2,4			# 0x4	 # tmp278,

.L29:
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp278, FSerrno
	j	.L17	 #
	li	$2,4			# 0x4	 # error,

.L21:
	lwl	$2,457($17)	 # tmp280,
	lwr	$2,454($17)	 # tmp279,
	swl	$2,7($16)	 # tmp279,
	swr	$2,4($16)	 # tmp279,
	lbu	$2,450($17)	 # Partition_35->Partition0.PTE_FSDesc, Partition_35->Partition0.PTE_FSDesc
	sltu	$2,$2,15	 # tmp282, Partition_35->Partition0.PTE_FSDesc,
	beq	$2,$0,.L30	 #, tmp282,,
	li	$2,5			# 0x5	 # tmp292,

	lb	$2,450($17)	 # Partition_35->Partition0.PTE_FSDesc, Partition_35->Partition0.PTE_FSDesc
	li	$3,1			# 0x1	 # tmp285,
	sll	$2,$3,$2	 # tmp284, tmp285, Partition_35->Partition0.PTE_FSDesc
	andi	$3,$2,0x4050	 # tmp286, tmp284,
	bnel	$3,$0,.L24	 #, tmp286,,
	li	$2,2			# 0x2	 # tmp290,

	andi	$3,$2,0x1800	 # tmp287, tmp284,
	bnel	$3,$0,.L25	 #, tmp287,,
	li	$2,3			# 0x3	 # tmp291,

	andi	$2,$2,0x2	 # tmp288, tmp284,
	beql	$2,$0,.L22	 #, tmp288,,
	li	$2,5			# 0x5	 # tmp292,

	li	$2,1			# 0x1	 # tmp289,
	sb	$2,36($16)	 # tmp289, dsk_4(D)->type
	j	.L17	 #
	move	$2,$0	 # error,

.L24:
	sb	$2,36($16)	 # tmp290, dsk_4(D)->type
	j	.L17	 #
	move	$2,$0	 # error,

.L25:
	sb	$2,36($16)	 # tmp291, dsk_4(D)->type
	j	.L17	 #
	move	$2,$0	 # error,

.L22:
.L30:
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp292, FSerrno
	li	$2,5			# 0x5	 # error,
.L17:
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LoadMBR
	.size	LoadMBR, .-LoadMBR
	.align	2
	.globl	ReadWord
	.set	nomips16
	.set	nomicromips
	.ent	ReadWord
	.type	ReadWord, @function
ReadWord:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	andi	$5,$5,0xffff	 # index, index
	addu	$4,$4,$5	 # tmp232, pBuffer, index
	lbu	$2,1($4)	 # res,
	sll	$2,$2,8	 # res, res,
	lbu	$3,0($4)	 # tmp238,
	j	$31
	or	$2,$2,$3	 #, res, tmp238

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	ReadWord
	.size	ReadWord, .-ReadWord
	.align	2
	.globl	ReadDWord
	.set	nomips16
	.set	nomicromips
	.ent	ReadDWord
	.type	ReadDWord, @function
ReadDWord:
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
	move	$16,$4	 # pBuffer, pBuffer
	andi	$18,$5,0xffff	 # index, index
	jal	ReadWord	 #
	move	$5,$18	 #, index

	move	$17,$2	 # tmp231,
	addiu	$5,$18,2	 # tmp232, index,
	move	$4,$16	 #, pBuffer
	jal	ReadWord	 #
	andi	$5,$5,0xffff	 #, tmp232

	sll	$2,$2,16	 # result,,
	or	$2,$2,$17	 #, result, tmp231
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
	.end	ReadDWord
	.size	ReadDWord, .-ReadDWord
	.align	2
	.globl	LoadBootSector
	.set	nomips16
	.set	nomicromips
	.ent	LoadBootSector
	.type	LoadBootSector, @function
LoadBootSector:
	.frame	$sp,96,$31		# vars= 40, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-96	 #,,
	sw	$31,92($sp)	 #,
	sw	$fp,88($sp)	 #,
	sw	$23,84($sp)	 #,
	sw	$22,80($sp)	 #,
	sw	$21,76($sp)	 #,
	sw	$20,72($sp)	 #,
	sw	$19,68($sp)	 #,
	sw	$18,64($sp)	 #,
	sw	$17,60($sp)	 #,
	sw	$16,56($sp)	 #,
	move	$16,$4	 # dsk, dsk
	lwl	$4,7($4)	 # tmp296,
	lwl	$5,3($16)	 # tmp298,
	lwr	$4,4($16)	 #,
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($16)	 #,* dsk

	li	$4,1			# 0x1	 # tmp300,
	bne	$2,$4,.L34	 #,, tmp300,
	li	$3,8			# 0x8	 # error,

	lwl	$17,3($16)	 # tmp301,
	lwr	$17,0($16)	 # BSec,* dsk
	move	$19,$0	 # TriedBackupBootSecAtAddress6,
	move	$20,$0	 # TriedSpecifiedBackupBootSec,
	li	$18,85			# 0x55	 # tmp409,
	li	$21,170			# 0xaa	 # tmp410,
	li	$22,65525			# 0xfff5	 # tmp411,
	li	$23,3			# 0x3	 # tmp412,
	j	.L70	 #
	li	$fp,2			# 0x2	 # tmp413,

.L68:
	j	.L70	 #
	li	$20,1			# 0x1	 # TriedSpecifiedBackupBootSec,

.L69:
	li	$19,1			# 0x1	 # TriedBackupBootSecAtAddress6,
.L70:
	lbu	$2,510($17)	 # BSec_18->Signature0, BSec_18->Signature0
	bne	$2,$18,.L36	 #, BSec_18->Signature0, tmp409,
	li	$3,3			# 0x3	 # error,

	lbu	$2,511($17)	 # BSec_18->Signature1, BSec_18->Signature1
	bnel	$2,$21,.L71	 #, BSec_18->Signature1, tmp410,
	lbu	$4,36($16)	 # dsk_12(D)->type, dsk_12(D)->type

	lwl	$2,3($16)	 # tmp306,
	lwr	$2,0($16)	 # tmp306,* dsk
	sw	$2,16($sp)	 # tmp306, %sfp
	move	$4,$2	 #, tmp306
	jal	ReadWord	 #
	li	$5,14			# 0xe	 #,

	sw	$2,44($sp)	 #, %sfp
	lw	$4,16($sp)	 #, %sfp
	jal	ReadByte	 #
	li	$5,13			# 0xd	 #,

	sw	$2,36($sp)	 #, %sfp
	sb	$2,35($16)	 #, dsk_12(D)->SecPerClus
	lwl	$2,7($16)	 # tmp310,
	lwr	$2,4($16)	 # tmp309,
	lw	$3,44($sp)	 #, %sfp
	addu	$2,$3,$2	 #,, tmp309
	sw	$2,20($sp)	 #, %sfp
	swl	$2,11($16)	 #,
	swr	$2,8($16)	 #,
	lw	$4,16($sp)	 #, %sfp
	jal	ReadByte	 #
	li	$5,16			# 0x10	 #,

	sw	$2,24($sp)	 #, %sfp
	sb	$2,34($16)	 #, dsk_12(D)->fatcopy
	lw	$4,16($sp)	 #, %sfp
	jal	ReadWord	 #
	li	$5,22			# 0x16	 #,

	swl	$2,33($16)	 # tmp312,
	bne	$2,$0,.L37	 #, tmp312,,
	swr	$2,30($16)	 # tmp312,

	lw	$4,16($sp)	 #, %sfp
	jal	ReadDWord	 #
	li	$5,36			# 0x24	 #,

	swl	$2,33($16)	 # D.31430,
	swr	$2,30($16)	 # D.31430,
.L37:
	lwl	$2,33($16)	 # tmp314,
	lwr	$2,30($16)	 # tmp313,
	lw	$3,24($sp)	 #, %sfp
	mult	$3,$2	 #, tmp313
	mflo	$3	 #
	sw	$3,40($sp)	 #, %sfp
	lw	$4,20($sp)	 #, %sfp
	addu	$4,$3,$4	 #,,
	sw	$4,28($sp)	 #, %sfp
	swl	$4,15($16)	 #,
	swr	$4,12($16)	 #,
	lw	$4,16($sp)	 #, %sfp
	jal	ReadWord	 #
	li	$5,17			# 0x11	 #,

	sw	$2,24($sp)	 #, %sfp
	sb	$2,20($16)	 #,
	ext	$2,$2,8,16	 # tmp324, tmp5,,
	sb	$2,21($16)	 # tmp324,
	lw	$4,16($sp)	 #, %sfp
	jal	ReadWord	 #
	li	$5,19			# 0x13	 #,

	bne	$2,$0,.L38	 #,,,
	sw	$2,32($sp)	 #, %sfp

	lw	$4,16($sp)	 #, %sfp
	jal	ReadDWord	 #
	li	$5,32			# 0x20	 #,

	sw	$2,32($sp)	 #, %sfp
.L38:
	lw	$4,16($sp)	 #, %sfp
	jal	ReadWord	 #
	li	$5,11			# 0xb	 #,

	sw	$2,20($sp)	 #, %sfp
	beq	$2,$0,.L36	 #,,,
	li	$3,33			# 0x21	 # error,

	andi	$4,$2,0x1	 # tmp333, D.31443,
	bnel	$4,$0,.L71	 #, tmp333,,
	lbu	$4,36($16)	 # dsk_12(D)->type, dsk_12(D)->type

	lw	$4,24($sp)	 #, %sfp
	sll	$3,$4,5	 # tmp334,,
	addiu	$3,$3,-1	 # tmp335, tmp334,
	addu	$3,$3,$2	 # tmp336, tmp335, D.31443
	div	$0,$3,$2	 # tmp336, D.31443
	teq	$2,$0,7	 # D.31443
	mflo	$4	 #
	sw	$4,48($sp)	 #, %sfp
	lw	$5,32($sp)	 #, %sfp
	lw	$3,44($sp)	 #, %sfp
	subu	$2,$5,$3	 # tmp340,,
	lw	$4,40($sp)	 #, %sfp
	subu	$2,$2,$4	 # tmp341, tmp340,
	mflo	$5	 #
	subu	$2,$2,$5	 # tmp342, tmp341,
	lw	$5,36($sp)	 #, %sfp
	divu	$0,$2,$5	 # tmp342,
	teq	$5,$0,7	 #
	mflo	$4	 # tmp343
	mflo	$2	 # D.31456
	swl	$2,25($16)	 # D.31456,
	sltu	$3,$4,4085	 # tmp345, tmp343,
	beq	$3,$0,.L39	 #, tmp345,,
	swr	$2,22($16)	 # D.31456,

	li	$2,1			# 0x1	 # tmp346,
	j	.L40	 #
	sb	$2,36($16)	 # tmp346, dsk_12(D)->type

.L39:
	sltu	$2,$4,$22	 # tmp347, tmp343, tmp411
	beql	$2,$0,.L41	 #, tmp347,,
	sb	$23,36($16)	 # tmp412, dsk_12(D)->type

	j	.L40	 #
	sb	$fp,36($16)	 # tmp413, dsk_12(D)->type

.L41:
	lw	$4,16($sp)	 #, %sfp
	jal	ReadDWord	 #
	li	$5,44			# 0x2c	 #,

	sw	$2,%gp_rel(FatRootDirClusterValue)($28)	 #, FatRootDirClusterValue
	lw	$3,48($sp)	 #, %sfp
	lw	$4,28($sp)	 #, %sfp
	addu	$2,$3,$4	 # tmp351,,
	swl	$2,19($16)	 # tmp351,
	j	.L42	 #
	swr	$2,16($16)	 # tmp351,

.L40:
	sw	$0,%gp_rel(FatRootDirClusterValue)($28)	 #, FatRootDirClusterValue
	lw	$5,24($sp)	 #, %sfp
	ext	$2,$5,4,16	 # tmp353,,,
	lw	$3,28($sp)	 #, %sfp
	addu	$2,$2,$3	 # tmp354, tmp353,
	swl	$2,19($16)	 # tmp354,
	swr	$2,16($16)	 # tmp354,
.L42:
	lw	$4,20($sp)	 #, %sfp
	sltu	$3,$4,513	 # tmp355,,
	li	$2,33			# 0x21	 # tmp408,
	movn	$2,$0,$3	 #, tmp408,, tmp355
	move	$3,$2	 # error, tmp408
.L36:
	lbu	$4,36($16)	 # dsk_12(D)->type, dsk_12(D)->type
.L71:
	li	$2,3			# 0x3	 # tmp357,
	beql	$4,$2,.L72	 #, dsk_12(D)->type, tmp357,
	lbu	$4,19($17)	 # tmp363,

	beq	$3,$0,.L73	 #, error,,
	move	$2,$3	 #, error

	lbu	$2,66($17)	 #, BSec_18->FAT.FAT_32.BootSec_BootSig
	addiu	$2,$2,-40	 # tmp359, BSec_18->FAT.FAT_32.BootSec_BootSig,
	andi	$2,$2,0x00ff	 # tmp360, tmp359
	sltu	$2,$2,2	 # tmp361, tmp360,
	beql	$2,$0,.L44	 #, tmp361,,
	sb	$3,%gp_rel(FSerrno)($28)	 # error, FSerrno

	lbu	$4,19($17)	 # tmp363,
.L72:
	lbu	$2,20($17)	 # tmp364,
	sll	$2,$2,8	 # tmp365, tmp364,
	or	$2,$2,$4	 # tmp368, tmp365, tmp363
	bnel	$2,$0,.L45	 #, tmp368,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,52($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,53($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,54($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,55($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,56($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,57($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,58($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,59($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,60($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,61($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,62($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,63($17)	 # BSec_18->FAT.FAT_32.BootSec_Reserved, BSec_18->FAT.FAT_32.BootSec_Reserved
	bnel	$2,$0,.L45	 #, BSec_18->FAT.FAT_32.BootSec_Reserved,,
	li	$3,3			# 0x3	 # error,

	lbu	$2,66($17)	 #, BSec_18->FAT.FAT_32.BootSec_BootSig
	addiu	$2,$2,-40	 # tmp382, BSec_18->FAT.FAT_32.BootSec_BootSig,
	andi	$2,$2,0x00ff	 # tmp383, tmp382
	sltu	$2,$2,2	 # tmp384, tmp383,
	beql	$2,$0,.L67	 #, tmp384,,
	li	$3,3			# 0x3	 # error,

	beq	$3,$0,.L73	 #, error,,
	move	$2,$3	 #, error

.L67:
.L45:
	bne	$20,$0,.L46
	nop
	 #, TriedSpecifiedBackupBootSec,,
	lbu	$2,50($17)	 # tmp386,
	lbu	$4,51($17)	 # tmp387,
	sll	$4,$4,8	 # tmp388, tmp387,
	or	$4,$4,$2	 # tmp390, tmp388, tmp386
	lwl	$2,7($16)	 # tmp392,
	lwr	$2,4($16)	 # tmp391,
	lwl	$5,3($16)	 # tmp395,
	addu	$4,$4,$2	 #, tmp390, tmp391
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($16)	 #,* dsk

	li	$3,1			# 0x1	 # tmp397,
	beq	$2,$3,.L68	 #,, tmp397,
	li	$2,8			# 0x8	 # tmp398,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp398, FSerrno
	j	.L44	 #
	li	$3,8			# 0x8	 # error,

.L46:
	bnel	$19,$0,.L44	 #, TriedBackupBootSecAtAddress6,,
	sb	$3,%gp_rel(FSerrno)($28)	 # error, FSerrno

	lwl	$4,7($16)	 # tmp400,
	lwr	$4,4($16)	 # tmp399,
	lwl	$5,3($16)	 # tmp403,
	addiu	$4,$4,6	 #, tmp399,
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($16)	 #,* dsk

	li	$3,1			# 0x1	 # tmp405,
	beq	$2,$3,.L69	 #,, tmp405,
	li	$2,8			# 0x8	 # tmp406,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp406, FSerrno
	j	.L44	 #
	li	$3,8			# 0x8	 # error,

.L34:
	sb	$3,%gp_rel(FSerrno)($28)	 # error, FSerrno
.L44:
	move	$2,$3	 #, error
.L73:
	lw	$31,92($sp)	 #,
	lw	$fp,88($sp)	 #,
	lw	$23,84($sp)	 #,
	lw	$22,80($sp)	 #,
	lw	$21,76($sp)	 #,
	lw	$20,72($sp)	 #,
	lw	$19,68($sp)	 #,
	lw	$18,64($sp)	 #,
	lw	$17,60($sp)	 #,
	lw	$16,56($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,96	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LoadBootSector
	.size	LoadBootSector, .-LoadBootSector
	.align	2
	.globl	FSformat
	.set	nomips16
	.set	nomicromips
	.ent	FSformat
	.type	FSformat, @function
FSformat:
	.frame	$sp,80,$31		# vars= 40, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-80	 #,,
	sw	$31,76($sp)	 #,
	sw	$20,72($sp)	 #,
	sw	$19,68($sp)	 #,
	sw	$18,64($sp)	 #,
	sw	$17,60($sp)	 #,
	sw	$16,56($sp)	 #,
	move	$17,$5	 # serialNumber, serialNumber
	move	$20,$6	 # volumeID, volumeID
	seb	$18,$4	 # mode, mode
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed
	sb	$0,%gp_rel(gNeedFATWrite)($28)	 #, gNeedFATWrite
	li	$2,-1			# 0xffffffff	 # tmp499,
	sw	$2,%gp_rel(gLastFATSectorRead)($28)	 # tmp499, gLastFATSectorRead
	sw	$2,%gp_rel(gLastDataSectorRead)($28)	 # tmp499, gLastDataSectorRead
	lui	$2,%hi(gDataBuffer)	 # tmp502,
	addiu	$2,$2,%lo(gDataBuffer)	 # tmp501, tmp502,
	jal	MDD_SDSPI_InitIO	 #
	sw	$2,16($sp)	 # tmp501, d.buffer

	jal	MDD_SDSPI_MediaInitialize
	nop
	 #
	lbu	$2,0($2)	 # mediaInfo_25->errorCode, mediaInfo_25->errorCode
	beq	$2,$0,.L75	 #, mediaInfo_25->errorCode,,
	move	$4,$0	 #,

	li	$2,6			# 0x6	 # tmp504,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp504, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L75:
	lui	$5,%hi(gDataBuffer)	 # tmp505,
	jal	MDD_SDSPI_SectorRead	 #
	addiu	$5,$5,%lo(gDataBuffer)	 #, tmp505,

	bne	$2,$0,.L77	 #,,,
	lw	$16,16($sp)	 # D.31187,

	li	$2,27			# 0x1b	 # tmp507,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp507, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L77:
	lbu	$3,510($16)	 # BSec_31->Signature0, BSec_31->Signature0
	li	$2,85			# 0x55	 # tmp509,
	bne	$3,$2,.L198	 #, BSec_31->Signature0, tmp509,
	li	$2,4			# 0x4	 # tmp531,

	lbu	$3,511($16)	 # BSec_31->Signature1, BSec_31->Signature1
	li	$2,170			# 0xaa	 # tmp511,
	bne	$3,$2,.L78	 #, BSec_31->Signature1, tmp511,
	move	$4,$16	 #, D.31187

	jal	ReadByte	 #
	li	$5,54			# 0x36	 #,

	li	$3,70			# 0x46	 # tmp513,
	bne	$2,$3,.L199	 #,, tmp513,
	lui	$2,%hi(gDataBuffer)	 # tmp526,

	move	$4,$16	 #, D.31187
	jal	ReadByte	 #
	li	$5,55			# 0x37	 #,

	li	$3,65			# 0x41	 # tmp515,
	bne	$2,$3,.L199	 #,, tmp515,
	lui	$2,%hi(gDataBuffer)	 # tmp526,

	move	$4,$16	 #, D.31187
	jal	ReadByte	 #
	li	$5,56			# 0x38	 #,

	li	$3,84			# 0x54	 # tmp517,
	bne	$2,$3,.L199	 #,, tmp517,
	lui	$2,%hi(gDataBuffer)	 # tmp526,

	move	$4,$16	 #, D.31187
	jal	ReadByte	 #
	li	$5,57			# 0x39	 #,

	li	$3,49			# 0x31	 # tmp519,
	bne	$2,$3,.L199	 #,, tmp519,
	lui	$2,%hi(gDataBuffer)	 # tmp526,

	move	$4,$16	 #, D.31187
	jal	ReadByte	 #
	li	$5,38			# 0x26	 #,

	li	$3,41			# 0x29	 # tmp521,
	bne	$2,$3,.L79	 #,, tmp521,
	lui	$2,%hi(gDataBuffer)	 # tmp526,

	beql	$18,$0,.L81	 #, mode,,
	sw	$0,20($sp)	 #, d.firsts

	li	$2,1			# 0x1	 # tmp522,
	bnel	$18,$2,.L192	 #, mode, tmp522,
	move	$2,$0	 # masterBootRecord,

	li	$2,31			# 0x1f	 # tmp523,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp523, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L81:
	jal	LoadBootSector	 #
	addiu	$4,$sp,16	 #,,

	beq	$2,$0,.L83	 #,,,
	li	$2,27			# 0x1b	 # tmp525,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp525, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L79:
.L199:
	addiu	$2,$2,%lo(gDataBuffer)	 # masterBootRecord, tmp526,
	lwl	$3,457($2)	 # tmp530,
	lwr	$3,454($2)	 # tmp529,
	j	.L80	 #
	sw	$3,20($sp)	 # tmp529, d.firsts

.L78:
	li	$2,4			# 0x4	 # tmp531,
.L198:
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp531, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L192:
.L80:
	beq	$18,$0,.L83	 #, mode,,
	li	$3,1			# 0x1	 # tmp532,

	bnel	$18,$3,.L193	 #, mode, tmp532,
	li	$2,31			# 0x1f	 # tmp999,

	lwl	$18,461($2)	 # tmp533,
	lwr	$18,458($2)	 # secCount,
	sltu	$3,$18,4153	 # tmp534, secCount,
	beq	$3,$0,.L86	 #, tmp534,,
	li	$3,4128768			# 0x3f0000	 # tmp566,

	li	$3,1			# 0x1	 # tmp535,
	sb	$3,52($sp)	 # tmp535, d.type
	sb	$3,450($2)	 # tmp535, masterBootRecord_1->Partition0.PTE_FSDesc
	move	$4,$0	 #,
	lui	$5,%hi(gDataBuffer)	 # tmp537,
	addiu	$5,$5,%lo(gDataBuffer)	 #, tmp537,
	jal	MDD_SDSPI_SectorWrite	 #
	li	$6,1			# 0x1	 #,

	bnel	$2,$0,.L87	 #,,,
	sltu	$2,$18,4136	 # tmp540, secCount,

	li	$2,9			# 0x9	 # tmp539,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp539, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L87:
	bne	$2,$0,.L88	 #, tmp540,,
	li	$2,1			# 0x1	 # tmp542,

	li	$2,2			# 0x2	 # tmp541,
	j	.L89	 #
	sb	$2,51($sp)	 # tmp541, d.SecPerClus

.L88:
	sb	$2,51($sp)	 # tmp542, d.SecPerClus
.L89:
	lui	$16,%hi(gDataBuffer)	 # tmp543,
	addiu	$16,$16,%lo(gDataBuffer)	 # tmp544, tmp543,
	move	$4,$16	 #, tmp544
	move	$5,$0	 #,
	jal	memset	 #
	li	$6,512			# 0x200	 #,

	li	$2,50			# 0x32	 # tmp549,
	sb	$2,58($16)	 # tmp549, gDataBuffer
	lbu	$2,51($sp)	 # D.31220, d.SecPerClus
	sll	$4,$2,2	 # tmp551, D.31220,
	sll	$3,$2,4	 # tmp552, D.31220,
	addu	$3,$4,$3	 # tmp553, tmp551, tmp552
	sll	$4,$3,4	 # tmp554, tmp553,
	addu	$4,$3,$4	 # tmp555, tmp553, tmp554
	addu	$4,$4,$2	 # tmp556, tmp555, D.31220
	addiu	$4,$4,2	 # test, tmp556,
	addiu	$3,$18,-34	 # tmp557, secCount,
	sll	$2,$2,1	 # tmp558, D.31220,
	addu	$3,$3,$2	 # tmp559, tmp557, tmp558
	addu	$3,$3,$4	 # D.31227, tmp559, test
	divu	$0,$3,$4	 # D.31227, test
	teq	$4,$0,7	 # test
	mflo	$3	 # fatsize
	li	$2,2			# 0x2	 # tmp562,
	sb	$2,50($sp)	 # tmp562, d.fatcopy
	li	$2,512			# 0x200	 # tmp545,
	sh	$2,36($sp)	 # tmp545, d.maxroot
	swl	$3,49($sp)	 # fatsize,
	j	.L90	 #
	swr	$3,46($sp)	 # fatsize,

.L86:
	ori	$3,$3,0xfd60	 # tmp565, tmp566,
	sltu	$3,$18,$3	 # tmp564, secCount, tmp565
	beq	$3,$0,.L91	 #, tmp564,,
	li	$3,3			# 0x3	 # tmp596,

	li	$3,2			# 0x2	 # tmp567,
	sb	$3,52($sp)	 # tmp567, d.type
	li	$3,6			# 0x6	 # tmp568,
	sb	$3,450($2)	 # tmp568, masterBootRecord_1->Partition0.PTE_FSDesc
	move	$4,$0	 #,
	lui	$5,%hi(gDataBuffer)	 # tmp569,
	addiu	$5,$5,%lo(gDataBuffer)	 #, tmp569,
	jal	MDD_SDSPI_SectorWrite	 #
	li	$6,1			# 0x1	 #,

	bnel	$2,$0,.L92	 #,,,
	addiu	$2,$18,-536	 # DataClusters, secCount,

	li	$2,9			# 0x9	 # tmp571,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp571, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L92:
	li	$3,1			# 0x1	 # tmp572,
	sb	$3,51($sp)	 # tmp572, d.SecPerClus
	li	$3,65518			# 0xffee	 # tmp574,
	sltu	$3,$2,$3	 # tmp573, DataClusters, tmp574
	bne	$3,$0,.L146	 #, tmp573,,
	li	$16,1			# 0x1	 # d__SecPerClusd_I_lsm.140,

	li	$4,65518			# 0xffee	 # tmp1243,
.L94:
	sll	$16,$16,1	 # tmp575, d__SecPerClusd_I_lsm.140,
	srl	$2,$2,1	 # DataClusters, DataClusters,
	sltu	$3,$2,$4	 # tmp577, DataClusters, tmp1243
	beq	$3,$0,.L94	 #, tmp577,,
	andi	$16,$16,0x00ff	 # d__SecPerClusd_I_lsm.140, tmp575

	sltu	$2,$16,129	 # tmp579, d__SecPerClusd_I_lsm.140,
	bne	$2,$0,.L93	 #, tmp579,,
	sb	$16,51($sp)	 # d__SecPerClusd_I_lsm.140, d.SecPerClus

	li	$2,4			# 0x4	 # tmp580,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp580, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L146:
.L93:
	lui	$19,%hi(gDataBuffer)	 # tmp581,
	addiu	$19,$19,%lo(gDataBuffer)	 # tmp582, tmp581,
	move	$4,$19	 #, tmp582
	move	$5,$0	 #,
	jal	memset	 #
	li	$6,512			# 0x200	 #,

	li	$2,54			# 0x36	 # tmp587,
	sb	$2,58($19)	 # tmp587, gDataBuffer
	sll	$2,$16,8	 # tmp588, d__SecPerClusd_I_lsm.140,
	addiu	$2,$2,2	 # test, tmp588,
	addiu	$3,$18,-34	 # tmp589, secCount,
	sll	$16,$16,1	 # tmp590, d__SecPerClusd_I_lsm.140,
	addu	$3,$3,$16	 # tmp591, tmp589, tmp590
	addu	$3,$3,$2	 # D.31227, tmp591, test
	divu	$0,$3,$2	 # D.31227, test
	teq	$2,$0,7	 # test
	mflo	$3	 # fatsize
	li	$2,2			# 0x2	 # tmp594,
	sb	$2,50($sp)	 # tmp594, d.fatcopy
	li	$2,512			# 0x200	 # tmp583,
	sh	$2,36($sp)	 # tmp583, d.maxroot
	swl	$3,49($sp)	 # fatsize,
	j	.L90	 #
	swr	$3,46($sp)	 # fatsize,

.L91:
	sb	$3,52($sp)	 # tmp596, d.type
	li	$3,11			# 0xb	 # tmp597,
	sb	$3,450($2)	 # tmp597, masterBootRecord_1->Partition0.PTE_FSDesc
	move	$4,$0	 #,
	lui	$5,%hi(gDataBuffer)	 # tmp598,
	addiu	$5,$5,%lo(gDataBuffer)	 #, tmp598,
	jal	MDD_SDSPI_SectorWrite	 #
	li	$6,1			# 0x1	 #,

	bnel	$2,$0,.L95	 #,,,
	li	$2,1			# 0x1	 # tmp601,

	li	$2,9			# 0x9	 # tmp600,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp600, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L95:
	sb	$2,51($sp)	 # tmp601, d.SecPerClus
	li	$2,4128768			# 0x3f0000	 # tmp604,
	ori	$2,$2,0xbfff	 # tmp603, tmp604,
	sltu	$2,$18,$2	 # tmp602, secCount, tmp603
	bne	$2,$0,.L147	 #, tmp602,,
	move	$2,$18	 # DataClusters, secCount

	li	$16,1			# 0x1	 # d__SecPerClusd_I_lsm.141,
	li	$4,4128768			# 0x3f0000	 # tmp1244,
	ori	$4,$4,0xbfff	 # tmp1245, tmp1244,
.L97:
	sll	$16,$16,1	 # tmp605, d__SecPerClusd_I_lsm.141,
	srl	$2,$2,1	 # DataClusters, DataClusters,
	sltu	$3,$2,$4	 # tmp607, DataClusters, tmp1245
	beq	$3,$0,.L97	 #, tmp607,,
	andi	$16,$16,0x00ff	 # d__SecPerClusd_I_lsm.141, tmp605

	sltu	$2,$16,129	 # tmp610, d__SecPerClusd_I_lsm.141,
	bne	$2,$0,.L96	 #, tmp610,,
	sb	$16,51($sp)	 # d__SecPerClusd_I_lsm.141, d.SecPerClus

	li	$2,4			# 0x4	 # tmp611,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp611, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L147:
	li	$16,1			# 0x1	 # d__SecPerClusd_I_lsm.141,
.L96:
	lui	$4,%hi(gDataBuffer)	 # tmp612,
	addiu	$4,$4,%lo(gDataBuffer)	 #, tmp612,
	move	$5,$0	 #,
	jal	memset	 #
	li	$6,512			# 0x200	 #,

	sll	$16,$16,7	 # tmp616, d__SecPerClusd_I_lsm.141,
	addiu	$16,$16,1	 # test, tmp616,
	addiu	$3,$18,-33	 # tmp617, secCount,
	addu	$3,$3,$16	 # tmp618, tmp617, test
	divu	$0,$3,$16	 # tmp618, test
	teq	$16,$0,7	 # test
	mflo	$3	 # fatsize
	li	$2,2			# 0x2	 # tmp621,
	sb	$2,50($sp)	 # tmp621, d.fatcopy
	li	$2,512			# 0x200	 # tmp614,
	sh	$2,36($sp)	 # tmp614, d.maxroot
	swl	$3,49($sp)	 # fatsize,
	swr	$3,46($sp)	 # fatsize,
.L90:
	lui	$2,%hi(gDataBuffer)	 # tmp623,
	li	$4,-21			# 0xffffffeb	 # tmp624,
	sb	$4,%lo(gDataBuffer)($2)	 # tmp624, gDataBuffer
	addiu	$2,$2,%lo(gDataBuffer)	 # tmp626, tmp623,
	li	$4,60			# 0x3c	 # tmp627,
	sb	$4,1($2)	 # tmp627, gDataBuffer
	li	$4,-112			# 0xffffff90	 # tmp630,
	sb	$4,2($2)	 # tmp630, gDataBuffer
	li	$4,77			# 0x4d	 # tmp633,
	sb	$4,3($2)	 # tmp633, gDataBuffer
	li	$4,67			# 0x43	 # tmp636,
	sb	$4,4($2)	 # tmp636, gDataBuffer
	li	$4,72			# 0x48	 # tmp639,
	sb	$4,5($2)	 # tmp639, gDataBuffer
	li	$4,80			# 0x50	 # tmp642,
	sb	$4,6($2)	 # tmp642, gDataBuffer
	li	$4,32			# 0x20	 # tmp645,
	sb	$4,7($2)	 # tmp645, gDataBuffer
	li	$4,70			# 0x46	 # tmp648,
	sb	$4,8($2)	 # tmp648, gDataBuffer
	li	$4,65			# 0x41	 # tmp651,
	sb	$4,9($2)	 # tmp651, gDataBuffer
	li	$4,84			# 0x54	 # tmp654,
	sb	$4,10($2)	 # tmp654, gDataBuffer
	sb	$0,11($2)	 #, gDataBuffer
	li	$4,2			# 0x2	 # tmp659,
	sb	$4,12($2)	 # tmp659, gDataBuffer
	lbu	$4,51($sp)	 #, d.SecPerClus
	sb	$4,13($2)	 # d.SecPerClus, gDataBuffer
	lbu	$2,52($sp)	 #, d.type
	addiu	$2,$2,-1	 # tmp664, d.type,
	andi	$2,$2,0x00ff	 # tmp665, tmp664
	sltu	$2,$2,2	 # tmp666, tmp665,
	beq	$2,$0,.L98	 #, tmp666,,
	lui	$2,%hi(gDataBuffer)	 # tmp793,

	addiu	$2,$2,%lo(gDataBuffer)	 # tmp668, tmp667,
	li	$4,8			# 0x8	 # tmp669,
	sb	$4,14($2)	 # tmp669, gDataBuffer
	sb	$0,15($2)	 #, gDataBuffer
	lw	$4,20($sp)	 # D.31251,
	addiu	$5,$4,8	 # tmp672, D.31251,
	sw	$5,24($sp)	 # tmp672, d.fat
	li	$5,2			# 0x2	 # tmp675,
	sb	$5,16($2)	 # tmp675, gDataBuffer
	sb	$0,17($2)	 #, gDataBuffer
	sb	$5,18($2)	 # tmp675, gDataBuffer
	sb	$0,19($2)	 #, gDataBuffer
	sb	$0,20($2)	 #, gDataBuffer
	li	$5,-8			# 0xfffffff8	 # tmp687,
	sb	$5,21($2)	 # tmp687, gDataBuffer
	sb	$3,22($2)	 # fatsize, gDataBuffer
	srl	$3,$3,8	 # tmp692, fatsize,
	sb	$3,23($2)	 # tmp692, gDataBuffer
	li	$3,63			# 0x3f	 # tmp695,
	sb	$3,24($2)	 # tmp695, gDataBuffer
	sb	$0,25($2)	 #, gDataBuffer
	li	$3,-1			# 0xffffffff	 # tmp700,
	sb	$3,26($2)	 # tmp700, gDataBuffer
	sb	$0,27($2)	 #, gDataBuffer
	sb	$4,28($2)	 # D.31251, gDataBuffer
	srl	$3,$4,8	 # tmp707, D.31251,
	sb	$3,29($2)	 # tmp707, gDataBuffer
	srl	$3,$4,16	 # tmp710, D.31251,
	sb	$3,30($2)	 # tmp710, gDataBuffer
	srl	$4,$4,24	 # tmp713, D.31251,
	sb	$4,31($2)	 # tmp713, gDataBuffer
	sb	$18,32($2)	 # secCount, gDataBuffer
	srl	$3,$18,8	 # tmp718, secCount,
	sb	$3,33($2)	 # tmp718, gDataBuffer
	srl	$3,$18,16	 # tmp721, secCount,
	sb	$3,34($2)	 # tmp721, gDataBuffer
	srl	$18,$18,24	 # tmp724, secCount,
	sb	$18,35($2)	 # tmp724, gDataBuffer
	sb	$0,36($2)	 #, gDataBuffer
	sb	$0,37($2)	 #, gDataBuffer
	li	$3,41			# 0x29	 # tmp731,
	sb	$3,38($2)	 # tmp731, gDataBuffer
	sb	$17,39($2)	 # serialNumber, gDataBuffer
	addiu	$4,$17,255	 # tmp738, serialNumber,
	slt	$3,$17,0	 # tmp739, serialNumber,
	movz	$4,$17,$3	 #, serialNumber, serialNumber, tmp739
	sra	$4,$4,8	 # tmp740, serialNumber,
	sb	$4,40($2)	 # tmp740, gDataBuffer
	li	$4,65535			# 0xffff	 # tmp746,
	addu	$4,$17,$4	 # tmp745, serialNumber, tmp746
	movz	$4,$17,$3	 #, serialNumber, serialNumber, tmp739
	sra	$4,$4,16	 # tmp748, serialNumber,
	sb	$4,41($2)	 # tmp748, gDataBuffer
	li	$4,16711680			# 0xff0000	 # tmp755,
	ori	$4,$4,0xffff	 # tmp754, tmp755,
	addu	$4,$17,$4	 # tmp753, serialNumber, tmp754
	movn	$17,$4,$3	 #, serialNumber, tmp753, tmp739
	sra	$3,$17,24	 # tmp757, serialNumber,
	beq	$20,$0,.L99	 #, volumeID,,
	sb	$3,42($2)	 # tmp757, gDataBuffer

	lb	$3,0($20)	 # D.31281,* volumeID
	beq	$3,$0,.L148	 #, D.31281,,
	move	$2,$0	 # Index,

	lui	$5,%hi(gDataBuffer)	 # tmp1234,
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1235, tmp1234,
	li	$6,11			# 0xb	 # tmp1236,
	addu	$4,$5,$2	 # tmp758, tmp1235, Index
.L201:
	sb	$3,43($4)	 # D.31281, gDataBuffer
	addiu	$2,$2,1	 # Index, Index,
	addu	$3,$20,$2	 # tmp761, volumeID, Index
	lb	$3,0($3)	 # D.31281,
	bne	$3,$0,.L101
	nop
	 #, D.31281,,
	sltu	$3,$2,11	 # tmp762, Index,
	bne	$3,$0,.L200	 #, tmp762,,
	lui	$5,%hi(gDataBuffer)	 # tmp1231,

	j	.L194	 #
	lui	$2,%hi(gDataBuffer)	 # tmp772,

.L101:
	bne	$2,$6,.L201	 #, Index, tmp1236,
	addu	$4,$5,$2	 # tmp758, tmp1235, Index

	j	.L194	 #
	lui	$2,%hi(gDataBuffer)	 # tmp772,

.L148:
	lui	$5,%hi(gDataBuffer)	 # tmp1231,
.L200:
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1232, tmp1231,
	li	$4,32			# 0x20	 # tmp1233,
	addu	$3,$5,$2	 # tmp764, tmp1232, Index
.L202:
	sb	$4,43($3)	 # tmp1233, gDataBuffer
	addiu	$2,$2,1	 # Index, Index,
	sltu	$3,$2,11	 # tmp768, Index,
	bne	$3,$0,.L202	 #, tmp768,,
	addu	$3,$5,$2	 # tmp764, tmp1232, Index

	j	.L194	 #
	lui	$2,%hi(gDataBuffer)	 # tmp772,

.L99:
	lui	$2,%hi(gDataBuffer+43)	 # tmp769,
	addiu	$2,$2,%lo(gDataBuffer+43)	 # ivtmp.227, tmp769,
	lui	$3,%hi(gDataBuffer+54)	 # tmp1246,
	addiu	$3,$3,%lo(gDataBuffer+54)	 # D.31952, tmp1246,
	sb	$0,0($2)	 #, gDataBuffer
.L203:
	addiu	$2,$2,1	 # ivtmp.227, ivtmp.227,
	bnel	$2,$3,.L203	 #, ivtmp.227, D.31952,
	sb	$0,0($2)	 #, gDataBuffer

	lui	$2,%hi(gDataBuffer)	 # tmp772,
.L194:
	addiu	$2,$2,%lo(gDataBuffer)	 # tmp773, tmp772,
	li	$3,70			# 0x46	 # tmp774,
	sb	$3,54($2)	 # tmp774, gDataBuffer
	li	$3,65			# 0x41	 # tmp777,
	sb	$3,55($2)	 # tmp777, gDataBuffer
	li	$3,84			# 0x54	 # tmp780,
	sb	$3,56($2)	 # tmp780, gDataBuffer
	li	$3,49			# 0x31	 # tmp783,
	sb	$3,57($2)	 # tmp783, gDataBuffer
	li	$3,32			# 0x20	 # tmp786,
	sb	$3,59($2)	 # tmp786, gDataBuffer
	sb	$3,60($2)	 # tmp786, gDataBuffer
	j	.L106	 #
	sb	$3,61($2)	 # tmp786, gDataBuffer

.L98:
	addiu	$2,$2,%lo(gDataBuffer)	 # tmp794, tmp793,
	li	$4,32			# 0x20	 # tmp795,
	sb	$4,14($2)	 # tmp795, gDataBuffer
	sb	$0,15($2)	 #, gDataBuffer
	lw	$4,20($sp)	 # D.31251,
	addiu	$5,$4,32	 # tmp798, D.31251,
	sw	$5,24($sp)	 # tmp798, d.fat
	li	$5,2			# 0x2	 # tmp801,
	sb	$5,16($2)	 # tmp801, gDataBuffer
	sb	$0,17($2)	 #, gDataBuffer
	sb	$0,18($2)	 #, gDataBuffer
	sb	$0,19($2)	 #, gDataBuffer
	sb	$0,20($2)	 #, gDataBuffer
	li	$6,-8			# 0xfffffff8	 # tmp812,
	sb	$6,21($2)	 # tmp812, gDataBuffer
	sb	$0,22($2)	 #, gDataBuffer
	sb	$0,23($2)	 #, gDataBuffer
	li	$6,63			# 0x3f	 # tmp819,
	sb	$6,24($2)	 # tmp819, gDataBuffer
	sb	$0,25($2)	 #, gDataBuffer
	li	$6,-1			# 0xffffffff	 # tmp824,
	sb	$6,26($2)	 # tmp824, gDataBuffer
	sb	$0,27($2)	 #, gDataBuffer
	sb	$4,28($2)	 # D.31251, gDataBuffer
	srl	$6,$4,8	 # tmp831, D.31251,
	sb	$6,29($2)	 # tmp831, gDataBuffer
	srl	$6,$4,16	 # tmp834, D.31251,
	sb	$6,30($2)	 # tmp834, gDataBuffer
	srl	$4,$4,24	 # tmp837, D.31251,
	sb	$4,31($2)	 # tmp837, gDataBuffer
	sb	$18,32($2)	 # secCount, gDataBuffer
	srl	$4,$18,8	 # tmp842, secCount,
	sb	$4,33($2)	 # tmp842, gDataBuffer
	srl	$4,$18,16	 # tmp845, secCount,
	sb	$4,34($2)	 # tmp845, gDataBuffer
	srl	$18,$18,24	 # tmp848, secCount,
	sb	$18,35($2)	 # tmp848, gDataBuffer
	sb	$3,36($2)	 # fatsize, gDataBuffer
	srl	$4,$3,8	 # tmp853, fatsize,
	sb	$4,37($2)	 # tmp853, gDataBuffer
	srl	$4,$3,16	 # tmp856, fatsize,
	sb	$4,38($2)	 # tmp856, gDataBuffer
	srl	$3,$3,24	 # tmp859, fatsize,
	sb	$3,39($2)	 # tmp859, gDataBuffer
	sb	$0,40($2)	 #, gDataBuffer
	sb	$0,41($2)	 #, gDataBuffer
	sb	$0,42($2)	 #, gDataBuffer
	sb	$0,43($2)	 #, gDataBuffer
	sb	$5,44($2)	 # tmp801, gDataBuffer
	sb	$0,45($2)	 #, gDataBuffer
	sb	$0,46($2)	 #, gDataBuffer
	sb	$0,47($2)	 #, gDataBuffer
	li	$3,1			# 0x1	 # tmp879,
	sb	$3,48($2)	 # tmp879, gDataBuffer
	sb	$0,49($2)	 #, gDataBuffer
	sb	$0,50($2)	 #, gDataBuffer
	sb	$0,51($2)	 #, gDataBuffer
	sb	$0,52($2)	 #, gDataBuffer
	sb	$0,53($2)	 #, gDataBuffer
	sb	$0,54($2)	 #, gDataBuffer
	sb	$0,55($2)	 #, gDataBuffer
	sb	$0,56($2)	 #, gDataBuffer
	sb	$0,57($2)	 #, gDataBuffer
	sb	$0,58($2)	 #, gDataBuffer
	sb	$0,59($2)	 #, gDataBuffer
	sb	$0,60($2)	 #, gDataBuffer
	sb	$0,61($2)	 #, gDataBuffer
	sb	$0,62($2)	 #, gDataBuffer
	sb	$0,63($2)	 #, gDataBuffer
	sb	$0,64($2)	 #, gDataBuffer
	sb	$0,65($2)	 #, gDataBuffer
	li	$3,41			# 0x29	 # tmp916,
	sb	$3,66($2)	 # tmp916, gDataBuffer
	sb	$17,67($2)	 # serialNumber, gDataBuffer
	addiu	$4,$17,255	 # tmp923, serialNumber,
	slt	$3,$17,0	 # tmp924, serialNumber,
	movz	$4,$17,$3	 #, serialNumber, serialNumber, tmp924
	sra	$4,$4,8	 # tmp925, serialNumber,
	sb	$4,68($2)	 # tmp925, gDataBuffer
	li	$4,65535			# 0xffff	 # tmp931,
	addu	$4,$17,$4	 # tmp930, serialNumber, tmp931
	movz	$4,$17,$3	 #, serialNumber, serialNumber, tmp924
	sra	$4,$4,16	 # tmp933, serialNumber,
	sb	$4,69($2)	 # tmp933, gDataBuffer
	li	$4,16711680			# 0xff0000	 # tmp940,
	ori	$4,$4,0xffff	 # tmp939, tmp940,
	addu	$4,$17,$4	 # tmp938, serialNumber, tmp939
	movn	$17,$4,$3	 #, serialNumber, tmp938, tmp924
	sra	$3,$17,24	 # tmp942, serialNumber,
	beq	$20,$0,.L107	 #, volumeID,,
	sb	$3,70($2)	 # tmp942, gDataBuffer

	lb	$3,0($20)	 # D.31281,* volumeID
	beq	$3,$0,.L149	 #, D.31281,,
	move	$2,$0	 # Index,

	lui	$5,%hi(gDataBuffer)	 # tmp1240,
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1241, tmp1240,
	li	$6,11			# 0xb	 # tmp1242,
	addu	$4,$5,$2	 # tmp943, tmp1241, Index
.L205:
	sb	$3,71($4)	 # D.31281, gDataBuffer
	addiu	$2,$2,1	 # Index, Index,
	addu	$3,$20,$2	 # tmp946, volumeID, Index
	lb	$3,0($3)	 # D.31281,
	bne	$3,$0,.L109
	nop
	 #, D.31281,,
	sltu	$3,$2,11	 # tmp947, Index,
	bne	$3,$0,.L204	 #, tmp947,,
	lui	$5,%hi(gDataBuffer)	 # tmp1237,

	j	.L195	 #
	lui	$2,%hi(gDataBuffer)	 # tmp957,

.L109:
	bne	$2,$6,.L205	 #, Index, tmp1242,
	addu	$4,$5,$2	 # tmp943, tmp1241, Index

	j	.L195	 #
	lui	$2,%hi(gDataBuffer)	 # tmp957,

.L149:
	lui	$5,%hi(gDataBuffer)	 # tmp1237,
.L204:
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1238, tmp1237,
	li	$4,32			# 0x20	 # tmp1239,
	addu	$3,$5,$2	 # tmp949, tmp1238, Index
.L206:
	sb	$4,71($3)	 # tmp1239, gDataBuffer
	addiu	$2,$2,1	 # Index, Index,
	sltu	$3,$2,11	 # tmp953, Index,
	bne	$3,$0,.L206	 #, tmp953,,
	addu	$3,$5,$2	 # tmp949, tmp1238, Index

	j	.L195	 #
	lui	$2,%hi(gDataBuffer)	 # tmp957,

.L107:
	lui	$2,%hi(gDataBuffer+71)	 # tmp954,
	addiu	$2,$2,%lo(gDataBuffer+71)	 # ivtmp.249, tmp954,
	lui	$3,%hi(gDataBuffer+82)	 # tmp1247,
	addiu	$3,$3,%lo(gDataBuffer+82)	 # D.31979, tmp1247,
	sb	$0,0($2)	 #, gDataBuffer
.L207:
	addiu	$2,$2,1	 # ivtmp.249, ivtmp.249,
	bnel	$2,$3,.L207	 #, ivtmp.249, D.31979,
	sb	$0,0($2)	 #, gDataBuffer

	lui	$2,%hi(gDataBuffer)	 # tmp957,
.L195:
	addiu	$2,$2,%lo(gDataBuffer)	 # tmp958, tmp957,
	li	$3,70			# 0x46	 # tmp959,
	sb	$3,82($2)	 # tmp959, gDataBuffer
	li	$3,65			# 0x41	 # tmp962,
	sb	$3,83($2)	 # tmp962, gDataBuffer
	li	$3,84			# 0x54	 # tmp965,
	sb	$3,84($2)	 # tmp965, gDataBuffer
	li	$3,51			# 0x33	 # tmp968,
	sb	$3,85($2)	 # tmp968, gDataBuffer
	li	$3,50			# 0x32	 # tmp971,
	sb	$3,86($2)	 # tmp971, gDataBuffer
	li	$3,32			# 0x20	 # tmp974,
	sb	$3,87($2)	 # tmp974, gDataBuffer
	sb	$3,88($2)	 # tmp974, gDataBuffer
	sb	$3,89($2)	 # tmp974, gDataBuffer
.L106:
	lui	$5,%hi(gDataBuffer)	 # tmp981,
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp982, tmp981,
	li	$2,85			# 0x55	 # tmp983,
	sb	$2,510($5)	 # tmp983, gDataBuffer
	li	$2,-86			# 0xffffffaa	 # tmp986,
	sb	$2,511($5)	 # tmp986, gDataBuffer
	lbu	$3,50($sp)	 # d.fatcopy, d.fatcopy
	lwl	$2,49($sp)	 # tmp989,
	lwr	$2,46($sp)	 # tmp988,
	lw	$4,24($sp)	 # tmp991,
	mul	$6,$3,$2	 #, d.fatcopy, tmp988
	addu	$2,$6,$4	 # tmp992,, tmp991
	sw	$2,28($sp)	 # tmp992, d.root
	lw	$4,20($sp)	 #,
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	bne	$2,$0,.L208	 #,,,
	lui	$4,%hi(gDataBuffer)	 # tmp1000,

	li	$2,9			# 0x9	 # tmp996,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp996, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L83:
	jal	LoadBootSector	 #
	addiu	$4,$sp,16	 #,,

	beql	$2,$0,.L114	 #,,,
	lui	$4,%hi(gDataBuffer)	 # tmp1000,

	li	$2,27			# 0x1b	 # tmp998,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp998, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L193:
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp999, FSerrno
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L114:
.L208:
	addiu	$4,$4,%lo(gDataBuffer)	 #, tmp1000,
	move	$5,$0	 #,
	jal	memset	 #
	li	$6,512			# 0x200	 #,

	lbu	$2,52($sp)	 # D.31247, d.type
	li	$3,3			# 0x3	 # tmp1004,
	bne	$2,$3,.L115	 #, D.31247, tmp1004,
	lui	$3,%hi(gDataBuffer)	 # tmp1103,

	lui	$2,%hi(gDataBuffer)	 # tmp1005,
	li	$3,-8			# 0xfffffff8	 # tmp1006,
	sb	$3,%lo(gDataBuffer)($2)	 # tmp1006, gDataBuffer
	addiu	$2,$2,%lo(gDataBuffer)	 # tmp1008, tmp1005,
	li	$3,-1			# 0xffffffff	 # tmp1009,
	sb	$3,1($2)	 # tmp1009, gDataBuffer
	sb	$3,2($2)	 # tmp1009, gDataBuffer
	sb	$3,3($2)	 # tmp1009, gDataBuffer
	li	$4,12			# 0xc	 # tmp1018,
	sb	$4,7($2)	 # tmp1018, gDataBuffer
	sb	$3,8($2)	 # tmp1009, gDataBuffer
	sb	$3,9($2)	 # tmp1009, gDataBuffer
	sb	$3,10($2)	 # tmp1009, gDataBuffer
	sb	$3,11($2)	 # tmp1009, gDataBuffer
	lbu	$16,50($sp)	 # d.fatcopy, d.fatcopy
	addiu	$16,$16,-1	 # tmp1032, d.fatcopy,
	andi	$16,$16,0xffff	 # j, tmp1032
	li	$2,65535			# 0xffff	 # tmp1033,
	beq	$16,$2,.L116	 #, j, tmp1033,
	lui	$17,%hi(gDataBuffer)	 # tmp1211,

	addiu	$17,$17,%lo(gDataBuffer)	 # tmp1212, tmp1211,
	li	$18,65535			# 0xffff	 # tmp1213,
	lwl	$4,49($sp)	 # tmp1035,
.L209:
	lwr	$4,46($sp)	 # tmp1034,
	lw	$2,24($sp)	 # tmp1038,
	mul	$3,$16,$4	 #, j, tmp1034
	addu	$4,$3,$2	 #,, tmp1038
	move	$5,$17	 #, tmp1212
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	beq	$2,$0,.L150	 #,,,
	addiu	$16,$16,-1	 # tmp1041, j,

	andi	$16,$16,0xffff	 # j, tmp1041
	bne	$16,$18,.L209	 #, j, tmp1213,
	lwl	$4,49($sp)	 # tmp1035,

.L116:
	lui	$2,%hi(gDataBuffer)	 # tmp1043,
	sw	$0,%lo(gDataBuffer)($2)	 #, gDataBuffer
	addiu	$2,$2,%lo(gDataBuffer)	 # tmp1044, tmp1043,
	sw	$0,4($2)	 #, gDataBuffer
	sw	$0,8($2)	 #, gDataBuffer
	lw	$2,24($sp)	 # D.31296,
	addiu	$17,$2,1	 # Index, D.31296,
	lwl	$3,49($sp)	 # tmp1047,
	lwr	$3,46($sp)	 # tmp1046,
	addu	$2,$2,$3	 # tmp1048, D.31296, tmp1046
	sltu	$2,$17,$2	 # tmp1049, Index, tmp1048
	beq	$2,$0,.L210	 #, tmp1049,,
	lbu	$2,51($sp)	 # d.SecPerClus, d.SecPerClus

	li	$18,65535			# 0xffff	 # tmp1208,
	lui	$19,%hi(gDataBuffer)	 # tmp1209,
	addiu	$19,$19,%lo(gDataBuffer)	 # tmp1210, tmp1209,
	lbu	$16,50($sp)	 # d.fatcopy, d.fatcopy
.L213:
	addiu	$16,$16,-1	 # tmp1051, d.fatcopy,
	andi	$16,$16,0xffff	 # j, tmp1051
	beql	$16,$18,.L211	 #, j, tmp1208,
	addiu	$17,$17,1	 # Index, Index,

	lwl	$4,49($sp)	 # tmp1054,
.L212:
	lwr	$4,46($sp)	 # tmp1053,
	mul	$2,$16,$4	 #, j, tmp1053
	addu	$4,$2,$17	 #,, Index
	move	$5,$19	 #, tmp1210
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	beq	$2,$0,.L151	 #,,,
	addiu	$16,$16,-1	 # tmp1059, j,

	andi	$16,$16,0xffff	 # j, tmp1059
	bne	$16,$18,.L212	 #, j, tmp1208,
	lwl	$4,49($sp)	 # tmp1054,

	addiu	$17,$17,1	 # Index, Index,
.L211:
	lwl	$2,49($sp)	 # tmp1062,
	lwr	$2,46($sp)	 # tmp1061,
	lw	$3,24($sp)	 # tmp1064,
	addu	$2,$2,$3	 # tmp1063, tmp1061, tmp1064
	sltu	$2,$17,$2	 # tmp1065, Index, tmp1063
	bnel	$2,$0,.L213	 #, tmp1065,,
	lbu	$16,50($sp)	 # d.fatcopy, d.fatcopy

	lbu	$2,51($sp)	 # d.SecPerClus, d.SecPerClus
.L210:
	sltu	$2,$2,2	 # tmp1067, d.SecPerClus,
	bne	$2,$0,.L122	 #, tmp1067,,
	lw	$4,28($sp)	 # tmp1069,

	li	$16,1			# 0x1	 # Index,
	lui	$17,%hi(gDataBuffer)	 # tmp1203,
	addiu	$17,$17,%lo(gDataBuffer)	 # tmp1204, tmp1203,
.L214:
	addu	$4,$16,$4	 #, Index, tmp1069
	move	$5,$17	 #, tmp1204
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	beq	$2,$0,.L152	 #,,,
	addiu	$16,$16,1	 # Index, Index,

	lbu	$2,51($sp)	 # d.SecPerClus, d.SecPerClus
	sltu	$2,$16,$2	 # tmp1073, Index, d.SecPerClus
	bne	$2,$0,.L214	 #, tmp1073,,
	lw	$4,28($sp)	 # tmp1069,

.L122:
	beq	$20,$0,.L124	 #, volumeID,,
	lw	$4,28($sp)	 #,

	lb	$3,0($20)	 # D.31281,* volumeID
	beq	$3,$0,.L153	 #, D.31281,,
	move	$2,$0	 # Index,

	lui	$5,%hi(gDataBuffer)	 # tmp1200,
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1201, tmp1200,
	li	$6,11			# 0xb	 # tmp1202,
	addu	$4,$5,$2	 # tmp1074, tmp1201, Index
.L216:
	sb	$3,0($4)	 # D.31281, gDataBuffer
	addiu	$2,$2,1	 # Index, Index,
	addu	$3,$20,$2	 # tmp1077, volumeID, Index
	lb	$3,0($3)	 # D.31281,
	bne	$3,$0,.L126
	nop
	 #, D.31281,,
	sltu	$3,$2,11	 # tmp1078, Index,
	bne	$3,$0,.L215	 #, tmp1078,,
	lui	$5,%hi(gDataBuffer)	 # tmp1197,

	j	.L227	 #
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1086, tmp1085,

.L126:
	bne	$2,$6,.L216	 #, Index, tmp1202,
	addu	$4,$5,$2	 # tmp1074, tmp1201, Index

	j	.L196	 #
	lui	$5,%hi(gDataBuffer)	 # tmp1085,

.L153:
	lui	$5,%hi(gDataBuffer)	 # tmp1197,
.L215:
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1198, tmp1197,
	li	$4,32			# 0x20	 # tmp1199,
	addu	$3,$5,$2	 # tmp1080, tmp1198, Index
.L217:
	sb	$4,0($3)	 # tmp1199, gDataBuffer
	addiu	$2,$2,1	 # Index, Index,
	sltu	$3,$2,11	 # tmp1084, Index,
	bne	$3,$0,.L217	 #, tmp1084,,
	addu	$3,$5,$2	 # tmp1080, tmp1198, Index

	lui	$5,%hi(gDataBuffer)	 # tmp1085,
.L196:
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1086, tmp1085,
.L227:
	li	$2,8			# 0x8	 # tmp1087,
	sb	$2,11($5)	 # tmp1087, gDataBuffer
	li	$2,17			# 0x11	 # tmp1090,
	sb	$2,17($5)	 # tmp1090, gDataBuffer
	sb	$2,19($5)	 # tmp1090, gDataBuffer
	sb	$2,23($5)	 # tmp1090, gDataBuffer
	lw	$4,28($sp)	 #,
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	li	$3,-1			# 0xffffffff	 # tmp1193,
	movn	$3,$0,$2	 #, tmp1193,,
	j	.L76	 #
	move	$2,$3	 # D.31183, tmp1193

.L124:
	lui	$5,%hi(gDataBuffer)	 # tmp1101,
	addiu	$5,$5,%lo(gDataBuffer)	 #, tmp1101,
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	li	$3,-1			# 0xffffffff	 # tmp1194,
	movn	$3,$0,$2	 #, tmp1194,,
	j	.L76	 #
	move	$2,$3	 # D.31183, tmp1194

.L115:
	li	$4,-8			# 0xfffffff8	 # tmp1104,
	sb	$4,%lo(gDataBuffer)($3)	 # tmp1104, gDataBuffer
	addiu	$3,$3,%lo(gDataBuffer)	 # tmp1106, tmp1103,
	li	$4,-1			# 0xffffffff	 # tmp1107,
	sb	$4,1($3)	 # tmp1107, gDataBuffer
	sb	$4,2($3)	 # tmp1107, gDataBuffer
	li	$3,2			# 0x2	 # tmp1111,
	bne	$2,$3,.L218	 #, D.31247, tmp1111,
	lbu	$16,50($sp)	 # d.fatcopy, d.fatcopy

	li	$3,-1			# 0xffffffff	 # tmp1114,
	lui	$2,%hi(gDataBuffer+3)	 # tmp1113,
	sb	$3,%lo(gDataBuffer+3)($2)	 # tmp1114, gDataBuffer
	lbu	$16,50($sp)	 # d.fatcopy, d.fatcopy
.L218:
	addiu	$16,$16,-1	 # tmp1116, d.fatcopy,
	andi	$16,$16,0xffff	 # j, tmp1116
	li	$2,65535			# 0xffff	 # tmp1117,
	beq	$16,$2,.L131	 #, j, tmp1117,
	lui	$17,%hi(gDataBuffer)	 # tmp1228,

	addiu	$17,$17,%lo(gDataBuffer)	 # tmp1229, tmp1228,
	li	$18,65535			# 0xffff	 # tmp1230,
	lwl	$4,49($sp)	 # tmp1119,
.L219:
	lwr	$4,46($sp)	 # tmp1118,
	lw	$2,24($sp)	 # tmp1122,
	mul	$3,$16,$4	 #, j, tmp1118
	addu	$4,$3,$2	 #,, tmp1122
	move	$5,$17	 #, tmp1229
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	beq	$2,$0,.L156	 #,,,
	addiu	$16,$16,-1	 # tmp1125, j,

	andi	$16,$16,0xffff	 # j, tmp1125
	bne	$16,$18,.L219	 #, j, tmp1230,
	lwl	$4,49($sp)	 # tmp1119,

.L131:
	lui	$2,%hi(gDataBuffer)	 # tmp1127,
	sw	$0,%lo(gDataBuffer)($2)	 #, gDataBuffer
	lw	$2,24($sp)	 # D.31296,
	addiu	$17,$2,1	 # Index, D.31296,
	lwl	$3,49($sp)	 # tmp1129,
	lwr	$3,46($sp)	 # tmp1128,
	addu	$2,$3,$2	 # tmp1130, tmp1128, D.31296
	sltu	$2,$17,$2	 # tmp1131, Index, tmp1130
	beq	$2,$0,.L133	 #, tmp1131,,
	li	$18,65535			# 0xffff	 # tmp1225,

	lui	$19,%hi(gDataBuffer)	 # tmp1226,
	addiu	$19,$19,%lo(gDataBuffer)	 # tmp1227, tmp1226,
	lbu	$16,50($sp)	 # d.fatcopy, d.fatcopy
.L222:
	addiu	$16,$16,-1	 # tmp1133, d.fatcopy,
	andi	$16,$16,0xffff	 # j, tmp1133
	beql	$16,$18,.L220	 #, j, tmp1225,
	addiu	$17,$17,1	 # Index, Index,

	lwl	$4,49($sp)	 # tmp1136,
.L221:
	lwr	$4,46($sp)	 # tmp1135,
	mul	$2,$16,$4	 #, j, tmp1135
	addu	$4,$2,$17	 #,, Index
	move	$5,$19	 #, tmp1227
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	beq	$2,$0,.L157	 #,,,
	addiu	$16,$16,-1	 # tmp1141, j,

	andi	$16,$16,0xffff	 # j, tmp1141
	bne	$16,$18,.L221	 #, j, tmp1225,
	lwl	$4,49($sp)	 # tmp1136,

	addiu	$17,$17,1	 # Index, Index,
.L220:
	lwl	$2,49($sp)	 # tmp1144,
	lwr	$2,46($sp)	 # tmp1143,
	lw	$3,24($sp)	 # tmp1146,
	addu	$2,$2,$3	 # tmp1145, tmp1143, tmp1146
	sltu	$2,$17,$2	 # tmp1147, Index, tmp1145
	bnel	$2,$0,.L222	 #, tmp1147,,
	lbu	$16,50($sp)	 # d.fatcopy, d.fatcopy

.L133:
	lwl	$2,45($sp)	 # tmp1148,
	lwr	$2,42($sp)	 # D.31350,
	addiu	$4,$2,-1	 # tmp1149, D.31350,
	lhu	$3,36($sp)	 # tmp1150,
	sll	$3,$3,5	 # tmp1151, tmp1150,
	addu	$3,$4,$3	 # tmp1152, tmp1149, tmp1151
	divu	$0,$3,$2	 # tmp1152, D.31350
	teq	$2,$0,7	 # D.31350
	mflo	$2	 # tmp1153
	sltu	$2,$2,2	 # tmp1155, tmp1153,
	bne	$2,$0,.L137	 #, tmp1155,,
	mflo	$18	 # RootDirSectors

	li	$16,1			# 0x1	 # Index,
	lui	$17,%hi(gDataBuffer)	 # tmp1220,
	addiu	$17,$17,%lo(gDataBuffer)	 # tmp1221, tmp1220,
	lw	$4,28($sp)	 # tmp1157,
.L223:
	addu	$4,$16,$4	 #, Index, tmp1157
	move	$5,$17	 #, tmp1221
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	beq	$2,$0,.L158	 #,,,
	addiu	$16,$16,1	 # Index, Index,

	sltu	$2,$16,$18	 # tmp1160, Index, RootDirSectors
	bne	$2,$0,.L223	 #, tmp1160,,
	lw	$4,28($sp)	 # tmp1157,

.L137:
	beq	$20,$0,.L139	 #, volumeID,,
	lw	$4,28($sp)	 #,

	lb	$3,0($20)	 # D.31281,* volumeID
	beq	$3,$0,.L159	 #, D.31281,,
	move	$2,$0	 # Index,

	lui	$5,%hi(gDataBuffer)	 # tmp1217,
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1218, tmp1217,
	li	$6,11			# 0xb	 # tmp1219,
	addu	$4,$5,$2	 # tmp1161, tmp1218, Index
.L225:
	sb	$3,0($4)	 # D.31281, gDataBuffer
	addiu	$2,$2,1	 # Index, Index,
	addu	$3,$20,$2	 # tmp1164, volumeID, Index
	lb	$3,0($3)	 # D.31281,
	bne	$3,$0,.L141
	nop
	 #, D.31281,,
	sltu	$3,$2,11	 # tmp1165, Index,
	bne	$3,$0,.L224	 #, tmp1165,,
	lui	$5,%hi(gDataBuffer)	 # tmp1214,

	j	.L228	 #
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1173, tmp1172,

.L141:
	bne	$2,$6,.L225	 #, Index, tmp1219,
	addu	$4,$5,$2	 # tmp1161, tmp1218, Index

	j	.L197	 #
	lui	$5,%hi(gDataBuffer)	 # tmp1172,

.L159:
	lui	$5,%hi(gDataBuffer)	 # tmp1214,
.L224:
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1215, tmp1214,
	li	$4,32			# 0x20	 # tmp1216,
	addu	$3,$5,$2	 # tmp1167, tmp1215, Index
.L226:
	sb	$4,0($3)	 # tmp1216, gDataBuffer
	addiu	$2,$2,1	 # Index, Index,
	sltu	$3,$2,11	 # tmp1171, Index,
	bne	$3,$0,.L226	 #, tmp1171,,
	addu	$3,$5,$2	 # tmp1167, tmp1215, Index

	lui	$5,%hi(gDataBuffer)	 # tmp1172,
.L197:
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp1173, tmp1172,
.L228:
	li	$2,8			# 0x8	 # tmp1174,
	sb	$2,11($5)	 # tmp1174, gDataBuffer
	li	$2,17			# 0x11	 # tmp1177,
	sb	$2,17($5)	 # tmp1177, gDataBuffer
	sb	$2,19($5)	 # tmp1177, gDataBuffer
	sb	$2,23($5)	 # tmp1177, gDataBuffer
	lw	$4,28($sp)	 #,
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	li	$3,-1			# 0xffffffff	 # tmp1195,
	movn	$3,$0,$2	 #, tmp1195,,
	j	.L76	 #
	move	$2,$3	 # D.31183, tmp1195

.L139:
	lui	$5,%hi(gDataBuffer)	 # tmp1188,
	addiu	$5,$5,%lo(gDataBuffer)	 #, tmp1188,
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	li	$3,-1			# 0xffffffff	 # tmp1196,
	movn	$3,$0,$2	 #, tmp1196,,
	j	.L76	 #
	move	$2,$3	 # D.31183, tmp1196

.L150:
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L151:
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L152:
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L156:
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L157:
	j	.L76	 #
	li	$2,-1			# 0xffffffff	 # D.31183,

.L158:
	li	$2,-1			# 0xffffffff	 # D.31183,
.L76:
	lw	$31,76($sp)	 #,
	lw	$20,72($sp)	 #,
	lw	$19,68($sp)	 #,
	lw	$18,64($sp)	 #,
	lw	$17,60($sp)	 #,
	lw	$16,56($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,80	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSformat
	.size	FSformat, .-FSformat
	.align	2
	.globl	DISKmount
	.set	nomips16
	.set	nomicromips
	.ent	DISKmount
	.type	DISKmount, @function
DISKmount:
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
	move	$16,$4	 # dsk, dsk
	sb	$0,37($4)	 #, dsk_4(D)->mount
	lui	$2,%hi(gDataBuffer)	 # tmp229,
	addiu	$2,$2,%lo(gDataBuffer)	 # tmp228, tmp229,
	swl	$2,3($4)	 # tmp228,
	jal	MDD_SDSPI_MediaInitialize	 #
	swr	$2,0($4)	 # tmp228,* dsk

	lbu	$3,0($2)	 # mediaInformation_5->errorCode, mediaInformation_5->errorCode
	beql	$3,$0,.L230	 #, mediaInformation_5->errorCode,,
	lhu	$3,0($2)	 #,* mediaInformation

	li	$2,6			# 0x6	 # tmp231,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp231, FSerrno
	j	.L231	 #
	li	$2,6			# 0x6	 # error,

.L230:
	andi	$3,$3,0x100	 # tmp234, tmp232,
	andi	$3,$3,0xffff	 # tmp235, tmp234
	beq	$3,$0,.L232
	nop
	 #, tmp235,,
	lhu	$3,2($2)	 # mediaInformation_5->sectorSize, mediaInformation_5->sectorSize
	swl	$3,29($16)	 # mediaInformation_5->sectorSize,
	swr	$3,26($16)	 # mediaInformation_5->sectorSize,
	lhu	$2,2($2)	 # mediaInformation_5->sectorSize, mediaInformation_5->sectorSize
	sltu	$2,$2,513	 # tmp238, mediaInformation_5->sectorSize,
	bne	$2,$0,.L232	 #, tmp238,,
	li	$2,33			# 0x21	 # tmp239,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp239, FSerrno
	j	.L231	 #
	li	$2,33			# 0x21	 # error,

.L232:
	jal	LoadMBR	 #
	move	$4,$16	 #, dsk

	bne	$2,$0,.L233	 #, error,,
	lw	$31,20($sp)	 #,

	jal	LoadBootSector	 #
	move	$4,$16	 #, dsk

	bne	$2,$0,.L233	 #, error,,
	lw	$31,20($sp)	 #,

	li	$3,1			# 0x1	 # tmp242,
	sb	$3,37($16)	 # tmp242, dsk_4(D)->mount
.L231:
	lw	$31,20($sp)	 #,
.L233:
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	DISKmount
	.size	DISKmount, .-DISKmount
	.align	2
	.globl	FSInit
	.set	nomips16
	.set	nomicromips
	.ent	FSInit
	.type	FSInit, @function
FSInit:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed
	sb	$0,%gp_rel(gNeedFATWrite)($28)	 #, gNeedFATWrite
	li	$2,-1			# 0xffffffff	 # tmp227,
	sw	$2,%gp_rel(gLastFATSectorRead)($28)	 # tmp227, gLastFATSectorRead
	jal	MDD_SDSPI_InitIO	 #
	sw	$2,%gp_rel(gLastDataSectorRead)($28)	 # tmp227, gLastDataSectorRead

	lui	$4,%hi(gDiskData)	 # tmp229,
	jal	DISKmount	 #
	addiu	$4,$4,%lo(gDiskData)	 #, tmp229,

	bne	$2,$0,.L235	 #,,,
	move	$3,$0	 # D.31730,

	lui	$3,%hi(gDiskData)	 # tmp233,
	addiu	$3,$3,%lo(gDiskData)	 # tmp232, tmp233,
	lw	$2,%gp_rel(cwdptr)($28)	 # cwdptr, cwdptr
	sw	$3,0($2)	 # tmp232, cwdptr.106_4->dsk
	lw	$4,%gp_rel(cwdptr)($28)	 # cwdptr.106, cwdptr
	sh	$0,12($4)	 #, cwdptr.106_5->sec
	sh	$0,14($4)	 #, cwdptr.106_5->pos
	sw	$0,16($4)	 #, cwdptr.106_5->seek
	sw	$0,20($4)	 #, cwdptr.106_5->size
	li	$2,92			# 0x5c	 # tmp234,
	sb	$2,32($4)	 # tmp234, cwdptr.106_5->name
	li	$2,1			# 0x1	 # fIndex,
	li	$6,32			# 0x20	 # tmp240,
	li	$5,11			# 0xb	 # tmp241,
.L236:
	addu	$3,$4,$2	 # tmp235, cwdptr.106, fIndex
	addiu	$2,$2,1	 # fIndex, fIndex,
	bne	$2,$5,.L236	 #, fIndex, tmp241,
	sb	$6,32($3)	 # tmp240, cwdptr.106->name

	sh	$0,44($4)	 #, cwdptr.106_5->entry
	li	$2,16			# 0x10	 # tmp238,
	sh	$2,48($4)	 # tmp238, cwdptr.106_5->attributes
	lw	$2,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue.107, FatRootDirClusterValue
	sw	$2,52($4)	 # FatRootDirClusterValue.107, cwdptr.106_5->dirclus
	sw	$2,56($4)	 # FatRootDirClusterValue.107, cwdptr.106_5->dirccls
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	li	$3,1			# 0x1	 # D.31730,
.L235:
	move	$2,$3	 #, D.31730
	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSInit
	.size	FSInit, .-FSInit
	.align	2
	.globl	Cluster2Sector
	.set	nomips16
	.set	nomicromips
	.ent	Cluster2Sector
	.type	Cluster2Sector, @function
Cluster2Sector:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	lbu	$3,36($4)	 # dsk_2(D)->type, dsk_2(D)->type
	li	$2,3			# 0x3	 # tmp235,
	bnel	$3,$2,.L244	 #, dsk_2(D)->type, tmp235,
	sltu	$2,$5,2	 # tmp241, cluster,

	addiu	$7,$5,-2	 # tmp236, cluster,
	lbu	$6,35($4)	 # dsk_2(D)->SecPerClus, dsk_2(D)->SecPerClus
	lwl	$5,19($4)	 # tmp240,
	lwr	$5,16($4)	 # tmp239,
	mul	$3,$7,$6	 #, tmp236, dsk_2(D)->SecPerClus
	j	$31
	addu	$2,$3,$5	 # sector,, tmp239

.L244:
	beql	$2,$0,.L243	 #, tmp241,,
	addiu	$5,$5,-2	 # tmp244, cluster,

	lwl	$2,15($4)	 # tmp243,
	lwr	$2,12($4)	 # tmp242,
	j	$31
	addu	$2,$5,$2	 # sector, cluster, tmp242

.L243:
	lbu	$3,35($4)	 # dsk_2(D)->SecPerClus, dsk_2(D)->SecPerClus
	lwl	$2,19($4)	 # tmp248,
	lwr	$2,16($4)	 # tmp247,
	mul	$4,$5,$3	 #, tmp244, dsk_2(D)->SecPerClus
	j	$31
	addu	$2,$4,$2	 # sector,, tmp247

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Cluster2Sector
	.size	Cluster2Sector, .-Cluster2Sector
	.align	2
	.globl	Write_File_Entry
	.set	nomips16
	.set	nomicromips
	.ent	Write_File_Entry
	.type	Write_File_Entry, @function
Write_File_Entry:
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
	lw	$16,0($4)	 # dsk, fo_3(D)->dsk
	lw	$2,56($4)	 # ccls, fo_3(D)->dirccls
	lhu	$3,0($5)	 # tmp239,* curEntry
	lwl	$17,29($16)	 # tmp241,
	lwr	$17,26($16)	 # tmp240,
	srl	$17,$17,5	 # tmp242, tmp240,
	divu	$0,$3,$17	 # tmp239, tmp242
	teq	$17,$0,7	 # tmp242
	mflo	$17	 # tmp244
	lbu	$3,36($16)	 # dsk_4->type, dsk_4->type
	beq	$3,$0,.L246	 #, dsk_4->type,,
	andi	$17,$17,0x00ff	 # offset2, tmp244

	sltu	$4,$3,3	 # tmp248, dsk_4->type,
	bnel	$4,$0,.L247	 #, tmp248,,
	lw	$3,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue

	li	$4,3			# 0x3	 # tmp249,
	bne	$3,$4,.L249	 #, dsk_4->type, tmp249,
	move	$4,$16	 #, dsk

	lbu	$3,35($16)	 # dsk_4->SecPerClus, dsk_4->SecPerClus
	divu	$0,$17,$3	 # offset2, dsk_4->SecPerClus
	teq	$3,$0,7	 # dsk_4->SecPerClus
	mfhi	$17	 # tmp252
	j	.L249	 #
	andi	$17,$17,0x00ff	 # offset2, tmp252

.L247:
	beq	$2,$3,.L249	 #, ccls, FatRootDirClusterValue,
	move	$4,$16	 #, dsk

	lbu	$3,35($16)	 # dsk_4->SecPerClus, dsk_4->SecPerClus
	divu	$0,$17,$3	 # offset2, dsk_4->SecPerClus
	teq	$3,$0,7	 # dsk_4->SecPerClus
	mfhi	$17	 # tmp257
	andi	$17,$17,0x00ff	 # offset2, tmp257
.L246:
	move	$4,$16	 #, dsk
.L249:
	jal	Cluster2Sector	 #
	move	$5,$2	 #, ccls

	lwl	$5,3($16)	 # tmp261,
	addu	$4,$17,$2	 #, offset2,
	lwr	$5,0($16)	 #,* dsk
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	sltu	$2,$0,$2	 #,
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Write_File_Entry
	.size	Write_File_Entry, .-Write_File_Entry
	.align	2
	.globl	flushData
	.set	nomips16
	.set	nomicromips
	.ent	flushData
	.type	flushData, @function
flushData:
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
	lw	$17,%gp_rel(gBufferOwner)($28)	 # stream, gBufferOwner
	lw	$16,0($17)	 # dsk, stream_2->dsk
	move	$4,$16	 #, dsk
	jal	Cluster2Sector	 #
	lw	$5,8($17)	 #, stream_2->ccls

	lhu	$4,12($17)	 # stream_2->sec, stream_2->sec
	lwl	$5,3($16)	 # tmp233,
	addu	$4,$2,$4	 #,, stream_2->sec
	lwr	$5,0($16)	 #,* dsk
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	beq	$2,$0,.L251	 #,,,
	li	$3,9			# 0x9	 # D.30478,

	sb	$0,%gp_rel(gNeedDataWrite)($28)	 #, gNeedDataWrite
	move	$3,$0	 # D.30478,
.L251:
	move	$2,$3	 #, D.30478
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	flushData
	.size	flushData, .-flushData
	.align	2
	.globl	EraseCluster
	.set	nomips16
	.set	nomicromips
	.ent	EraseCluster
	.type	EraseCluster, @function
EraseCluster:
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48	 #,,
	sw	$31,44($sp)	 #,
	sw	$21,40($sp)	 #,
	sw	$20,36($sp)	 #,
	sw	$19,32($sp)	 #,
	sw	$18,28($sp)	 #,
	sw	$17,24($sp)	 #,
	sw	$16,20($sp)	 #,
	jal	Cluster2Sector	 #
	move	$17,$4	 # disk, disk

	move	$16,$2	 # SectorAddress,
	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite
	beql	$2,$0,.L263	 #, gNeedDataWrite,,
	sw	$0,%gp_rel(gBufferOwner)($28)	 #, gBufferOwner

	jal	flushData
	nop
	 #
	bne	$2,$0,.L255	 #,,,
	li	$3,9			# 0x9	 # error,

	sw	$0,%gp_rel(gBufferOwner)($28)	 #, gBufferOwner
.L263:
	lbu	$2,%gp_rel(gBufferZeroed)($28)	 # gBufferZeroed, gBufferZeroed
	bnel	$2,$0,.L264	 #, gBufferZeroed,,
	lbu	$2,35($17)	 # disk_7(D)->SecPerClus, disk_7(D)->SecPerClus

	lwl	$4,3($17)	 # tmp253,
	lwr	$4,0($17)	 #,* disk
	move	$5,$0	 #,
	jal	memset	 #
	li	$6,512			# 0x200	 #,

	li	$2,1			# 0x1	 # tmp258,
	sb	$2,%gp_rel(gBufferZeroed)($28)	 # tmp258, gBufferZeroed
	lbu	$2,35($17)	 # disk_7(D)->SecPerClus, disk_7(D)->SecPerClus
.L264:
	beq	$2,$0,.L255	 #, disk_7(D)->SecPerClus,,
	move	$3,$0	 # error,

	move	$18,$0	 # index,
	li	$20,1			# 0x1	 # tmp270,
	li	$21,9			# 0x9	 # tmp271,
.L262:
	addiu	$19,$16,1	 # SectorAddress, SectorAddress,
	lwl	$5,3($17)	 # tmp261,
	move	$4,$16	 #, SectorAddress
	lwr	$5,0($17)	 #,* disk
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	xor	$2,$2,$20	 # tmp269,, tmp270
	move	$3,$0	 # error,
	movn	$3,$21,$2	 #, error, tmp271, tmp269
	addiu	$18,$18,1	 # tmp264, index,
	andi	$18,$18,0x00ff	 # index, tmp264
	lbu	$2,35($17)	 # disk_7(D)->SecPerClus, disk_7(D)->SecPerClus
	sltu	$2,$18,$2	 # tmp266, index, disk_7(D)->SecPerClus
	beq	$2,$0,.L265	 #, tmp266,,
	move	$2,$3	 #, error

	beq	$3,$0,.L262	 #, error,,
	move	$16,$19	 # SectorAddress, SectorAddress

.L255:
	move	$2,$3	 #, error
.L265:
	lw	$31,44($sp)	 #,
	lw	$21,40($sp)	 #,
	lw	$20,36($sp)	 #,
	lw	$19,32($sp)	 #,
	lw	$18,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,48	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	EraseCluster
	.size	EraseCluster, .-EraseCluster
	.align	2
	.globl	FSrewind
	.set	nomips16
	.set	nomicromips
	.ent	FSrewind
	.type	FSrewind, @function
FSrewind:
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
	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite
	beq	$2,$0,.L267	 #, gNeedDataWrite,,
	move	$16,$4	 # fo, fo

	jal	flushData
	nop
	 #
.L267:
	sw	$0,16($16)	 #, fo_2(D)->seek
	sh	$0,14($16)	 #, fo_2(D)->pos
	sh	$0,12($16)	 #, fo_2(D)->sec
	lw	$2,4($16)	 # fo_2(D)->cluster, fo_2(D)->cluster
	sw	$2,8($16)	 # fo_2(D)->cluster, fo_2(D)->ccls
	sw	$0,%gp_rel(gBufferOwner)($28)	 #, gBufferOwner
	lw	$31,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSrewind
	.size	FSrewind, .-FSrewind
	.align	2
	.globl	FSCreateMBR
	.set	nomips16
	.set	nomicromips
	.ent	FSCreateMBR
	.type	FSCreateMBR, @function
FSCreateMBR:
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
	move	$16,$4	 # firstSector, firstSector
	move	$17,$5	 # numSectors, numSectors
	beq	$4,$0,.L269	 #, firstSector,,
	li	$3,-1			# 0xffffffff	 # D.31373,

	sltu	$2,$5,2	 # tmp259, numSectors,
	bne	$2,$0,.L279	 #, tmp259,,
	move	$2,$3	 #, D.31373

	addiu	$2,$5,-1	 # tmp260, numSectors,
	sltu	$2,$2,$4	 # tmp261, tmp260, firstSector
	bne	$2,$0,.L269	 #, tmp261,,
	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite

	beq	$2,$0,.L280	 #, gNeedDataWrite,,
	lui	$18,%hi(gDataBuffer)	 # tmp264,

	jal	flushData
	nop
	 #
	bne	$2,$0,.L269	 #,,,
	li	$3,-1			# 0xffffffff	 # D.31373,

	lui	$18,%hi(gDataBuffer)	 # tmp264,
.L280:
	addiu	$18,$18,%lo(gDataBuffer)	 # tmp265, tmp264,
	move	$4,$18	 #, tmp265
	move	$5,$0	 #,
	jal	memset	 #
	li	$6,512			# 0x200	 #,

	li	$3,85262336			# 0x5150000	 # tmp272,
	addiu	$3,$3,22107	 # tmp271, tmp272,
	multu	$16,$3	 # firstSector, tmp271
	mfhi	$3	 # tmp270
	subu	$4,$16,$3	 # tmp273, firstSector, tmp270
	srl	$4,$4,1	 # tmp274, tmp273,
	addu	$3,$3,$4	 # tmp275, tmp270, tmp274
	srl	$4,$3,13	 # tmp269, tmp275,
	sll	$7,$4,14	 # CyHdSc, tmp269,
	sll	$3,$4,6	 # tmp283, tmp269,
	subu	$4,$3,$4	 # tmp284, tmp283, tmp269
	sll	$3,$4,8	 # tmp285, tmp284,
	subu	$4,$3,$4	 # tmp286, tmp285, tmp284
	subu	$4,$16,$4	 # tempSector, firstSector, tmp286
	li	$5,68157440			# 0x4100000	 # tmp290,
	addiu	$5,$5,16645	 # tmp289, tmp290,
	multu	$4,$5	 # tempSector, tmp289
	mfhi	$5	 # tmp288
	subu	$6,$4,$5	 # tmp291, tempSector, tmp288
	srl	$6,$6,1	 # tmp292, tmp291,
	addu	$5,$5,$6	 # tmp293, tmp288, tmp292
	srl	$6,$5,5	 # tmp287, tmp293,
	sll	$5,$6,6	 # tmp294, tmp287,
	subu	$3,$5,$6	 # tmp304, tmp294, tmp287
	subu	$3,$4,$3	 # tmp305, tempSector, tmp304
	addiu	$3,$3,1	 # tmp306, tmp305,
	or	$3,$5,$3	 # CyHdSc, tmp294, tmp306
	or	$3,$3,$7	 # CyHdSc, CyHdSc, CyHdSc
	srl	$4,$3,16	 # tmp309, CyHdSc,
	sb	$4,447($18)	 # tmp309, gDataBuffer
	srl	$4,$3,8	 # tmp312, CyHdSc,
	sb	$4,448($18)	 # tmp312, gDataBuffer
	sb	$3,449($18)	 # CyHdSc, gDataBuffer
	subu	$3,$17,$16	 # tmp315, numSectors, firstSector
	swl	$3,461($18)	 # tmp315,
	swr	$3,458($18)	 # tmp315,
	lwl	$3,461($18)	 # tmp318,
	lwr	$3,458($18)	 # D.31393,
	sltu	$4,$3,4153	 # tmp319, D.31393,
	beq	$4,$0,.L271	 #, tmp319,,
	move	$2,$18	 # Partition, tmp265

	li	$3,1			# 0x1	 # tmp320,
	j	.L272	 #
	sb	$3,450($18)	 # tmp320, Partition_10->Partition0.PTE_FSDesc

.L271:
	li	$4,4128768			# 0x3f0000	 # tmp323,
	ori	$4,$4,0xfd60	 # tmp322, tmp323,
	sltu	$4,$3,$4	 # tmp321, D.31393, tmp322
	beq	$4,$0,.L269	 #, tmp321,,
	li	$3,-1			# 0xffffffff	 # D.31373,

	li	$3,6			# 0x6	 # tmp324,
	sb	$3,450($18)	 # tmp324, Partition_10->Partition0.PTE_FSDesc
.L272:
	swl	$16,457($2)	 # firstSector,
	swr	$16,454($2)	 # firstSector,
	addiu	$16,$16,-1	 # tmp325, firstSector,
	addu	$17,$16,$17	 # tempSector, tmp325, numSectors
	li	$2,85262336			# 0x5150000	 # tmp329,
	addiu	$2,$2,22107	 # tmp328, tmp329,
	multu	$17,$2	 # tempSector, tmp328
	mfhi	$2	 # tmp327
	subu	$3,$17,$2	 # tmp330, tempSector, tmp327
	srl	$3,$3,1	 # tmp331, tmp330,
	addu	$2,$2,$3	 # tmp332, tmp327, tmp331
	srl	$3,$2,13	 # tmp326, tmp332,
	sll	$5,$3,14	 # CyHdSc, tmp326,
	sll	$2,$3,6	 # tmp340, tmp326,
	subu	$3,$2,$3	 # tmp341, tmp340, tmp326
	sll	$2,$3,8	 # tmp342, tmp341,
	subu	$3,$2,$3	 # tmp343, tmp342, tmp341
	subu	$17,$17,$3	 # tempSector, tempSector, tmp343
	li	$3,68157440			# 0x4100000	 # tmp347,
	addiu	$3,$3,16645	 # tmp346, tmp347,
	multu	$17,$3	 # tempSector, tmp346
	mfhi	$3	 # tmp345
	subu	$4,$17,$3	 # tmp348, tempSector, tmp345
	srl	$4,$4,1	 # tmp349, tmp348,
	addu	$3,$3,$4	 # tmp350, tmp345, tmp349
	srl	$4,$3,5	 # tmp344, tmp350,
	sll	$3,$4,6	 # tmp351, tmp344,
	subu	$2,$3,$4	 # tmp361, tmp351, tmp344
	subu	$2,$17,$2	 # tmp362, tempSector, tmp361
	addiu	$2,$2,1	 # tmp363, tmp362,
	or	$2,$3,$2	 # CyHdSc, tmp351, tmp363
	or	$2,$2,$5	 # CyHdSc, CyHdSc, CyHdSc
	lui	$5,%hi(gDataBuffer)	 # tmp364,
	addiu	$5,$5,%lo(gDataBuffer)	 # tmp365, tmp364,
	srl	$3,$2,16	 # tmp366, CyHdSc,
	sb	$3,451($5)	 # tmp366, gDataBuffer
	srl	$3,$2,8	 # tmp369, CyHdSc,
	sb	$3,452($5)	 # tmp369, gDataBuffer
	sb	$2,453($5)	 # CyHdSc, gDataBuffer
	sb	$0,446($18)	 #, Partition_10->Partition0.PTE_BootDes
	li	$2,85			# 0x55	 # tmp372,
	sb	$2,510($18)	 # tmp372, Partition_10->Signature0
	li	$2,-86			# 0xffffffaa	 # tmp373,
	sb	$2,511($18)	 # tmp373, Partition_10->Signature1
	move	$4,$0	 #,
	jal	MDD_SDSPI_SectorWrite	 #
	li	$6,1			# 0x1	 #,

	xori	$2,$2,0x1	 # tmp379,,
	li	$3,-1			# 0xffffffff	 # tmp378,
	movz	$3,$0,$2	 #, D.31373,, tmp379
.L269:
	move	$2,$3	 #, D.31373
.L279:
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
	.end	FSCreateMBR
	.size	FSCreateMBR, .-FSCreateMBR
	.align	2
	.globl	FSfeof
	.set	nomips16
	.set	nomicromips
	.ent	FSfeof
	.type	FSfeof, @function
FSfeof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	lw	$3,16($4)	 # stream_1(D)->seek, stream_1(D)->seek
	lw	$2,20($4)	 # stream_1(D)->size, stream_1(D)->size
	xor	$2,$3,$2	 # tmp227, stream_1(D)->seek, stream_1(D)->size
	j	$31
	sltu	$2,$2,1	 #, tmp227

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSfeof
	.size	FSfeof, .-FSfeof
	.align	2
	.globl	ValidateChars
	.set	nomips16
	.set	nomicromips
	.ent	ValidateChars
	.type	ValidateChars, @function
ValidateChars:
	.frame	$sp,56,$31		# vars= 0, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56	 #,,
	sw	$31,52($sp)	 #,
	sw	$fp,48($sp)	 #,
	sw	$23,44($sp)	 #,
	sw	$22,40($sp)	 #,
	sw	$21,36($sp)	 #,
	sw	$20,32($sp)	 #,
	sw	$19,28($sp)	 #,
	sw	$18,24($sp)	 #,
	sw	$17,20($sp)	 #,
	sw	$16,16($sp)	 #,
	move	$16,$4	 # FileName, FileName
	jal	strlen	 #
	andi	$fp,$5,0x00ff	 # mode, mode

	blez	$2,.L283	 #, StrSz,
	li	$3,1			# 0x1	 # D.30347,

	move	$22,$0	 # radix,
	move	$4,$0	 # index,
	li	$19,34			# 0x22	 # tmp261,
	li	$20,43			# 0x2b	 # tmp262,
	li	$18,5			# 0x5	 # tmp263,
	li	$8,44			# 0x2c	 # tmp264,
	li	$9,47			# 0x2f	 # tmp265,
	li	$10,58			# 0x3a	 # tmp266,
	li	$11,59			# 0x3b	 # tmp267,
	li	$12,60			# 0x3c	 # tmp268,
	li	$13,61			# 0x3d	 # tmp269,
	li	$14,62			# 0x3e	 # tmp270,
	li	$15,91			# 0x5b	 # tmp271,
	li	$24,92			# 0x5c	 # tmp272,
	li	$25,93			# 0x5d	 # tmp273,
	li	$17,124			# 0x7c	 # tmp274,
	li	$6,46			# 0x2e	 # tmp275,
	li	$21,1			# 0x1	 # tmp276,
	li	$23,42			# 0x2a	 # tmp277,
.L289:
	lb	$3,0($16)	 # D.30331,* ivtmp.287
	slt	$5,$3,33	 # tmp235, D.30331,
	beq	$5,$0,.L284	 #, tmp235,,
	move	$7,$16	 # D.32037, ivtmp.287

	beq	$3,$18,.L285
	nop
	 #, D.30331, tmp263,
	j	.L310	 #
	move	$3,$0	 # D.30347,

.L284:
	beql	$3,$19,.L283	 #, D.30331, tmp261,
	move	$3,$0	 # D.30347,

	beql	$3,$20,.L283	 #, D.30331, tmp262,
	move	$3,$0	 # D.30347,

.L285:
	beql	$3,$8,.L283	 #, D.30331, tmp264,
	move	$3,$0	 # D.30347,

	beql	$3,$9,.L283	 #, D.30331, tmp265,
	move	$3,$0	 # D.30347,

	beql	$3,$10,.L283	 #, D.30331, tmp266,
	move	$3,$0	 # D.30347,

	beql	$3,$11,.L283	 #, D.30331, tmp267,
	move	$3,$0	 # D.30347,

	beql	$3,$12,.L283	 #, D.30331, tmp268,
	move	$3,$0	 # D.30347,

	beql	$3,$13,.L283	 #, D.30331, tmp269,
	move	$3,$0	 # D.30347,

	beql	$3,$14,.L283	 #, D.30331, tmp270,
	move	$3,$0	 # D.30347,

	beql	$3,$15,.L283	 #, D.30331, tmp271,
	move	$3,$0	 # D.30347,

	beql	$3,$24,.L283	 #, D.30331, tmp272,
	move	$3,$0	 # D.30347,

	beql	$3,$25,.L283	 #, D.30331, tmp273,
	move	$3,$0	 # D.30347,

	beql	$3,$17,.L283	 #, D.30331, tmp274,
	move	$3,$0	 # D.30347,

	bne	$3,$6,.L286
	nop
	 #, D.30331, tmp275,
	beql	$22,$21,.L283	 #, radix, tmp276,
	move	$3,$0	 # D.30347,

.L286:
	bne	$fp,$0,.L287
	nop
	 #, mode,,
	beq	$3,$23,.L306	 #, D.30331, tmp277,
	li	$5,63			# 0x3f	 #,

	beql	$3,$5,.L307	 #, D.30331,,
	move	$3,$0	 # D.30347,

.L287:
	beq	$3,$6,.L308	 #, D.30331, tmp275,
	andi	$3,$3,0x00ff	 # D.30355, D.30331

	addiu	$5,$3,-97	 # tmp255, D.30355,
	andi	$5,$5,0x00ff	 # tmp256, tmp255
	sltu	$5,$5,26	 # tmp257, tmp256,
	beq	$5,$0,.L288	 #, tmp257,,
	addiu	$3,$3,-32	 # tmp258, D.30355,

	j	.L288	 #
	sb	$3,0($7)	 # tmp258,* D.32037

.L308:
	move	$22,$21	 # radix, tmp276
.L288:
	addiu	$4,$4,1	 # index, index,
	slt	$3,$4,$2	 # tmp259, index, StrSz
	bne	$3,$0,.L289	 #, tmp259,,
	addiu	$16,$16,1	 # ivtmp.287, ivtmp.287,

	j	.L283	 #
	li	$3,1			# 0x1	 # D.30347,

.L310:
	j	.L311	 #
	move	$2,$3	 #, D.30347

.L306:
	move	$3,$0	 # D.30347,
.L307:
.L283:
	move	$2,$3	 #, D.30347
.L311:
	lw	$31,52($sp)	 #,
	lw	$fp,48($sp)	 #,
	lw	$23,44($sp)	 #,
	lw	$22,40($sp)	 #,
	lw	$21,36($sp)	 #,
	lw	$20,32($sp)	 #,
	lw	$19,28($sp)	 #,
	lw	$18,24($sp)	 #,
	lw	$17,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,56	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	ValidateChars
	.size	ValidateChars, .-ValidateChars
	.align	2
	.globl	FormatDirName
	.set	nomips16
	.set	nomicromips
	.ent	FormatDirName
	.type	FormatDirName, @function
FormatDirName:
	.frame	$sp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40	 #,,
	sw	$31,36($sp)	 #,
	sw	$16,32($sp)	 #,
	move	$16,$4	 # string, string
	jal	ValidateChars	 #
	andi	$5,$5,0x00ff	 #, mode

	beq	$2,$0,.L313	 #,,,
	move	$3,$0	 # D.30366,

	lb	$2,0($16)	 # D.30370,* string
	li	$3,46			# 0x2e	 # tmp367,
	beq	$2,$3,.L328	 #, D.30370, tmp367,
	move	$4,$0	 # i,

	bnel	$2,$0,.L336	 #, D.30370,,
	sb	$2,16($sp)	 # D.30370, tempString

	j	.L337	 #
	move	$2,$4	 # i, i

.L317:
	addiu	$4,$4,1	 # tmp368, i,
	andi	$4,$4,0x00ff	 # i, tmp368
	addiu	$3,$3,1	 # ivtmp.320, ivtmp.320,
	beq	$4,$7,.L329	 #, i, tmp404,
	addiu	$5,$5,1	 # ivtmp.321, ivtmp.321,

.L326:
	lb	$2,1($3)	 # D.30370,
	beql	$2,$6,.L337	 #, D.30370, tmp403,
	move	$2,$4	 # i, i

	bnel	$2,$0,.L317	 #, D.30370,,
	sb	$2,0($5)	 # D.30370, tempString

	j	.L337	 #
	move	$2,$4	 # i, i

.L328:
	move	$2,$4	 # i, i
.L337:
	li	$5,32			# 0x20	 # tmp402,
	addiu	$6,$sp,16	 #,,
	addu	$3,$6,$2	 # tmp371,, i
.L341:
	sb	$5,0($3)	 # tmp402, tempString
	addiu	$2,$2,1	 # tmp373, i,
	andi	$2,$2,0x00ff	 # i, tmp373
	sltu	$3,$2,8	 # tmp374, i,
	bnel	$3,$0,.L341	 #, tmp374,,
	addu	$3,$6,$2	 # tmp371,, i

	j	.L338	 #
	addu	$3,$16,$4	 # tmp375, string, i

.L329:
	move	$2,$4	 # i, i
	addu	$3,$16,$4	 # tmp375, string, i
.L338:
	lb	$5,0($3)	 # tmp376,
	li	$3,46			# 0x2e	 # tmp377,
	beql	$5,$3,.L319	 #, tmp376, tmp377,
	addiu	$4,$4,1	 # tmp379, i,

	sltu	$3,$2,11	 # tmp378, i,
.L340:
	bnel	$3,$0,.L320	 #, tmp378,,
	li	$5,32			# 0x20	 # tmp398,

	j	.L339	 #
	sb	$0,27($sp)	 #, tempString

.L319:
	andi	$4,$4,0x00ff	 # j, tmp379
	addu	$3,$16,$4	 # tmp380, string, j
	lb	$3,0($3)	 # D.30375,
	beql	$3,$0,.L340	 #, D.30375,,
	sltu	$3,$2,11	 # tmp378, i,

	addiu	$6,$sp,16	 #,,
.L343:
	addu	$5,$6,$2	 # tmp381,, i
	sb	$3,0($5)	 # D.30375, tempString
	addiu	$2,$2,1	 # tmp382, i,
	addiu	$4,$4,1	 # tmp383, j,
	andi	$4,$4,0x00ff	 # j, tmp383
	addu	$3,$16,$4	 # tmp384, string, j
	lb	$3,0($3)	 # D.30375,
	bne	$3,$0,.L343	 #, D.30375,,
	andi	$2,$2,0x00ff	 # i, tmp382

	j	.L340	 #
	sltu	$3,$2,11	 # tmp378, i,

.L320:
	li	$4,11			# 0xb	 # tmp399,
	addiu	$6,$sp,16	 #,,
.L344:
	addu	$3,$6,$2	 # tmp385,, i
	addiu	$2,$2,1	 # tmp387, i,
	andi	$2,$2,0x00ff	 # i, tmp387
	bne	$2,$4,.L344	 #, i, tmp399,
	sb	$5,0($3)	 # tmp398, tempString

	sb	$0,27($sp)	 #, tempString
.L339:
	lb	$3,16($sp)	 # tempString, tempString
	li	$2,32			# 0x20	 # tmp390,
	bne	$3,$2,.L342	 #, tempString, tmp390,
	addiu	$2,$sp,16	 # ivtmp.297,,

	li	$2,95			# 0x5f	 # tmp391,
	sb	$2,16($sp)	 # tmp391, tempString
	addiu	$2,$sp,16	 # ivtmp.297,,
.L342:
	addiu	$4,$sp,28	 # D.32055,,
.L325:
	lbu	$3,0($2)	 #, tempString
	sb	$3,0($16)	 # tmp392,* ivtmp.299
	addiu	$2,$2,1	 # ivtmp.297, ivtmp.297,
	bne	$2,$4,.L325	 #, ivtmp.297, D.32055,
	addiu	$16,$16,1	 # ivtmp.299, ivtmp.299,

	li	$3,1			# 0x1	 # D.30366,
.L313:
	move	$2,$3	 #, D.30366
	lw	$31,36($sp)	 #,
	lw	$16,32($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

.L336:
	move	$3,$16	 # ivtmp.320, string
	addiu	$5,$sp,17	 # ivtmp.321,,
	li	$4,1			# 0x1	 # i,
	li	$6,46			# 0x2e	 # tmp403,
	j	.L326	 #
	li	$7,8			# 0x8	 # tmp404,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FormatDirName
	.size	FormatDirName, .-FormatDirName
	.align	2
	.globl	FormatFileName
	.set	nomips16
	.set	nomicromips
	.ent	FormatFileName
	.type	FormatFileName, @function
FormatFileName:
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48	 #,,
	sw	$31,44($sp)	 #,
	sw	$18,40($sp)	 #,
	sw	$17,36($sp)	 #,
	sw	$16,32($sp)	 #,
	move	$16,$4	 # fileName, fileName
	move	$17,$5	 # fN2, fN2
	andi	$18,$6,0x00ff	 # mode, mode
	move	$2,$5	 # ivtmp.339, fN2
	addiu	$4,$5,11	 # D.32100, fN2,
	li	$3,32			# 0x20	 # tmp287,
	sb	$3,0($2)	 # tmp287,* ivtmp.339
.L364:
	addiu	$2,$2,1	 # ivtmp.339, ivtmp.339,
	bnel	$2,$4,.L364	 #, ivtmp.339, D.32100,
	sb	$3,0($2)	 # tmp287,* ivtmp.339

	lb	$2,0($16)	 # D.30387,* fileName
	li	$4,46			# 0x2e	 # tmp257,
	beq	$2,$4,.L347	 #, D.30387, tmp257,
	move	$3,$0	 # D.30389,

	beq	$2,$0,.L363	 #, D.30387,,
	move	$2,$3	 #, D.30389

	jal	strlen	 #
	move	$4,$16	 #, fileName

	andi	$2,$2,0xffff	 # D.30390,
	sltu	$2,$2,13	 # tmp260, D.30390,
	beq	$2,$0,.L347	 #, tmp260,,
	move	$3,$0	 # D.30389,

	addiu	$4,$sp,16	 #,,
	jal	strcpy	 #
	move	$5,$16	 #, fileName

	addiu	$4,$sp,16	 #,,
	jal	ValidateChars	 #
	move	$5,$18	 #, mode

	beq	$2,$0,.L347	 #,,,
	move	$3,$0	 # D.30389,

	addiu	$4,$sp,16	 #,,
	jal	strchr	 #
	li	$5,46			# 0x2e	 #,

	beq	$2,$0,.L348	 #, pExt,,
	move	$18,$2	 # pExt,

	sb	$0,0($2)	 #,* pExt
	addiu	$18,$2,1	 # pExt, pExt,
	jal	strlen	 #
	move	$4,$18	 #, pExt

	sltu	$2,$2,4	 # tmp263,,
	beq	$2,$0,.L347	 #, tmp263,,
	move	$3,$0	 # D.30389,

.L348:
	jal	strlen	 #
	addiu	$4,$sp,16	 #,,

	sltu	$2,$2,9	 # tmp265,,
	move	$3,$0	 # D.30389,
	bne	$2,$0,.L349	 #, tmp265,,
	move	$16,$0	 # count,

	j	.L363	 #
	move	$2,$3	 #, D.30389

.L350:
	addiu	$4,$sp,16	 #,,
	addu	$3,$4,$16	 # tmp267,, count
	lbu	$3,0($3)	 #, szName
	sb	$3,0($2)	 # tmp268,
	addiu	$16,$16,1	 # tmp269, count,
	andi	$16,$16,0x00ff	 # count, tmp269
.L349:
	jal	strlen	 #
	addiu	$4,$sp,16	 #,,

	sltu	$2,$16,$2	 # tmp271, count,
	bne	$2,$0,.L350	 #, tmp271,,
	addu	$2,$17,$16	 # tmp266, fN2, count

	beq	$18,$0,.L347	 #, pExt,,
	li	$3,1			# 0x1	 # D.30389,

	lb	$2,0($18)	 # tmp272,* pExt
	bne	$2,$0,.L362	 #, tmp272,,
	move	$16,$0	 # count,

	j	.L363	 #
	move	$2,$3	 #, D.30389

.L352:
	addu	$3,$18,$16	 # tmp274, pExt, count
	lbu	$3,0($3)	 #,
	sb	$3,8($2)	 # tmp275,
	addiu	$16,$16,1	 # tmp276, count,
	andi	$16,$16,0x00ff	 # count, tmp276
.L362:
	jal	strlen	 #
	move	$4,$18	 #, pExt

	sltu	$2,$16,$2	 # tmp278, count,
	bne	$2,$0,.L352	 #, tmp278,,
	addu	$2,$17,$16	 # tmp273, fN2, count

	li	$3,1			# 0x1	 # D.30389,
.L347:
	move	$2,$3	 #, D.30389
.L363:
	lw	$31,44($sp)	 #,
	lw	$18,40($sp)	 #,
	lw	$17,36($sp)	 #,
	lw	$16,32($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,48	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FormatFileName
	.size	FormatFileName, .-FormatFileName
	.align	2
	.globl	WriteFAT
	.set	nomips16
	.set	nomicromips
	.ent	WriteFAT
	.type	WriteFAT, @function
WriteFAT:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64	 #,,
	sw	$31,60($sp)	 #,
	sw	$fp,56($sp)	 #,
	sw	$23,52($sp)	 #,
	sw	$22,48($sp)	 #,
	sw	$21,44($sp)	 #,
	sw	$20,40($sp)	 #,
	sw	$19,36($sp)	 #,
	sw	$18,32($sp)	 #,
	sw	$17,28($sp)	 #,
	sw	$16,24($sp)	 #,
	move	$16,$4	 # dsk, dsk
	move	$21,$6	 # value, value
	lbu	$2,36($4)	 # D.30119, dsk_11(D)->type
	addiu	$3,$2,-1	 # tmp299, D.30119,
	andi	$3,$3,0x00ff	 # tmp300, tmp299
	sltu	$3,$3,3	 # tmp301, tmp300,
	beq	$3,$0,.L390	 #, tmp301,,
	andi	$7,$7,0x00ff	 # forceWrite, forceWrite

	li	$3,3			# 0x3	 # tmp302,
	bne	$2,$3,.L367	 #, D.30119, tmp302,
	li	$20,65535			# 0xffff	 # ClusterFailValue,

	li	$20,268369920			# 0xfff0000	 # tmp297,
	ori	$20,$20,0xffff	 # ClusterFailValue, tmp297,
.L367:
	beq	$7,$0,.L369	 #, forceWrite,,
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed

	lbu	$2,34($16)	 # dsk_11(D)->fatcopy, dsk_11(D)->fatcopy
	beq	$2,$0,.L370	 #, dsk_11(D)->fatcopy,,
	lw	$18,%gp_rel(gLastFATSectorRead)($28)	 # li, gLastFATSectorRead

	move	$17,$0	 # i,
	lui	$19,%hi(gFATBuffer)	 # tmp399,
	addiu	$19,$19,%lo(gFATBuffer)	 # tmp400, tmp399,
.L371:
	move	$4,$18	 #, li
	move	$5,$19	 #, tmp400
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	beq	$2,$0,.L366	 #,,,
	addiu	$17,$17,1	 # tmp306, i,

	andi	$17,$17,0x00ff	 # i, tmp306
	lwl	$2,33($16)	 # tmp307,
	move	$3,$2	 # D.30130, tmp307
	lbu	$2,34($16)	 # dsk_11(D)->fatcopy, dsk_11(D)->fatcopy
	sltu	$2,$17,$2	 # tmp309, i, dsk_11(D)->fatcopy
	beq	$2,$0,.L370	 #, tmp309,,
	lwr	$3,30($16)	 # D.30130,

	j	.L371	 #
	addu	$18,$18,$3	 # li, li, D.30130

.L370:
	sb	$0,%gp_rel(gNeedFATWrite)($28)	 #, gNeedFATWrite
	j	.L366	 #
	move	$20,$0	 # ClusterFailValue,

.L369:
	li	$3,1			# 0x1	 # tmp310,
	beq	$2,$3,.L373	 #, D.30119, tmp310,
	li	$3,3			# 0x3	 # tmp311,

	bnel	$2,$3,.L393	 #, D.30119, tmp311,
	sll	$fp,$5,1	 # p, ccls,

	sll	$fp,$5,2	 # p, ccls,
	j	.L375	 #
	sw	$0,16($sp)	 #, %sfp

.L373:
	sll	$fp,$5,1	 # tmp313, ccls,
	addu	$fp,$fp,$5	 # tmp314, tmp313, ccls
	andi	$2,$fp,0x1	 #, tmp314,
	sw	$2,16($sp)	 #, %sfp
	j	.L375	 #
	srl	$fp,$fp,1	 # p, tmp314,

.L393:
	sw	$0,16($sp)	 #, %sfp
.L375:
	lwl	$23,29($16)	 # tmp317,
	lwr	$23,26($16)	 # D.30134,
	divu	$0,$fp,$23	 # p, D.30134
	teq	$23,$0,7	 # D.30134
	mflo	$3	 # tmp319
	lwl	$22,11($16)	 # tmp322,
	lwr	$22,8($16)	 # tmp321,
	addu	$22,$3,$22	 # l, tmp319, tmp321
	lw	$17,%gp_rel(gLastFATSectorRead)($28)	 # li, gLastFATSectorRead
	beq	$17,$22,.L376	 #, li, l,
	lbu	$2,%gp_rel(gNeedFATWrite)($28)	 # gNeedFATWrite, gNeedFATWrite

	beq	$2,$0,.L394	 #, gNeedFATWrite,,
	move	$4,$22	 #, l

	lbu	$2,34($16)	 # dsk_11(D)->fatcopy, dsk_11(D)->fatcopy
	beq	$2,$0,.L378	 #, dsk_11(D)->fatcopy,,
	move	$18,$0	 # i,

	lui	$19,%hi(gFATBuffer)	 # tmp401,
	addiu	$19,$19,%lo(gFATBuffer)	 # tmp402, tmp401,
.L379:
	move	$4,$17	 #, li
	move	$5,$19	 #, tmp402
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	beq	$2,$0,.L366	 #,,,
	addiu	$18,$18,1	 # tmp327, i,

	andi	$18,$18,0x00ff	 # i, tmp327
	lwl	$2,33($16)	 # tmp328,
	move	$3,$2	 # D.30130, tmp328
	lbu	$2,34($16)	 # dsk_11(D)->fatcopy, dsk_11(D)->fatcopy
	sltu	$2,$18,$2	 # tmp330, i, dsk_11(D)->fatcopy
	beq	$2,$0,.L378	 #, tmp330,,
	lwr	$3,30($16)	 # D.30130,

	j	.L379	 #
	addu	$17,$17,$3	 # li, li, D.30130

.L378:
	sb	$0,%gp_rel(gNeedFATWrite)($28)	 #, gNeedFATWrite
	move	$4,$22	 #, l
.L394:
	lui	$5,%hi(gFATBuffer)	 # tmp331,
	jal	MDD_SDSPI_SectorRead	 #
	addiu	$5,$5,%lo(gFATBuffer)	 #, tmp331,

	bnel	$2,$0,.L380	 #,,,
	sw	$22,%gp_rel(gLastFATSectorRead)($28)	 # l, gLastFATSectorRead

	li	$2,65535			# 0xffff	 # tmp333,
	j	.L366	 #
	sw	$2,%gp_rel(gLastFATSectorRead)($28)	 # tmp333, gLastFATSectorRead

.L380:
.L376:
	addiu	$23,$23,-1	 # tmp334, D.30134,
	lbu	$2,36($16)	 # D.30119, dsk_11(D)->type
	li	$3,3			# 0x3	 # tmp335,
	bne	$2,$3,.L381	 #, D.30119, tmp335,
	and	$23,$fp,$23	 # p, p, tmp334

	lui	$2,%hi(gFATBuffer)	 # tmp336,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp338, tmp336,
	addu	$23,$23,$2	 # tmp337, p, tmp338
	sb	$21,0($23)	 # value, gFATBuffer
	ext	$2,$21,8,8	 # tmp343, value,,
	sb	$2,1($23)	 # tmp343, gFATBuffer
	ext	$2,$21,16,8	 # tmp349, value,,
	sb	$2,2($23)	 # tmp349, gFATBuffer
	ext	$21,$21,24,4	 # tmp355, value,,
	j	.L382	 #
	sb	$21,3($23)	 # tmp355, gFATBuffer

.L381:
	li	$3,2			# 0x2	 # tmp356,
	bne	$2,$3,.L383	 #, D.30119, tmp356,
	li	$3,1			# 0x1	 # tmp365,

	lui	$2,%hi(gFATBuffer)	 # tmp357,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp359, tmp357,
	addu	$23,$23,$2	 # tmp358, p, tmp359
	sb	$21,0($23)	 # value, gFATBuffer
	ext	$21,$21,8,8	 # tmp364, value,,
	j	.L382	 #
	sb	$21,1($23)	 # tmp364, gFATBuffer

.L383:
	bnel	$2,$3,.L395	 #, D.30119, tmp365,
	li	$2,1			# 0x1	 # tmp397,

	lui	$2,%hi(gFATBuffer)	 # tmp366,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp368, tmp366,
	addu	$2,$23,$2	 # tmp367, p, tmp368
	lbu	$3,0($2)	 # c, gFATBuffer
	lw	$4,16($sp)	 #, %sfp
	beq	$4,$0,.L385	 #,,,
	andi	$2,$21,0x00ff	 # c, value

	andi	$3,$3,0xf	 # D.30177, c,
	sll	$2,$21,4	 # tmp371, value,
	or	$2,$3,$2	 # tmp373, D.30177, tmp371
	andi	$2,$2,0x00ff	 # c, tmp373
.L385:
	lui	$3,%hi(gFATBuffer)	 # tmp374,
	addiu	$3,$3,%lo(gFATBuffer)	 # tmp376, tmp374,
	addu	$3,$23,$3	 # tmp375, p, tmp376
	sb	$2,0($3)	 # c, gFATBuffer
	addiu	$23,$23,1	 # D.30179, p,
	lwl	$2,29($16)	 # tmp378,
	lwr	$2,26($16)	 # tmp377,
	addiu	$2,$2,-1	 # tmp379, tmp377,
	and	$17,$23,$2	 # p, D.30179, tmp379
	bne	$17,$0,.L396	 #, p,,
	lui	$2,%hi(gFATBuffer)	 # tmp383,

	move	$4,$16	 #, dsk
	move	$5,$0	 #,
	move	$6,$0	 #,
	jal	WriteFAT	 #
	li	$7,1			# 0x1	 #,

	bne	$2,$0,.L397	 #,,,
	move	$2,$20	 #, ClusterFailValue

	addiu	$22,$22,1	 # gLastFATSectorRead.51, l,
	move	$4,$22	 #, gLastFATSectorRead.51
	lui	$5,%hi(gFATBuffer)	 # tmp380,
	jal	MDD_SDSPI_SectorRead	 #
	addiu	$5,$5,%lo(gFATBuffer)	 #, tmp380,

	bnel	$2,$0,.L387	 #,,,
	sw	$22,%gp_rel(gLastFATSectorRead)($28)	 # gLastFATSectorRead.51, gLastFATSectorRead

	li	$2,65535			# 0xffff	 # tmp382,
	j	.L366	 #
	sw	$2,%gp_rel(gLastFATSectorRead)($28)	 # tmp382, gLastFATSectorRead

.L387:
	lui	$2,%hi(gFATBuffer)	 # tmp383,
.L396:
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp385, tmp383,
	addu	$2,$17,$2	 # tmp384, p, tmp385
	lw	$3,16($sp)	 #, %sfp
	beq	$3,$0,.L388	 #,,,
	lbu	$2,0($2)	 # c, gFATBuffer

	j	.L389	 #
	ext	$21,$21,4,8	 # c, value,,

.L388:
	andi	$2,$2,0xf0	 # D.30196, c,
	ext	$21,$21,8,4	 # tmp391, value,,
	or	$21,$2,$21	 # c, D.30196, tmp391
.L389:
	lui	$2,%hi(gFATBuffer)	 # tmp394,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp396, tmp394,
	addu	$17,$17,$2	 # tmp395, p, tmp396
	sb	$21,0($17)	 # c, gFATBuffer
.L382:
	li	$2,1			# 0x1	 # tmp397,
.L395:
	sb	$2,%gp_rel(gNeedFATWrite)($28)	 # tmp397, gNeedFATWrite
	j	.L366	 #
	move	$20,$0	 # ClusterFailValue,

.L390:
	li	$20,268369920			# 0xfff0000	 # tmp298,
	ori	$20,$20,0xffff	 # ClusterFailValue, tmp298,
.L366:
	move	$2,$20	 #, ClusterFailValue
.L397:
	lw	$31,60($sp)	 #,
	lw	$fp,56($sp)	 #,
	lw	$23,52($sp)	 #,
	lw	$22,48($sp)	 #,
	lw	$21,44($sp)	 #,
	lw	$20,40($sp)	 #,
	lw	$19,36($sp)	 #,
	lw	$18,32($sp)	 #,
	lw	$17,28($sp)	 #,
	lw	$16,24($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,64	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	WriteFAT
	.size	WriteFAT, .-WriteFAT
	.align	2
	.globl	ReadFAT
	.set	nomips16
	.set	nomicromips
	.ent	ReadFAT
	.type	ReadFAT, @function
ReadFAT:
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
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed
	lbu	$2,36($4)	 # D.30198, dsk_11(D)->type
	li	$3,1			# 0x1	 # tmp283,
	beq	$2,$3,.L400	 #, D.30198, tmp283,
	move	$16,$4	 # dsk, dsk

	li	$3,3			# 0x3	 # tmp284,
	bnel	$2,$3,.L420	 #, D.30198, tmp284,
	sll	$5,$5,1	 # p, ccls,

	sll	$5,$5,2	 # p, ccls,
	li	$19,268369920			# 0xfff0000	 # tmp281,
	ori	$19,$19,0xfff8	 # LastClusterLimit, tmp281,
	addiu	$17,$19,7	 # ClusterFailValue, LastClusterLimit,
	j	.L402	 #
	move	$22,$0	 # q,

.L400:
	sll	$21,$5,1	 # tmp286, ccls,
	addu	$5,$21,$5	 # tmp287, tmp286, ccls
	andi	$22,$5,0x1	 # q, tmp287,
	srl	$5,$5,1	 # p, tmp287,
	li	$19,4088			# 0xff8	 # LastClusterLimit,
	j	.L402	 #
	li	$17,65535			# 0xffff	 # ClusterFailValue,

.L420:
	li	$19,65528			# 0xfff8	 # LastClusterLimit,
	li	$17,65535			# 0xffff	 # ClusterFailValue,
	move	$22,$0	 # q,
.L402:
	lwl	$21,29($16)	 # tmp290,
	lwr	$21,26($16)	 # D.30202,
	divu	$0,$5,$21	 # p, D.30202
	teq	$21,$0,7	 # D.30202
	mflo	$4	 # tmp292
	lwl	$18,11($16)	 # tmp295,
	lwr	$18,8($16)	 # tmp294,
	addu	$18,$4,$18	 # l, tmp292, tmp294
	addiu	$3,$21,-1	 # D.30204, D.30202,
	lw	$20,%gp_rel(gLastFATSectorRead)($28)	 # gLastFATSectorRead.52, gLastFATSectorRead
	bne	$20,$18,.L403	 #, gLastFATSectorRead.52, l,
	and	$21,$5,$3	 # p, p, D.30204

	li	$4,3			# 0x3	 # tmp296,
	bne	$2,$4,.L404	 #, D.30198, tmp296,
	li	$4,2			# 0x2	 # tmp300,

	lui	$2,%hi(gFATBuffer)	 # tmp299,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp298, tmp299,
	addu	$21,$2,$21	 # tmp297, tmp298, p
	j	.L405	 #
	lw	$18,0($21)	 # c,

.L404:
	bne	$2,$4,.L406	 #, D.30198, tmp300,
	li	$4,1			# 0x1	 # tmp304,

	lui	$2,%hi(gFATBuffer)	 # tmp303,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp302, tmp303,
	addu	$21,$2,$21	 # tmp301, tmp302, p
	j	.L405	 #
	lhu	$18,0($21)	 # c,

.L406:
	bne	$2,$4,.L405	 #, D.30198, tmp304,
	move	$18,$0	 # c,

	lui	$2,%hi(gFATBuffer)	 # tmp305,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp307, tmp305,
	addu	$2,$21,$2	 # tmp306, p, tmp307
	lbu	$18,0($2)	 # c, gFATBuffer
	srl	$2,$18,4	 # tmp355, c,
	addiu	$21,$21,1	 # D.30225, p,
	and	$21,$21,$3	 # p, D.30225, D.30204
	bne	$21,$0,.L408	 #, p,,
	movn	$18,$2,$22	 #, c, tmp355, q

	lbu	$2,%gp_rel(gNeedFATWrite)($28)	 # gNeedFATWrite, gNeedFATWrite
	beql	$2,$0,.L421	 #, gNeedFATWrite,,
	addiu	$20,$20,1	 # gLastFATSectorRead.56, gLastFATSectorRead.52,

	move	$4,$16	 #, dsk
	move	$5,$0	 #,
	move	$6,$0	 #,
	jal	WriteFAT	 #
	li	$7,1			# 0x1	 #,

	bne	$2,$0,.L410	 #,,,
	addiu	$20,$20,1	 # gLastFATSectorRead.56, gLastFATSectorRead.52,

.L421:
	move	$4,$20	 #, gLastFATSectorRead.56
	lui	$5,%hi(gFATBuffer)	 # tmp309,
	jal	MDD_SDSPI_SectorRead	 #
	addiu	$5,$5,%lo(gFATBuffer)	 #, tmp309,

	bnel	$2,$0,.L411	 #,,,
	sw	$20,%gp_rel(gLastFATSectorRead)($28)	 # gLastFATSectorRead.56, gLastFATSectorRead

	li	$2,65535			# 0xffff	 # tmp311,
	j	.L410	 #
	sw	$2,%gp_rel(gLastFATSectorRead)($28)	 # tmp311, gLastFATSectorRead

.L411:
.L408:
	lui	$2,%hi(gFATBuffer)	 # tmp312,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp314, tmp312,
	addu	$21,$21,$2	 # tmp313, p, tmp314
	beq	$22,$0,.L412	 #, q,,
	lbu	$2,0($21)	 # d, gFATBuffer

	sll	$2,$2,4	 # tmp315, d,
	j	.L405	 #
	addu	$18,$18,$2	 # c, c, tmp315

.L412:
	andi	$2,$2,0xf	 # tmp316, d,
	sll	$2,$2,8	 # tmp317, tmp316,
	j	.L405	 #
	addu	$18,$18,$2	 # c, c, tmp317

.L403:
	lbu	$2,%gp_rel(gNeedFATWrite)($28)	 # gNeedFATWrite, gNeedFATWrite
	beq	$2,$0,.L422	 #, gNeedFATWrite,,
	move	$4,$18	 #, l

	move	$4,$16	 #, dsk
	move	$5,$0	 #,
	move	$6,$0	 #,
	jal	WriteFAT	 #
	li	$7,1			# 0x1	 #,

	bne	$2,$0,.L410	 #,,,
	move	$4,$18	 #, l

.L422:
	lui	$5,%hi(gFATBuffer)	 # tmp319,
	jal	MDD_SDSPI_SectorRead	 #
	addiu	$5,$5,%lo(gFATBuffer)	 #, tmp319,

	bnel	$2,$0,.L414	 #,,,
	sw	$18,%gp_rel(gLastFATSectorRead)($28)	 # l, gLastFATSectorRead

	li	$2,65535			# 0xffff	 # tmp321,
	j	.L410	 #
	sw	$2,%gp_rel(gLastFATSectorRead)($28)	 # tmp321, gLastFATSectorRead

.L414:
	lbu	$2,36($16)	 # D.30198, dsk_11(D)->type
	li	$3,3			# 0x3	 # tmp322,
	bne	$2,$3,.L415	 #, D.30198, tmp322,
	li	$3,2			# 0x2	 # tmp326,

	lui	$2,%hi(gFATBuffer)	 # tmp325,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp324, tmp325,
	addu	$21,$2,$21	 # tmp323, tmp324, p
	j	.L405	 #
	lw	$18,0($21)	 # c,

.L415:
	bne	$2,$3,.L416	 #, D.30198, tmp326,
	li	$3,1			# 0x1	 # tmp330,

	lui	$2,%hi(gFATBuffer)	 # tmp329,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp328, tmp329,
	addu	$21,$2,$21	 # tmp327, tmp328, p
	j	.L405	 #
	lhu	$18,0($21)	 # c,

.L416:
	bne	$2,$3,.L405	 #, D.30198, tmp330,
	move	$18,$0	 # c,

	lui	$2,%hi(gFATBuffer)	 # tmp331,
	addiu	$2,$2,%lo(gFATBuffer)	 # tmp333, tmp331,
	addu	$2,$21,$2	 # tmp332, p, tmp333
	beq	$22,$0,.L417	 #, q,,
	lbu	$2,0($2)	 # c, gFATBuffer

	srl	$2,$2,4	 # c, c,
	addiu	$21,$21,1	 # D.30225, p,
	lwl	$3,29($16)	 # tmp336,
	lwr	$3,26($16)	 # tmp335,
	addiu	$3,$3,-1	 # tmp337, tmp335,
	and	$21,$21,$3	 # tmp338, D.30225, tmp337
	lui	$3,%hi(gFATBuffer)	 # tmp334,
	addiu	$3,$3,%lo(gFATBuffer)	 # tmp340, tmp334,
	addu	$21,$21,$3	 # tmp339, tmp338, tmp340
	lbu	$18,0($21)	 # tmp341, gFATBuffer
	sll	$18,$18,4	 # tmp342, tmp341,
	j	.L405	 #
	addu	$18,$18,$2	 # c, tmp342, c

.L417:
	addiu	$21,$21,1	 # D.30225, p,
	lwl	$3,29($16)	 # tmp345,
	lwr	$3,26($16)	 # tmp344,
	addiu	$3,$3,-1	 # tmp346, tmp344,
	and	$21,$21,$3	 # tmp347, D.30225, tmp346
	lui	$3,%hi(gFATBuffer)	 # tmp343,
	addiu	$3,$3,%lo(gFATBuffer)	 # tmp349, tmp343,
	addu	$21,$21,$3	 # tmp348, tmp347, tmp349
	lbu	$18,0($21)	 # tmp350, gFATBuffer
	andi	$18,$18,0xf	 # tmp351, tmp350,
	sll	$18,$18,8	 # tmp352, tmp351,
	addu	$18,$18,$2	 # c, tmp352, c
.L405:
	sltu	$17,$19,$18	 # tmp353, LastClusterLimit, c
	movz	$19,$18,$17	 #, LastClusterLimit, c, tmp353
	move	$17,$19	 # ClusterFailValue, LastClusterLimit
.L410:
	move	$2,$17	 #, ClusterFailValue
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
	.end	ReadFAT
	.size	ReadFAT, .-ReadFAT
	.align	2
	.globl	FATfindEmptyCluster
	.set	nomips16
	.set	nomicromips
	.ent	FATfindEmptyCluster
	.type	FATfindEmptyCluster, @function
FATfindEmptyCluster:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40	 #,,
	sw	$31,36($sp)	 #,
	sw	$20,32($sp)	 #,
	sw	$19,28($sp)	 #,
	sw	$18,24($sp)	 #,
	sw	$17,20($sp)	 #,
	sw	$16,16($sp)	 #,
	lw	$17,0($4)	 # disk, fo_8(D)->dsk
	lbu	$2,36($17)	 # disk_9->type, disk_9->type
	li	$3,1			# 0x1	 # tmp232,
	beq	$2,$3,.L432	 #, disk_9->type, tmp232,
	lw	$16,8($4)	 # c, fo_8(D)->ccls

	li	$3,3			# 0x3	 # tmp233,
	bnel	$2,$3,.L440	 #, disk_9->type, tmp233,
	li	$18,65535			# 0xffff	 # ClusterFailValue,

	li	$18,268369920			# 0xfff0000	 # tmp229,
	ori	$18,$18,0xffff	 # ClusterFailValue, tmp229,
	j	.L425	 #
	addiu	$20,$18,-8	 # EndClusterLimit, ClusterFailValue,

.L440:
	j	.L425	 #
	li	$20,65527			# 0xfff7	 # EndClusterLimit,

.L432:
	li	$18,65535			# 0xffff	 # ClusterFailValue,
	li	$20,4087			# 0xff7	 # EndClusterLimit,
.L425:
	sltu	$2,$16,2	 # tmp234, c,
	bne	$2,$0,.L427	 #, tmp234,,
	move	$4,$17	 #, disk

	jal	ReadFAT	 #
	move	$5,$16	 #, c

	beq	$16,$0,.L429	 #, c,,
	move	$19,$16	 # c, c

.L438:
	move	$4,$17	 #, disk
.L442:
	jal	ReadFAT	 #
	move	$5,$16	 #, c

	beql	$2,$18,.L429	 #, value, ClusterFailValue,
	move	$16,$0	 # c,

	beql	$2,$0,.L441	 #, value,,
	move	$2,$16	 #, c

	beq	$2,$20,.L435	 #, value, EndClusterLimit,
	addiu	$16,$16,1	 # c, c,

	lwl	$3,25($17)	 # tmp236,
	lwr	$3,22($17)	 # tmp235,
	addiu	$3,$3,2	 # tmp237, tmp235,
	sltu	$3,$16,$3	 # tmp238, c, tmp237
	li	$2,2			# 0x2	 # tmp240,
	j	.L430	 #
	movz	$16,$2,$3	 #, c, tmp240, tmp238

.L435:
	li	$16,2			# 0x2	 # c,
.L430:
	beql	$16,$19,.L437	 #, c, c,
	move	$16,$0	 # c,

	bne	$16,$0,.L442	 #, c,,
	move	$4,$17	 #, disk

	j	.L441	 #
	move	$2,$16	 #, c

.L437:
.L429:
	move	$2,$16	 #, c
.L441:
	lw	$31,36($sp)	 #,
	lw	$20,32($sp)	 #,
	lw	$19,28($sp)	 #,
	lw	$18,24($sp)	 #,
	lw	$17,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

.L427:
	jal	ReadFAT	 #
	li	$5,2			# 0x2	 #,

	li	$19,2			# 0x2	 # c,
	j	.L438	 #
	li	$16,2			# 0x2	 # c,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FATfindEmptyCluster
	.size	FATfindEmptyCluster, .-FATfindEmptyCluster
	.align	2
	.globl	Cache_File_Entry
	.set	nomips16
	.set	nomicromips
	.ent	Cache_File_Entry
	.type	Cache_File_Entry, @function
Cache_File_Entry:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56	 #,,
	sw	$31,52($sp)	 #,
	sw	$23,48($sp)	 #,
	sw	$22,44($sp)	 #,
	sw	$21,40($sp)	 #,
	sw	$20,36($sp)	 #,
	sw	$19,32($sp)	 #,
	sw	$18,28($sp)	 #,
	sw	$17,24($sp)	 #,
	sw	$16,20($sp)	 #,
	move	$19,$4	 # fo, fo
	move	$23,$5	 # curEntry, curEntry
	andi	$22,$6,0x00ff	 # ForceRead, ForceRead
	lw	$17,0($4)	 # dsk, fo_10(D)->dsk
	lw	$5,52($4)	 # cluster, fo_10(D)->dirclus
	lw	$16,56($4)	 # ccls, fo_10(D)->dirccls
	lhu	$2,0($23)	 # D.31077,* curEntry
	lwl	$21,29($17)	 # tmp271,
	lwr	$21,26($17)	 # tmp270,
	srl	$21,$21,5	 # tmp272, tmp270,
	divu	$0,$2,$21	 # D.31077, tmp272
	teq	$21,$0,7	 # tmp272
	mflo	$21	 # tmp274
	lbu	$4,36($17)	 # dsk_11->type, dsk_11->type
	li	$3,3			# 0x3	 # tmp277,
	bne	$4,$3,.L469	 #, dsk_11->type, tmp277,
	andi	$21,$21,0x00ff	 # offset2, tmp274

	lbu	$3,35($17)	 # dsk_11->SecPerClus, dsk_11->SecPerClus
	divu	$0,$21,$3	 # offset2, dsk_11->SecPerClus
	teq	$3,$0,7	 # dsk_11->SecPerClus
	mfhi	$21	 # tmp280
	andi	$21,$21,0x00ff	 # offset2, tmp280
	li	$20,268369920			# 0xfff0000	 # tmp269,
	j	.L446	 #
	ori	$20,$20,0xfff8	 # LastClusterLimit, tmp269,

.L469:
	beq	$5,$0,.L446	 #, cluster,,
	li	$20,65528			# 0xfff8	 # LastClusterLimit,

	lbu	$3,35($17)	 # dsk_11->SecPerClus, dsk_11->SecPerClus
	divu	$0,$21,$3	 # offset2, dsk_11->SecPerClus
	teq	$3,$0,7	 # dsk_11->SecPerClus
	mfhi	$21	 # tmp284
	andi	$21,$21,0x00ff	 # offset2, tmp284
.L446:
	bne	$22,$0,.L447	 #, ForceRead,,
	andi	$3,$2,0xf	 # tmp286, D.31077,

	bnel	$3,$0,.L448	 #, tmp286,,
	lwl	$3,3($17)	 # tmp321,

.L447:
	bne	$21,$0,.L449	 #, offset2,,
	sltu	$3,$2,16	 # tmp287, D.31077,

	beq	$3,$0,.L450
	nop
	 #, tmp287,,
.L449:
	beql	$22,$0,.L471	 #, ForceRead,,
	sltu	$20,$16,$20	 # tmp297, ccls, LastClusterLimit

.L450:
	beql	$5,$0,.L463	 #, cluster,,
	move	$16,$0	 # ccls,

	beq	$22,$0,.L467	 #, ForceRead,,
	li	$18,1			# 0x1	 # numofclus,

	lbu	$18,35($17)	 # tmp289, dsk_11->SecPerClus
	sll	$18,$18,4	 # tmp291, tmp289,
	divu	$0,$2,$18	 # D.31077, tmp291
	teq	$18,$0,7	 # tmp291
	mflo	$18	 # tmp292
	andi	$18,$18,0x00ff	 # numofclus, tmp292
	beql	$18,$0,.L471	 #, numofclus,,
	sltu	$20,$16,$20	 # tmp297, ccls, LastClusterLimit

.L467:
	move	$4,$17	 #, dsk
.L472:
	jal	ReadFAT	 #
	move	$5,$16	 #, ccls

	move	$16,$2	 # ccls,
	sltu	$2,$2,$20	 # tmp295, ccls, LastClusterLimit
	beq	$2,$0,.L455	 #, tmp295,,
	addiu	$18,$18,-1	 # tmp296, numofclus,

	andi	$18,$18,0x00ff	 # numofclus, tmp296
	bne	$18,$0,.L472	 #, numofclus,,
	move	$4,$17	 #, dsk

	j	.L476	 #
	sw	$16,56($19)	 # ccls, fo_10(D)->dirccls

.L463:
	sltu	$20,$16,$20	 # tmp297, ccls, LastClusterLimit
.L471:
	beq	$20,$0,.L473	 #, tmp297,,
	li	$2,1			# 0x1	 # tmp319,

	sw	$16,56($19)	 # ccls, fo_10(D)->dirccls
	move	$4,$17	 #, dsk
.L476:
	jal	Cluster2Sector	 #
	move	$5,$16	 #, ccls

	move	$18,$2	 # sector,
	lw	$2,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue
	bne	$16,$2,.L474	 #, ccls, FatRootDirClusterValue,
	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite

	addu	$3,$18,$21	 # tmp299, sector, offset2
	lwl	$2,19($17)	 # tmp301,
	lwr	$2,16($17)	 # tmp300,
	sltu	$2,$3,$2	 # tmp302, tmp299, tmp300
	bne	$2,$0,.L474	 #, tmp302,,
	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite

	lbu	$4,36($17)	 # dsk_11->type, dsk_11->type
	li	$2,3			# 0x3	 # tmp304,
	bne	$4,$2,.L458	 #, dsk_11->type, tmp304,
	move	$3,$0	 # dir,

	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite
.L474:
	beql	$2,$0,.L475	 #, gNeedDataWrite,,
	sw	$0,%gp_rel(gBufferOwner)($28)	 #, gBufferOwner

	jal	flushData
	nop
	 #
	bne	$2,$0,.L458	 #,,,
	move	$3,$0	 # dir,

	sw	$0,%gp_rel(gBufferOwner)($28)	 #, gBufferOwner
.L475:
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed
	lwl	$5,3($17)	 # tmp309,
	addu	$4,$18,$21	 #, sector, offset2
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($17)	 #,* dsk

	li	$4,1			# 0x1	 # tmp311,
	bne	$2,$4,.L460	 #,, tmp311,
	move	$3,$0	 # dir,

	beq	$22,$0,.L461	 #, ForceRead,,
	lwl	$3,3($17)	 # tmp317,

	lwr	$3,0($17)	 # tmp312,* dsk
	lhu	$2,0($23)	 # tmp314,* curEntry
	andi	$2,$2,0xf	 # tmp315, tmp314,
	sll	$2,$2,5	 # tmp316, tmp315,
	j	.L460	 #
	addu	$3,$3,$2	 # dir, tmp312, tmp316

.L461:
	lwr	$3,0($17)	 # dir,* dsk
.L460:
	li	$2,-1			# 0xffffffff	 # tmp318,
	j	.L458	 #
	sw	$2,%gp_rel(gLastDataSectorRead)($28)	 # tmp318, gLastDataSectorRead

.L455:
	li	$2,1			# 0x1	 # tmp319,
.L473:
	sb	$2,%gp_rel(nextClusterIsLast)($28)	 # tmp319, nextClusterIsLast
	j	.L458	 #
	move	$3,$0	 # dir,

.L448:
	lwr	$3,0($17)	 # tmp320,* dsk
	andi	$2,$2,0xf	 # tmp322, D.31077,
	sll	$2,$2,5	 # tmp323, tmp322,
	addu	$3,$3,$2	 # dir, tmp320, tmp323
.L458:
	move	$2,$3	 #, dir
	lw	$31,52($sp)	 #,
	lw	$23,48($sp)	 #,
	lw	$22,44($sp)	 #,
	lw	$21,40($sp)	 #,
	lw	$20,36($sp)	 #,
	lw	$19,32($sp)	 #,
	lw	$18,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,56	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Cache_File_Entry
	.size	Cache_File_Entry, .-Cache_File_Entry
	.align	2
	.globl	LoadDirAttrib
	.set	nomips16
	.set	nomicromips
	.ent	LoadDirAttrib
	.type	LoadDirAttrib, @function
LoadDirAttrib:
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
	move	$17,$4	 # fo, fo
	move	$16,$5	 # fHandle, fHandle
	lw	$2,52($4)	 # fo_6(D)->dirclus, fo_6(D)->dirclus
	sw	$2,56($4)	 # fo_6(D)->dirclus, fo_6(D)->dirccls
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	beq	$2,$0,.L484	 #, dir,,
	lw	$31,28($sp)	 #,

	lbu	$3,0($2)	 # a, dir_9->DIR_Name
	beql	$3,$0,.L484	 #, a,,
	move	$2,$0	 # dir,

	li	$4,229			# 0xe5	 # tmp230,
	beq	$3,$4,.L481	 #, a, tmp230,
	li	$3,15			# 0xf	 # tmp232,

	lbu	$4,11($2)	 # dir_9->DIR_Attr, dir_9->DIR_Attr
	bne	$4,$3,.L478	 #, dir_9->DIR_Attr, tmp232,
	li	$18,15			# 0xf	 # tmp238,

	lhu	$2,0($16)	 #,* fHandle
.L486:
	addiu	$2,$2,1	 # tmp234, tmp233,
	sh	$2,0($16)	 # tmp234,* fHandle
	move	$4,$17	 #, fo
	move	$5,$16	 #, fHandle
	jal	Cache_File_Entry	 #
	move	$6,$0	 #,

	beq	$2,$0,.L484	 #, dir,,
	lw	$31,28($sp)	 #,

	lbu	$3,11($2)	 # dir_18->DIR_Attr, dir_18->DIR_Attr
	beql	$3,$18,.L486	 #, dir_18->DIR_Attr, tmp238,
	lhu	$2,0($16)	 #,* fHandle

	j	.L487	 #
	lw	$18,24($sp)	 #,

.L481:
	move	$2,$0	 # dir,
.L478:
	lw	$31,28($sp)	 #,
.L484:
	lw	$18,24($sp)	 #,
.L487:
	lw	$17,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	LoadDirAttrib
	.size	LoadDirAttrib, .-LoadDirAttrib
	.align	2
	.globl	FSattrib
	.set	nomips16
	.set	nomicromips
	.ent	FSattrib
	.type	FSattrib, @function
FSattrib:
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
	move	$16,$4	 # file, file
	andi	$17,$5,0x00ff	 # attributes, attributes
	andi	$2,$17,0xd8	 # tmp238, attributes,
	beq	$2,$0,.L489	 #, tmp238,,
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno

	li	$2,31			# 0x1f	 # tmp240,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp240, FSerrno
	j	.L490	 #
	li	$3,-1			# 0xffffffff	 # D.30562,

.L489:
	lhu	$2,44($4)	 #, file_6(D)->entry
	sh	$2,16($sp)	 # file_6(D)->entry, fHandle
	lw	$2,52($4)	 # file_6(D)->dirclus, file_6(D)->dirclus
	sw	$2,56($4)	 # file_6(D)->dirclus, file_6(D)->dirccls
	jal	LoadDirAttrib	 #
	addiu	$5,$sp,16	 #,,

	bnel	$2,$0,.L491	 #, dir,,
	lbu	$2,11($2)	 # dir_9->DIR_Attr, dir_9->DIR_Attr

	li	$2,27			# 0x1b	 # tmp243,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp243, FSerrno
	j	.L490	 #
	li	$3,-1			# 0xffffffff	 # D.30562,

.L491:
	andi	$2,$2,0x8	 # tmp245, dir_9->DIR_Attr,
	beql	$2,$0,.L492	 #, tmp245,,
	lhu	$2,48($16)	 # file_6(D)->attributes, file_6(D)->attributes

	li	$2,31			# 0x1f	 # tmp246,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp246, FSerrno
	j	.L490	 #
	li	$3,-1			# 0xffffffff	 # D.30562,

.L492:
	andi	$2,$2,0x10	 # tmp248, file_6(D)->attributes,
	beql	$2,$0,.L493	 #, tmp248,,
	sh	$17,48($16)	 # attributes, file_6(D)->attributes

	ori	$17,$17,0x10	 # tmp249, attributes,
	sh	$17,48($16)	 # tmp249, file_6(D)->attributes
.L493:
	move	$4,$16	 #, file
	jal	Write_File_Entry	 #
	addiu	$5,$sp,16	 #,,

	bne	$2,$0,.L490	 #,,,
	move	$3,$0	 # D.30562,

	li	$2,9			# 0x9	 # tmp252,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp252, FSerrno
	li	$3,-1			# 0xffffffff	 # D.30562,
.L490:
	move	$2,$3	 #, D.30562
	lw	$31,36($sp)	 #,
	lw	$17,32($sp)	 #,
	lw	$16,28($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSattrib
	.size	FSattrib, .-FSattrib
	.align	2
	.globl	FSrename
	.set	nomips16
	.set	nomicromips
	.ent	FSrename
	.type	FSrename, @function
FSrename:
	.frame	$sp,56,$31		# vars= 16, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56	 #,,
	sw	$31,52($sp)	 #,
	sw	$20,48($sp)	 #,
	sw	$19,44($sp)	 #,
	sw	$18,40($sp)	 #,
	sw	$17,36($sp)	 #,
	sw	$16,32($sp)	 #,
	move	$18,$5	 # fo, fo
	li	$2,1			# 0x1	 # tmp357,
	sh	$2,28($sp)	 # tmp357, fHandle
	bne	$5,$0,.L497	 #, fo,,
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno

	li	$2,25			# 0x19	 # tmp358,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp358, FSerrno
	j	.L498	 #
	li	$3,-1			# 0xffffffff	 # D.30786,

.L497:
	addiu	$5,$5,32	 #, fo,
	jal	FormatFileName	 #
	move	$6,$0	 #,

	bne	$2,$0,.L499	 #,,,
	move	$17,$18	 # ivtmp.403, fo

	li	$2,18			# 0x12	 # tmp361,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp361, FSerrno
	j	.L498	 #
	li	$3,-1			# 0xffffffff	 # D.30786,

.L499:
	addiu	$19,$18,11	 # D.32189, fo,
	addiu	$3,$sp,16	 # ivtmp.404,,
	move	$2,$18	 # ivtmp.403, fo
.L500:
	lbu	$4,32($2)	 #, fo->name
	sb	$4,0($3)	 # tmp362, string
	addiu	$2,$2,1	 # ivtmp.403, ivtmp.403,
	bne	$2,$19,.L500	 #, ivtmp.403, D.32189,
	addiu	$3,$3,1	 # ivtmp.404, ivtmp.404,

	lhu	$20,44($18)	 # goodHandle, fo_12(D)->entry
	sh	$0,28($sp)	 #, fHandle
	lw	$2,52($18)	 # fo_12(D)->dirclus, fo_12(D)->dirclus
	sw	$2,56($18)	 # fo_12(D)->dirclus, fo_12(D)->dirccls
	move	$4,$18	 #, fo
	addiu	$5,$sp,28	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bnel	$2,$0,.L501	 #, dir,,
	move	$3,$2	 # ivtmp.394, dir

	li	$2,27			# 0x1b	 # tmp365,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp365, FSerrno
	j	.L498	 #
	li	$3,-1			# 0xffffffff	 # D.30786,

.L501:
	addiu	$8,$2,11	 # D.32176, dir,
	addiu	$2,$sp,16	 # ivtmp.404,,
	move	$4,$0	 # k,
	li	$7,1			# 0x1	 # tmp394,
.L503:
	lb	$6,0($3)	 # tmp366, dir->DIR_Name
	lb	$5,0($2)	 # tmp367, string
	xor	$5,$6,$5	 # tmp388, tmp366, tmp367
	movn	$4,$7,$5	 #, k, tmp394, tmp388
	addiu	$3,$3,1	 # ivtmp.394, ivtmp.394,
	bne	$3,$8,.L503	 #, ivtmp.394, D.32176,
	addiu	$2,$2,1	 # ivtmp.404, ivtmp.404,

	bnel	$4,$0,.L504	 #, k,,
	sb	$0,%gp_rel(nextClusterIsLast)($28)	 #, nextClusterIsLast

	li	$2,17			# 0x11	 # tmp368,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp368, FSerrno
	j	.L498	 #
	li	$3,-1			# 0xffffffff	 # D.30786,

.L504:
	li	$16,1			# 0x1	 # tmp393,
.L510:
	move	$4,$18	 #, fo
	addiu	$5,$sp,28	 #,,
	jal	Cache_File_Entry	 #
	move	$6,$0	 #,

	bnel	$2,$0,.L505	 #, dir,,
	lb	$3,0($2)	 # dir_36->DIR_Name, dir_36->DIR_Name

	lbu	$3,%gp_rel(nextClusterIsLast)($28)	 # nextClusterIsLast, nextClusterIsLast
	li	$2,1			# 0x1	 # tmp371,
	beql	$3,$2,.L521	 #, nextClusterIsLast, tmp371,
	sh	$20,28($sp)	 # goodHandle, fHandle

	li	$2,27			# 0x1b	 # tmp372,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp372, FSerrno
	j	.L498	 #
	li	$3,-1			# 0xffffffff	 # D.30786,

.L505:
	beq	$3,$0,.L506	 #, dir_36->DIR_Name,,
	addiu	$4,$sp,16	 # ivtmp.404,,

	move	$3,$2	 # ivtmp.385, dir
	addiu	$2,$2,11	 # D.32163, dir,
	move	$5,$0	 # k,
.L508:
	lb	$7,0($3)	 # tmp374, dir->DIR_Name
	lb	$6,0($4)	 # tmp375, string
	xor	$6,$7,$6	 # tmp390, tmp374, tmp375
	movn	$5,$16,$6	 #, k, tmp393, tmp390
	addiu	$3,$3,1	 # ivtmp.385, ivtmp.385,
	bne	$3,$2,.L508	 #, ivtmp.385, D.32163,
	addiu	$4,$4,1	 # ivtmp.404, ivtmp.404,

	bne	$5,$0,.L509	 #, k,,
	lhu	$2,28($sp)	 #, fHandle

	li	$2,17			# 0x11	 # tmp376,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp376, FSerrno
	j	.L498	 #
	li	$3,-1			# 0xffffffff	 # D.30786,

.L509:
	addiu	$2,$2,1	 # tmp378, fHandle,
	j	.L510	 #
	sh	$2,28($sp)	 # tmp378, fHandle

.L506:
	sh	$20,28($sp)	 # goodHandle, fHandle
.L521:
	lw	$2,52($18)	 # fo_12(D)->dirclus, fo_12(D)->dirclus
	sw	$2,56($18)	 # fo_12(D)->dirclus, fo_12(D)->dirccls
	move	$4,$18	 #, fo
	jal	LoadDirAttrib	 #
	addiu	$5,$sp,28	 #,,

	bne	$2,$0,.L516	 #, dir,,
	move	$3,$2	 # ivtmp.378, dir

	li	$2,27			# 0x1b	 # tmp381,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp381, FSerrno
	j	.L498	 #
	li	$3,-1			# 0xffffffff	 # D.30786,

.L516:
	lbu	$2,32($17)	 #, fo->name
	sb	$2,0($3)	 # tmp382, dir->DIR_Name
	addiu	$17,$17,1	 # ivtmp.403, ivtmp.403,
	bne	$17,$19,.L516	 #, ivtmp.403, D.32189,
	addiu	$3,$3,1	 # ivtmp.378, ivtmp.378,

	move	$4,$18	 #, fo
	jal	Write_File_Entry	 #
	addiu	$5,$sp,28	 #,,

	bne	$2,$0,.L498	 #,,,
	move	$3,$0	 # D.30786,

	li	$2,9			# 0x9	 # tmp385,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp385, FSerrno
	li	$3,-1			# 0xffffffff	 # D.30786,
.L498:
	move	$2,$3	 #, D.30786
	lw	$31,52($sp)	 #,
	lw	$20,48($sp)	 #,
	lw	$19,44($sp)	 #,
	lw	$18,40($sp)	 #,
	lw	$17,36($sp)	 #,
	lw	$16,32($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,56	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSrename
	.size	FSrename, .-FSrename
	.align	2
	.globl	Fill_File_Object
	.set	nomips16
	.set	nomicromips
	.ent	Fill_File_Object
	.type	Fill_File_Object, @function
Fill_File_Object:
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48	 #,,
	sw	$31,44($sp)	 #,
	sw	$21,40($sp)	 #,
	sw	$20,36($sp)	 #,
	sw	$19,32($sp)	 #,
	sw	$18,28($sp)	 #,
	sw	$17,24($sp)	 #,
	sw	$16,20($sp)	 #,
	move	$20,$4	 # fo, fo
	lhu	$2,0($5)	 # D.30865,* fHandle
	andi	$3,$2,0xf	 # tmp294, D.30865,
	bne	$3,$0,.L523	 #, tmp294,,
	move	$21,$5	 # fHandle, fHandle

	beql	$2,$0,.L532	 #, D.30865,,
	move	$4,$20	 #, fo

	lw	$2,52($4)	 # fo_14(D)->dirclus, fo_14(D)->dirclus
	sw	$2,56($4)	 # fo_14(D)->dirclus, fo_14(D)->dirccls
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	j	.L524	 #
	move	$19,$2	 # dir,

.L523:
	move	$4,$20	 #, fo
.L532:
	move	$5,$21	 #, fHandle
	jal	Cache_File_Entry	 #
	move	$6,$0	 #,

	move	$19,$2	 # dir,
.L524:
	beq	$19,$0,.L525	 #, dir,,
	li	$16,2			# 0x2	 # status,

	lbu	$2,0($19)	 # a, dir_1->DIR_Name
	li	$3,229			# 0xe5	 # tmp296,
	beq	$2,$3,.L525	 #, a, tmp296,
	li	$16,1			# 0x1	 # status,

	beq	$2,$0,.L525	 #, a,,
	li	$16,2			# 0x2	 # status,

	move	$17,$19	 # ivtmp.416, dir
	move	$18,$20	 # ivtmp.418, fo
	addiu	$16,$19,8	 # D.32208, dir,
.L526:
	jal	toupper	 #
	lbu	$4,0($17)	 #, dir->DIR_Name

	sb	$2,32($18)	 #, fo->name
	addiu	$17,$17,1	 # ivtmp.416, ivtmp.416,
	bne	$17,$16,.L526	 #, ivtmp.416, D.32208,
	addiu	$18,$18,1	 # ivtmp.418, ivtmp.418,

	jal	toupper	 #
	lbu	$4,8($19)	 #, dir_1->DIR_Extension

	sb	$2,40($20)	 #, fo_14(D)->name
	jal	toupper	 #
	lbu	$4,9($19)	 #, dir_1->DIR_Extension

	sb	$2,41($20)	 #, fo_14(D)->name
	jal	toupper	 #
	lbu	$4,10($19)	 #, dir_1->DIR_Extension

	sb	$2,42($20)	 #, fo_14(D)->name
	lhu	$2,0($21)	 #,* fHandle
	sh	$2,44($20)	 # tmp301, fo_14(D)->entry
	lb	$16,0($19)	 # dir_1->DIR_Name, dir_1->DIR_Name
	addiu	$16,$16,27	 # tmp305, dir_1->DIR_Name,
	sltu	$16,$16,1	 # status, tmp305
	lw	$2,28($19)	 # dir_1->DIR_FileSize, dir_1->DIR_FileSize
	sw	$2,20($20)	 # dir_1->DIR_FileSize, fo_14(D)->size
	jal	GetFullClusterNumber	 #
	move	$4,$19	 #, dir

	sw	$2,4($20)	 #, fo_14(D)->cluster
	lbu	$2,11($19)	 # a, dir_1->DIR_Attr
	sh	$2,48($20)	 # a, fo_14(D)->attributes
	andi	$2,$2,0x10	 # tmp307, a,
	beql	$2,$0,.L527	 #, tmp307,,
	lhu	$2,22($19)	 #, dir_1->DIR_WrtTime

	lhu	$2,14($19)	 #, dir_1->DIR_CrtTime
	sh	$2,28($20)	 # dir_1->DIR_CrtTime, fo_14(D)->time
	lhu	$2,16($19)	 #, dir_1->DIR_CrtDate
	j	.L525	 #
	sh	$2,30($20)	 # dir_1->DIR_CrtDate, fo_14(D)->date

.L527:
	sh	$2,28($20)	 # dir_1->DIR_WrtTime, fo_14(D)->time
	lhu	$2,24($19)	 #, dir_1->DIR_WrtDate
	sh	$2,30($20)	 # dir_1->DIR_WrtDate, fo_14(D)->date
.L525:
	move	$2,$16	 #, status
	lw	$31,44($sp)	 #,
	lw	$21,40($sp)	 #,
	lw	$20,36($sp)	 #,
	lw	$19,32($sp)	 #,
	lw	$18,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,48	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Fill_File_Object
	.size	Fill_File_Object, .-Fill_File_Object
	.align	2
	.globl	PopulateEntries
	.set	nomips16
	.set	nomicromips
	.ent	PopulateEntries
	.type	PopulateEntries, @function
PopulateEntries:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40	 #,,
	sw	$31,36($sp)	 #,
	sw	$20,32($sp)	 #,
	sw	$19,28($sp)	 #,
	sw	$18,24($sp)	 #,
	sw	$17,20($sp)	 #,
	sw	$16,16($sp)	 #,
	move	$17,$4	 # fo, fo
	move	$18,$5	 # name, name
	move	$19,$6	 # fHandle, fHandle
	andi	$20,$7,0x00ff	 # mode, mode
	lw	$2,52($4)	 # fo_4(D)->dirclus, fo_4(D)->dirclus
	sw	$2,56($4)	 # fo_4(D)->dirclus, fo_4(D)->dirccls
	move	$5,$6	 #, fHandle
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	move	$16,$2	 # dir,
	beq	$16,$0,.L534	 #, dir,,
	li	$2,27			# 0x1b	 # error,

	move	$4,$16	 #, dir
	move	$5,$18	 #, name
	jal	strncpy	 #
	li	$6,11			# 0xb	 #,

	li	$2,18			# 0x12	 # tmp241,
	bne	$20,$2,.L535	 #, mode, tmp241,
	li	$2,32			# 0x20	 # tmp243,

	li	$2,16			# 0x10	 # tmp242,
	j	.L536	 #
	sb	$2,11($16)	 # tmp242, dir_7->DIR_Attr

.L535:
	sb	$2,11($16)	 # tmp243, dir_7->DIR_Attr
.L536:
	sb	$0,12($16)	 #, dir_7->DIR_NTRes
	sh	$0,20($16)	 #, dir_7->DIR_FstClusHI
	sh	$0,26($16)	 #, dir_7->DIR_FstClusLO
	sw	$0,28($16)	 #, dir_7->DIR_FileSize
	lbu	$2,%gp_rel(gTimeCrtMS)($28)	 #, gTimeCrtMS
	sb	$2,13($16)	 # gTimeCrtMS, dir_7->DIR_CrtTimeTenth
	lhu	$2,%gp_rel(gTimeCrtTime)($28)	 #, gTimeCrtTime
	sh	$2,14($16)	 # gTimeCrtTime, dir_7->DIR_CrtTime
	lhu	$2,%gp_rel(gTimeCrtDate)($28)	 #, gTimeCrtDate
	sh	$2,16($16)	 # gTimeCrtDate, dir_7->DIR_CrtDate
	lhu	$2,%gp_rel(gTimeAccDate)($28)	 #, gTimeAccDate
	sh	$2,18($16)	 # gTimeAccDate, dir_7->DIR_LstAccDate
	lhu	$2,%gp_rel(gTimeWrtTime)($28)	 #, gTimeWrtTime
	sh	$2,22($16)	 # gTimeWrtTime, dir_7->DIR_WrtTime
	lhu	$2,%gp_rel(gTimeWrtDate)($28)	 #, gTimeWrtDate
	sh	$2,24($16)	 # gTimeWrtDate, dir_7->DIR_WrtDate
	sw	$0,20($17)	 #, fo_4(D)->size
	lhu	$2,14($16)	 #, dir_7->DIR_CrtTime
	sh	$2,28($17)	 # dir_7->DIR_CrtTime, fo_4(D)->time
	lhu	$2,16($16)	 #, dir_7->DIR_CrtDate
	sh	$2,30($17)	 # dir_7->DIR_CrtDate, fo_4(D)->date
	lbu	$2,11($16)	 # dir_7->DIR_Attr, dir_7->DIR_Attr
	sh	$2,48($17)	 # dir_7->DIR_Attr, fo_4(D)->attributes
	lhu	$2,0($19)	 #,* fHandle
	sh	$2,44($17)	 # tmp253, fo_4(D)->entry
	move	$4,$17	 #, fo
	jal	Write_File_Entry	 #
	move	$5,$19	 #, fHandle

	xori	$2,$2,0x1	 # tmp258,,
	li	$3,9			# 0x9	 # tmp257,
	movz	$3,$0,$2	 #, tmp257,, tmp258
	move	$2,$3	 # error, tmp257
.L534:
	lw	$31,36($sp)	 #,
	lw	$20,32($sp)	 #,
	lw	$19,28($sp)	 #,
	lw	$18,24($sp)	 #,
	lw	$17,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	PopulateEntries
	.size	PopulateEntries, .-PopulateEntries
	.align	2
	.globl	FILEopen
	.set	nomips16
	.set	nomicromips
	.ent	FILEopen
	.type	FILEopen, @function
FILEopen:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40	 #,,
	sw	$31,36($sp)	 #,
	sw	$20,32($sp)	 #,
	sw	$19,28($sp)	 #,
	sw	$18,24($sp)	 #,
	sw	$17,20($sp)	 #,
	sw	$16,16($sp)	 #,
	move	$16,$4	 # fo, fo
	move	$17,$5	 # fHandle, fHandle
	seb	$20,$6	 # type, type
	lw	$19,0($4)	 # dsk, fo_7(D)->dsk
	lbu	$2,37($19)	 # dsk_8->mount, dsk_8->mount
	beq	$2,$0,.L540	 #, dsk_8->mount,,
	li	$18,7			# 0x7	 # error,

	lw	$2,52($4)	 # fo_7(D)->dirclus, fo_7(D)->dirclus
	sw	$2,56($4)	 # fo_7(D)->dirclus, fo_7(D)->dirccls
	lhu	$2,0($5)	 # D.31614,* fHandle
	bne	$2,$0,.L541	 #, D.31614,,
	andi	$2,$2,0xf	 # tmp242, D.31614,

	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	li	$18,27			# 0x1b	 # tmp262,
	j	.L542	 #
	movn	$18,$0,$2	 #, error,,

.L541:
	beq	$2,$0,.L542	 #, tmp242,,
	move	$18,$0	 # error,

	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	li	$18,27			# 0x1b	 # tmp264,
	movn	$18,$0,$2	 #, error,,
.L542:
	move	$4,$16	 #, fo
	jal	Fill_File_Object	 #
	move	$5,$17	 #, fHandle

	bnel	$2,$0,.L540	 #,,,
	li	$18,11			# 0xb	 # error,

	sw	$0,16($16)	 #, fo_7(D)->seek
	lw	$5,4($16)	 # D.31631, fo_7(D)->cluster
	sw	$5,8($16)	 # D.31631, fo_7(D)->ccls
	sh	$0,12($16)	 #, fo_7(D)->sec
	sh	$0,14($16)	 #, fo_7(D)->pos
	jal	Cluster2Sector	 #
	move	$4,$19	 #, dsk

	move	$17,$2	 # l,
	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite
	beql	$2,$0,.L555	 #, gNeedDataWrite,,
	sw	$16,%gp_rel(gBufferOwner)($28)	 # fo, gBufferOwner

	jal	flushData
	nop
	 #
	bnel	$2,$0,.L553	 #,,,
	li	$18,9			# 0x9	 # error,

	sw	$16,%gp_rel(gBufferOwner)($28)	 # fo, gBufferOwner
.L555:
	lw	$2,%gp_rel(gLastDataSectorRead)($28)	 # gLastDataSectorRead, gLastDataSectorRead
	beq	$2,$17,.L544	 #, gLastDataSectorRead, l,
	move	$4,$17	 #, l

	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed
	lwl	$5,3($19)	 # tmp248,
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($19)	 #,* dsk

	li	$3,8			# 0x8	 # tmp263,
	movz	$18,$3,$2	 #, error, tmp263,
	sw	$17,%gp_rel(gLastDataSectorRead)($28)	 # l, gLastDataSectorRead
.L544:
	lw	$2,24($16)	 # tmp250,
	ins	$2,$0,2,1	 # tmp250,,,
	sw	$2,24($16)	 # tmp250,
	li	$2,119			# 0x77	 # tmp251,
	beq	$20,$2,.L546	 #, type, tmp251,
	li	$2,97			# 0x61	 # tmp252,

	bnel	$20,$2,.L547	 #, type, tmp252,
	lw	$2,24($16)	 # tmp257,

.L546:
	lw	$2,24($16)	 # tmp254,
	ori	$2,$2,0x1	 # tmp256, tmp254,
	ins	$2,$0,1,1	 # tmp256,,,
	j	.L540	 #
	sw	$2,24($16)	 # tmp256,

.L547:
	ins	$2,$0,0,1	 # tmp257,,,
	li	$3,1			# 0x1	 # tmp260,
	ins	$2,$3,1,1	 # tmp259, tmp260,,
	sw	$2,24($16)	 # tmp259,
.L553:
.L540:
	move	$2,$18	 #, error
	lw	$31,36($sp)	 #,
	lw	$20,32($sp)	 #,
	lw	$19,28($sp)	 #,
	lw	$18,24($sp)	 #,
	lw	$17,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FILEopen
	.size	FILEopen, .-FILEopen
	.align	2
	.globl	FILEfind
	.set	nomips16
	.set	nomicromips
	.ent	FILEfind
	.type	FILEfind, @function
FILEfind:
	.frame	$sp,88,$31		# vars= 32, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-88	 #,,
	sw	$31,84($sp)	 #,
	sw	$fp,80($sp)	 #,
	sw	$23,76($sp)	 #,
	sw	$22,72($sp)	 #,
	sw	$21,68($sp)	 #,
	sw	$20,64($sp)	 #,
	sw	$19,60($sp)	 #,
	sw	$18,56($sp)	 #,
	sw	$17,52($sp)	 #,
	sw	$16,48($sp)	 #,
	move	$19,$4	 # foDest, foDest
	move	$fp,$5	 # foCompareTo, foCompareTo
	andi	$6,$6,0x00ff	 #, cmd
	sw	$6,24($sp)	 #, %sfp
	andi	$22,$7,0x00ff	 # mode, mode
	lhu	$2,44($4)	 # fHandle.103, foDest_9(D)->entry
	sh	$2,16($sp)	 # fHandle.103, fHandle
	lw	$3,52($4)	 # foDest_9(D)->dirclus, foDest_9(D)->dirclus
	sw	$3,56($4)	 # foDest_9(D)->dirclus, foDest_9(D)->dirccls
	lhu	$3,48($5)	 #, foCompareTo_13(D)->attributes
	nor	$3,$0,$3	 # tmp412, foCompareTo_13(D)->attributes
	andi	$3,$3,0xffff	 #, tmp412
	bne	$2,$0,.L557	 #, fHandle.103,,
	sw	$3,32($sp)	 #, %sfp

	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L559	 #,,,
	li	$17,27			# 0x1b	 # statusB,

	j	.L589	 #
	move	$2,$17	 #, statusB

.L557:
	andi	$2,$2,0xf	 # tmp413, fHandle.103,
	beq	$2,$0,.L590	 #, tmp413,,
	li	$17,11			# 0xb	 # statusB,

	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L559	 #,,,
	li	$17,27			# 0x1b	 # statusB,

	j	.L589	 #
	move	$2,$17	 #, statusB

.L587:
	move	$4,$19	 #, foDest
	jal	Fill_File_Object	 #
	addiu	$5,$sp,16	 #,,

	beql	$2,$20,.L589	 #, state, tmp446,
	move	$2,$17	 #, statusB

	bnel	$2,$0,.L560	 #, state,,
	lw	$2,24($sp)	 #, %sfp

	lhu	$2,48($19)	 # attrib, foDest_9(D)->attributes
	beq	$22,$0,.L562	 #, mode,,
	andi	$2,$2,0x3f	 # attrib, attrib,

	li	$3,1			# 0x1	 # tmp417,
	bnel	$22,$3,.L591	 #, mode, tmp417,
	lhu	$2,16($sp)	 #, fHandle

	j	.L588	 #
	lw	$4,32($sp)	 #, %sfp

.L562:
	li	$3,8			# 0x8	 # tmp418,
	beq	$2,$3,.L561	 #, attrib, tmp418,
	move	$18,$fp	 # ivtmp.436, foCompareTo

	move	$17,$19	 # ivtmp.434, foDest
.L565:
	jal	tolower	 #
	lbu	$4,32($17)	 #, foDest->name

	move	$16,$2	 # D.31685,
	jal	tolower	 #
	lbu	$4,32($18)	 #, foCompareTo->name

	bnel	$16,$2,.L564	 #, D.31685,,
	li	$17,11			# 0xb	 # statusB,

	addiu	$17,$17,1	 # ivtmp.434, ivtmp.434,
	bne	$17,$21,.L565	 #, ivtmp.434, D.32233,
	addiu	$18,$18,1	 # ivtmp.436, ivtmp.436,

	j	.L558	 #
	move	$17,$0	 # statusB,

.L588:
	and	$3,$2,$4	 # tmp423, attrib,
	bnel	$3,$0,.L591	 #, tmp423,,
	lhu	$2,16($sp)	 #, fHandle

	li	$3,15			# 0xf	 # tmp424,
	beq	$2,$3,.L561	 #, attrib, tmp424,
	li	$2,42			# 0x2a	 # tmp425,

	lb	$18,32($fp)	 # D.31695, foCompareTo_13(D)->name
	beq	$18,$2,.L566	 #, D.31695, tmp425,
	move	$17,$0	 # statusB,

	andi	$18,$18,0x00ff	 # test, D.31695
	beq	$18,$2,.L566	 #, test, tmp426,
	lb	$4,32($19)	 # D.31682, foDest_9(D)->name

	andi	$4,$4,0x00ff	 # character, D.31682
	move	$17,$19	 # ivtmp.469, foDest
	j	.L567	 #
	move	$23,$fp	 # ivtmp.473, foCompareTo

.L569:
	lbu	$18,33($23)	 # test, foCompareTo->name
	addiu	$17,$17,1	 # ivtmp.469, ivtmp.469,
	li	$2,42			# 0x2a	 #,
	beq	$18,$2,.L580	 #, test,,
	addiu	$23,$23,1	 # ivtmp.473, ivtmp.473,

	andi	$4,$4,0x00ff	 # character, D.31682
.L567:
	li	$2,63			# 0x3f	 #,
	beql	$18,$2,.L592	 #, test,,
	lw	$4,28($sp)	 #, %sfp

	jal	tolower
	nop
	 #
	move	$16,$2	 # D.31701,
	jal	tolower	 #
	move	$4,$18	 #, test

	bne	$16,$2,.L581	 #, D.31701,,
	lw	$4,28($sp)	 #, %sfp

.L592:
	bnel	$17,$4,.L569	 #, ivtmp.469,,
	lb	$4,33($17)	 # D.31682, foDest->name

	j	.L566	 #
	move	$17,$0	 # statusB,

.L580:
	j	.L566	 #
	move	$17,$0	 # statusB,

.L581:
	li	$17,11			# 0xb	 # statusB,
.L566:
	lb	$18,40($fp)	 # D.31705, foCompareTo_13(D)->name
	li	$2,42			# 0x2a	 # tmp429,
	beql	$18,$2,.L591	 #, D.31705, tmp429,
	lhu	$2,16($sp)	 #, fHandle

	bnel	$17,$0,.L593	 #, statusB,,
	lhu	$2,16($sp)	 #, fHandle

	andi	$18,$18,0x00ff	 # test, D.31705
	beq	$18,$2,.L558	 #, test, tmp430,
	lb	$4,40($19)	 # D.31682, foDest_9(D)->name

	andi	$4,$4,0x00ff	 # character, D.31682
	move	$23,$19	 # ivtmp.451, foDest
	j	.L570	 #
	sw	$fp,40($sp)	 # foCompareTo, %sfp

.L572:
	lw	$2,40($sp)	 #, %sfp
	lbu	$18,41($2)	 # test, foCompareTo->name
	addiu	$2,$2,1	 #,,
	sw	$2,40($sp)	 #, %sfp
	li	$2,42			# 0x2a	 #,
	beq	$18,$2,.L558	 #, test,,
	addiu	$23,$23,1	 # ivtmp.451, ivtmp.451,

	andi	$4,$4,0x00ff	 # character, D.31682
.L570:
	li	$2,63			# 0x3f	 #,
	beql	$18,$2,.L594	 #, test,,
	lw	$4,36($sp)	 #, %sfp

	jal	tolower
	nop
	 #
	move	$16,$2	 # D.31713,
	jal	tolower	 #
	move	$4,$18	 #, test

	bne	$16,$2,.L582	 #, D.31713,,
	lw	$4,36($sp)	 #, %sfp

.L594:
	bnel	$23,$4,.L572	 #, ivtmp.451,,
	lb	$4,41($23)	 # D.31682, foDest->name

	j	.L589	 #
	move	$2,$17	 #, statusB

.L560:
	beql	$2,$0,.L583	 #,,,
	move	$17,$0	 # statusB,

.L561:
	lhu	$2,16($sp)	 #, fHandle
.L591:
	addiu	$2,$2,1	 # tmp434, fHandle,
	bne	$17,$0,.L587	 #, statusB,,
	sh	$2,16($sp)	 # tmp434, fHandle

	j	.L589	 #
	move	$2,$17	 #, statusB

.L583:
.L558:
	move	$2,$17	 #, statusB
.L589:
	lw	$31,84($sp)	 #,
	lw	$fp,80($sp)	 #,
	lw	$23,76($sp)	 #,
	lw	$22,72($sp)	 #,
	lw	$21,68($sp)	 #,
	lw	$20,64($sp)	 #,
	lw	$19,60($sp)	 #,
	lw	$18,56($sp)	 #,
	lw	$17,52($sp)	 #,
	lw	$16,48($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,88	 #,,

.L559:
	li	$17,11			# 0xb	 # statusB,
.L590:
	li	$20,2			# 0x2	 # tmp446,
	addiu	$21,$19,11	 # D.32233, foDest,
	addiu	$4,$19,2	 #, foDest,
	sw	$4,36($sp)	 #, %sfp
	addiu	$2,$19,7	 #, foDest,
	j	.L587	 #
	sw	$2,28($sp)	 #, %sfp

.L582:
	li	$17,11			# 0xb	 # statusB,
.L564:
	lhu	$2,16($sp)	 #, fHandle
.L593:
	addiu	$2,$2,1	 # tmp437, fHandle,
	j	.L587	 #
	sh	$2,16($sp)	 # tmp437, fHandle

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FILEfind
	.size	FILEfind, .-FILEfind
	.align	2
	.globl	FILEget_next_cluster
	.set	nomips16
	.set	nomicromips
	.ent	FILEget_next_cluster
	.type	FILEget_next_cluster, @function
FILEget_next_cluster:
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
	move	$18,$4	 # fo, fo
	lw	$16,0($4)	 # disk, fo_8(D)->dsk
	lbu	$2,36($16)	 # disk_9->type, disk_9->type
	li	$3,1			# 0x1	 # tmp232,
	beq	$2,$3,.L603	 #, disk_9->type, tmp232,
	move	$17,$5	 # n, n

	li	$3,3			# 0x3	 # tmp233,
	bnel	$2,$3,.L609	 #, disk_9->type, tmp233,
	li	$20,65528			# 0xfff8	 # LastClustervalue,

	li	$20,268369920			# 0xfff0000	 # tmp229,
	ori	$20,$20,0xfff8	 # LastClustervalue, tmp229,
	j	.L602	 #
	addiu	$19,$20,7	 # ClusterFailValue, LastClustervalue,

.L609:
	j	.L602	 #
	li	$19,65535			# 0xffff	 # ClusterFailValue,

.L603:
	li	$20,4088			# 0xff8	 # LastClustervalue,
	li	$19,65535			# 0xffff	 # ClusterFailValue,
.L602:
	li	$21,10			# 0xa	 # tmp242,
	li	$22,60			# 0x3c	 # tmp243,
	move	$4,$16	 #, disk
.L610:
	jal	ReadFAT	 #
	lw	$5,8($18)	 #, fo_8(D)->ccls

	beq	$2,$19,.L599	 #, c, ClusterFailValue,
	li	$3,8			# 0x8	 # error,

	lwl	$3,25($16)	 # tmp236,
	lwr	$3,22($16)	 # tmp235,
	sltu	$3,$2,$3	 # tmp237, c, tmp235
	move	$4,$0	 #,
	movz	$4,$21,$3	 #,, tmp242, tmp237
	move	$3,$4	 # error,
	sltu	$4,$2,$20	 # tmp238, c, LastClustervalue
	movz	$3,$22,$4	 #, error, tmp243, tmp238
.L599:
	addiu	$17,$17,-1	 # n, n,
	beq	$17,$0,.L601	 #, n,,
	sw	$2,8($18)	 # c, fo_8(D)->ccls

	beq	$3,$0,.L610	 #, error,,
	move	$4,$16	 #, disk

.L601:
	move	$2,$3	 #, error
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
	.end	FILEget_next_cluster
	.size	FILEget_next_cluster, .-FILEget_next_cluster
	.align	2
	.globl	FSfread
	.set	nomips16
	.set	nomicromips
	.ent	FSfread
	.type	FSfread, @function
FSfread:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56	 #,,
	sw	$31,52($sp)	 #,
	sw	$23,48($sp)	 #,
	sw	$22,44($sp)	 #,
	sw	$21,40($sp)	 #,
	sw	$20,36($sp)	 #,
	sw	$19,32($sp)	 #,
	sw	$18,28($sp)	 #,
	sw	$17,24($sp)	 #,
	sw	$16,20($sp)	 #,
	move	$21,$4	 # ptr, ptr
	move	$23,$5	 # size, size
	move	$20,$6	 # n, n
	move	$17,$7	 # stream, stream
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	lw	$16,0($7)	 # dsk, stream_16(D)->dsk
	lhu	$18,14($7)	 # pos, stream_16(D)->pos
	lw	$2,24($7)	 # tmp410,
	andi	$2,$2,0x2	 # tmp409, tmp410,
	bne	$2,$0,.L612	 #, tmp409,,
	lw	$19,16($7)	 # seek, stream_16(D)->seek

	li	$2,30			# 0x1e	 # tmp411,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp411, FSerrno
	j	.L613	 #
	move	$2,$0	 # D.30425,

.L612:
	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite
	beq	$2,$0,.L630	 #, gNeedDataWrite,,
	lw	$2,%gp_rel(gBufferOwner)($28)	 # gBufferOwner, gBufferOwner

	jal	flushData
	nop
	 #
	beql	$2,$0,.L614	 #,,,
	lw	$2,%gp_rel(gBufferOwner)($28)	 # gBufferOwner, gBufferOwner

	li	$2,9			# 0x9	 # tmp414,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp414, FSerrno
	j	.L613	 #
	move	$2,$0	 # D.30425,

.L614:
.L630:
	beql	$2,$17,.L631	 #, gBufferOwner, stream,
	mul	$20,$20,$23	 # len, n, size

	lwl	$2,29($16)	 # tmp417,
	lwr	$2,26($16)	 # tmp416,
	beq	$18,$2,.L615	 #, pos, tmp416,
	move	$4,$16	 #, dsk

	sw	$17,%gp_rel(gBufferOwner)($28)	 # stream, gBufferOwner
	jal	Cluster2Sector	 #
	lw	$5,8($17)	 #, stream_16(D)->ccls

	lhu	$22,12($17)	 # stream_16(D)->sec, stream_16(D)->sec
	addu	$22,$2,$22	 # sec_sel,, stream_16(D)->sec
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed
	lwl	$5,3($16)	 # tmp421,
	move	$4,$22	 #, sec_sel
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($16)	 #,* dsk

	bnel	$2,$0,.L616	 #,,,
	sw	$22,%gp_rel(gLastDataSectorRead)($28)	 # sec_sel, gLastDataSectorRead

	li	$2,8			# 0x8	 # tmp423,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp423, FSerrno
	j	.L613	 #
	move	$2,$0	 # D.30425,

.L616:
.L615:
	mul	$20,$20,$23	 # len, n, size
.L631:
	beq	$20,$0,.L617	 #, len,,
	move	$22,$0	 # readCount,

	lw	$2,20($17)	 # stream_16(D)->size, stream_16(D)->size
	bnel	$19,$2,.L634	 #, seek, stream_16(D)->size,
	lwl	$2,29($16)	 # tmp428,

	j	.L629	 #
	li	$2,61			# 0x3d	 # tmp426,

.L624:
	lw	$2,20($17)	 # stream_16(D)->size, stream_16(D)->size
	bne	$2,$19,.L620	 #, stream_16(D)->size, seek,
	addiu	$21,$21,1	 # pointer, pointer,

	li	$2,61			# 0x3d	 # tmp426,
.L629:
	j	.L617	 #
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp426, FSerrno

.L620:
	lwl	$2,29($16)	 # tmp428,
.L634:
	lwr	$2,26($16)	 # tmp427,
	bnel	$18,$2,.L632	 #, pos, tmp427,
	lwl	$2,3($16)	 # tmp442,

	lhu	$2,12($17)	 #, stream_16(D)->sec
	addiu	$2,$2,1	 # tmp430, stream_16(D)->sec,
	andi	$2,$2,0xffff	 # D.30451, tmp430
	sh	$2,12($17)	 # D.30451, stream_16(D)->sec
	lbu	$3,35($16)	 # dsk_17->SecPerClus, dsk_17->SecPerClus
	bne	$3,$2,.L633	 #, dsk_17->SecPerClus, D.30451,
	move	$4,$16	 #, dsk

	sh	$0,12($17)	 #, stream_16(D)->sec
	move	$4,$17	 #, stream
	jal	FILEget_next_cluster	 #
	li	$5,1			# 0x1	 #,

	beq	$2,$0,.L622	 #,,,
	move	$4,$16	 #, dsk

	li	$2,15			# 0xf	 # tmp434,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp434, FSerrno
	j	.L617	 #
	move	$18,$0	 # pos,

.L622:
.L633:
	jal	Cluster2Sector	 #
	lw	$5,8($17)	 #, stream_16(D)->ccls

	lhu	$18,12($17)	 # stream_16(D)->sec, stream_16(D)->sec
	addu	$18,$2,$18	 # sec_sel,, stream_16(D)->sec
	sw	$17,%gp_rel(gBufferOwner)($28)	 # stream, gBufferOwner
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed
	lwl	$5,3($16)	 # tmp438,
	move	$4,$18	 #, sec_sel
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($16)	 #,* dsk

	bnel	$2,$0,.L623	 #,,,
	sw	$18,%gp_rel(gLastDataSectorRead)($28)	 # sec_sel, gLastDataSectorRead

	li	$2,8			# 0x8	 # tmp440,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp440, FSerrno
	j	.L617	 #
	move	$18,$0	 # pos,

.L623:
	move	$18,$0	 # pos,
	lwl	$2,3($16)	 # tmp442,
.L632:
	lwr	$2,0($16)	 # tmp441,* dsk
	addu	$2,$2,$18	 # tmp443, tmp441, pos
	lbu	$2,0($2)	 #,
	sb	$2,0($21)	 # tmp444,* pointer
	addiu	$18,$18,1	 # tmp445, pos,
	andi	$18,$18,0xffff	 # pos, tmp445
	addiu	$19,$19,1	 # seek, seek,
	addiu	$22,$22,1	 # tmp446, readCount,
	addiu	$20,$20,-1	 # len, len,
	bne	$20,$0,.L624	 #, len,,
	andi	$22,$22,0xffff	 # readCount, tmp446

.L617:
	sh	$18,14($17)	 # pos, stream_16(D)->pos
	sw	$19,16($17)	 # seek, stream_16(D)->seek
	divu	$0,$22,$23	 # readCount, size
	teq	$23,$0,7	 # size
	mflo	$2	 # D.30425
.L613:
	lw	$31,52($sp)	 #,
	lw	$23,48($sp)	 #,
	lw	$22,44($sp)	 #,
	lw	$21,40($sp)	 #,
	lw	$20,36($sp)	 #,
	lw	$19,32($sp)	 #,
	lw	$18,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,56	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSfread
	.size	FSfread, .-FSfread
	.align	2
	.globl	FILECreateHeadCluster
	.set	nomips16
	.set	nomicromips
	.ent	FILECreateHeadCluster
	.type	FILECreateHeadCluster, @function
FILECreateHeadCluster:
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
	move	$18,$5	 # cluster, cluster
	jal	FATfindEmptyCluster	 #
	lw	$17,0($4)	 # disk, fo_4(D)->dsk

	move	$5,$2	 # D.30633,
	sw	$2,0($18)	 # D.30633,* cluster
	beq	$2,$0,.L636	 #, D.30633,,
	li	$3,21			# 0x15	 # error,

	lbu	$2,36($17)	 # D.30638, disk_5->type
	li	$3,1			# 0x1	 # tmp230,
	bne	$2,$3,.L637	 #, D.30638, tmp230,
	li	$3,2			# 0x2	 # tmp232,

	move	$4,$17	 #, disk
	li	$6,4088			# 0xff8	 #,
	jal	WriteFAT	 #
	move	$7,$0	 #,

	li	$4,65535			# 0xffff	 # tmp231,
	bne	$2,$4,.L638	 #,, tmp231,
	li	$3,9			# 0x9	 # error,

	j	.L643	 #
	move	$2,$3	 #, error

.L637:
	bne	$2,$3,.L639	 #, D.30638, tmp232,
	move	$4,$17	 #, disk

	li	$6,65528			# 0xfff8	 #,
	jal	WriteFAT	 #
	move	$7,$0	 #,

	li	$4,65535			# 0xffff	 # tmp233,
	bne	$2,$4,.L638	 #,, tmp233,
	li	$3,9			# 0x9	 # error,

	j	.L643	 #
	move	$2,$3	 #, error

.L639:
	li	$16,268369920			# 0xfff0000	 # tmp234,
	ori	$6,$16,0xfff8	 #, tmp234,
	jal	WriteFAT	 #
	move	$7,$0	 #,

	ori	$16,$16,0xffff	 # tmp235, tmp234,
	bne	$2,$16,.L644	 #,, tmp235,
	move	$4,$17	 #, disk

	li	$3,9			# 0x9	 # error,
.L636:
	move	$2,$3	 #, error
.L643:
	lw	$31,28($sp)	 #,
	lw	$18,24($sp)	 #,
	lw	$17,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

.L638:
	move	$4,$17	 #, disk
.L644:
	jal	EraseCluster	 #
	lw	$5,0($18)	 #,* cluster

	j	.L636	 #
	move	$3,$2	 # error,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FILECreateHeadCluster
	.size	FILECreateHeadCluster, .-FILECreateHeadCluster
	.align	2
	.globl	CreateFirstCluster
	.set	nomips16
	.set	nomicromips
	.ent	CreateFirstCluster
	.type	CreateFirstCluster, @function
CreateFirstCluster:
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
	move	$17,$4	 # fo, fo
	lhu	$2,44($4)	 #, fo_2(D)->entry
	sh	$2,20($sp)	 # fo_2(D)->entry, fHandle
	jal	FILECreateHeadCluster	 #
	addiu	$5,$sp,16	 #,,

	bne	$2,$0,.L646	 #, error,,
	move	$16,$2	 # error,

	move	$4,$17	 #, fo
	jal	LoadDirAttrib	 #
	addiu	$5,$sp,20	 #,,

	lw	$3,16($sp)	 # cluster.94, cluster
	sh	$3,26($2)	 # cluster.94, dir_5->DIR_FstClusLO
	ext	$3,$3,16,12	 # tmp232, cluster.94,,
	sh	$3,20($2)	 # tmp232, dir_5->DIR_FstClusHI
	move	$4,$17	 #, fo
	jal	Write_File_Entry	 #
	addiu	$5,$sp,20	 #,,

	xori	$2,$2,0x1	 # tmp239,,
	li	$3,9			# 0x9	 # tmp238,
	movn	$16,$3,$2	 #, error, tmp238, tmp239
.L646:
	move	$2,$16	 #, error
	lw	$31,36($sp)	 #,
	lw	$17,32($sp)	 #,
	lw	$16,28($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	CreateFirstCluster
	.size	CreateFirstCluster, .-CreateFirstCluster
	.align	2
	.globl	FSfclose
	.set	nomips16
	.set	nomicromips
	.ent	FSfclose
	.type	FSfclose, @function
FSfclose:
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
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	lhu	$2,44($4)	 #, fo_6(D)->entry
	sh	$2,16($sp)	 # fo_6(D)->entry, fHandle
	lw	$2,24($4)	 # tmp238,
	andi	$2,$2,0x1	 # tmp237, tmp238,
	beq	$2,$0,.L649	 #, tmp237,,
	move	$16,$4	 # fo, fo

	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite
	beql	$2,$0,.L656	 #, gNeedDataWrite,,
	lw	$4,0($16)	 #, fo_6(D)->dsk

	jal	flushData
	nop
	 #
	beql	$2,$0,.L650	 #,,,
	lw	$4,0($16)	 #, fo_6(D)->dsk

	li	$2,9			# 0x9	 # tmp241,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp241, FSerrno
	j	.L651	 #
	li	$17,-1			# 0xffffffff	 # error,

.L650:
.L656:
	move	$5,$0	 #,
	move	$6,$0	 #,
	jal	WriteFAT	 #
	li	$7,1			# 0x1	 #,

	sw	$0,%gp_rel(gLastFATSectorRead)($28)	 #, gLastFATSectorRead
	lw	$4,0($16)	 #, fo_6(D)->dsk
	jal	ReadFAT	 #
	lw	$5,8($16)	 #, fo_6(D)->ccls

	move	$4,$16	 #, fo
	jal	LoadDirAttrib	 #
	addiu	$5,$sp,16	 #,,

	bne	$2,$0,.L652	 #, dir,,
	lhu	$3,%gp_rel(gTimeWrtTime)($28)	 #, gTimeWrtTime

	li	$2,27			# 0x1b	 # tmp245,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp245, FSerrno
	j	.L651	 #
	li	$17,-1			# 0xffffffff	 # error,

.L652:
	sh	$3,22($2)	 # gTimeWrtTime, dir_16->DIR_WrtTime
	lhu	$3,%gp_rel(gTimeWrtDate)($28)	 #, gTimeWrtDate
	sh	$3,24($2)	 # gTimeWrtDate, dir_16->DIR_WrtDate
	lw	$3,20($16)	 # fo_6(D)->size, fo_6(D)->size
	sw	$3,28($2)	 # fo_6(D)->size, dir_16->DIR_FileSize
	lhu	$3,48($16)	 #, fo_6(D)->attributes
	sb	$3,11($2)	 # fo_6(D)->attributes, dir_16->DIR_Attr
	move	$4,$16	 #, fo
	jal	Write_File_Entry	 #
	addiu	$5,$sp,16	 #,,

	beq	$2,$0,.L653	 #,,,
	li	$2,9			# 0x9	 # tmp251,

	move	$4,$16	 #, fo
	jal	LoadDirAttrib	 #
	addiu	$5,$sp,16	 #,,

	j	.L654	 #
	move	$17,$0	 # error,

.L653:
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp251, FSerrno
	li	$17,-1			# 0xffffffff	 # error,
.L654:
	lw	$2,24($16)	 # tmp252,
	ins	$2,$0,0,1	 # tmp252,,,
	sw	$2,24($16)	 # tmp252,
	jal	free	 #
	move	$4,$16	 #, fo

.L651:
	move	$2,$17	 #, error
.L655:
	lw	$31,36($sp)	 #,
	lw	$17,32($sp)	 #,
	lw	$16,28($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

.L649:
	jal	free	 #
	move	$17,$0	 # error,

	j	.L655	 #
	move	$2,$17	 #, error

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSfclose
	.size	FSfclose, .-FSfclose
	.align	2
	.globl	FILEallocate_new_cluster
	.set	nomips16
	.set	nomicromips
	.ent	FILEallocate_new_cluster
	.type	FILEallocate_new_cluster, @function
FILEallocate_new_cluster:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40	 #,,
	sw	$31,36($sp)	 #,
	sw	$19,32($sp)	 #,
	sw	$18,28($sp)	 #,
	sw	$17,24($sp)	 #,
	sw	$16,20($sp)	 #,
	move	$17,$4	 # fo, fo
	andi	$19,$5,0x00ff	 # mode, mode
	jal	FATfindEmptyCluster	 #
	lw	$18,0($4)	 # dsk, fo_2(D)->dsk

	move	$16,$2	 # c,
	beq	$16,$0,.L658	 #, c,,
	li	$2,21			# 0x15	 # D.30953,

	lbu	$2,36($18)	 # D.30954, dsk_3->type
	li	$3,1			# 0x1	 # tmp227,
	bne	$2,$3,.L659	 #, D.30954, tmp227,
	li	$3,2			# 0x2	 # tmp228,

	move	$4,$18	 #, dsk
	move	$5,$16	 #, c
	li	$6,4088			# 0xff8	 #,
	jal	WriteFAT	 #
	move	$7,$0	 #,

	j	.L664	 #
	move	$4,$18	 #, dsk

.L659:
	bne	$2,$3,.L661	 #, D.30954, tmp228,
	move	$4,$18	 #, dsk

	move	$5,$16	 #, c
	li	$6,65528			# 0xfff8	 #,
	jal	WriteFAT	 #
	move	$7,$0	 #,

	j	.L664	 #
	move	$4,$18	 #, dsk

.L661:
	move	$5,$16	 #, c
	li	$6,268369920			# 0xfff0000	 # tmp229,
	ori	$6,$6,0xfff8	 #, tmp229,
	jal	WriteFAT	 #
	move	$7,$0	 #,

	move	$4,$18	 #, dsk
.L664:
	lw	$5,8($17)	 #, fo_2(D)->ccls
	move	$6,$16	 #, c
	jal	WriteFAT	 #
	move	$7,$0	 #,

	sw	$16,8($17)	 # c, fo_2(D)->ccls
	li	$3,1			# 0x1	 # tmp231,
	bne	$19,$3,.L658	 #, mode, tmp231,
	move	$2,$0	 # D.30953,

	move	$4,$18	 #, dsk
	jal	EraseCluster	 #
	move	$5,$16	 #, c

.L658:
	lw	$31,36($sp)	 #,
	lw	$19,32($sp)	 #,
	lw	$18,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FILEallocate_new_cluster
	.size	FILEallocate_new_cluster, .-FILEallocate_new_cluster
	.align	2
	.globl	FSfseek
	.set	nomips16
	.set	nomicromips
	.ent	FSfseek
	.type	FSfseek, @function
FSfseek:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40	 #,,
	sw	$31,36($sp)	 #,
	sw	$19,32($sp)	 #,
	sw	$18,28($sp)	 #,
	sw	$17,24($sp)	 #,
	sw	$16,20($sp)	 #,
	move	$16,$4	 # stream, stream
	li	$2,1			# 0x1	 # tmp269,
	beq	$6,$2,.L667	 #, whence, tmp269,
	lw	$17,0($4)	 # dsk, stream_5(D)->dsk

	li	$2,2			# 0x2	 # tmp270,
	bne	$6,$2,.L666	 #, whence, tmp270,
	move	$18,$5	 # offset2, offset

	j	.L680	 #
	lw	$18,20($4)	 # stream_5(D)->size, stream_5(D)->size

.L667:
	lw	$18,16($4)	 # stream_5(D)->seek, stream_5(D)->seek
	j	.L666	 #
	addu	$18,$5,$18	 # offset2, offset, stream_5(D)->seek

.L680:
	subu	$18,$18,$5	 # offset2, stream_5(D)->size, offset
.L666:
	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite
	beql	$2,$0,.L681	 #, gNeedDataWrite,,
	lw	$2,4($16)	 # stream_5(D)->cluster, stream_5(D)->cluster

	jal	flushData
	nop
	 #
	beql	$2,$0,.L669	 #,,,
	lw	$2,4($16)	 # stream_5(D)->cluster, stream_5(D)->cluster

	li	$2,9			# 0x9	 # tmp275,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp275, FSerrno
	j	.L670	 #
	li	$2,-1			# 0xffffffff	 # D.30281,

.L669:
.L681:
	sw	$2,8($16)	 # stream_5(D)->cluster, stream_5(D)->ccls
	lw	$3,20($16)	 # stream_5(D)->size, stream_5(D)->size
	sltu	$3,$3,$18	 # tmp278, stream_5(D)->size, offset2
	beql	$3,$0,.L671	 #, tmp278,,
	lw	$3,24($16)	 # tmp280,

	li	$2,31			# 0x1f	 # tmp279,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp279, FSerrno
	j	.L670	 #
	li	$2,-1			# 0xffffffff	 # D.30281,

.L671:
	ins	$3,$0,2,1	 # tmp280,,,
	sw	$3,24($16)	 # tmp280,
	sw	$18,16($16)	 # offset2, stream_5(D)->seek
	lwl	$3,29($17)	 # tmp281,
	lwr	$3,26($17)	 # D.30285,
	divu	$0,$18,$3	 # offset2.57, D.30285
	teq	$3,$0,7	 # D.30285
	mflo	$2	 # tmp282
	mul	$4,$2,$3	 #, tmp282, D.30285
	subu	$18,$18,$4	 # tmp285, offset2,
	sh	$18,14($16)	 # tmp285, stream_5(D)->pos
	lbu	$3,35($17)	 # D.30290, dsk_6->SecPerClus
	divu	$0,$2,$3	 # tmp282, D.30290
	teq	$3,$0,7	 # D.30290
	mflo	$18	 # tmp286
	mul	$4,$18,$3	 #, tmp286, D.30290
	subu	$2,$2,$4	 # tmp289, tmp282,
	beq	$18,$0,.L672	 #, temp,,
	sh	$2,12($16)	 # tmp289, stream_5(D)->sec

	move	$4,$16	 #, stream
	jal	FILEget_next_cluster	 #
	move	$5,$18	 #, tmp286

	beq	$2,$0,.L682	 #, test,,
	move	$4,$17	 #, dsk

	li	$3,60			# 0x3c	 # tmp291,
	bne	$2,$3,.L673	 #, test, tmp291,
	li	$2,15			# 0xf	 # tmp307,

	lw	$2,24($16)	 # tmp293,
	andi	$2,$2,0x1	 # tmp292, tmp293,
	beq	$2,$0,.L674	 #, tmp292,,
	lw	$2,4($16)	 # stream_5(D)->cluster, stream_5(D)->cluster

	sw	$2,8($16)	 # stream_5(D)->cluster, stream_5(D)->ccls
	li	$2,1			# 0x1	 # tmp295,
	beq	$18,$2,.L675	 #, temp, tmp295,
	move	$4,$16	 #, stream

	jal	FILEget_next_cluster	 #
	addiu	$5,$18,-1	 #, tmp286,

.L675:
	move	$4,$16	 #, stream
	jal	FILEallocate_new_cluster	 #
	move	$5,$0	 #,

	beq	$2,$0,.L682	 #,,,
	move	$4,$17	 #, dsk

	li	$2,15			# 0xf	 # tmp298,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp298, FSerrno
	j	.L670	 #
	li	$2,-1			# 0xffffffff	 # D.30281,

.L674:
	sw	$2,8($16)	 # stream_5(D)->cluster, stream_5(D)->ccls
	move	$4,$16	 #, stream
	jal	FILEget_next_cluster	 #
	addiu	$5,$18,-1	 #, tmp286,

	beql	$2,$0,.L676	 #,,,
	lwl	$2,29($17)	 # tmp304,

	li	$2,15			# 0xf	 # tmp302,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp302, FSerrno
	j	.L670	 #
	li	$2,-1			# 0xffffffff	 # D.30281,

.L676:
	lwr	$2,26($17)	 # tmp303,
	sh	$2,14($16)	 # tmp303, stream_5(D)->pos
	lbu	$2,35($17)	 # dsk_6->SecPerClus, dsk_6->SecPerClus
	addiu	$2,$2,-1	 # tmp306, dsk_6->SecPerClus,
	j	.L672	 #
	sh	$2,12($16)	 # tmp306, stream_5(D)->sec

.L673:
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp307, FSerrno
	j	.L670	 #
	li	$2,-1			# 0xffffffff	 # D.30281,

.L672:
	move	$4,$17	 #, dsk
.L682:
	jal	Cluster2Sector	 #
	lw	$5,8($16)	 #, stream_5(D)->ccls

	lhu	$16,12($16)	 # stream_5(D)->sec, stream_5(D)->sec
	addu	$16,$2,$16	 # temp,, stream_5(D)->sec
	sw	$0,%gp_rel(gBufferOwner)($28)	 #, gBufferOwner
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed
	lwl	$5,3($17)	 # tmp311,
	move	$4,$16	 #, temp
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($17)	 #,* dsk

	bnel	$2,$0,.L677	 #,,,
	sw	$16,%gp_rel(gLastDataSectorRead)($28)	 # temp, gLastDataSectorRead

	li	$2,27			# 0x1b	 # tmp313,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp313, FSerrno
	j	.L670	 #
	li	$2,-1			# 0xffffffff	 # D.30281,

.L677:
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	move	$2,$0	 # D.30281,
.L670:
	lw	$31,36($sp)	 #,
	lw	$19,32($sp)	 #,
	lw	$18,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSfseek
	.size	FSfseek, .-FSfseek
	.align	2
	.globl	FSfwrite
	.set	nomips16
	.set	nomicromips
	.ent	FSfwrite
	.type	FSfwrite, @function
FSfwrite:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64	 #,,
	sw	$31,60($sp)	 #,
	sw	$fp,56($sp)	 #,
	sw	$23,52($sp)	 #,
	sw	$22,48($sp)	 #,
	sw	$21,44($sp)	 #,
	sw	$20,40($sp)	 #,
	sw	$19,36($sp)	 #,
	sw	$18,32($sp)	 #,
	sw	$17,28($sp)	 #,
	sw	$16,24($sp)	 #,
	sw	$5,68($sp)	 # size, size
	move	$17,$7	 # stream, stream
	lw	$2,24($7)	 # tmp419,
	andi	$2,$2,0x1	 # tmp418, tmp419,
	bne	$2,$0,.L684	 #, tmp418,,
	move	$19,$4	 # src, ptr

	li	$2,29			# 0x1d	 # tmp420,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp420, FSerrno
	j	.L685	 #
	move	$2,$0	 # D.30484,

.L684:
	lw	$2,68($sp)	 #, size
	mul	$22,$6,$2	 # count, n,
	beq	$22,$0,.L685	 #, count,,
	move	$2,$0	 # D.30484,

	jal	MDD_SDSPI_WriteProtectState
	nop
	 #
	beql	$2,$0,.L686	 #,,,
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed

	li	$2,24			# 0x18	 # tmp422,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp422, FSerrno
	j	.L685	 #
	move	$2,$0	 # D.30484,

.L686:
	lw	$16,0($17)	 # dsk, stream_23(D)->dsk
	lhu	$18,14($17)	 # pos, stream_23(D)->pos
	lw	$20,16($17)	 # seek, stream_23(D)->seek
	move	$4,$16	 #, dsk
	jal	Cluster2Sector	 #
	lw	$5,8($17)	 #, stream_23(D)->ccls

	move	$21,$2	 # l,
	lw	$2,%gp_rel(gBufferOwner)($28)	 # gBufferOwner, gBufferOwner
	beq	$2,$17,.L687	 #, gBufferOwner, stream,
	lhu	$23,12($17)	 # D.30491, stream_23(D)->sec

	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite
	beql	$2,$0,.L687	 #, gNeedDataWrite,,
	sw	$17,%gp_rel(gBufferOwner)($28)	 # stream, gBufferOwner

	jal	flushData
	nop
	 #
	beql	$2,$0,.L688	 #,,,
	sw	$17,%gp_rel(gBufferOwner)($28)	 # stream, gBufferOwner

	li	$2,9			# 0x9	 # tmp427,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp427, FSerrno
	j	.L685	 #
	move	$2,$0	 # D.30484,

.L688:
.L687:
	addu	$21,$21,$23	 # l, l, D.30491
	lw	$2,%gp_rel(gLastDataSectorRead)($28)	 # gLastDataSectorRead, gLastDataSectorRead
	beq	$2,$21,.L689	 #, gLastDataSectorRead, l,
	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite

	beql	$2,$0,.L708	 #, gNeedDataWrite,,
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed

	jal	flushData
	nop
	 #
	beql	$2,$0,.L690	 #,,,
	sb	$0,%gp_rel(gBufferZeroed)($28)	 #, gBufferZeroed

	li	$2,9			# 0x9	 # tmp431,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp431, FSerrno
	j	.L685	 #
	move	$2,$0	 # D.30484,

.L690:
.L708:
	lwl	$5,3($16)	 # tmp433,
	move	$4,$21	 #, l
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($16)	 #,* dsk

	bnel	$2,$0,.L691	 #,,,
	sw	$21,%gp_rel(gLastDataSectorRead)($28)	 # l, gLastDataSectorRead

	li	$2,27			# 0x1b	 # tmp435,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp435, FSerrno
	sw	$21,%gp_rel(gLastDataSectorRead)($28)	 # l, gLastDataSectorRead
	lw	$21,20($17)	 # filesize, stream_23(D)->size
	j	.L692	 #
	move	$23,$0	 # writeCount,

.L691:
	lw	$21,20($17)	 # filesize, stream_23(D)->size
.L704:
	move	$23,$0	 # writeCount,
	li	$fp,1			# 0x1	 # tmp474,
.L703:
	bnel	$20,$21,.L709	 #, seek, filesize,
	lwl	$2,29($16)	 # tmp440,

	lw	$2,24($17)	 # tmp437,
	ins	$2,$fp,2,1	 # tmp437, tmp474,,
	sw	$2,24($17)	 # tmp437,
	lwl	$2,29($16)	 # tmp440,
.L709:
	lwr	$2,26($16)	 # tmp439,
	bnel	$18,$2,.L710	 #, pos, tmp439,
	lwl	$2,3($16)	 # tmp462,

	lbu	$2,%gp_rel(gNeedDataWrite)($28)	 # gNeedDataWrite, gNeedDataWrite
	beql	$2,$0,.L711	 #, gNeedDataWrite,,
	lhu	$2,12($17)	 #, stream_23(D)->sec

	jal	flushData
	nop
	 #
	beql	$2,$0,.L695	 #,,,
	lhu	$2,12($17)	 #, stream_23(D)->sec

	li	$2,9			# 0x9	 # tmp443,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp443, FSerrno
	j	.L685	 #
	move	$2,$0	 # D.30484,

.L695:
.L711:
	addiu	$2,$2,1	 # tmp445, stream_23(D)->sec,
	andi	$2,$2,0xffff	 # D.30525, tmp445
	sh	$2,12($17)	 # D.30525, stream_23(D)->sec
	lbu	$3,35($16)	 # dsk_32->SecPerClus, dsk_32->SecPerClus
	bne	$3,$2,.L706	 #, dsk_32->SecPerClus, D.30525,
	move	$18,$fp	 # needRead, tmp474

	sh	$0,12($17)	 #, stream_23(D)->sec
	lw	$2,24($17)	 # tmp449,
	andi	$2,$2,0x4	 # tmp448, tmp449,
	beq	$2,$0,.L697	 #, tmp448,,
	move	$4,$17	 #, stream

	jal	FILEallocate_new_cluster	 #
	move	$5,$0	 #,

	j	.L698	 #
	move	$18,$0	 # needRead,

.L697:
	jal	FILEget_next_cluster	 #
	move	$5,$fp	 #, tmp474

	move	$18,$fp	 # needRead, tmp474
.L698:
	li	$3,21			# 0x15	 #,
	bne	$2,$3,.L696
	nop
	 #, error,,
	li	$2,21			# 0x15	 # tmp453,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp453, FSerrno
	j	.L685	 #
	move	$2,$0	 # D.30484,

.L706:
	move	$2,$0	 # error,
.L696:
	bnel	$2,$0,.L707	 #, error,,
	move	$18,$0	 # pos,

	move	$4,$16	 #, dsk
	jal	Cluster2Sector	 #
	lw	$5,8($17)	 #, stream_23(D)->ccls

	lhu	$3,12($17)	 # stream_23(D)->sec, stream_23(D)->sec
	addu	$3,$2,$3	 #,, stream_23(D)->sec
	sw	$3,16($sp)	 #, %sfp
	beq	$18,$0,.L699	 #, needRead,,
	sw	$17,%gp_rel(gBufferOwner)($28)	 # stream, gBufferOwner

	lwl	$5,3($16)	 # tmp457,
	move	$4,$3	 #,
	jal	MDD_SDSPI_SectorRead	 #
	lwr	$5,0($16)	 #,* dsk

	bnel	$2,$0,.L700	 #,,,
	lw	$2,16($sp)	 #, %sfp

	li	$2,27			# 0x1b	 # tmp459,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp459, FSerrno
	li	$2,-1			# 0xffffffff	 # tmp460,
	sw	$2,%gp_rel(gLastDataSectorRead)($28)	 # tmp460, gLastDataSectorRead
	j	.L685	 #
	move	$2,$0	 # D.30484,

.L700:
	j	.L701	 #
	sw	$2,%gp_rel(gLastDataSectorRead)($28)	 #, gLastDataSectorRead

.L699:
	lw	$3,16($sp)	 #, %sfp
	j	.L701	 #
	sw	$3,%gp_rel(gLastDataSectorRead)($28)	 #, gLastDataSectorRead

.L694:
	lwl	$2,3($16)	 # tmp462,
.L710:
	lwr	$2,0($16)	 # tmp461,* dsk
	addu	$2,$2,$18	 # tmp463, tmp461, pos
	lbu	$3,0($19)	 #,* src
	sb	$3,0($2)	 # tmp464,
	addiu	$18,$18,1	 # tmp465, pos,
	andi	$18,$18,0xffff	 # pos, tmp465
	addiu	$20,$20,1	 # seek, seek,
	addiu	$22,$22,-1	 # count, count,
	addiu	$23,$23,1	 # tmp466, writeCount,
	andi	$23,$23,0xffff	 # writeCount, tmp466
	lw	$2,24($17)	 # tmp468,
	ext	$2,$2,2,1	 # tmp473, tmp468,,
	addu	$21,$21,$2	 # filesize, filesize, tmp473
	li	$2,1			# 0x1	 #,
	beq	$22,$0,.L692	 #, count,,
	sb	$2,%gp_rel(gNeedDataWrite)($28)	 #, gNeedDataWrite

	j	.L703	 #
	addiu	$19,$19,1	 # src, src,

.L707:
.L692:
	sh	$18,14($17)	 # pos, stream_23(D)->pos
	sw	$20,16($17)	 # seek, stream_23(D)->seek
	sw	$21,20($17)	 # filesize, stream_23(D)->size
	lw	$3,68($sp)	 #, size
	divu	$0,$23,$3	 # writeCount,
	teq	$3,$0,7	 #
	mflo	$2	 # D.30484
.L685:
	lw	$31,60($sp)	 #,
	lw	$fp,56($sp)	 #,
	lw	$23,52($sp)	 #,
	lw	$22,48($sp)	 #,
	lw	$21,44($sp)	 #,
	lw	$20,40($sp)	 #,
	lw	$19,36($sp)	 #,
	lw	$18,32($sp)	 #,
	lw	$17,28($sp)	 #,
	lw	$16,24($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,64	 #,,

.L689:
	j	.L704	 #
	lw	$21,20($17)	 # filesize, stream_23(D)->size

.L701:
	j	.L694	 #
	move	$18,$0	 # pos,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSfwrite
	.size	FSfwrite, .-FSfwrite
	.align	2
	.globl	FindEmptyEntries
	.set	nomips16
	.set	nomicromips
	.ent	FindEmptyEntries
	.type	FindEmptyEntries, @function
FindEmptyEntries:
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48	 #,,
	sw	$31,44($sp)	 #,
	sw	$21,40($sp)	 #,
	sw	$20,36($sp)	 #,
	sw	$19,32($sp)	 #,
	sw	$18,28($sp)	 #,
	sw	$17,24($sp)	 #,
	sw	$16,20($sp)	 #,
	move	$18,$4	 # fo, fo
	move	$16,$5	 # fHandle, fHandle
	lw	$2,52($4)	 # fo_11(D)->dirclus, fo_11(D)->dirclus
	sw	$2,56($4)	 # fo_11(D)->dirclus, fo_11(D)->dirccls
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	beq	$2,$0,.L713	 #,,,
	li	$3,27			# 0x1b	 # status,

	li	$19,229			# 0xe5	 # tmp260,
	li	$21,1			# 0x1	 # tmp261,
	lhu	$20,0($16)	 # bHandle,* fHandle
.L729:
	move	$4,$18	 #, fo
	move	$5,$16	 #, fHandle
	jal	Cache_File_Entry	 #
	move	$6,$0	 #,

	bnel	$2,$0,.L714	 #, dir,,
	lbu	$17,0($2)	 # a, dir_20->DIR_Name

.L714:
	lhu	$3,0($16)	 #,* fHandle
	addiu	$3,$3,1	 # tmp240, tmp239,
	beq	$17,$19,.L715	 #, a, tmp260,
	sh	$3,0($16)	 # tmp240,* fHandle

	bne	$17,$0,.L716	 #, a,,
	move	$3,$0	 # amountfound,

.L715:
	sltu	$3,$0,$2	 # amountfound, dir
.L716:
	bne	$2,$0,.L717
	nop
	 #, dir,,
	lw	$2,56($18)	 # b, fo_11(D)->dirccls
	lw	$3,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue
	bnel	$2,$3,.L718	 #, b, FatRootDirClusterValue,
	sw	$2,8($18)	 # b, fo_11(D)->ccls

	lw	$3,0($18)	 # fo_11(D)->dsk, fo_11(D)->dsk
	lbu	$5,36($3)	 # D.31032_28->type, D.31032_28->type
	li	$4,3			# 0x3	 # tmp247,
	bne	$5,$4,.L719	 #, D.31032_28->type, tmp247,
	li	$3,2			# 0x2	 # status,

	sw	$2,8($18)	 # b, fo_11(D)->ccls
	move	$4,$18	 #, fo
	jal	FILEallocate_new_cluster	 #
	li	$5,1			# 0x1	 #,

	xori	$2,$2,0x15	 # tmp259,,
	li	$3,2			# 0x2	 # tmp258,
	j	.L719	 #
	movn	$3,$0,$2	 #, status,, tmp259

.L718:
	move	$4,$18	 #, fo
	jal	FILEallocate_new_cluster	 #
	li	$5,1			# 0x1	 #,

	xori	$2,$2,0x15	 # tmp257,,
	li	$3,2			# 0x2	 # tmp256,
	j	.L719	 #
	movn	$3,$0,$2	 #, status,, tmp257

.L717:
	bnel	$3,$21,.L729	 #, amountfound, tmp261,
	lhu	$20,0($16)	 # bHandle,* fHandle

	j	.L728	 #
	move	$3,$0	 # status,

.L713:
	sltu	$2,$3,1	 #, status
	lw	$31,44($sp)	 #,
	lw	$21,40($sp)	 #,
	lw	$20,36($sp)	 #,
	lw	$19,32($sp)	 #,
	lw	$18,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,48	 #,,

.L728:
.L719:
	j	.L713	 #
	sh	$20,0($16)	 # bHandle,* fHandle

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FindEmptyEntries
	.size	FindEmptyEntries, .-FindEmptyEntries
	.align	2
	.globl	CreateFileEntry
	.set	nomips16
	.set	nomicromips
	.ent	CreateFileEntry
	.type	CreateFileEntry, @function
CreateFileEntry:
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48	 #,,
	sw	$31,44($sp)	 #,
	sw	$18,40($sp)	 #,
	sw	$17,36($sp)	 #,
	sw	$16,32($sp)	 #,
	move	$16,$4	 # fo, fo
	move	$17,$5	 # fHandle, fHandle
	andi	$18,$6,0x00ff	 # mode, mode
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	move	$2,$4	 # ivtmp.542, fo
	addiu	$3,$sp,16	 # ivtmp.543,,
	addiu	$5,$4,11	 # D.32362, fo,
.L731:
	lbu	$4,32($2)	 #, fo->name
	sb	$4,0($3)	 # tmp258, name
	addiu	$2,$2,1	 # ivtmp.542, ivtmp.542,
	bne	$2,$5,.L731	 #, ivtmp.542, D.32362,
	addiu	$3,$3,1	 # ivtmp.543, ivtmp.543,

	sh	$0,0($17)	 #,* fHandle
	move	$4,$16	 #, fo
	jal	FindEmptyEntries	 #
	move	$5,$17	 #, fHandle

	beq	$2,$0,.L732	 #,,,
	li	$3,20			# 0x14	 # error,

	move	$4,$16	 #, fo
	addiu	$5,$sp,16	 #,,
	move	$6,$17	 #, fHandle
	jal	PopulateEntries	 #
	move	$7,$18	 #, mode

	bne	$2,$0,.L732	 #, error,,
	move	$3,$2	 # error,

	jal	CreateFirstCluster	 #
	move	$4,$16	 #, fo

	move	$3,$2	 # error,
.L732:
	sb	$3,%gp_rel(FSerrno)($28)	 # error, FSerrno
	move	$2,$3	 #, error
	lw	$31,44($sp)	 #,
	lw	$18,40($sp)	 #,
	lw	$17,36($sp)	 #,
	lw	$16,32($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,48	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	CreateFileEntry
	.size	CreateFileEntry, .-CreateFileEntry
	.align	2
	.globl	FAT_erase_cluster_chain
	.set	nomips16
	.set	nomicromips
	.ent	FAT_erase_cluster_chain
	.type	FAT_erase_cluster_chain, @function
FAT_erase_cluster_chain:
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
	move	$18,$4	 # cluster, cluster
	lbu	$2,36($5)	 # dsk_10(D)->type, dsk_10(D)->type
	li	$3,1			# 0x1	 # tmp231,
	beq	$2,$3,.L743	 #, dsk_10(D)->type, tmp231,
	move	$19,$5	 # dsk, dsk

	li	$3,3			# 0x3	 # tmp232,
	bnel	$2,$3,.L750	 #, dsk_10(D)->type, tmp232,
	li	$20,65535			# 0xffff	 # ClusterFailValue,

	li	$20,268369920			# 0xfff0000	 # tmp228,
	ori	$20,$20,0xffff	 # ClusterFailValue, tmp228,
	j	.L737	 #
	addiu	$22,$20,-7	 # c2, ClusterFailValue,

.L750:
	j	.L737	 #
	li	$22,65528			# 0xfff8	 # c2,

.L743:
	li	$20,65535			# 0xffff	 # ClusterFailValue,
	li	$22,4088			# 0xff8	 # c2,
.L737:
	sltu	$2,$18,2	 # tmp233, cluster,
	li	$16,2			# 0x2	 # status,
	beq	$2,$0,.L752	 #, tmp233,,
	li	$21,2			# 0x2	 # tmp241,

	j	.L753	 #
	move	$4,$19	 #, dsk

.L749:
.L752:
	move	$4,$19	 #, dsk
	jal	ReadFAT	 #
	move	$5,$18	 #, cluster

	beq	$2,$20,.L745	 #, c, ClusterFailValue,
	move	$17,$2	 # c,

	sltu	$2,$2,2	 # tmp234, c,
	bne	$2,$0,.L746	 #, tmp234,,
	move	$2,$0	 #,

	sltu	$16,$17,$22	 # tmp235, c, c2
	movz	$2,$21,$16	 #,, tmp241, tmp235
	move	$16,$2	 # status,
	move	$4,$19	 #, dsk
	move	$5,$18	 #, cluster
	move	$6,$0	 #,
	jal	WriteFAT	 #
	move	$7,$0	 #,

	beql	$2,$20,.L739	 #,, ClusterFailValue,
	li	$16,1			# 0x1	 # status,

	beq	$16,$0,.L749	 #, status,,
	move	$18,$17	 # cluster, c

.L739:
	move	$4,$19	 #, dsk
.L753:
	move	$5,$0	 #,
	move	$6,$0	 #,
	jal	WriteFAT	 #
	li	$7,1			# 0x1	 #,

	xori	$2,$16,0x2	 # tmp238, status,
	sltu	$2,$2,1	 #, tmp238
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

.L745:
	j	.L739	 #
	li	$16,1			# 0x1	 # status,

.L746:
	j	.L739	 #
	li	$16,2			# 0x2	 # status,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FAT_erase_cluster_chain
	.size	FAT_erase_cluster_chain, .-FAT_erase_cluster_chain
	.align	2
	.globl	FILEerase
	.set	nomips16
	.set	nomicromips
	.ent	FILEerase
	.type	FILEerase, @function
FILEerase:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40	 #,,
	sw	$31,36($sp)	 #,
	sw	$20,32($sp)	 #,
	sw	$19,28($sp)	 #,
	sw	$18,24($sp)	 #,
	sw	$17,20($sp)	 #,
	sw	$16,16($sp)	 #,
	move	$16,$4	 # fo, fo
	move	$17,$5	 # fHandle, fHandle
	andi	$18,$6,0x00ff	 # EraseClusters, EraseClusters
	lw	$19,0($4)	 # disk, fo_4(D)->dsk
	lw	$2,52($4)	 # fo_4(D)->dirclus, fo_4(D)->dirclus
	sw	$2,56($4)	 # fo_4(D)->dirclus, fo_4(D)->dirccls
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bnel	$2,$0,.L755	 #, dir,,
	lbu	$4,0($2)	 # a, dir_8->DIR_Name

	li	$2,1			# 0x1	 # tmp234,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp234, FSerrno
	j	.L756	 #
	li	$3,27			# 0x1b	 # status,

.L755:
	beq	$4,$0,.L759	 #, a,,
	li	$3,11			# 0xb	 # status,

	li	$3,229			# 0xe5	 # tmp235,
	beql	$4,$3,.L759	 #, a, tmp235,
	li	$3,11			# 0xb	 # status,

	li	$3,-27			# 0xffffffe5	 # tmp236,
	sb	$3,0($2)	 # tmp236, dir_8->DIR_Name
	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, dir

	move	$20,$2	 # clus,
	move	$4,$16	 #, fo
	jal	Write_File_Entry	 #
	move	$5,$17	 #, fHandle

	beq	$2,$0,.L759	 #,,,
	li	$3,1			# 0x1	 # status,

	lw	$2,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue
	beql	$20,$2,.L763	 #, clus, FatRootDirClusterValue,
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno

	beql	$18,$0,.L763	 #, EraseClusters,,
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno

	move	$4,$20	 #, clus
	jal	FAT_erase_cluster_chain	 #
	move	$5,$19	 #, disk

	sltu	$3,$2,1	 # status,
	bne	$3,$0,.L764	 #, status,,
	li	$2,1			# 0x1	 # tmp241,

	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
.L763:
	j	.L756	 #
	move	$3,$0	 # status,

.L759:
	li	$2,1			# 0x1	 # tmp241,
.L764:
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp241, FSerrno
.L756:
	move	$2,$3	 #, status
	lw	$31,36($sp)	 #,
	lw	$20,32($sp)	 #,
	lw	$19,28($sp)	 #,
	lw	$18,24($sp)	 #,
	lw	$17,20($sp)	 #,
	lw	$16,16($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,40	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FILEerase
	.size	FILEerase, .-FILEerase
	.align	2
	.globl	FSremove
	.set	nomips16
	.set	nomicromips
	.ent	FSremove
	.type	FSremove, @function
FSremove:
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
	move	$16,$4	 # fileName, fileName
	jal	MDD_SDSPI_WriteProtectState	 #
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno

	beq	$2,$0,.L766	 #,,,
	move	$4,$16	 #, fileName

	li	$2,24			# 0x18	 # tmp232,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp232, FSerrno
	j	.L767	 #
	li	$3,-1			# 0xffffffff	 # D.30674,

.L766:
	lui	$5,%hi(tempCWDobj+32)	 # tmp233,
	addiu	$5,$5,%lo(tempCWDobj+32)	 #, tmp233,
	jal	FormatFileName	 #
	move	$6,$0	 #,

	bne	$2,$0,.L768	 #,,,
	lui	$17,%hi(tempCWDobj)	 # tmp236,

	li	$2,18			# 0x12	 # tmp235,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp235, FSerrno
	j	.L767	 #
	li	$3,-1			# 0xffffffff	 # D.30674,

.L768:
	lui	$2,%hi(gDiskData)	 # tmp238,
	addiu	$2,$2,%lo(gDiskData)	 # tmp237, tmp238,
	sw	$2,%lo(tempCWDobj)($17)	 # tmp237, tempCWDobj.dsk
	addiu	$17,$17,%lo(tempCWDobj)	 # tmp240, tmp236,
	sw	$0,4($17)	 #, tempCWDobj.cluster
	sw	$0,8($17)	 #, tempCWDobj.ccls
	sh	$0,44($17)	 #, tempCWDobj.entry
	li	$2,32			# 0x20	 # tmp247,
	sh	$2,48($17)	 # tmp247, tempCWDobj.attributes
	lw	$2,%gp_rel(cwdptr)($28)	 # cwdptr.73, cwdptr
	lw	$3,52($2)	 # cwdptr.73_9->dirclus, cwdptr.73_9->dirclus
	sw	$3,52($17)	 # cwdptr.73_9->dirclus, tempCWDobj.dirclus
	lw	$2,56($2)	 # cwdptr.73_9->dirccls, cwdptr.73_9->dirccls
	sw	$2,56($17)	 # cwdptr.73_9->dirccls, tempCWDobj.dirccls
	lui	$16,%hi(gFileTemp)	 # tmp254,
	addiu	$4,$16,%lo(gFileTemp)	 #, tmp254,
	jal	FileObjectCopy	 #
	move	$5,$17	 #, tmp240

	move	$4,$17	 #, tmp240
	addiu	$5,$16,%lo(gFileTemp)	 #, tmp254,
	li	$6,1			# 0x1	 #,
	jal	FILEfind	 #
	move	$7,$0	 #,

	beq	$2,$0,.L769	 #,,,
	lui	$2,%hi(tempCWDobj+48)	 # tmp260,

	li	$2,11			# 0xb	 # tmp258,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp258, FSerrno
	j	.L767	 #
	li	$3,-1			# 0xffffffff	 # D.30674,

.L769:
	lhu	$2,%lo(tempCWDobj+48)($2)	 # tempCWDobj.attributes, tempCWDobj.attributes
	andi	$2,$2,0x10	 # tmp262, tempCWDobj.attributes,
	beq	$2,$0,.L770	 #, tmp262,,
	lui	$4,%hi(tempCWDobj)	 # tmp264,

	li	$2,19			# 0x13	 # tmp263,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp263, FSerrno
	j	.L767	 #
	li	$3,-1			# 0xffffffff	 # D.30674,

.L770:
	addiu	$4,$4,%lo(tempCWDobj)	 #, tmp264,
	lui	$5,%hi(tempCWDobj+44)	 # tmp265,
	addiu	$5,$5,%lo(tempCWDobj+44)	 #, tmp265,
	jal	FILEerase	 #
	li	$6,1			# 0x1	 #,

	beq	$2,$0,.L767	 #,,,
	move	$3,$0	 # D.30674,

	li	$2,1			# 0x1	 # tmp266,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp266, FSerrno
	li	$3,-1			# 0xffffffff	 # D.30674,
.L767:
	move	$2,$3	 #, D.30674
	lw	$31,28($sp)	 #,
	lw	$17,24($sp)	 #,
	lw	$16,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSremove
	.size	FSremove, .-FSremove
	.align	2
	.globl	FSfopen
	.set	nomips16
	.set	nomicromips
	.ent	FSfopen
	.type	FSfopen, @function
FSfopen:
	.frame	$sp,48,$31		# vars= 8, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48	 #,,
	sw	$31,44($sp)	 #,
	sw	$20,40($sp)	 #,
	sw	$19,36($sp)	 #,
	sw	$18,32($sp)	 #,
	sw	$17,28($sp)	 #,
	sw	$16,24($sp)	 #,
	move	$16,$4	 # fileName, fileName
	move	$20,$5	 # mode, mode
	jal	malloc	 #
	li	$4,60			# 0x3c	 #,

	move	$17,$2	 # tmp268,
	move	$19,$2	 # filePtr, tmp268
	move	$4,$16	 #, fileName
	addiu	$5,$2,32	 #, tmp268,
	jal	FormatFileName	 #
	move	$6,$0	 #,

	bnel	$2,$0,.L773	 #,,,
	lbu	$18,0($20)	 # ModeC,* mode

	jal	free	 #
	move	$4,$17	 #, tmp268

	li	$2,18			# 0x12	 # tmp271,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp271, FSerrno
	j	.L774	 #
	move	$19,$0	 # filePtr,

.L773:
	lui	$2,%hi(gDiskData)	 # tmp273,
	addiu	$2,$2,%lo(gDiskData)	 # tmp272, tmp273,
	sw	$2,0($17)	 # tmp272, filePtr_9->dsk
	sw	$0,4($17)	 #, filePtr_9->cluster
	sw	$0,8($17)	 #, filePtr_9->ccls
	sh	$0,44($17)	 #, filePtr_9->entry
	li	$2,32			# 0x20	 # tmp274,
	sh	$2,48($17)	 # tmp274, filePtr_9->attributes
	lw	$2,%gp_rel(cwdptr)($28)	 # cwdptr.74, cwdptr
	lw	$3,52($2)	 # cwdptr.74_17->dirclus, cwdptr.74_17->dirclus
	sw	$3,52($17)	 # cwdptr.74_17->dirclus, filePtr_9->dirclus
	lw	$2,56($2)	 # cwdptr.74_17->dirccls, cwdptr.74_17->dirccls
	sw	$2,56($17)	 # cwdptr.74_17->dirccls, filePtr_9->dirccls
	lui	$16,%hi(gFileTemp)	 # tmp277,
	addiu	$4,$16,%lo(gFileTemp)	 #, tmp277,
	jal	FileObjectCopy	 #
	move	$5,$17	 #, tmp268

	move	$4,$17	 #, tmp268
	addiu	$5,$16,%lo(gFileTemp)	 #, tmp277,
	li	$6,1			# 0x1	 #,
	jal	FILEfind	 #
	move	$7,$0	 #,

	bne	$2,$0,.L775	 #,,,
	move	$4,$17	 #, tmp268

	addiu	$18,$18,-65	 # tmp279, ModeC,
	andi	$2,$18,0x00ff	 # tmp280, tmp279
	sltu	$2,$2,55	 # tmp281, tmp280,
	beq	$2,$0,.L795	 #, tmp281,,
	li	$2,31			# 0x1f	 # tmp328,

	andi	$18,$18,0x00ff	 # tmp282, tmp279
	sll	$18,$18,2	 # tmp283, tmp282,
	lui	$2,%hi(.L780)	 # tmp286,
	addiu	$2,$2,%lo(.L780)	 # tmp285, tmp286,
	addu	$18,$2,$18	 # tmp284, tmp285, tmp283
	lw	$2,0($18)	 # tmp287,
	j	$2
	nop
	 # tmp287
	.align	2
	.align	2
.L780:
	.word	.L777
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L778
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L779
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L777
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L778
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L776
	.word	.L779
.L779:
	lhu	$2,44($17)	 #, filePtr_9->entry
	sh	$2,16($sp)	 # filePtr_9->entry, fHandle
	move	$4,$17	 #, tmp268
	addiu	$5,$sp,16	 #,,
	jal	FILEerase	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L781	 #, final,,
	move	$16,$2	 # final,

	move	$4,$17	 #, tmp268
	addiu	$5,$sp,16	 #,,
	jal	CreateFileEntry	 #
	move	$6,$0	 #,

	bne	$2,$0,.L781	 #, final,,
	move	$16,$2	 # final,

	move	$4,$17	 #, tmp268
	addiu	$5,$sp,16	 #,,
	jal	FILEopen	 #
	li	$6,119			# 0x77	 #,

	move	$16,$2	 # final,
	lhu	$2,48($17)	 # filePtr_9->attributes, filePtr_9->attributes
	andi	$2,$2,0x10	 # tmp290, filePtr_9->attributes,
	beq	$2,$0,.L782	 #, tmp290,,
	li	$2,31			# 0x1f	 # tmp291,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp291, FSerrno
	j	.L781	 #
	li	$16,255			# 0xff	 # final,

.L782:
	bne	$16,$0,.L781	 #, final,,
	move	$4,$17	 #, tmp268

	move	$5,$0	 #,
	jal	FSfseek	 #
	li	$6,2			# 0x2	 #,

	move	$16,$2	 # final,
	lb	$3,1($20)	 # tmp292,
	li	$2,43			# 0x2b	 # tmp293,
	bne	$3,$2,.L781	 #, tmp292, tmp293,
	li	$3,1			# 0x1	 # tmp296,

	lw	$2,24($17)	 # tmp295,
	ins	$2,$3,1,1	 # tmp295, tmp296,,
	j	.L781	 #
	sw	$2,24($17)	 # tmp295,

.L777:
	lw	$2,20($17)	 # filePtr_9->size, filePtr_9->size
	beq	$2,$0,.L783	 #, filePtr_9->size,,
	lhu	$2,44($17)	 #, filePtr_9->entry

	sh	$2,16($sp)	 # filePtr_9->entry, fHandle
	move	$4,$17	 #, tmp268
	addiu	$5,$sp,16	 #,,
	jal	FILEopen	 #
	li	$6,119			# 0x77	 #,

	move	$16,$2	 # final,
	lhu	$2,48($17)	 # filePtr_9->attributes, filePtr_9->attributes
	andi	$2,$2,0x10	 # tmp300, filePtr_9->attributes,
	beq	$2,$0,.L784	 #, tmp300,,
	li	$2,31			# 0x1f	 # tmp301,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp301, FSerrno
	j	.L781	 #
	li	$16,255			# 0xff	 # final,

.L784:
	bne	$16,$0,.L781	 #, final,,
	move	$4,$17	 #, tmp268

	move	$5,$0	 #,
	jal	FSfseek	 #
	li	$6,2			# 0x2	 #,

	beq	$2,$0,.L785	 #, final,,
	move	$16,$2	 # final,

	li	$2,26			# 0x1a	 # tmp302,
	j	.L786	 #
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp302, FSerrno

.L785:
	lui	$4,%hi(gDiskData)	 # tmp304,
	addiu	$4,$4,%lo(gDiskData)	 #, tmp304,
	jal	ReadFAT	 #
	lw	$5,8($17)	 #, filePtr_9->ccls

.L786:
	lb	$3,1($20)	 # tmp305,
	li	$2,43			# 0x2b	 # tmp306,
	bne	$3,$2,.L781	 #, tmp305, tmp306,
	li	$3,1			# 0x1	 # tmp309,

	lw	$2,24($17)	 # tmp308,
	ins	$2,$3,1,1	 # tmp308, tmp309,,
	j	.L781	 #
	sw	$2,24($17)	 # tmp308,

.L783:
	sh	$2,16($sp)	 # filePtr_9->entry, fHandle
	move	$4,$17	 #, tmp268
	addiu	$5,$sp,16	 #,,
	jal	FILEerase	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L781	 #, final,,
	move	$16,$2	 # final,

	move	$4,$17	 #, tmp268
	addiu	$5,$sp,16	 #,,
	jal	CreateFileEntry	 #
	move	$6,$0	 #,

	bne	$2,$0,.L781	 #, final,,
	move	$16,$2	 # final,

	move	$4,$17	 #, tmp268
	addiu	$5,$sp,16	 #,,
	jal	FILEopen	 #
	li	$6,119			# 0x77	 #,

	move	$16,$2	 # final,
	lhu	$2,48($17)	 # filePtr_9->attributes, filePtr_9->attributes
	andi	$2,$2,0x10	 # tmp312, filePtr_9->attributes,
	beq	$2,$0,.L787	 #, tmp312,,
	li	$2,31			# 0x1f	 # tmp313,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp313, FSerrno
	j	.L781	 #
	li	$16,255			# 0xff	 # final,

.L787:
	bne	$16,$0,.L781	 #, final,,
	move	$4,$17	 #, tmp268

	move	$5,$0	 #,
	jal	FSfseek	 #
	li	$6,2			# 0x2	 #,

	beq	$2,$0,.L788	 #, final,,
	move	$16,$2	 # final,

	li	$2,26			# 0x1a	 # tmp314,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp314, FSerrno
.L788:
	lb	$3,1($20)	 # tmp315,
	li	$2,43			# 0x2b	 # tmp316,
	bne	$3,$2,.L781	 #, tmp315, tmp316,
	li	$3,1			# 0x1	 # tmp319,

	lw	$2,24($17)	 # tmp318,
	ins	$2,$3,1,1	 # tmp318, tmp319,,
	j	.L781	 #
	sw	$2,24($17)	 # tmp318,

.L778:
	lhu	$2,44($17)	 #, filePtr_9->entry
	sh	$2,16($sp)	 # filePtr_9->entry, fHandle
	move	$4,$17	 #, tmp268
	addiu	$5,$sp,16	 #,,
	jal	FILEopen	 #
	li	$6,114			# 0x72	 #,

	move	$16,$2	 # final,
	lb	$3,1($20)	 # tmp321,
	li	$2,43			# 0x2b	 # tmp322,
	bne	$3,$2,.L781
	nop
	 #, tmp321, tmp322,
	lhu	$2,48($17)	 # filePtr_9->attributes, filePtr_9->attributes
	andi	$2,$2,0x10	 # tmp324, filePtr_9->attributes,
	bne	$2,$0,.L781	 #, tmp324,,
	li	$3,1			# 0x1	 # tmp327,

	lw	$2,24($17)	 # tmp326,
	ins	$2,$3,0,1	 # tmp326, tmp327,,
	j	.L781	 #
	sw	$2,24($17)	 # tmp326,

.L776:
	li	$2,31			# 0x1f	 # tmp328,
.L795:
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp328, FSerrno
	j	.L781	 #
	li	$16,255			# 0xff	 # final,

.L775:
	lui	$5,%hi(gFileTemp)	 # tmp329,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(gFileTemp)	 #, tmp329,

	li	$2,119			# 0x77	 # tmp330,
	beq	$18,$2,.L789	 #, ModeC, tmp330,
	li	$2,87			# 0x57	 # tmp331,

	beq	$18,$2,.L789	 #, ModeC, tmp331,
	li	$2,97			# 0x61	 # tmp332,

	beq	$18,$2,.L789	 #, ModeC, tmp332,
	li	$2,65			# 0x41	 # tmp333,

	bne	$18,$2,.L781	 #, ModeC, tmp333,
	li	$16,11			# 0xb	 # final,

.L789:
	sh	$0,16($sp)	 #, fHandle
	move	$4,$17	 #, tmp268
	addiu	$5,$sp,16	 #,,
	jal	CreateFileEntry	 #
	move	$6,$0	 #,

	bne	$2,$0,.L781	 #, final,,
	move	$16,$2	 # final,

	move	$4,$17	 #, tmp268
	addiu	$5,$sp,16	 #,,
	jal	FILEopen	 #
	li	$6,119			# 0x77	 #,

	move	$16,$2	 # final,
	lhu	$2,48($17)	 # filePtr_9->attributes, filePtr_9->attributes
	andi	$2,$2,0x10	 # tmp335, filePtr_9->attributes,
	beq	$2,$0,.L790	 #, tmp335,,
	li	$2,31			# 0x1f	 # tmp336,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp336, FSerrno
	j	.L781	 #
	li	$16,255			# 0xff	 # final,

.L790:
	bne	$16,$0,.L781	 #, final,,
	move	$4,$17	 #, tmp268

	move	$5,$0	 #,
	jal	FSfseek	 #
	li	$6,2			# 0x2	 #,

	beq	$2,$0,.L791	 #, final,,
	move	$16,$2	 # final,

	li	$2,26			# 0x1a	 # tmp337,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp337, FSerrno
.L791:
	lb	$3,1($20)	 # tmp338,
	li	$2,43			# 0x2b	 # tmp339,
	bne	$3,$2,.L781	 #, tmp338, tmp339,
	li	$3,1			# 0x1	 # tmp342,

	lw	$2,24($17)	 # tmp341,
	ins	$2,$3,1,1	 # tmp341, tmp342,,
	sw	$2,24($17)	 # tmp341,
.L781:
	jal	MDD_SDSPI_WriteProtectState
	nop
	 #
	beq	$2,$0,.L792
	nop
	 #,,,
	lw	$2,24($17)	 # tmp344,
	ins	$2,$0,0,1	 # tmp344,,,
	sw	$2,24($17)	 # tmp344,
.L792:
	beql	$16,$0,.L793	 #, final,,
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno

	jal	free	 #
	move	$4,$17	 #, tmp268

	move	$19,$0	 # filePtr,
.L793:
.L774:
	move	$2,$19	 #, filePtr
	lw	$31,44($sp)	 #,
	lw	$20,40($sp)	 #,
	lw	$19,36($sp)	 #,
	lw	$18,32($sp)	 #,
	lw	$17,28($sp)	 #,
	lw	$16,24($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,48	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSfopen
	.size	FSfopen, .-FSfopen
	.align	2
	.globl	chdirhelper
	.set	nomips16
	.set	nomicromips
	.ent	chdirhelper
	.type	chdirhelper, @function
chdirhelper:
	.frame	$sp,112,$31		# vars= 64, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-112	 #,,
	sw	$31,108($sp)	 #,
	sw	$22,104($sp)	 #,
	sw	$21,100($sp)	 #,
	sw	$20,96($sp)	 #,
	sw	$19,92($sp)	 #,
	sw	$18,88($sp)	 #,
	sw	$17,84($sp)	 #,
	sw	$16,80($sp)	 #,
	move	$17,$5	 # ramptr, ramptr
	li	$2,1			# 0x1	 # tmp482,
	sh	$2,16($sp)	 # tmp482, curent
	addiu	$4,$sp,20	 #,,
	jal	FileObjectCopy	 #
	lw	$5,%gp_rel(cwdptr)($28)	 #, cwdptr

	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	lbu	$16,0($17)	 # i,* ramptr
	bne	$16,$0,.L842	 #, i,,
	lui	$21,%hi(defaultString)	 # tmp579,

	li	$2,31			# 0x1f	 # tmp485,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp485, FSerrno
	j	.L798	 #
	li	$2,-1			# 0xffffffff	 # D.30061,

.L842:
	addiu	$21,$21,%lo(defaultString)	 # tmp580, tmp579,
	addiu	$19,$21,11	 # D.32427, tmp580,
	lui	$20,%hi(gFileTemp)	 # tmp582,
	addiu	$20,$20,%lo(gFileTemp)	 # tmp583, tmp582,
	lui	$22,%hi(gFileTemp+32)	 # tmp584,
	li	$2,46			# 0x2e	 # tmp486,
.L860:
	beq	$16,$2,.L800	 #, i, tmp486,
	li	$2,92			# 0x5c	 # tmp487,

	beql	$16,$2,.L801	 #, i, tmp487,
	addiu	$17,$17,1	 # temppath, temppath,

	beq	$16,$0,.L802	 #, i,,
	move	$2,$0	 # j,

	li	$2,92			# 0x5c	 # tmp488,
	bne	$16,$2,.L803	 #, i, tmp488,
	move	$3,$21	 # ivtmp.605, tmp580

	j	.L802	 #
	move	$2,$0	 # j,

.L800:
	addiu	$17,$17,1	 # temppath, temppath,
	lbu	$2,0($17)	 # i,* temppath
	li	$3,46			# 0x2e	 # tmp489,
	bne	$2,$3,.L804	 #, i, tmp489,
	lw	$3,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue

	addiu	$17,$17,1	 # temppath, temppath,
	lw	$2,72($sp)	 # D.30065, tempCWDobj2.dirclus
	bne	$2,$3,.L805	 #, D.30065, FatRootDirClusterValue,
	lb	$16,0($17)	 # D.30058,* temppath

	li	$2,31			# 0x1f	 # tmp491,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp491, FSerrno
	j	.L798	 #
	li	$2,-1			# 0xffffffff	 # D.30061,

.L805:
	sw	$2,76($sp)	 # D.30065, tempCWDobj2.dirccls
	li	$2,1			# 0x1	 # tmp492,
	sh	$2,16($sp)	 # tmp492, curent
	addiu	$4,$sp,20	 #,,
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L806
	nop
	 #, entry,,
	li	$2,27			# 0x1b	 # tmp494,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp494, FSerrno
	j	.L798	 #
	li	$2,-1			# 0xffffffff	 # D.30061,

.L806:
	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, entry

	sw	$2,72($sp)	 # D.30071, tempCWDobj2.dirclus
	bne	$2,$0,.L807	 #, D.30071,,
	sw	$2,76($sp)	 # D.30071, tempCWDobj2.dirccls

	li	$2,92			# 0x5c	 # tmp495,
	sb	$2,52($sp)	 # tmp495, tempCWDobj2.name
	addiu	$2,$sp,53	 # ivtmp.617,,
	addiu	$4,$sp,63	 # D.32455,,
	li	$3,32			# 0x20	 # tmp569,
	sb	$3,0($2)	 # tmp569, tempCWDobj2.name
.L863:
	addiu	$2,$2,1	 # ivtmp.617, ivtmp.617,
	bnel	$2,$4,.L863	 #, ivtmp.617, D.32455,
	sb	$3,0($2)	 # tmp569, tempCWDobj2.name

	lw	$2,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue.47, FatRootDirClusterValue
	sw	$2,76($sp)	 # FatRootDirClusterValue.47, tempCWDobj2.dirccls
	j	.L809	 #
	sw	$2,72($sp)	 # FatRootDirClusterValue.47, tempCWDobj2.dirclus

.L807:
	li	$2,46			# 0x2e	 # tmp499,
	sb	$2,52($sp)	 # tmp499, tempCWDobj2.name
	sb	$2,53($sp)	 # tmp499, tempCWDobj2.name
	addiu	$2,$sp,54	 # ivtmp.626,,
	addiu	$4,$sp,63	 # D.32466,,
	li	$3,32			# 0x20	 # tmp570,
	sb	$3,0($2)	 # tmp570, tempCWDobj2.name
.L864:
	addiu	$2,$2,1	 # ivtmp.626, ivtmp.626,
	bnel	$2,$4,.L864	 #, ivtmp.626, D.32466,
	sb	$3,0($2)	 # tmp570, tempCWDobj2.name

.L809:
	sh	$0,16($sp)	 #, curent
	addiu	$4,$sp,20	 #,,
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	beq	$2,$0,.L811	 #,,,
	andi	$16,$16,0x00ff	 # i, D.30058

	li	$3,92			# 0x5c	 # tmp505,
	beq	$16,$3,.L843	 #, i, tmp505,
	li	$2,92			# 0x5c	 # tmp568,

	j	.L813
	nop
	 #
.L811:
	li	$2,27			# 0x1b	 # tmp506,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp506, FSerrno
	j	.L798	 #
	li	$2,-1			# 0xffffffff	 # D.30061,

.L843:
	addiu	$17,$17,1	 # temppath, temppath,
.L865:
	lbu	$16,0($17)	 # i,* temppath
	beql	$16,$2,.L865	 #, i, tmp568,
	addiu	$17,$17,1	 # temppath, temppath,

.L813:
	bnel	$16,$0,.L860	 #, i,,
	li	$2,46			# 0x2e	 # tmp486,

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	jal	FileObjectCopy	 #
	addiu	$5,$sp,20	 #,,

	j	.L798	 #
	move	$2,$0	 # D.30061,

.L804:
	bne	$2,$0,.L815	 #, i,,
	li	$3,92			# 0x5c	 # tmp512,

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	jal	FileObjectCopy	 #
	addiu	$5,$sp,20	 #,,

	j	.L798	 #
	move	$2,$0	 # D.30061,

.L815:
	bne	$2,$3,.L816	 #, i, tmp512,
	li	$2,31			# 0x1f	 # tmp516,

	li	$2,92			# 0x5c	 # tmp571,
	addiu	$17,$17,1	 # temppath, temppath,
.L866:
	lbu	$16,0($17)	 # i,* temppath
	beql	$16,$2,.L866	 #, i, tmp571,
	addiu	$17,$17,1	 # temppath, temppath,

	bnel	$16,$0,.L860	 #, i,,
	li	$2,46			# 0x2e	 # tmp486,

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	jal	FileObjectCopy	 #
	addiu	$5,$sp,20	 #,,

	j	.L798	 #
	move	$2,$0	 # D.30061,

.L816:
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp516, FSerrno
	j	.L798	 #
	li	$2,-1			# 0xffffffff	 # D.30061,

.L801:
	lbu	$16,0($17)	 # i,* temppath
	li	$2,92			# 0x5c	 # tmp517,
	bne	$16,$2,.L818	 #, i, tmp517,
	li	$2,31			# 0x1f	 # tmp518,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp518, FSerrno
	j	.L798	 #
	li	$2,-1			# 0xffffffff	 # D.30061,

.L818:
	bne	$16,$0,.L819	 #, i,,
	lw	$2,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue.47, FatRootDirClusterValue

	lw	$4,%gp_rel(cwdptr)($28)	 # cwdptr.46, cwdptr
	sw	$2,52($4)	 # FatRootDirClusterValue.47, cwdptr.46_73->dirclus
	sw	$2,56($4)	 # FatRootDirClusterValue.47, cwdptr.46_73->dirccls
	li	$2,92			# 0x5c	 # tmp519,
	sb	$2,32($4)	 # tmp519, cwdptr.46_73->name
	move	$2,$4	 # ivtmp.570, cwdptr.46
	addiu	$4,$4,10	 # D.32397, cwdptr.46,
	li	$3,32			# 0x20	 # tmp567,
	sb	$3,33($2)	 # tmp567, cwdptr.46->name
.L867:
	addiu	$2,$2,1	 # ivtmp.570, ivtmp.570,
	bnel	$2,$4,.L867	 #, ivtmp.570, D.32397,
	sb	$3,33($2)	 # tmp567, cwdptr.46->name

	j	.L798	 #
	move	$2,$0	 # D.30061,

.L819:
	sw	$2,72($sp)	 # FatRootDirClusterValue.47, tempCWDobj2.dirclus
	sw	$2,76($sp)	 # FatRootDirClusterValue.47, tempCWDobj2.dirccls
	li	$2,92			# 0x5c	 # tmp521,
	sb	$2,52($sp)	 # tmp521, tempCWDobj2.name
	addiu	$2,$sp,53	 # ivtmp.639,,
	addiu	$4,$sp,63	 # D.32481,,
	li	$3,32			# 0x20	 # tmp572,
	sb	$3,0($2)	 # tmp572, tempCWDobj2.name
.L868:
	addiu	$2,$2,1	 # ivtmp.639, ivtmp.639,
	bnel	$2,$4,.L868	 #, ivtmp.639, D.32481,
	sb	$3,0($2)	 # tmp572, tempCWDobj2.name

	j	.L860	 #
	li	$2,46			# 0x2e	 # tmp486,

.L803:
	move	$2,$0	 # j,
	li	$4,92			# 0x5c	 # tmp575,
	li	$5,12			# 0xc	 # tmp576,
.L823:
	sb	$16,0($3)	 # i, defaultString
	addiu	$2,$2,1	 # tmp526, j,
	addiu	$17,$17,1	 # temppath, temppath,
	lbu	$16,0($17)	 # i,* temppath
	beq	$16,$0,.L822	 #, i,,
	andi	$2,$2,0x00ff	 # j, tmp526

	beql	$16,$4,.L869	 #, i, tmp575,
	li	$3,12			# 0xc	 # tmp529,

	bne	$2,$5,.L823	 #, j, tmp576,
	addiu	$3,$3,1	 # ivtmp.605, ivtmp.605,

	j	.L861	 #
	li	$2,12			# 0xc	 # j,

.L822:
	li	$3,12			# 0xc	 # tmp529,
.L869:
	bne	$2,$3,.L870	 #, j, tmp529,
	addu	$2,$2,$21	 # tmp533, j, tmp580

	li	$2,12			# 0xc	 # j,
.L861:
	beq	$16,$0,.L802	 #, i,,
	li	$3,92			# 0x5c	 # tmp530,

	beq	$16,$3,.L870	 #, i, tmp530,
	addu	$2,$2,$21	 # tmp533, j, tmp580

	li	$2,92			# 0x5c	 # tmp574,
	addiu	$17,$17,1	 # temppath, temppath,
.L871:
	lbu	$16,0($17)	 # i,* temppath
	beql	$16,$0,.L839	 #, i,,
	li	$2,12			# 0xc	 # j,

	bnel	$16,$2,.L871	 #, i, tmp574,
	addiu	$17,$17,1	 # temppath, temppath,

	li	$2,12			# 0xc	 # j,
.L839:
.L802:
	addu	$2,$2,$21	 # tmp533, j, tmp580
.L870:
	sb	$0,0($2)	 #, defaultString
	move	$4,$21	 #, tmp580
	jal	FormatDirName	 #
	move	$5,$0	 #,

	beq	$2,$0,.L840	 #,,,
	move	$2,$21	 # ivtmp.590, tmp580

	addiu	$18,$sp,52	 # ivtmp.592,,
	move	$3,$18	 # ivtmp.592, ivtmp.592
.L826:
	lbu	$4,0($2)	 #, defaultString
	sb	$4,0($3)	 # tmp541, tempCWDobj2.name
	addiu	$2,$2,1	 # ivtmp.590, ivtmp.590,
	bne	$2,$19,.L826	 #, ivtmp.590, D.32427,
	addiu	$3,$3,1	 # ivtmp.592, ivtmp.592,

	move	$4,$20	 #, tmp583
	jal	FileObjectCopy	 #
	addiu	$5,$sp,20	 #,,

	move	$4,$20	 #, tmp583
	addiu	$5,$sp,20	 #,,
	li	$6,1			# 0x1	 #,
	jal	FILEfind	 #
	move	$7,$0	 #,

	beql	$2,$0,.L827	 #,,,
	lhu	$3,48($20)	 # gFileTemp.attributes, gFileTemp.attributes

	li	$2,12			# 0xc	 # tmp546,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp546, FSerrno
	j	.L798	 #
	li	$2,-1			# 0xffffffff	 # D.30061,

.L827:
	li	$2,16			# 0x10	 # tmp550,
	beql	$3,$2,.L828	 #, gFileTemp.attributes, tmp550,
	addiu	$2,$22,%lo(gFileTemp+32)	 # ivtmp.580, tmp584,

	li	$2,31			# 0x1f	 # tmp551,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp551, FSerrno
	j	.L798	 #
	li	$2,-1			# 0xffffffff	 # D.30061,

.L828:
	addiu	$4,$20,43	 # D.32414, tmp583,
.L829:
	lbu	$3,0($2)	 #, gFileTemp.name
	sb	$3,0($18)	 # tmp555, tempCWDobj2.name
	addiu	$2,$2,1	 # ivtmp.580, ivtmp.580,
	bne	$2,$4,.L829	 #, ivtmp.580, D.32414,
	addiu	$18,$18,1	 # ivtmp.592, ivtmp.592,

	lw	$2,4($20)	 # D.30111, gFileTemp.cluster
	sw	$2,72($sp)	 # D.30111, tempCWDobj2.dirclus
	bne	$16,$0,.L830	 #, i,,
	sw	$2,76($sp)	 # D.30111, tempCWDobj2.dirccls

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	jal	FileObjectCopy	 #
	addiu	$5,$sp,20	 #,,

	j	.L798	 #
	move	$2,$0	 # D.30061,

.L832:
	lbu	$16,0($17)	 # i,* temppath
	beq	$16,$0,.L862	 #, i,,
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

.L859:
	beql	$16,$2,.L832	 #, i, tmp573,
	addiu	$17,$17,1	 # temppath, temppath,

	j	.L860	 #
	li	$2,46			# 0x2e	 # tmp486,

.L831:
.L862:
	jal	FileObjectCopy	 #
	addiu	$5,$sp,20	 #,,

	j	.L798	 #
	move	$2,$0	 # D.30061,

.L830:
	li	$2,92			# 0x5c	 # tmp563,
	bne	$16,$2,.L860	 #, i, tmp563,
	li	$2,46			# 0x2e	 # tmp486,

	addiu	$17,$17,1	 # temppath, temppath,
	lbu	$16,0($17)	 # i,* temppath
	bnel	$16,$0,.L859	 #, i,,
	li	$2,92			# 0x5c	 # tmp573,

	j	.L831	 #
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

.L840:
	li	$2,-1			# 0xffffffff	 # D.30061,
.L798:
	lw	$31,108($sp)	 #,
	lw	$22,104($sp)	 #,
	lw	$21,100($sp)	 #,
	lw	$20,96($sp)	 #,
	lw	$19,92($sp)	 #,
	lw	$18,88($sp)	 #,
	lw	$17,84($sp)	 #,
	lw	$16,80($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,112	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	chdirhelper
	.size	chdirhelper, .-chdirhelper
	.align	2
	.globl	FSchdir
	.set	nomips16
	.set	nomicromips
	.ent	FSchdir
	.type	FSchdir, @function
FSchdir:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	move	$5,$4	 # path, path
	move	$4,$0	 #,
	jal	chdirhelper	 #
	move	$6,$0	 #,

	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSchdir
	.size	FSchdir, .-FSchdir
	.align	2
	.globl	GetPreviousEntry
	.set	nomips16
	.set	nomicromips
	.ent	GetPreviousEntry
	.type	GetPreviousEntry, @function
GetPreviousEntry:
	.frame	$sp,56,$31		# vars= 8, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56	 #,,
	sw	$31,52($sp)	 #,
	sw	$21,48($sp)	 #,
	sw	$20,44($sp)	 #,
	sw	$19,40($sp)	 #,
	sw	$18,36($sp)	 #,
	sw	$17,32($sp)	 #,
	sw	$16,28($sp)	 #,
	move	$17,$4	 # fo, fo
	li	$2,1			# 0x1	 # tmp283,
	sh	$2,16($sp)	 # tmp283, fHandle
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	beq	$2,$0,.L874	 #, dirptr,,
	li	$3,255			# 0xff	 # D.29950,

	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, dirptr

	move	$18,$2	 # TempClusterCalc.25,
	bne	$2,$0,.L875	 #, TempClusterCalc.25,,
	sw	$2,%gp_rel(TempClusterCalc)($28)	 # TempClusterCalc.25, TempClusterCalc

	li	$2,92			# 0x5c	 # tmp284,
	sb	$2,32($17)	 # tmp284, fo_5(D)->name
	move	$2,$17	 # ivtmp.654, fo
	addiu	$4,$17,11	 # D.32498, fo,
	li	$3,32			# 0x20	 # tmp301,
	sb	$3,32($2)	 # tmp301, fo->name
.L888:
	addiu	$2,$2,1	 # ivtmp.654, ivtmp.654,
	bnel	$2,$4,.L888	 #, ivtmp.654, D.32498,
	sb	$3,32($2)	 # tmp301, fo->name

	lw	$2,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue.27, FatRootDirClusterValue
	sw	$2,52($17)	 # FatRootDirClusterValue.27, fo_5(D)->dirclus
	sw	$2,56($17)	 # FatRootDirClusterValue.27, fo_5(D)->dirccls
	j	.L874	 #
	move	$3,$0	 # D.29950,

.L875:
	sw	$2,52($17)	 # TempClusterCalc.25, fo_5(D)->dirclus
	sw	$2,56($17)	 # TempClusterCalc.25, fo_5(D)->dirccls
	move	$4,$17	 #, fo
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	beq	$2,$0,.L874	 #, dirptr,,
	li	$3,255			# 0xff	 # D.29950,

	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, dirptr

	bne	$2,$0,.L877	 #, TempClusterCalc.28,,
	sw	$2,%gp_rel(TempClusterCalc)($28)	 # TempClusterCalc.28, TempClusterCalc

	lw	$2,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue
	j	.L878	 #
	sw	$2,52($17)	 # FatRootDirClusterValue, fo_5(D)->dirclus

.L877:
	sw	$2,52($17)	 # TempClusterCalc.28, fo_5(D)->dirclus
.L878:
	lw	$2,52($17)	 # fo_5(D)->dirclus, fo_5(D)->dirclus
	sw	$2,56($17)	 # fo_5(D)->dirclus, fo_5(D)->dirccls
	sh	$0,16($sp)	 #, fHandle
	move	$4,$17	 #, fo
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	move	$16,$2	 # dirptr,
	beq	$2,$0,.L874	 #, dirptr,,
	li	$3,255			# 0xff	 # D.29950,

	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, dirptr

	sw	$2,%gp_rel(TempClusterCalc)($28)	 #, TempClusterCalc
	li	$19,-27			# 0xffffffe5	 # tmp302,
	li	$20,8			# 0x8	 # tmp303,
	j	.L879	 #
	li	$21,15			# 0xf	 # tmp304,

.L889:
	addiu	$5,$sp,16	 #,,
.L890:
	jal	Cache_File_Entry	 #
	move	$6,$0	 #,

	beq	$2,$0,.L885	 #, dirptr,,
	move	$16,$2	 # dirptr,

	lhu	$2,16($sp)	 #, fHandle
	addiu	$2,$2,1	 # tmp289, fHandle,
	sh	$2,16($sp)	 # tmp289, fHandle
	jal	GetFullClusterNumber	 #
	move	$4,$16	 #, dirptr

	sw	$2,%gp_rel(TempClusterCalc)($28)	 #, TempClusterCalc
.L879:
	lw	$2,%gp_rel(TempClusterCalc)($28)	 # TempClusterCalc, TempClusterCalc
	bne	$18,$2,.L889	 #, TempClusterCalc.25, TempClusterCalc,
	move	$4,$17	 #, fo

	lb	$2,0($16)	 # dirptr_3->DIR_Name, dirptr_3->DIR_Name
	beq	$2,$19,.L889
	nop
	 #, dirptr_3->DIR_Name, tmp302,
	lbu	$2,11($16)	 # D.29976, dirptr_3->DIR_Attr
	beq	$2,$20,.L890	 #, D.29976, tmp303,
	addiu	$5,$sp,16	 #,,

	beq	$2,$21,.L890
	nop
	 #, D.29976, tmp304,
	move	$2,$16	 # ivtmp.661, dirptr
	move	$3,$17	 # ivtmp.663, fo
	addiu	$16,$16,11	 # D.32511, dirptr,
.L881:
	lbu	$4,0($2)	 #, dirptr->DIR_Name
	sb	$4,32($3)	 # tmp295, fo->name
	addiu	$2,$2,1	 # ivtmp.661, ivtmp.661,
	bne	$2,$16,.L881	 #, ivtmp.661, D.32511,
	addiu	$3,$3,1	 # ivtmp.663, ivtmp.663,

	sw	$18,52($17)	 # TempClusterCalc.25, fo_5(D)->dirclus
	sw	$18,56($17)	 # TempClusterCalc.25, fo_5(D)->dirccls
	j	.L874	 #
	move	$3,$0	 # D.29950,

.L885:
	li	$3,255			# 0xff	 # D.29950,
.L874:
	move	$2,$3	 #, D.29950
	lw	$31,52($sp)	 #,
	lw	$21,48($sp)	 #,
	lw	$20,44($sp)	 #,
	lw	$19,40($sp)	 #,
	lw	$18,36($sp)	 #,
	lw	$17,32($sp)	 #,
	lw	$16,28($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,56	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	GetPreviousEntry
	.size	GetPreviousEntry, .-GetPreviousEntry
	.align	2
	.globl	FSgetcwd
	.set	nomips16
	.set	nomicromips
	.ent	FSgetcwd
	.type	FSgetcwd, @function
FSgetcwd:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64	 #,,
	sw	$31,60($sp)	 #,
	sw	$fp,56($sp)	 #,
	sw	$23,52($sp)	 #,
	sw	$22,48($sp)	 #,
	sw	$21,44($sp)	 #,
	sw	$20,40($sp)	 #,
	sw	$19,36($sp)	 #,
	sw	$18,32($sp)	 #,
	sw	$17,28($sp)	 #,
	beq	$4,$0,.L892	 #, path,,
	sw	$16,24($sp)	 #,

	bne	$5,$0,.L893	 #, numchars,,
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno

	li	$2,31			# 0x1f	 # tmp365,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp365, FSerrno
	j	.L894	 #
	move	$18,$0	 # returnPointer,

.L893:
	seb	$19,$5	 # totalchars, numchars
	move	$18,$4	 # returnPointer, path
.L925:
	lui	$16,%hi(gFileTemp)	 # tmp367,
	addiu	$4,$16,%lo(gFileTemp)	 #, tmp367,
	jal	FileObjectCopy	 #
	lw	$5,%gp_rel(cwdptr)($28)	 #, cwdptr

	addiu	$16,$16,%lo(gFileTemp)	 # tmp369, tmp367,
	lhu	$3,32($16)	 # tmp370,
	li	$2,11822			# 0x2e2e	 # tmp372,
	bne	$3,$2,.L945	 #, tmp370, tmp372,
	lui	$2,%hi(gFileTemp+32)	 # tmp413,

	move	$4,$16	 # tmp374, tmp369
	lw	$17,52($16)	 # curclus, gFileTemp.dirclus
	li	$2,1			# 0x1	 # tmp375,
	sh	$2,16($sp)	 # tmp375, fHandle
	sw	$17,56($16)	 # curclus, gFileTemp.dirccls
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L896
	nop
	 #, entry,,
	li	$2,27			# 0x1b	 # tmp379,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp379, FSerrno
	j	.L894	 #
	move	$18,$0	 # returnPointer,

.L896:
	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, entry

	bne	$2,$0,.L897	 #, TempClusterCalc.35,,
	sw	$2,%gp_rel(TempClusterCalc)($28)	 # TempClusterCalc.35, TempClusterCalc

	lw	$3,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue
	lui	$2,%hi(gFileTemp+52)	 # tmp381,
	j	.L898	 #
	sw	$3,%lo(gFileTemp+52)($2)	 # FatRootDirClusterValue, gFileTemp.dirclus

.L897:
	lui	$3,%hi(gFileTemp+52)	 # tmp384,
	sw	$2,%lo(gFileTemp+52)($3)	 # TempClusterCalc.35, gFileTemp.dirclus
.L898:
	lui	$4,%hi(gFileTemp)	 # tmp385,
	addiu	$4,$4,%lo(gFileTemp)	 # tmp386, tmp385,
	lw	$2,52($4)	 # gFileTemp.dirclus, gFileTemp.dirclus
	sw	$2,56($4)	 # gFileTemp.dirclus, gFileTemp.dirccls
	sh	$0,16($sp)	 #, fHandle
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L899	 #, entry,,
	move	$16,$2	 # entry,

	li	$2,27			# 0x1b	 # tmp391,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp391, FSerrno
	j	.L894	 #
	move	$18,$0	 # returnPointer,

.L899:
	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, entry

	sw	$2,%gp_rel(TempClusterCalc)($28)	 #, TempClusterCalc
	li	$21,-27			# 0xffffffe5	 # tmp506,
	li	$22,8			# 0x8	 # tmp507,
	lui	$20,%hi(gFileTemp)	 # tmp508,
	j	.L900	 #
	addiu	$20,$20,%lo(gFileTemp)	 # tmp509, tmp508,

.L902:
	lhu	$2,16($sp)	 #, fHandle
.L946:
	addiu	$2,$2,1	 # tmp393, fHandle,
	sh	$2,16($sp)	 # tmp393, fHandle
	move	$4,$20	 #, tmp509
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	move	$6,$0	 #,

	bne	$2,$0,.L901	 #, entry,,
	move	$16,$2	 # entry,

	li	$2,27			# 0x1b	 # tmp395,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp395, FSerrno
	j	.L894	 #
	move	$18,$0	 # returnPointer,

.L901:
	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, entry

	sw	$2,%gp_rel(TempClusterCalc)($28)	 #, TempClusterCalc
.L900:
	lw	$2,%gp_rel(TempClusterCalc)($28)	 # TempClusterCalc, TempClusterCalc
	bne	$2,$17,.L946	 #, TempClusterCalc, curclus,
	lhu	$2,16($sp)	 #, fHandle

	lb	$2,0($16)	 # entry_23->DIR_Name, entry_23->DIR_Name
	beq	$2,$21,.L946	 #, entry_23->DIR_Name, tmp506,
	lhu	$2,16($sp)	 #, fHandle

	lbu	$2,11($16)	 # D.30018, entry_23->DIR_Attr
	beq	$2,$22,.L902	 #, D.30018, tmp507,
	li	$3,15			# 0xf	 # tmp400,

	beq	$2,$3,.L946	 #, D.30018, tmp400,
	lhu	$2,16($sp)	 #, fHandle

	lw	$7,%gp_rel(cwdptr)($28)	 # cwdptr.34, cwdptr
	move	$2,$0	 # i,
	lui	$6,%hi(gFileTemp)	 # tmp503,
	addiu	$6,$6,%lo(gFileTemp)	 # tmp504, tmp503,
	li	$5,11			# 0xb	 # tmp505,
.L903:
	addu	$3,$6,$2	 # tmp401, tmp504, i
	lbu	$4,0($16)	 #, entry->DIR_Name
	sb	$4,32($3)	 # tmp404, gFileTemp.name
	addu	$3,$7,$2	 # tmp405, cwdptr.34, i
	lbu	$4,0($16)	 #, entry->DIR_Name
	sb	$4,32($3)	 # tmp406, cwdptr.34->name
	addiu	$2,$2,1	 # i, i,
	bne	$2,$5,.L903	 #, i, tmp505,
	addiu	$16,$16,1	 # ivtmp.726, ivtmp.726,

	lui	$2,%hi(gFileTemp)	 # tmp408,
	addiu	$2,$2,%lo(gFileTemp)	 # tmp409, tmp408,
	sw	$17,52($2)	 # curclus, gFileTemp.dirclus
	sw	$17,56($2)	 # curclus, gFileTemp.dirccls
	lui	$2,%hi(gFileTemp+32)	 # tmp413,
.L945:
	lb	$3,%lo(gFileTemp+32)($2)	 # gFileTemp.name, gFileTemp.name
	li	$2,92			# 0x5c	 # tmp415,
	bne	$3,$2,.L926	 #, gFileTemp.name, tmp415,
	move	$16,$0	 # index,

	sb	$2,0($18)	 # tmp416,* returnPointer
	j	.L894	 #
	sb	$0,1($18)	 #,

.L935:
	addiu	$2,$2,-1	 # tmp417, j,
.L947:
	seb	$2,$2	 # j, tmp417
	addu	$3,$2,$4	 # tmp419, j, tmp496
	lb	$3,32($3)	 # tmp421, gFileTemp.name
	beql	$3,$17,.L947	 #, tmp421, tmp499,
	addiu	$2,$2,-1	 # tmp417, j,

	slt	$3,$2,8	 # tmp423, j,
	bne	$3,$0,.L910	 #, tmp423,,
	addiu	$5,$21,%lo(gFileTemp)	 # tmp494, tmp498,

.L934:
	addu	$3,$18,$16	 # tmp424, returnPointer, index
.L948:
	addu	$4,$2,$5	 # tmp426, j, tmp494
	lbu	$4,32($4)	 #, gFileTemp.name
	sb	$4,0($3)	 # tmp428,
	addiu	$16,$16,1	 # index, index,
	addiu	$2,$2,-1	 # tmp429, j,
	bne	$19,$16,.L907	 #, totalchars, index,
	seb	$2,$2	 # j, tmp429

	move	$16,$0	 # index,
	li	$22,1			# 0x1	 # bufferOverflow,
.L907:
	slt	$3,$2,8	 # tmp430, j,
	beq	$3,$0,.L948	 #, tmp430,,
	addu	$3,$18,$16	 # tmp424, returnPointer, index

	addiu	$16,$16,1	 # index, index,
	bne	$16,$23,.L909	 #, index, D.30031,
	sb	$fp,0($3)	 # tmp501,

	move	$16,$0	 # index,
	li	$22,1			# 0x1	 # bufferOverflow,
.L909:
	addiu	$3,$21,%lo(gFileTemp)	 # tmp435, tmp498,
	addu	$3,$2,$3	 # tmp434, j, tmp435
	lb	$3,32($3)	 # tmp436, gFileTemp.name
	bne	$3,$17,.L910
	nop
	 #, tmp436, tmp499,
	addiu	$4,$21,%lo(gFileTemp)	 # tmp491, tmp498,
	addiu	$2,$2,-1	 # tmp438, j,
.L949:
	seb	$2,$2	 # j, tmp438
	addu	$3,$2,$4	 # tmp440, j, tmp491
	lb	$3,32($3)	 # tmp442, gFileTemp.name
	beql	$3,$17,.L949	 #, tmp442, tmp499,
	addiu	$2,$2,-1	 # tmp438, j,

.L910:
	bltz	$2,.L912	 #, j,
	addiu	$5,$21,%lo(gFileTemp)	 # tmp488, tmp498,

	addu	$3,$18,$16	 # tmp444, returnPointer, index
.L950:
	addu	$4,$2,$5	 # tmp446, j, tmp488
	lbu	$4,32($4)	 #, gFileTemp.name
	sb	$4,0($3)	 # tmp448,
	addiu	$16,$16,1	 # index, index,
	addiu	$2,$2,-1	 # tmp449, j,
	bne	$19,$16,.L913	 #, totalchars, index,
	seb	$2,$2	 # j, tmp449

	move	$16,$0	 # index,
	li	$22,1			# 0x1	 # bufferOverflow,
.L913:
	bne	$2,$20,.L950	 #, j, tmp502,
	addu	$3,$18,$16	 # tmp444, returnPointer, index

.L912:
	addu	$2,$18,$16	 # tmp451, returnPointer, index
	li	$3,92			# 0x5c	 # tmp452,
	addiu	$16,$16,1	 # index, index,
	bne	$19,$16,.L915	 #, totalchars, index,
	sb	$3,0($2)	 # tmp452,

	move	$16,$0	 # index,
	li	$22,1			# 0x1	 # bufferOverflow,
.L915:
	addiu	$4,$21,%lo(gFileTemp)	 # tmp454, tmp498,
	lw	$2,52($4)	 # gFileTemp.dirclus, gFileTemp.dirclus
	jal	GetPreviousEntry	 #
	sw	$2,56($4)	 # gFileTemp.dirclus, gFileTemp.dirccls

	beq	$2,$0,.L951	 #,,,
	addiu	$2,$21,%lo(gFileTemp)	 # tmp462, tmp498,

	li	$2,8			# 0x8	 # tmp460,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp460, FSerrno
	j	.L894	 #
	move	$18,$0	 # returnPointer,

.L926:
	move	$22,$0	 # bufferOverflow,
	lui	$21,%hi(gFileTemp)	 # tmp498,
	li	$17,32			# 0x20	 # tmp499,
	move	$23,$19	 # D.30031, totalchars
	li	$fp,46			# 0x2e	 # tmp501,
	li	$20,-1			# 0xffffffff	 # tmp502,
	addiu	$2,$21,%lo(gFileTemp)	 # tmp462, tmp498,
.L951:
	lw	$3,52($2)	 # gFileTemp.dirclus, gFileTemp.dirclus
	lw	$2,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue
	beq	$3,$2,.L916	 #, gFileTemp.dirclus, FatRootDirClusterValue,
	addiu	$2,$21,%lo(gFileTemp)	 # tmp466, tmp498,

	lb	$3,42($2)	 # gFileTemp.name, gFileTemp.name
	li	$2,10			# 0xa	 # j,
	beq	$3,$17,.L935	 #, gFileTemp.name, tmp499,
	addiu	$4,$21,%lo(gFileTemp)	 # tmp496, tmp498,

	j	.L934	 #
	addiu	$5,$21,%lo(gFileTemp)	 # tmp494, tmp498,

.L916:
	beq	$22,$0,.L918	 #, bufferOverflow,,
	addiu	$2,$16,-1	 # index, index,

	blez	$2,.L919	 #, index,
	andi	$8,$2,0xffff	 # tempindex, index

	move	$3,$18	 # ivtmp.685, returnPointer
	addu	$2,$18,$16	 # ivtmp.688, returnPointer, index
	addiu	$7,$16,-2	 # tmp469, index,
	srl	$7,$7,1	 # tmp470, tmp469,
	addiu	$7,$7,1	 # D.32570, tmp470,
	move	$4,$0	 # i,
.L920:
	lb	$5,0($3)	 # aChar,* ivtmp.685
	lbu	$6,-1($2)	 #,
	sb	$6,0($3)	 # tmp471,* ivtmp.685
	sb	$5,-1($2)	 # aChar,
	addiu	$4,$4,1	 # i, i,
	addiu	$3,$3,1	 # ivtmp.685, ivtmp.685,
	bne	$4,$7,.L920	 #, i, D.32570,
	addiu	$2,$2,-1	 # ivtmp.688, ivtmp.688,

.L919:
	addiu	$19,$19,-1	 # tmp472, totalchars,
	addu	$19,$18,$19	 # bufferEnd, returnPointer, tmp472
	subu	$2,$19,$18	 # index, bufferEnd, returnPointer
	addiu	$5,$2,-1	 # i, index,
	subu	$3,$5,$8	 # tmp473, i, tempindex
	blez	$3,.L921	 #, tmp473,
	addu	$2,$18,$2	 # ivtmp.675, returnPointer, index

	addiu	$4,$16,-1	 # tmp474, index,
	andi	$4,$4,0xffff	 # tmp475, tmp474
	addiu	$4,$4,1	 # D.32531, tmp475,
	addu	$3,$18,$4	 # ivtmp.673, returnPointer, D.32531
	nor	$4,$0,$4	 # tmp476, D.32531
	addu	$4,$5,$4	 # ivtmp.677, i, tmp476
.L922:
	lb	$5,0($3)	 # aChar,* ivtmp.673
	lbu	$6,0($2)	 #,* ivtmp.675
	sb	$6,0($3)	 # tmp477,* ivtmp.673
	sb	$5,0($2)	 # aChar,* ivtmp.675
	addiu	$3,$3,1	 # ivtmp.673, ivtmp.673,
	addiu	$4,$4,-2	 # ivtmp.677, ivtmp.677,
	addiu	$5,$4,2	 # tmp478, ivtmp.677,
	bgtz	$5,.L922	 #, tmp478,
	addiu	$2,$2,-1	 # ivtmp.675, ivtmp.675,

.L921:
	j	.L894	 #
	sb	$0,0($19)	 #,* bufferEnd

.L918:
	blez	$2,.L923	 #, index,
	andi	$8,$2,0xffff	 # tempindex, index

	move	$3,$18	 # ivtmp.697, returnPointer
	addu	$2,$18,$16	 # ivtmp.700, returnPointer, index
	addiu	$7,$16,-2	 # tmp479, index,
	srl	$7,$7,1	 # tmp480, tmp479,
	addiu	$7,$7,1	 # D.32593, tmp480,
	move	$4,$0	 # i,
.L924:
	lb	$5,0($3)	 # aChar,* ivtmp.697
	lbu	$6,-1($2)	 #,
	sb	$6,0($3)	 # tmp481,* ivtmp.697
	sb	$5,-1($2)	 # aChar,
	addiu	$4,$4,1	 # i, i,
	addiu	$3,$3,1	 # ivtmp.697, ivtmp.697,
	bne	$4,$7,.L924	 #, i, D.32593,
	addiu	$2,$2,-1	 # ivtmp.700, ivtmp.700,

.L923:
	addu	$2,$18,$8	 # tmp482, returnPointer, tempindex
	sb	$0,1($2)	 #,
.L894:
	move	$2,$18	 #, returnPointer
	lw	$31,60($sp)	 #,
	lw	$fp,56($sp)	 #,
	lw	$23,52($sp)	 #,
	lw	$22,48($sp)	 #,
	lw	$21,44($sp)	 #,
	lw	$20,40($sp)	 #,
	lw	$19,36($sp)	 #,
	lw	$18,32($sp)	 #,
	lw	$17,28($sp)	 #,
	lw	$16,24($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,64	 #,,

.L892:
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	li	$19,10			# 0xa	 # totalchars,
	lui	$18,%hi(defaultArray)	 # tmp364,
	j	.L925	 #
	addiu	$18,$18,%lo(defaultArray)	 # returnPointer, tmp364,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSgetcwd
	.size	FSgetcwd, .-FSgetcwd
	.align	2
	.globl	writeDotEntries
	.set	nomips16
	.set	nomicromips
	.ent	writeDotEntries
	.type	writeDotEntries, @function
writeDotEntries:
	.frame	$sp,64,$31		# vars= 32, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64	 #,,
	sw	$31,60($sp)	 #,
	sw	$17,56($sp)	 #,
	sw	$16,52($sp)	 #,
	move	$16,$4	 # disk, disk
	move	$17,$5	 # dotAddress, dotAddress
	sw	$0,%gp_rel(gBufferOwner)($28)	 #, gBufferOwner
	lwl	$4,3($4)	 # tmp287,
	lwr	$4,0($16)	 #,* disk
	move	$5,$0	 #,
	jal	memset	 #
	li	$6,512			# 0x200	 #,

	li	$2,46			# 0x2e	 # tmp292,
	sb	$2,16($sp)	 # tmp292, entry.DIR_Name
	addiu	$2,$sp,17	 # ivtmp.757,,
	addiu	$4,$sp,27	 # D.32660,,
	li	$3,32			# 0x20	 # tmp318,
	sb	$3,0($2)	 # tmp318, entry.DIR_Name
.L961:
	addiu	$2,$2,1	 # ivtmp.757, ivtmp.757,
	bnel	$2,$4,.L961	 #, ivtmp.757, D.32660,
	sb	$3,0($2)	 # tmp318, entry.DIR_Name

	move	$2,$0	 # ivtmp.744,
	li	$5,32			# 0x20	 # tmp317,
.L954:
	lwl	$3,3($16)	 # tmp295,
	lwr	$3,0($16)	 # tmp294,* disk
	addu	$3,$3,$2	 # tmp296, tmp294, ivtmp.744
	addiu	$6,$sp,16	 #,,
	addu	$4,$6,$2	 # tmp297,, ivtmp.744
	lbu	$4,0($4)	 #, entry.DIR_Name
	addiu	$2,$2,1	 # ivtmp.744, ivtmp.744,
	bne	$2,$5,.L954	 #, ivtmp.744, tmp317,
	sb	$4,0($3)	 # tmp298,

	li	$2,46			# 0x2e	 # tmp300,
	sb	$2,17($sp)	 # tmp300, entry.DIR_Name
	li	$2,32			# 0x20	 # ivtmp.741,
	li	$5,64			# 0x40	 # tmp315,
.L955:
	lwl	$3,3($16)	 # tmp302,
	lwr	$3,0($16)	 # tmp301,* disk
	addu	$3,$3,$2	 # tmp303, tmp301, ivtmp.741
	addiu	$6,$sp,16	 #,,
	addu	$4,$6,$2	 # tmp304,, ivtmp.741
	lbu	$4,-32($4)	 #, entry.DIR_Name
	addiu	$2,$2,1	 # ivtmp.741, ivtmp.741,
	bne	$2,$5,.L955	 #, ivtmp.741, tmp315,
	sb	$4,0($3)	 # tmp305,

	move	$4,$16	 #, disk
	jal	Cluster2Sector	 #
	move	$5,$17	 #, dotAddress

	lwl	$5,3($16)	 # tmp308,
	move	$4,$2	 #,
	lwr	$5,0($16)	 #,* disk
	jal	MDD_SDSPI_SectorWrite	 #
	move	$6,$0	 #,

	bne	$2,$0,.L956	 #,,,
	li	$3,1			# 0x1	 # D.29837,

	li	$2,9			# 0x9	 # tmp310,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp310, FSerrno
	move	$3,$0	 # D.29837,
.L956:
	move	$2,$3	 #, D.29837
	lw	$31,60($sp)	 #,
	lw	$17,56($sp)	 #,
	lw	$16,52($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,64	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	writeDotEntries
	.size	writeDotEntries, .-writeDotEntries
	.align	2
	.globl	CreateDIR
	.set	nomips16
	.set	nomicromips
	.ent	CreateDIR
	.type	CreateDIR, @function
CreateDIR:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32	 #,,
	sw	$31,28($sp)	 #,
	sw	$16,24($sp)	 #,
	sh	$0,16($sp)	 #, handle
	move	$2,$4	 # ivtmp.779, path
	lui	$16,%hi(defaultString)	 # tmp315,
	addiu	$16,$16,%lo(defaultString)	 # ivtmp.780, tmp315,
	addiu	$4,$4,12	 # D.32694, path,
	move	$3,$16	 # ivtmp.780, ivtmp.780
.L963:
	lbu	$5,0($2)	 #,* ivtmp.779
	sb	$5,0($3)	 # tmp316, defaultString
	addiu	$2,$2,1	 # ivtmp.779, ivtmp.779,
	bne	$2,$4,.L963	 #, ivtmp.779, D.32694,
	addiu	$3,$3,1	 # ivtmp.780, ivtmp.780,

	lui	$4,%hi(defaultString)	 # tmp317,
	addiu	$4,$4,%lo(defaultString)	 #, tmp317,
	jal	FormatDirName	 #
	move	$5,$0	 #,

	bne	$2,$0,.L964	 #,,,
	lui	$2,%hi(gFileTemp+32)	 # tmp320,

	li	$2,18			# 0x12	 # tmp319,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp319, FSerrno
	j	.L965	 #
	move	$3,$0	 # D.29846,

.L964:
	addiu	$2,$2,%lo(gFileTemp+32)	 # ivtmp.771, tmp320,
	lui	$4,%hi(defaultString+11)	 # tmp356,
	addiu	$4,$4,%lo(defaultString+11)	 # D.32682, tmp356,
.L966:
	lbu	$3,0($16)	 #, defaultString
	sb	$3,0($2)	 # tmp323, gFileTemp.name
	addiu	$16,$16,1	 # ivtmp.780, ivtmp.780,
	bne	$16,$4,.L966	 #, ivtmp.780, D.32682,
	addiu	$2,$2,1	 # ivtmp.771, ivtmp.771,

	lw	$2,%gp_rel(cwdptr)($28)	 # cwdptr.19, cwdptr
	lui	$3,%hi(gFileTemp)	 # tmp324,
	addiu	$4,$3,%lo(gFileTemp)	 # tmp325, tmp324,
	lw	$5,52($2)	 # cwdptr.19_20->dirclus, cwdptr.19_20->dirclus
	sw	$5,52($4)	 # cwdptr.19_20->dirclus, gFileTemp.dirclus
	lw	$5,56($2)	 # cwdptr.19_20->dirccls, cwdptr.19_20->dirccls
	sw	$5,56($4)	 # cwdptr.19_20->dirccls, gFileTemp.dirccls
	sw	$0,4($4)	 #, gFileTemp.cluster
	sw	$0,8($4)	 #, gFileTemp.ccls
	lw	$2,0($2)	 # cwdptr.19_20->dsk, cwdptr.19_20->dsk
	sw	$2,%lo(gFileTemp)($3)	 # cwdptr.19_20->dsk, gFileTemp.dsk
	addiu	$5,$sp,16	 #,,
	jal	CreateFileEntry	 #
	li	$6,18			# 0x12	 #,

	bne	$2,$0,.L965	 #,,,
	move	$3,$0	 # D.29846,

	lbu	$2,%gp_rel(gNeedFATWrite)($28)	 # gNeedFATWrite, gNeedFATWrite
	beq	$2,$0,.L974	 #, gNeedFATWrite,,
	lui	$2,%hi(gFileTemp+52)	 # tmp342,

	lui	$2,%hi(gFileTemp)	 # tmp338,
	lw	$4,%lo(gFileTemp)($2)	 #, gFileTemp.dsk
	move	$5,$0	 #,
	move	$6,$0	 #,
	jal	WriteFAT	 #
	li	$7,1			# 0x1	 #,

	beq	$2,$0,.L967	 #,,,
	lui	$2,%hi(gFileTemp+52)	 # tmp342,

	li	$2,9			# 0x9	 # tmp340,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp340, FSerrno
	j	.L965	 #
	move	$3,$0	 # D.29846,

.L967:
.L974:
	lw	$2,%lo(gFileTemp+52)($2)	 # dotdot, gFileTemp.dirclus
	lw	$16,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue
	xor	$16,$2,$16	 # tmp355, dotdot, FatRootDirClusterValue
	move	$3,$0	 #,
	movn	$3,$2,$16	 #,, dotdot, tmp355
	move	$16,$3	 # dotdot,
	lui	$4,%hi(gFileTemp)	 # tmp344,
	addiu	$4,$4,%lo(gFileTemp)	 # tmp345, tmp344,
	sw	$2,56($4)	 # dotdot, gFileTemp.dirccls
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L969	 #, dir,,
	move	$3,$0	 # D.29846,

	li	$2,27			# 0x1b	 # tmp347,
	j	.L965	 #
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp347, FSerrno

.L969:
	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, dir

	lui	$3,%hi(gFileTemp)	 # tmp348,
	lw	$4,%lo(gFileTemp)($3)	 #, gFileTemp.dsk
	move	$5,$2	 #,
	jal	writeDotEntries	 #
	move	$6,$16	 #, dotdot

	sltu	$3,$0,$2	 # D.29846,
.L965:
	move	$2,$3	 #, D.29846
	lw	$31,28($sp)	 #,
	lw	$16,24($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,32	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	CreateDIR
	.size	CreateDIR, .-CreateDIR
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"..\000"
	.section	.text,code
	.align	2
	.globl	mkdirhelper
	.set	nomips16
	.set	nomicromips
	.ent	mkdirhelper
	.type	mkdirhelper, @function
mkdirhelper:
	.frame	$sp,64,$31		# vars= 16, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64	 #,,
	sw	$31,60($sp)	 #,
	sw	$21,56($sp)	 #,
	sw	$20,52($sp)	 #,
	sw	$19,48($sp)	 #,
	sw	$18,44($sp)	 #,
	sw	$17,40($sp)	 #,
	sw	$16,36($sp)	 #,
	move	$17,$5	 # ramptr, ramptr
	jal	MDD_SDSPI_WriteProtectState	 #
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno

	beql	$2,$0,.L1013	 #,,,
	move	$2,$17	 # temppath, ramptr

	li	$2,24			# 0x18	 # tmp369,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp369, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L979:
	addiu	$5,$5,1	 # tmp370, i,
	j	.L1034	 #
	andi	$5,$5,0x00ff	 # i, tmp370

.L1013:
	move	$5,$0	 # i,
	li	$6,46			# 0x2e	 # tmp459,
	li	$4,92			# 0x5c	 # tmp460,
.L1034:
	lb	$3,0($2)	 # D.29877,* temppath
	beql	$3,$0,.L1035	 #, D.29877,,
	sltu	$5,$5,9	 # tmp373, i,

	beql	$3,$6,.L1035	 #, D.29877, tmp459,
	sltu	$5,$5,9	 # tmp373, i,

	bnel	$3,$4,.L979	 #, D.29877, tmp460,
	addiu	$2,$2,1	 # temppath, temppath,

	sltu	$5,$5,9	 # tmp373, i,
.L1035:
	bne	$5,$0,.L980
	nop
	 #, tmp373,,
	li	$2,31			# 0x1f	 # tmp374,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp374, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L980:
	beql	$3,$6,.L981	 #, D.29877, tmp459,
	addiu	$2,$2,1	 # temppath, temppath,

	lb	$3,0($2)	 # D.29877,* temppath
.L1038:
	beql	$3,$4,.L1036	 #, D.29877, tmp460,
	addiu	$2,$2,1	 # temppath, temppath,

	j	.L983
	nop
	 #
.L981:
	lb	$3,0($2)	 # D.29877,* temppath
	beq	$3,$0,.L983
	nop
	 #, D.29877,,
	beq	$3,$4,.L1022	 #, D.29877, tmp460,
	move	$5,$0	 # i,

	addiu	$2,$2,1	 # temppath, temppath,
.L1037:
	addiu	$5,$5,1	 # tmp378, i,
	lb	$3,0($2)	 # D.29877,* temppath
	beq	$3,$0,.L985	 #, D.29877,,
	andi	$5,$5,0x00ff	 # i, tmp378

	bnel	$3,$4,.L1037	 #, D.29877, tmp460,
	addiu	$2,$2,1	 # temppath, temppath,

.L985:
	sltu	$5,$5,4	 # tmp380, i,
	bnel	$5,$0,.L1038	 #, tmp380,,
	lb	$3,0($2)	 # D.29877,* temppath

	li	$2,31			# 0x1f	 # tmp381,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp381, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L1022:
	addiu	$2,$2,1	 # temppath, temppath,
.L1036:
	lb	$3,0($2)	 # D.29877,* temppath
	beql	$3,$4,.L1036	 #, D.29877, tmp460,
	addiu	$2,$2,1	 # temppath, temppath,

.L983:
	bne	$3,$0,.L1034	 #, D.29877,,
	move	$5,$0	 # i,

	lui	$4,%hi(tempCWDobj)	 # tmp384,
	addiu	$4,$4,%lo(tempCWDobj)	 #, tmp384,
	jal	FileObjectCopy	 #
	lw	$5,%gp_rel(cwdptr)($28)	 #, cwdptr

	li	$19,46			# 0x2e	 # tmp452,
	li	$18,92			# 0x5c	 # tmp453,
	lui	$21,%hi(.LC0)	 # tmp454,
	addiu	$21,$21,%lo(.LC0)	 # tmp455, tmp454,
	li	$20,92			# 0x5c	 # tmp456,
	lbu	$2,0($17)	 # i,* temppath
.L1040:
	bne	$2,$19,.L990
	nop
	 #, i, tmp452,
	addiu	$17,$17,1	 # temppath, temppath,
	lbu	$16,0($17)	 # i,* temppath
	beql	$16,$19,.L991	 #, i, tmp452,
	lw	$2,%gp_rel(cwdptr)($28)	 # cwdptr, cwdptr

	beq	$16,$0,.L992
	nop
	 #, i,,
	beq	$16,$18,.L1039	 #, i, tmp453,
	addiu	$17,$17,1	 # temppath, temppath,

	li	$2,31			# 0x1f	 # tmp388,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp388, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L991:
	lw	$3,52($2)	 # cwdptr.22_51->dirclus, cwdptr.22_51->dirclus
	lw	$2,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue
	bne	$3,$2,.L994	 #, cwdptr.22_51->dirclus, FatRootDirClusterValue,
	addiu	$17,$17,1	 # temppath, temppath,

	li	$2,31			# 0x1f	 # tmp392,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp392, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L994:
	lbu	$16,0($17)	 # i,* temppath
	beq	$16,$18,.L995
	nop
	 #, i, tmp453,
	beq	$16,$0,.L995	 #, i,,
	li	$2,31			# 0x1f	 # tmp394,

	sb	$2,%gp_rel(FSerrno)($28)	 # tmp394, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L995:
	jal	FSchdir	 #
	move	$4,$21	 #, tmp455

	bne	$16,$18,.L992
	nop
	 #, i, tmp453,
	addiu	$17,$17,1	 # temppath, temppath,
.L1039:
	lbu	$16,0($17)	 # i,* temppath
	beql	$16,$18,.L1039	 #, i, tmp453,
	addiu	$17,$17,1	 # temppath, temppath,

.L992:
	bnel	$16,$0,.L1040	 #, i,,
	lbu	$2,0($17)	 # i,* temppath

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp399,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp399,

	li	$2,31			# 0x1f	 # tmp400,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp400, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L990:
	bne	$2,$18,.L997	 #, i, tmp453,
	lw	$4,%gp_rel(cwdptr)($28)	 # cwdptr.22, cwdptr

	lw	$2,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue.23, FatRootDirClusterValue
	sw	$2,52($4)	 # FatRootDirClusterValue.23, cwdptr.22_64->dirclus
	sw	$2,56($4)	 # FatRootDirClusterValue.23, cwdptr.22_64->dirccls
	sb	$20,32($4)	 # tmp456, cwdptr.22_64->name
	move	$2,$4	 # ivtmp.811, cwdptr.22
	addiu	$5,$4,10	 # D.32728, cwdptr.22,
	li	$3,32			# 0x20	 # tmp451,
	sb	$3,33($2)	 # tmp451, cwdptr.22->name
.L1041:
	addiu	$2,$2,1	 # ivtmp.811, ivtmp.811,
	bnel	$2,$5,.L1041	 #, ivtmp.811, D.32728,
	sb	$3,33($2)	 # tmp451, cwdptr.22->name

	addiu	$17,$17,1	 # temppath, temppath,
	lbu	$2,0($17)	 # i,* temppath
	bne	$2,$18,.L999	 #, i, tmp453,
	lui	$5,%hi(tempCWDobj)	 # tmp405,

	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp405,

	li	$2,31			# 0x1f	 # tmp406,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp406, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L999:
	bnel	$2,$0,.L1040	 #, i,,
	lbu	$2,0($17)	 # i,* temppath

	lui	$5,%hi(tempCWDobj)	 # tmp407,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp407,

	li	$2,31			# 0x1f	 # tmp408,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp408, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L997:
	sb	$0,28($sp)	 #, tempArray
	li	$18,92			# 0x5c	 # tmp447,
	li	$19,12			# 0xc	 # tmp448,
	li	$20,46			# 0x2e	 # tmp449,
	lbu	$16,0($17)	 # i,* temppath
.L1044:
	beq	$16,$0,.L1001	 #, i,,
	move	$2,$0	 # j,

	beql	$16,$18,.L1042	 #, i, tmp447,
	addu	$2,$sp,$2	 # tmp413,, j

	addiu	$3,$sp,16	 # ivtmp.799,,
.L1002:
	sb	$16,0($3)	 # i, tempArray
	addiu	$2,$2,1	 # tmp410, j,
	addiu	$17,$17,1	 # temppath, temppath,
	lbu	$16,0($17)	 # i,* temppath
	beq	$16,$0,.L1001	 #, i,,
	andi	$2,$2,0x00ff	 # j, tmp410

	beql	$16,$18,.L1042	 #, i, tmp447,
	addu	$2,$sp,$2	 # tmp413,, j

	bne	$2,$19,.L1002	 #, j, tmp448,
	addiu	$3,$3,1	 # ivtmp.799, ivtmp.799,

.L1001:
	addu	$2,$sp,$2	 # tmp413,, j
.L1042:
	sb	$0,16($2)	 #, tempArray
	lb	$2,16($sp)	 # tempArray, tempArray
	bne	$2,$20,.L1003	 #, tempArray, tmp449,
	lb	$2,17($sp)	 # D.29923, tempArray

	beq	$2,$0,.L1003
	nop
	 #, D.29923,,
	beql	$2,$20,.L1004	 #, D.29923, tmp449,
	lb	$2,18($sp)	 # tempArray, tempArray

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp418,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp418,

	li	$2,31			# 0x1f	 # tmp419,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp419, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L1004:
	beq	$2,$0,.L1003	 #, tempArray,,
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

	lui	$5,%hi(tempCWDobj)	 # tmp422,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp422,

	li	$2,31			# 0x1f	 # tmp423,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp423, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L1003:
	jal	FSchdir	 #
	addiu	$4,$sp,16	 #,,

	bne	$2,$0,.L1005
	nop
	 #,,,
	bne	$16,$18,.L1006
	nop
	 #, i, tmp447,
	addiu	$17,$17,1	 # temppath, temppath,
.L1043:
	lbu	$16,0($17)	 # i,* temppath
	beql	$16,$18,.L1043	 #, i, tmp447,
	addiu	$17,$17,1	 # temppath, temppath,

.L1006:
	bnel	$16,$0,.L1044	 #, i,,
	lbu	$16,0($17)	 # i,* temppath

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp427,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp427,

	j	.L977	 #
	move	$2,$0	 # D.29876,

.L1005:
	jal	CreateDIR	 #
	addiu	$4,$sp,16	 #,,

	bne	$2,$0,.L1009	 #,,,
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

	lui	$5,%hi(tempCWDobj)	 # tmp429,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp429,

	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L1009:
	jal	FSchdir	 #
	addiu	$4,$sp,16	 #,,

	bnel	$2,$0,.L1010	 #,,,
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

	lb	$2,0($17)	 # tmp430,* temppath
	beql	$2,$18,.L1045	 #, tmp430, tmp447,
	addiu	$17,$17,1	 # temppath, temppath,

	j	.L1012
	nop
	 #
.L1010:
	lui	$5,%hi(tempCWDobj)	 # tmp433,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp433,

	li	$2,27			# 0x1b	 # tmp434,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp434, FSerrno
	j	.L977	 #
	li	$2,-1			# 0xffffffff	 # D.29876,

.L1019:
	addiu	$17,$17,1	 # temppath, temppath,
.L1045:
	lb	$2,0($17)	 # D.29877,* temppath
	beq	$2,$18,.L1019	 #, D.29877, tmp447,
	andi	$16,$2,0x00ff	 # i, D.29877

.L1012:
	bnel	$16,$0,.L1044	 #, i,,
	lbu	$16,0($17)	 # i,* temppath

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp437,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp437,

	move	$2,$0	 # D.29876,
.L977:
	lw	$31,60($sp)	 #,
	lw	$21,56($sp)	 #,
	lw	$20,52($sp)	 #,
	lw	$19,48($sp)	 #,
	lw	$18,44($sp)	 #,
	lw	$17,40($sp)	 #,
	lw	$16,36($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,64	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	mkdirhelper
	.size	mkdirhelper, .-mkdirhelper
	.align	2
	.globl	FSmkdir
	.set	nomips16
	.set	nomicromips
	.ent	FSmkdir
	.type	FSmkdir, @function
FSmkdir:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	move	$5,$4	 # path, path
	move	$4,$0	 #,
	jal	mkdirhelper	 #
	move	$6,$0	 #,

	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSmkdir
	.size	FSmkdir, .-FSmkdir
	.align	2
	.globl	eraseDir
	.set	nomips16
	.set	nomicromips
	.ent	eraseDir
	.type	eraseDir, @function
eraseDir:
	.frame	$sp,88,$31		# vars= 64, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-88	 #,,
	sw	$31,84($sp)	 #,
	sw	$16,80($sp)	 #,
	jal	MDD_SDSPI_WriteProtectState	 #
	move	$16,$4	 # path, path

	bne	$2,$0,.L1048	 #,,,
	li	$3,-1			# 0xffffffff	 # D.29695,

	addiu	$4,$sp,16	 #,,
	jal	FileObjectCopy	 #
	lw	$5,%gp_rel(cwdptr)($28)	 #, cwdptr

	lw	$5,%gp_rel(cwdptr)($28)	 # cwdptr.3, cwdptr
	move	$2,$16	 # ivtmp.830, path
	move	$3,$5	 # ivtmp.832, cwdptr.3
	addiu	$16,$16,11	 # D.32754, path,
.L1049:
	lbu	$4,0($2)	 #,* ivtmp.830
	sb	$4,32($3)	 # tmp259, cwdptr.3->name
	addiu	$2,$2,1	 # ivtmp.830, ivtmp.830,
	bne	$2,$16,.L1049	 #, ivtmp.830, D.32754,
	addiu	$3,$3,1	 # ivtmp.832, ivtmp.832,

	lui	$16,%hi(gFileTemp)	 # tmp260,
	jal	FileObjectCopy	 #
	addiu	$4,$16,%lo(gFileTemp)	 #, tmp260,

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	addiu	$5,$16,%lo(gFileTemp)	 #, tmp260,
	li	$6,1			# 0x1	 #,
	jal	FILEfind	 #
	move	$7,$0	 #,

	beql	$2,$0,.L1050	 #,,,
	lw	$5,%gp_rel(cwdptr)($28)	 # cwdptr.3, cwdptr

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	jal	FileObjectCopy	 #
	addiu	$5,$sp,16	 #,,

	j	.L1048	 #
	li	$3,-1			# 0xffffffff	 # D.29695,

.L1050:
	move	$4,$5	 #, cwdptr.3
	addiu	$5,$5,44	 #, cwdptr.3,
	jal	FILEerase	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L1051	 #,,,
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

	jal	FileObjectCopy	 #
	addiu	$5,$sp,16	 #,,

	j	.L1048	 #
	move	$3,$0	 # D.29695,

.L1051:
	jal	FileObjectCopy	 #
	addiu	$5,$sp,16	 #,,

	li	$3,-1			# 0xffffffff	 # D.29695,
.L1048:
	move	$2,$3	 #, D.29695
	lw	$31,84($sp)	 #,
	lw	$16,80($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,88	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	eraseDir
	.size	eraseDir, .-eraseDir
	.section	.rodata,code
	.align	2
.LC1:
	.ascii	"           \000"
	.space	1
	.section	.text,code
	.align	2
	.globl	rmdirhelper
	.set	nomips16
	.set	nomicromips
	.ent	rmdirhelper
	.type	rmdirhelper, @function
rmdirhelper:
	.frame	$sp,80,$31		# vars= 24, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-80	 #,,
	sw	$31,76($sp)	 #,
	sw	$fp,72($sp)	 #,
	sw	$23,68($sp)	 #,
	sw	$22,64($sp)	 #,
	sw	$21,60($sp)	 #,
	sw	$20,56($sp)	 #,
	sw	$19,52($sp)	 #,
	sw	$18,48($sp)	 #,
	sw	$17,44($sp)	 #,
	sw	$16,40($sp)	 #,
	move	$16,$5	 # ramptr, ramptr
	andi	$17,$7,0x00ff	 # rmsubdirs, rmsubdirs
	sh	$0,16($sp)	 #, handle
	lui	$2,%hi(.LC1)	 # tmp495,
	lw	$4,%lo(.LC1)($2)	 # tmp496,
	addiu	$2,$2,%lo(.LC1)	 # tmp498, tmp495,
	lw	$3,4($2)	 # tmp497,
	lw	$2,8($2)	 # tmp499,
	sw	$4,20($sp)	 # tmp496, tempArray
	sw	$3,24($sp)	 # tmp497, tempArray
	sw	$2,28($sp)	 # tmp499, tempArray
	sb	$0,32($sp)	 #, tempArray
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	lui	$4,%hi(tempCWDobj)	 # tmp502,
	addiu	$4,$4,%lo(tempCWDobj)	 #, tmp502,
	jal	FileObjectCopy	 #
	lw	$5,%gp_rel(cwdptr)($28)	 #, cwdptr

	jal	FSchdir	 #
	move	$4,$16	 #, ramptr

	beql	$2,$0,.L1055	 #,,,
	lw	$4,%gp_rel(cwdptr)($28)	 # cwdptr.4, cwdptr

	li	$2,12			# 0xc	 # tmp503,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp503, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1055:
	lw	$2,52($4)	 # D.29714, cwdptr.4_21->dirclus
	lw	$3,%gp_rel(FatRootDirClusterValue)($28)	 # FatRootDirClusterValue, FatRootDirClusterValue
	beq	$2,$3,.L1057	 #, D.29714, FatRootDirClusterValue,
	lui	$3,%hi(tempCWDobj+52)	 # tmp506,

	lw	$3,%lo(tempCWDobj+52)($3)	 # tempCWDobj.dirclus, tempCWDobj.dirclus
	bnel	$2,$3,.L1058	 #, D.29714, tempCWDobj.dirclus,
	lhu	$2,16($sp)	 #, handle

.L1057:
	lui	$5,%hi(tempCWDobj)	 # tmp508,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp508,

	li	$2,31			# 0x1f	 # tmp509,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp509, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1058:
	addiu	$2,$2,1	 # tmp511, handle,
	sh	$2,16($sp)	 # tmp511, handle
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bnel	$2,$0,.L1059	 #,,,
	lhu	$2,16($sp)	 #, handle

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp513,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp513,

	li	$2,27			# 0x1b	 # tmp514,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp514, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1059:
	addiu	$2,$2,1	 # tmp516, handle,
	sh	$2,16($sp)	 # tmp516, handle
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	move	$6,$0	 #,

	bne	$2,$0,.L1060	 #, entry,,
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

	lui	$5,%hi(tempCWDobj)	 # tmp519,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp519,

	li	$2,27			# 0x1b	 # tmp520,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp520, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1060:
	beq	$17,$0,.L1101	 #, rmsubdirs,,
	li	$16,-27			# 0xffffffe5	 # tmp671,

	j	.L1108	 #
	sb	$0,%gp_rel(dirCleared)($28)	 #, dirCleared

.L1064:
	beql	$2,$16,.L1063	 #, D.29726, tmp671,
	lhu	$2,16($sp)	 #, handle

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp523,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp523,

	li	$2,22			# 0x16	 # tmp524,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp524, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1063:
	addiu	$2,$2,1	 # tmp526, handle,
	sh	$2,16($sp)	 # tmp526, handle
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	move	$6,$0	 #,

	bnel	$2,$0,.L1111	 #, entry,,
	lb	$2,0($2)	 # D.29726, entry_1->DIR_Name

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp529,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp529,

	li	$2,27			# 0x1b	 # tmp530,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp530, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1101:
	lb	$2,0($2)	 # D.29726, entry_1->DIR_Name
.L1111:
	bne	$2,$0,.L1064	 #, D.29726,,
	addiu	$4,$sp,20	 #,,

	j	.L1109
	nop
	 #
.L1108:
	move	$18,$0	 # subDirDepth,
	lui	$20,%hi(.LC0)	 # tmp679,
	lui	$23,%hi(gFileTemp+32)	 # tmp680,
	lui	$22,%hi(gFileTemp)	 # tmp681,
	lui	$fp,%hi(gDiskData)	 # tmp682,
	addiu	$fp,$fp,%lo(gDiskData)	 # gFileTemp.dsk, tmp682,
	lui	$21,%hi(tempCWDobj)	 # tmp685,
	lb	$3,0($2)	 # D.29726, entry_183->DIR_Name
.L1114:
	beq	$3,$0,.L1066	 #, D.29726,,
	li	$4,-27			# 0xffffffe5	 # tmp531,

	beq	$3,$4,.L1067	 #, D.29726, tmp531,
	li	$5,8			# 0x8	 # tmp532,

	lbu	$4,11($2)	 # D.29737, entry_183->DIR_Attr
	beq	$4,$5,.L1067	 #, D.29737, tmp532,
	li	$5,15			# 0xf	 # tmp533,

	beq	$4,$5,.L1067	 #, D.29737, tmp533,
	andi	$4,$4,0x10	 # tmp534, D.29737,

	beql	$4,$0,.L1068	 #, tmp534,,
	sw	$0,20($sp)	 #, tempArray

	li	$4,32			# 0x20	 # tmp535,
	bnel	$3,$4,.L1069	 #, D.29726, tmp535,
	sb	$3,20($sp)	 # D.29726, tempArray

	j	.L1070	 #
	move	$3,$0	 # Index,

.L1071:
	addiu	$3,$3,1	 # tmp536, Index,
	andi	$3,$3,0x00ff	 # Index, tmp536
	addiu	$4,$4,1	 # ivtmp.856, ivtmp.856,
	beq	$3,$8,.L1070	 #, Index, tmp674,
	addiu	$5,$5,1	 # ivtmp.857, ivtmp.857,

.L1100:
	lb	$6,1($4)	 # D.29745, entry->DIR_Name
	bnel	$6,$7,.L1071	 #, D.29745, tmp673,
	sb	$6,0($5)	 # D.29745, tempArray

.L1070:
	lb	$5,8($2)	 # entry_183->DIR_Name, entry_183->DIR_Name
	li	$4,32			# 0x20	 # tmp540,
	beq	$5,$4,.L1072	 #, entry_183->DIR_Name, tmp540,
	addu	$4,$sp,$3	 # tmp541,, Index

	li	$5,46			# 0x2e	 # tmp542,
	sb	$5,20($4)	 # tmp542, tempArray
	addiu	$3,$3,1	 # tmp543, Index,
	lb	$4,8($2)	 # D.29752, entry_183->DIR_Name
	li	$5,32			# 0x20	 # tmp544,
	bne	$4,$5,.L1073	 #, D.29752, tmp544,
	andi	$3,$3,0x00ff	 # Index, tmp543

	j	.L1110	 #
	addu	$3,$sp,$3	 # tmp547,, Index

.L1099:
	addu	$4,$sp,$3	 # tmp545,, Index
	sb	$2,20($4)	 # D.29752, tempArray
	addiu	$3,$3,1	 # tmp546, Index,
	andi	$3,$3,0x00ff	 # Index, tmp546
.L1072:
	addu	$3,$sp,$3	 # tmp547,, Index
.L1110:
	sb	$0,20($3)	 #, tempArray
	jal	FSchdir	 #
	addiu	$4,$sp,20	 #,,

	beq	$2,$0,.L1074	 #,,,
	lw	$4,%gp_rel(cwdptr)($28)	 # cwdptr.4, cwdptr

	lui	$5,%hi(tempCWDobj)	 # tmp550,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp550,

	li	$2,12			# 0xc	 # tmp551,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp551, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1074:
	addiu	$2,$21,%lo(tempCWDobj)	 # tmp553, tmp685,
	lw	$3,52($4)	 # cwdptr.4_84->dirclus, cwdptr.4_84->dirclus
	lw	$2,52($2)	 # tempCWDobj.dirclus, tempCWDobj.dirclus
	bne	$3,$2,.L1075	 #, cwdptr.4_84->dirclus, tempCWDobj.dirclus,
	addiu	$18,$18,1	 # tmp558, subDirDepth,

	lui	$5,%hi(tempCWDobj)	 # tmp556,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp556,

	li	$2,31			# 0x1f	 # tmp557,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp557, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1075:
	andi	$18,$18,0xffff	 # subDirDepth, tmp558
	li	$2,2			# 0x2	 # tmp559,
	j	.L1076	 #
	sh	$2,16($sp)	 # tmp559, handle

.L1068:
	sw	$0,24($sp)	 #, tempArray
	sw	$0,28($sp)	 #, tempArray
	move	$3,$2	 # ivtmp.865, entry
	addiu	$4,$23,%lo(gFileTemp+32)	 # ivtmp.866, tmp680,
	addiu	$2,$2,11	 # D.32799, entry,
.L1077:
	lbu	$5,0($3)	 #, entry->DIR_Name
	sb	$5,0($4)	 # tmp562, gFileTemp.name
	addiu	$3,$3,1	 # ivtmp.865, ivtmp.865,
	bne	$3,$2,.L1077	 #, ivtmp.865, D.32799,
	addiu	$4,$4,1	 # ivtmp.866, ivtmp.866,

	sw	$fp,%lo(gFileTemp)($22)	 # gFileTemp.dsk, gFileTemp.dsk
	addiu	$4,$22,%lo(gFileTemp)	 # tmp567, tmp681,
	lhu	$2,16($sp)	 #, handle
	sh	$2,44($4)	 # handle, gFileTemp.entry
	lw	$2,%gp_rel(cwdptr)($28)	 # cwdptr.4, cwdptr
	lw	$3,52($2)	 # cwdptr.4_95->dirclus, cwdptr.4_95->dirclus
	sw	$3,52($4)	 # cwdptr.4_95->dirclus, gFileTemp.dirclus
	lw	$2,56($2)	 # cwdptr.4_95->dirccls, cwdptr.4_95->dirccls
	sw	$2,56($4)	 # cwdptr.4_95->dirccls, gFileTemp.dirccls
	sw	$0,4($4)	 #, gFileTemp.cluster
	sw	$0,8($4)	 #, gFileTemp.ccls
	addiu	$5,$sp,16	 #,,
	jal	FILEerase	 #
	li	$6,1			# 0x1	 #,

	beql	$2,$0,.L1078	 #,,,
	lhu	$2,16($sp)	 #, handle

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp581,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp581,

	li	$2,1			# 0x1	 # tmp582,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp582, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1078:
	addiu	$2,$2,1	 # tmp584, handle,
	j	.L1079	 #
	sh	$2,16($sp)	 # tmp584, handle

.L1067:
	lhu	$2,16($sp)	 #, handle
	addiu	$2,$2,1	 # tmp586, handle,
	sh	$2,16($sp)	 # tmp586, handle
.L1079:
	lbu	$2,%gp_rel(recache)($28)	 # recache, recache
	beq	$2,$0,.L1080	 #, recache,,
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

.L1076:
	sb	$0,%gp_rel(recache)($28)	 #, recache
	lw	$4,%gp_rel(cwdptr)($28)	 # cwdptr.4, cwdptr
	lw	$2,52($4)	 # cwdptr.4_108->dirclus, cwdptr.4_108->dirclus
	sw	$2,56($4)	 # cwdptr.4_108->dirclus, cwdptr.4_108->dirccls
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	j	.L1081
	nop
	 #
.L1080:
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	move	$6,$0	 #,

.L1081:
	bne	$2,$0,.L1112	 #, entry,,
	lbu	$3,%gp_rel(dirCleared)($28)	 # dirCleared, dirCleared

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp591,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp591,

	li	$2,27			# 0x1b	 # tmp592,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp592, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1066:
	beq	$18,$0,.L1083	 #, subDirDepth,,
	li	$2,1			# 0x1	 # tmp632,

	sh	$0,18($sp)	 #, handle2
	lw	$4,%gp_rel(cwdptr)($28)	 # cwdptr.4, cwdptr
	lw	$2,52($4)	 # cwdptr.4_117->dirclus, cwdptr.4_117->dirclus
	sw	$2,56($4)	 # cwdptr.4_117->dirclus, cwdptr.4_117->dirccls
	addiu	$5,$sp,18	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L1084	 #, entry,,
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

	lui	$5,%hi(tempCWDobj)	 # tmp596,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp596,

	li	$2,27			# 0x1b	 # tmp597,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp597, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1084:
	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, entry

	sh	$2,18($sp)	 #, handle2
	jal	FSchdir	 #
	addiu	$4,$20,%lo(.LC0)	 #, tmp679,

	beql	$2,$0,.L1085	 #,,,
	li	$2,2			# 0x2	 # tmp602,

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp600,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp600,

	li	$2,12			# 0xc	 # tmp601,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp601, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1085:
	sh	$2,16($sp)	 # tmp602, handle
	lw	$4,%gp_rel(cwdptr)($28)	 # cwdptr.4, cwdptr
	lw	$2,52($4)	 # cwdptr.4_129->dirclus, cwdptr.4_129->dirclus
	sw	$2,56($4)	 # cwdptr.4_129->dirclus, cwdptr.4_129->dirccls
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L1086	 #, entry,,
	move	$16,$2	 # entry,

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp605,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp605,

	li	$2,27			# 0x1b	 # tmp606,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp606, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1086:
	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, entry

	sw	$2,%gp_rel(TempClusterCalc)($28)	 #, TempClusterCalc
	li	$17,-27			# 0xffffffe5	 # tmp675,
	j	.L1087	 #
	li	$19,8			# 0x8	 # tmp676,

.L1089:
.L1113:
	addiu	$2,$2,1	 # tmp608, handle,
	sh	$2,16($sp)	 # tmp608, handle
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	move	$6,$0	 #,

	bne	$2,$0,.L1088	 #, entry,,
	move	$16,$2	 # entry,

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp611,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp611,

	li	$2,27			# 0x1b	 # tmp612,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp612, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1088:
	jal	GetFullClusterNumber	 #
	move	$4,$2	 #, entry

	sw	$2,%gp_rel(TempClusterCalc)($28)	 #, TempClusterCalc
.L1087:
	lhu	$3,18($sp)	 # handle2, handle2
	lw	$2,%gp_rel(TempClusterCalc)($28)	 # TempClusterCalc, TempClusterCalc
	bne	$3,$2,.L1113	 #, handle2, TempClusterCalc,
	lhu	$2,16($sp)	 #, handle

	lb	$2,0($16)	 # entry_3->DIR_Name, entry_3->DIR_Name
	beq	$2,$17,.L1113	 #, entry_3->DIR_Name, tmp675,
	lhu	$2,16($sp)	 #, handle

	lbu	$2,11($16)	 # entry_3->DIR_Attr, entry_3->DIR_Attr
	beq	$2,$19,.L1089	 #, entry_3->DIR_Attr, tmp676,
	lhu	$2,16($sp)	 #, handle

	sw	$0,20($sp)	 #, tempArray
	sw	$0,24($sp)	 #, tempArray
	sw	$0,28($sp)	 #, tempArray
	move	$2,$16	 # ivtmp.874, entry
	addiu	$3,$sp,20	 # ivtmp.875,,
	addiu	$16,$16,11	 # D.32812, entry,
.L1090:
	lbu	$4,0($2)	 #, entry->DIR_Name
	sb	$4,0($3)	 # tmp620, tempArray
	addiu	$2,$2,1	 # ivtmp.874, ivtmp.874,
	bne	$2,$16,.L1090	 #, ivtmp.874, D.32812,
	addiu	$3,$3,1	 # ivtmp.875, ivtmp.875,

	jal	eraseDir	 #
	addiu	$4,$sp,20	 #,,

	beql	$2,$0,.L1091	 #,,,
	lhu	$2,16($sp)	 #, handle

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp623,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp623,

	li	$2,1			# 0x1	 # tmp624,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp624, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1091:
	addiu	$2,$2,1	 # tmp626, handle,
	sh	$2,16($sp)	 # tmp626, handle
	lw	$4,%gp_rel(cwdptr)($28)	 # cwdptr.4, cwdptr
	lw	$2,52($4)	 # cwdptr.4_159->dirclus, cwdptr.4_159->dirclus
	sw	$2,56($4)	 # cwdptr.4_159->dirclus, cwdptr.4_159->dirccls
	addiu	$5,$sp,16	 #,,
	jal	Cache_File_Entry	 #
	li	$6,1			# 0x1	 #,

	bne	$2,$0,.L1092	 #, entry,,
	addiu	$18,$18,-1	 # tmp631, subDirDepth,

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp629,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp629,

	li	$2,27			# 0x1b	 # tmp630,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp630, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1092:
	j	.L1082	 #
	andi	$18,$18,0xffff	 # subDirDepth, tmp631

.L1083:
	j	.L1065	 #
	sb	$2,%gp_rel(dirCleared)($28)	 # tmp632, dirCleared

.L1082:
	lbu	$3,%gp_rel(dirCleared)($28)	 # dirCleared, dirCleared
.L1112:
	beql	$3,$0,.L1114	 #, dirCleared,,
	lb	$3,0($2)	 # D.29726, entry_183->DIR_Name

.L1065:
	addiu	$4,$sp,20	 #,,
.L1109:
	jal	FSgetcwd	 #
	li	$5,12			# 0xc	 #,

	bnel	$2,$0,.L1094	 #,,,
	sw	$0,20($sp)	 #, tempArray

	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr
	lui	$5,%hi(tempCWDobj)	 # tmp636,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp636,

	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1094:
	sw	$0,24($sp)	 #, tempArray
	sw	$0,28($sp)	 #, tempArray
	lw	$2,%gp_rel(cwdptr)($28)	 # ivtmp.846, cwdptr
	addiu	$3,$sp,20	 # ivtmp.847,,
	addiu	$5,$2,11	 # D.32774, ivtmp.846,
.L1095:
	lbu	$4,32($2)	 #, cwdptr.4->name
	sb	$4,0($3)	 # tmp638, tempArray
	addiu	$2,$2,1	 # ivtmp.846, ivtmp.846,
	bne	$2,$5,.L1095	 #, ivtmp.846, D.32774,
	addiu	$3,$3,1	 # ivtmp.847, ivtmp.847,

	lui	$4,%hi(.LC0)	 # tmp639,
	jal	FSchdir	 #
	addiu	$4,$4,%lo(.LC0)	 #, tmp639,

	beq	$2,$0,.L1096	 #,,,
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

	lui	$5,%hi(tempCWDobj)	 # tmp641,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp641,

	li	$2,12			# 0xc	 # tmp642,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp642, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1096:
	jal	eraseDir	 #
	addiu	$4,$sp,20	 #,,

	beq	$2,$0,.L1097	 #,,,
	lw	$4,%gp_rel(cwdptr)($28)	 #, cwdptr

	lui	$5,%hi(tempCWDobj)	 # tmp645,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp645,

	li	$2,1			# 0x1	 # tmp646,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp646, FSerrno
	j	.L1056	 #
	li	$2,-1			# 0xffffffff	 # D.29711,

.L1097:
	lui	$5,%hi(tempCWDobj)	 # tmp648,
	jal	FileObjectCopy	 #
	addiu	$5,$5,%lo(tempCWDobj)	 #, tmp648,

	move	$2,$0	 # D.29711,
.L1056:
	lw	$31,76($sp)	 #,
	lw	$fp,72($sp)	 #,
	lw	$23,68($sp)	 #,
	lw	$22,64($sp)	 #,
	lw	$21,60($sp)	 #,
	lw	$20,56($sp)	 #,
	lw	$19,52($sp)	 #,
	lw	$18,48($sp)	 #,
	lw	$17,44($sp)	 #,
	lw	$16,40($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,80	 #,,

.L1073:
	addu	$5,$sp,$3	 # tmp650,, Index
	sb	$4,20($5)	 # D.29752, tempArray
	addiu	$3,$3,1	 # tmp651, Index,
	lb	$4,9($2)	 # D.29752, entry_183->DIR_Name
	li	$5,32			# 0x20	 # tmp652,
	beq	$4,$5,.L1072	 #, D.29752, tmp652,
	andi	$3,$3,0x00ff	 # Index, tmp651

	addu	$5,$sp,$3	 # tmp653,, Index
	sb	$4,20($5)	 # D.29752, tempArray
	addiu	$3,$3,1	 # tmp654, Index,
	lb	$2,10($2)	 # D.29752, entry_183->DIR_Name
	li	$4,32			# 0x20	 # tmp655,
	bne	$2,$4,.L1099	 #, D.29752, tmp655,
	andi	$3,$3,0x00ff	 # Index, tmp654

	j	.L1110	 #
	addu	$3,$sp,$3	 # tmp547,, Index

.L1069:
	move	$4,$2	 # ivtmp.856, entry
	addiu	$5,$sp,21	 # ivtmp.857,,
	li	$3,1			# 0x1	 # Index,
	li	$7,32			# 0x20	 # tmp673,
	j	.L1100	 #
	li	$8,8			# 0x8	 # tmp674,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	rmdirhelper
	.size	rmdirhelper, .-rmdirhelper
	.align	2
	.globl	FSrmdir
	.set	nomips16
	.set	nomicromips
	.ent	FSrmdir
	.type	FSrmdir, @function
FSrmdir:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24	 #,,
	sw	$31,20($sp)	 #,
	move	$2,$4	 # path, path
	andi	$7,$5,0x00ff	 # rmsubdirs, rmsubdirs
	move	$4,$0	 #,
	move	$5,$2	 #, path
	jal	rmdirhelper	 #
	move	$6,$0	 #,

	lw	$31,20($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FSrmdir
	.size	FSrmdir, .-FSrmdir
	.align	2
	.globl	FindFirst
	.set	nomips16
	.set	nomicromips
	.ent	FindFirst
	.type	FindFirst, @function
FindFirst:
	.frame	$sp,96,$31		# vars= 64, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-96	 #,,
	sw	$31,92($sp)	 #,
	sw	$18,88($sp)	 #,
	sw	$17,84($sp)	 #,
	sw	$16,80($sp)	 #,
	move	$18,$4	 # fileName, fileName
	move	$16,$5	 # attr, attr
	move	$17,$6	 # rec, rec
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	addiu	$5,$sp,48	 #,,
	jal	FormatFileName	 #
	li	$6,1			# 0x1	 #,

	bnel	$2,$0,.L1117	 #,,,
	sb	$0,48($17)	 #, rec_14(D)->initialized

	li	$2,18			# 0x12	 # tmp450,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp450, FSerrno
	j	.L1118	 #
	li	$2,-1			# 0xffffffff	 # D.29652,

.L1117:
	lb	$2,0($18)	 # D.29656,* fileName
	bnel	$2,$0,.L1119	 #, D.29656,,
	sb	$2,28($17)	 # D.29656, rec_14(D)->searchname

	j	.L1138	 #
	addu	$2,$17,$2	 # tmp453, rec, Index

.L1121:
	addiu	$2,$2,1	 # tmp451, Index,
	andi	$2,$2,0x00ff	 # Index, tmp451
	addiu	$18,$18,1	 # ivtmp.912, ivtmp.912,
	beq	$2,$5,.L1120	 #, Index, tmp503,
	addiu	$3,$3,1	 # ivtmp.914, ivtmp.914,

.L1136:
	lb	$4,1($18)	 # D.29656,
	bnel	$4,$0,.L1121	 #, D.29656,,
	sb	$4,29($3)	 # D.29656, rec->searchname

.L1120:
	addu	$2,$17,$2	 # tmp453, rec, Index
.L1138:
	sb	$0,28($2)	 #, rec_14(D)->searchname
	sb	$16,41($17)	 # attr, rec_14(D)->searchattr
	lw	$2,%gp_rel(cwdptr)($28)	 # cwdptr.1, cwdptr
	lw	$3,52($2)	 # cwdptr.1_27->dirclus, cwdptr.1_27->dirclus
	sw	$3,44($17)	 # cwdptr.1_27->dirclus, rec_14(D)->cwdclus
	lui	$3,%hi(gDiskData)	 # tmp456,
	addiu	$3,$3,%lo(gDiskData)	 # tmp455, tmp456,
	sw	$3,16($sp)	 # tmp455, f.dsk
	sw	$0,20($sp)	 #, f.cluster
	sw	$0,24($sp)	 #, f.ccls
	sh	$0,60($sp)	 #, f.entry
	sh	$16,64($sp)	 # attr, f.attributes
	lw	$3,52($2)	 # cwdptr.1_27->dirclus, cwdptr.1_27->dirclus
	sw	$3,68($sp)	 # cwdptr.1_27->dirclus, f.dirclus
	lw	$2,56($2)	 # cwdptr.1_27->dirccls, cwdptr.1_27->dirccls
	sw	$2,72($sp)	 # cwdptr.1_27->dirccls, f.dirccls
	lui	$16,%hi(gFileTemp)	 # tmp459,
	addiu	$4,$16,%lo(gFileTemp)	 #, tmp459,
	jal	FileObjectCopy	 #
	addiu	$5,$sp,16	 #,,

	addiu	$4,$sp,16	 #,,
	addiu	$5,$16,%lo(gFileTemp)	 #, tmp459,
	li	$6,1			# 0x1	 #,
	jal	FILEfind	 #
	li	$7,1			# 0x1	 #,

	beql	$2,$0,.L1122	 #,,,
	lhu	$2,60($sp)	 #, f.entry

	li	$2,11			# 0xb	 # tmp461,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp461, FSerrno
	j	.L1118	 #
	li	$2,-1			# 0xffffffff	 # D.29652,

.L1122:
	sh	$2,76($sp)	 # f.entry, fHandle
	addiu	$4,$sp,16	 #,,
	addiu	$5,$sp,76	 #,,
	jal	FILEopen	 #
	li	$6,114			# 0x72	 #,

	bne	$2,$0,.L1123	 #,,,
	lhu	$3,64($sp)	 # f.attributes, f.attributes

	li	$2,8			# 0x8	 # tmp465,
	beq	$3,$2,.L1124	 #, f.attributes, tmp465,
	lb	$2,48($sp)	 # D.29672, f.name

	li	$3,32			# 0x20	 # tmp466,
	bnel	$2,$3,.L1125	 #, D.29672, tmp466,
	sb	$2,0($17)	 # D.29672, rec_14(D)->filename

	j	.L1126	 #
	move	$2,$0	 # Index,

.L1127:
	addiu	$2,$2,1	 # tmp467, Index,
	andi	$2,$2,0x00ff	 # Index, tmp467
	addiu	$3,$3,1	 # ivtmp.891, ivtmp.891,
	beq	$2,$7,.L1126	 #, Index, tmp502,
	addiu	$4,$4,1	 # ivtmp.894, ivtmp.894,

.L1135:
	lb	$5,0($3)	 # D.29672, f.name
	bnel	$5,$6,.L1127	 #, D.29672, tmp501,
	sb	$5,1($4)	 # D.29672, rec->filename

.L1126:
	lw	$4,56($sp)	 # tmp471,
	ext	$4,$4,0,24	 # tmp470, tmp471,
	li	$3,2097152			# 0x200000	 # tmp473,
	addiu	$3,$3,8224	 # tmp472, tmp473,
	beq	$4,$3,.L1128	 #, tmp470, tmp472,
	addu	$3,$17,$2	 # tmp474, rec, Index

	li	$4,46			# 0x2e	 # tmp475,
	sb	$4,0($3)	 # tmp475, rec_14(D)->filename
	addiu	$2,$2,1	 # tmp476, Index,
	andi	$2,$2,0x00ff	 # Index, tmp476
.L1128:
	lb	$4,56($sp)	 # D.29672, f.name
	li	$3,32			# 0x20	 # tmp477,
	bne	$4,$3,.L1129	 #, D.29672, tmp477,
	addu	$3,$17,$2	 # tmp492, rec, Index

	j	.L1139	 #
	addu	$2,$17,$2	 # tmp480, rec, Index

.L1134:
	addu	$4,$17,$2	 # tmp478, rec, Index
	sb	$3,0($4)	 # D.29672, rec_14(D)->filename
	addiu	$2,$2,1	 # tmp479, Index,
	andi	$2,$2,0x00ff	 # Index, tmp479
.L1130:
	addu	$2,$17,$2	 # tmp480, rec, Index
.L1139:
.L1140:
	j	.L1131	 #
	sb	$0,0($2)	 #, rec_14(D)->filename

.L1124:
	addiu	$2,$sp,48	 # ivtmp.900,,
	move	$3,$17	 # ivtmp.903, rec
	addiu	$5,$sp,59	 # D.32848,,
.L1132:
	lbu	$4,0($2)	 #, f.name
	sb	$4,0($3)	 # tmp481, rec->filename
	addiu	$2,$2,1	 # ivtmp.900, ivtmp.900,
	bne	$2,$5,.L1132	 #, ivtmp.900, D.32848,
	addiu	$3,$3,1	 # ivtmp.903, ivtmp.903,

	sb	$0,11($17)	 #, rec_14(D)->filename
.L1131:
	lhu	$2,64($sp)	 #, f.attributes
	sb	$2,13($17)	 # f.attributes, rec_14(D)->attributes
	lw	$2,36($sp)	 # f.size, f.size
	sw	$2,16($17)	 # f.size, rec_14(D)->filesize
	lhu	$2,46($sp)	 # f.date, f.date
	sll	$2,$2,16	 # tmp485, f.date,
	lhu	$3,44($sp)	 # f.time, f.time
	addu	$2,$2,$3	 # tmp487, tmp485, f.time
	sw	$2,20($17)	 # tmp487, rec_14(D)->timestamp
	lhu	$2,60($sp)	 # f.entry, f.entry
	sw	$2,24($17)	 # f.entry, rec_14(D)->entry
	li	$2,1			# 0x1	 # tmp489,
	sb	$2,48($17)	 # tmp489, rec_14(D)->initialized
	j	.L1118	 #
	move	$2,$0	 # D.29652,

.L1123:
	li	$2,27			# 0x1b	 # tmp490,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp490, FSerrno
	li	$2,-1			# 0xffffffff	 # D.29652,
.L1118:
	lw	$31,92($sp)	 #,
	lw	$18,88($sp)	 #,
	lw	$17,84($sp)	 #,
	lw	$16,80($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,96	 #,,

.L1129:
	sb	$4,0($3)	 # D.29672, rec_14(D)->filename
	addiu	$2,$2,1	 # tmp493, Index,
	lb	$3,57($sp)	 # D.29672, f.name
	li	$4,32			# 0x20	 # tmp494,
	beq	$3,$4,.L1130	 #, D.29672, tmp494,
	andi	$2,$2,0x00ff	 # Index, tmp493

	addu	$4,$17,$2	 # tmp495, rec, Index
	sb	$3,0($4)	 # D.29672, rec_14(D)->filename
	addiu	$2,$2,1	 # tmp496, Index,
	lb	$3,58($sp)	 # D.29672, f.name
	li	$4,32			# 0x20	 # tmp497,
	bne	$3,$4,.L1134	 #, D.29672, tmp497,
	andi	$2,$2,0x00ff	 # Index, tmp496

	j	.L1140	 #
	addu	$2,$17,$2	 # tmp480, rec, Index

.L1125:
	addiu	$3,$sp,49	 # ivtmp.891,,
	move	$4,$17	 # ivtmp.894, rec
	li	$2,1			# 0x1	 # Index,
	li	$6,32			# 0x20	 # tmp501,
	j	.L1135	 #
	li	$7,8			# 0x8	 # tmp502,

.L1119:
	move	$3,$17	 # ivtmp.914, rec
	li	$2,1			# 0x1	 # Index,
	j	.L1136	 #
	li	$5,12			# 0xc	 # tmp503,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FindFirst
	.size	FindFirst, .-FindFirst
	.align	2
	.globl	FindNext
	.set	nomips16
	.set	nomicromips
	.ent	FindNext
	.type	FindNext, @function
FindNext:
	.frame	$sp,96,$31		# vars= 64, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-96	 #,,
	sw	$31,92($sp)	 #,
	sw	$17,88($sp)	 #,
	sw	$16,84($sp)	 #,
	sb	$0,%gp_rel(FSerrno)($28)	 #, FSerrno
	lbu	$2,48($4)	 # rec_9(D)->initialized, rec_9(D)->initialized
	bne	$2,$0,.L1142	 #, rec_9(D)->initialized,,
	move	$17,$4	 # rec, rec

	li	$2,7			# 0x7	 # tmp371,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp371, FSerrno
	j	.L1143	 #
	li	$2,-1			# 0xffffffff	 # D.29603,

.L1142:
	lw	$3,44($4)	 # rec_9(D)->cwdclus, rec_9(D)->cwdclus
	lw	$2,%gp_rel(cwdptr)($28)	 # cwdptr, cwdptr
	lw	$2,52($2)	 # cwdptr.0_13->dirclus, cwdptr.0_13->dirclus
	beql	$3,$2,.L1144	 #, rec_9(D)->cwdclus, cwdptr.0_13->dirclus,
	addiu	$4,$4,28	 #, rec,

	li	$2,31			# 0x1f	 # tmp375,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp375, FSerrno
	j	.L1143	 #
	li	$2,-1			# 0xffffffff	 # D.29603,

.L1144:
	addiu	$5,$sp,48	 #,,
	jal	FormatFileName	 #
	li	$6,1			# 0x1	 #,

	bnel	$2,$0,.L1145	 #,,,
	lui	$2,%hi(gDiskData)	 # tmp381,

	li	$2,18			# 0x12	 # tmp379,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp379, FSerrno
	j	.L1143	 #
	li	$2,-1			# 0xffffffff	 # D.29603,

.L1145:
	addiu	$2,$2,%lo(gDiskData)	 # tmp380, tmp381,
	sw	$2,16($sp)	 # tmp380, f.dsk
	sw	$0,20($sp)	 #, f.cluster
	sw	$0,24($sp)	 #, f.ccls
	lw	$2,24($17)	 # rec_9(D)->entry, rec_9(D)->entry
	addiu	$2,$2,1	 # tmp384, rec_9(D)->entry,
	sh	$2,60($sp)	 # tmp384, f.entry
	lbu	$2,41($17)	 # rec_9(D)->searchattr, rec_9(D)->searchattr
	sh	$2,64($sp)	 # rec_9(D)->searchattr, f.attributes
	lw	$2,%gp_rel(cwdptr)($28)	 # cwdptr.0, cwdptr
	lw	$3,52($2)	 # cwdptr.0_25->dirclus, cwdptr.0_25->dirclus
	sw	$3,68($sp)	 # cwdptr.0_25->dirclus, f.dirclus
	lw	$2,56($2)	 # cwdptr.0_25->dirccls, cwdptr.0_25->dirccls
	sw	$2,72($sp)	 # cwdptr.0_25->dirccls, f.dirccls
	lui	$16,%hi(gFileTemp)	 # tmp388,
	addiu	$4,$16,%lo(gFileTemp)	 #, tmp388,
	jal	FileObjectCopy	 #
	addiu	$5,$sp,16	 #,,

	addiu	$4,$sp,16	 #,,
	addiu	$5,$16,%lo(gFileTemp)	 #, tmp388,
	li	$6,1			# 0x1	 #,
	jal	FILEfind	 #
	li	$7,1			# 0x1	 #,

	beq	$2,$0,.L1146	 #,,,
	lhu	$3,64($sp)	 # f.attributes, f.attributes

	li	$2,11			# 0xb	 # tmp390,
	sb	$2,%gp_rel(FSerrno)($28)	 # tmp390, FSerrno
	j	.L1143	 #
	li	$2,-1			# 0xffffffff	 # D.29603,

.L1146:
	li	$2,8			# 0x8	 # tmp392,
	beq	$3,$2,.L1147	 #, f.attributes, tmp392,
	lb	$2,48($sp)	 # D.29627, f.name

	li	$3,32			# 0x20	 # tmp393,
	bnel	$2,$3,.L1148	 #, D.29627, tmp393,
	sb	$2,0($17)	 # D.29627, rec_9(D)->filename

	j	.L1149	 #
	move	$2,$0	 # i,

.L1150:
	addiu	$2,$2,1	 # tmp394, i,
	andi	$2,$2,0x00ff	 # i, tmp394
	addiu	$3,$3,1	 # ivtmp.926, ivtmp.926,
	beq	$2,$7,.L1149	 #, i, tmp426,
	addiu	$4,$4,1	 # ivtmp.929, ivtmp.929,

.L1158:
	lb	$5,0($3)	 # D.29627, f.name
	bnel	$5,$6,.L1150	 #, D.29627, tmp425,
	sb	$5,1($4)	 # D.29627, rec->filename

.L1149:
	lw	$4,56($sp)	 # tmp398,
	ext	$4,$4,0,24	 # tmp397, tmp398,
	li	$3,2097152			# 0x200000	 # tmp400,
	addiu	$3,$3,8224	 # tmp399, tmp400,
	beq	$4,$3,.L1151	 #, tmp397, tmp399,
	addu	$3,$17,$2	 # tmp401, rec, i

	li	$4,46			# 0x2e	 # tmp402,
	sb	$4,0($3)	 # tmp402, rec_9(D)->filename
	addiu	$2,$2,1	 # tmp403, i,
	andi	$2,$2,0x00ff	 # i, tmp403
.L1151:
	lb	$4,56($sp)	 # D.29627, f.name
	li	$3,32			# 0x20	 # tmp404,
	bne	$4,$3,.L1152	 #, D.29627, tmp404,
	addu	$3,$17,$2	 # tmp417, rec, i

	j	.L1160	 #
	addu	$2,$17,$2	 # tmp407, rec, i

.L1157:
	addu	$4,$17,$2	 # tmp405, rec, i
	sb	$3,0($4)	 # D.29627, rec_9(D)->filename
	addiu	$2,$2,1	 # tmp406, i,
	andi	$2,$2,0x00ff	 # i, tmp406
.L1153:
	addu	$2,$17,$2	 # tmp407, rec, i
.L1160:
.L1161:
	j	.L1154	 #
	sb	$0,0($2)	 #, rec_9(D)->filename

.L1147:
	addiu	$2,$sp,48	 # ivtmp.935,,
	move	$3,$17	 # ivtmp.938, rec
	addiu	$5,$sp,59	 # D.32890,,
.L1155:
	lbu	$4,0($2)	 #, f.name
	sb	$4,0($3)	 # tmp408, rec->filename
	addiu	$2,$2,1	 # ivtmp.935, ivtmp.935,
	bne	$2,$5,.L1155	 #, ivtmp.935, D.32890,
	addiu	$3,$3,1	 # ivtmp.938, ivtmp.938,

	sb	$0,11($17)	 #, rec_9(D)->filename
.L1154:
	lhu	$2,64($sp)	 #, f.attributes
	sb	$2,13($17)	 # f.attributes, rec_9(D)->attributes
	lw	$2,36($sp)	 # f.size, f.size
	sw	$2,16($17)	 # f.size, rec_9(D)->filesize
	lhu	$2,46($sp)	 # f.date, f.date
	sll	$2,$2,16	 # tmp412, f.date,
	lhu	$3,44($sp)	 # f.time, f.time
	addu	$2,$2,$3	 # tmp414, tmp412, f.time
	sw	$2,20($17)	 # tmp414, rec_9(D)->timestamp
	lhu	$2,60($sp)	 # f.entry, f.entry
	sw	$2,24($17)	 # f.entry, rec_9(D)->entry
	move	$2,$0	 # D.29603,
.L1143:
	lw	$31,92($sp)	 #,
	lw	$17,88($sp)	 #,
	lw	$16,84($sp)	 #,
	j	$31	 #
	addiu	$sp,$sp,96	 #,,

.L1152:
	sb	$4,0($3)	 # D.29627, rec_9(D)->filename
	addiu	$2,$2,1	 # tmp418, i,
	lb	$3,57($sp)	 # D.29627, f.name
	li	$4,32			# 0x20	 # tmp419,
	beq	$3,$4,.L1153	 #, D.29627, tmp419,
	andi	$2,$2,0x00ff	 # i, tmp418

	addu	$4,$17,$2	 # tmp420, rec, i
	sb	$3,0($4)	 # D.29627, rec_9(D)->filename
	addiu	$2,$2,1	 # tmp421, i,
	lb	$3,58($sp)	 # D.29627, f.name
	li	$4,32			# 0x20	 # tmp422,
	bne	$3,$4,.L1157	 #, D.29627, tmp422,
	andi	$2,$2,0x00ff	 # i, tmp421

	j	.L1161	 #
	addu	$2,$17,$2	 # tmp407, rec, i

.L1148:
	addiu	$3,$sp,49	 # ivtmp.926,,
	move	$4,$17	 # ivtmp.929, rec
	li	$2,1			# 0x1	 # i,
	li	$6,32			# 0x20	 # tmp425,
	j	.L1158	 #
	li	$7,8			# 0x8	 # tmp426,

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	FindNext
	.size	FindNext, .-FindNext
	.globl	gLastFATSectorRead
	.section	.sdata,data,near
	.align	2
	.type	gLastFATSectorRead, @object
	.size	gLastFATSectorRead, 4
gLastFATSectorRead:
	.word	-1
	.globl	gNeedFATWrite
	.section	.sbss,bss,near
	.type	gNeedFATWrite, @object
	.size	gNeedFATWrite, 1
gNeedFATWrite:
	.space	1
	.globl	gBufferOwner
	.align	2
	.type	gBufferOwner, @object
	.size	gBufferOwner, 4
gBufferOwner:
	.space	4
	.globl	gLastDataSectorRead
	.section	.sdata,data,near
	.align	2
	.type	gLastDataSectorRead, @object
	.size	gLastDataSectorRead, 4
gLastDataSectorRead:
	.word	-1
	.globl	gNeedDataWrite
	.section	.sbss,bss,near
	.type	gNeedDataWrite, @object
	.size	gNeedDataWrite, 1
gNeedDataWrite:
	.space	1
	.globl	nextClusterIsLast
	.type	nextClusterIsLast, @object
	.size	nextClusterIsLast, 1
nextClusterIsLast:
	.space	1
	.globl	gBufferZeroed
	.type	gBufferZeroed, @object
	.size	gBufferZeroed, 1
gBufferZeroed:
	.space	1
	.globl	recache
	.type	recache, @object
	.size	recache, 1
recache:
	.space	1
	.globl	cwdptr
	.section	.sdata,data,near
	.align	2
	.type	cwdptr, @object
	.size	cwdptr, 4
cwdptr:
	.word	cwd

	.comm	gTimeCrtMS,1,1

	.comm	gTimeCrtTime,2,2

	.comm	gTimeCrtDate,2,2

	.comm	gTimeAccDate,2,2

	.comm	gTimeWrtTime,2,2

	.comm	gTimeWrtDate,2,2

	.comm	FatRootDirClusterValue,4,4

	.comm	FSerrno,1,1

	.comm	TempClusterCalc,4,4

	.comm	dirCleared,1,1

	.comm	tempCWDobj,60,4

	.comm	gFileTemp,60,4

	.comm	cwd,60,4

	.comm	gDataBuffer,512,4

	.comm	gFATBuffer,512,4

	.comm	gDiskData,38,4

	.comm	defaultString,13,4

	.comm	defaultArray,10,4
	.ident	"GCC: (Microchip Technology) 4.5.1 MPLAB C Compiler for PIC32 MCUs v2.01-20110816"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
