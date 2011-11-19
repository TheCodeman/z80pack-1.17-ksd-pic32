#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile

# Environment
# Adding MPLAB X bin directory to path
PATH:=/Applications/microchip/mplabx/mplab_ide.app/Contents/Resources/mplab_ide/mplab_ide/modules/../../bin/:$(PATH)
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=CPM-Maximite
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/z80pack-1.17.X.${IMAGE_TYPE}.elf
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/z80pack-1.17.X.${IMAGE_TYPE}.elf
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Keyboard/Keyboard.o ${OBJECTDIR}/Video/DrawChar.o ${OBJECTDIR}/Video/Video.o ${OBJECTDIR}/_ext/1352663294/FSIO.o ${OBJECTDIR}/_ext/1352663294/SD-SPI.o ${OBJECTDIR}/_ext/1472/VT100.o ${OBJECTDIR}/_ext/1472/uart1.o ${OBJECTDIR}/_ext/1472/uart2.o ${OBJECTDIR}/_ext/1472/uart5.o ${OBJECTDIR}/_ext/1845873724/iosim.o ${OBJECTDIR}/_ext/1845873724/simctl.o ${OBJECTDIR}/_ext/664612396/disas.o ${OBJECTDIR}/_ext/664612396/sim0.o ${OBJECTDIR}/_ext/664612396/sim1.o ${OBJECTDIR}/_ext/664612396/sim2.o ${OBJECTDIR}/_ext/664612396/sim3.o ${OBJECTDIR}/_ext/664612396/sim4.o ${OBJECTDIR}/_ext/664612396/sim5.o ${OBJECTDIR}/_ext/664612396/sim6.o ${OBJECTDIR}/_ext/664612396/sim7.o ${OBJECTDIR}/_ext/664612396/simfun.o ${OBJECTDIR}/_ext/664612396/simglb.o ${OBJECTDIR}/_ext/664612396/simint.o

# Object Files
OBJECTFILES=${OBJECTDIR}/Keyboard/Keyboard.o ${OBJECTDIR}/Video/DrawChar.o ${OBJECTDIR}/Video/Video.o ${OBJECTDIR}/_ext/1352663294/FSIO.o ${OBJECTDIR}/_ext/1352663294/SD-SPI.o ${OBJECTDIR}/_ext/1472/VT100.o ${OBJECTDIR}/_ext/1472/uart1.o ${OBJECTDIR}/_ext/1472/uart2.o ${OBJECTDIR}/_ext/1472/uart5.o ${OBJECTDIR}/_ext/1845873724/iosim.o ${OBJECTDIR}/_ext/1845873724/simctl.o ${OBJECTDIR}/_ext/664612396/disas.o ${OBJECTDIR}/_ext/664612396/sim0.o ${OBJECTDIR}/_ext/664612396/sim1.o ${OBJECTDIR}/_ext/664612396/sim2.o ${OBJECTDIR}/_ext/664612396/sim3.o ${OBJECTDIR}/_ext/664612396/sim4.o ${OBJECTDIR}/_ext/664612396/sim5.o ${OBJECTDIR}/_ext/664612396/sim6.o ${OBJECTDIR}/_ext/664612396/sim7.o ${OBJECTDIR}/_ext/664612396/simfun.o ${OBJECTDIR}/_ext/664612396/simglb.o ${OBJECTDIR}/_ext/664612396/simint.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH="/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin/"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC="/Applications/microchip/mplabc32/v2.01/bin/pic32-gcc"
# MP_BC is not defined
MP_AS="/Applications/microchip/mplabc32/v2.01/bin/pic32-as"
MP_LD="/Applications/microchip/mplabc32/v2.01/bin/pic32-ld"
MP_AR="/Applications/microchip/mplabc32/v2.01/bin/pic32-ar"
DEP_GEN=${MP_JAVA_PATH}java -jar "/Applications/microchip/mplabx/mplab_ide.app/Contents/Resources/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="/Applications/microchip/mplabc32/v2.01/bin"
# MP_BC_DIR is not defined
MP_AS_DIR="/Applications/microchip/mplabc32/v2.01/bin"
MP_LD_DIR="/Applications/microchip/mplabc32/v2.01/bin"
MP_AR_DIR="/Applications/microchip/mplabc32/v2.01/bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-CPM-Maximite.mk dist/${CND_CONF}/${IMAGE_TYPE}/z80pack-1.17.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=32MX795F512H
MP_LINKER_FILE_OPTION=,--script="../chipKIT-MAX32-application-32MX795F512L.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Keyboard/Keyboard.o: Keyboard/Keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Keyboard 
	@${RM} ${OBJECTDIR}/Keyboard/Keyboard.o.d 
	@${FIXDEPS} "${OBJECTDIR}/Keyboard/Keyboard.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/Keyboard/Keyboard.o.d" -o ${OBJECTDIR}/Keyboard/Keyboard.o Keyboard/Keyboard.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1352663294/SD-SPI.o: ../SDCard/Microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1352663294 
	@${RM} ${OBJECTDIR}/_ext/1352663294/SD-SPI.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1352663294/SD-SPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1352663294/SD-SPI.o.d" -o ${OBJECTDIR}/_ext/1352663294/SD-SPI.o "../SDCard/Microchip/MDD File System/SD-SPI.c"   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim3.o: ../z80sim/sim3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim3.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim3.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim3.o.d" -o ${OBJECTDIR}/_ext/664612396/sim3.o ../z80sim/sim3.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1472/VT100.o: ../VT100.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/VT100.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/VT100.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/VT100.o.d" -o ${OBJECTDIR}/_ext/1472/VT100.o ../VT100.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1845873724/iosim.o: ../cpmsim/srcsim/iosim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1845873724 
	@${RM} ${OBJECTDIR}/_ext/1845873724/iosim.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1845873724/iosim.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1845873724/iosim.o.d" -o ${OBJECTDIR}/_ext/1845873724/iosim.o ../cpmsim/srcsim/iosim.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1472/uart2.o: ../uart2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/uart2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/uart2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/uart2.o.d" -o ${OBJECTDIR}/_ext/1472/uart2.o ../uart2.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1472/uart1.o: ../uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/uart1.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/uart1.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/uart1.o.d" -o ${OBJECTDIR}/_ext/1472/uart1.o ../uart1.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim7.o: ../z80sim/sim7.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim7.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim7.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim7.o.d" -o ${OBJECTDIR}/_ext/664612396/sim7.o ../z80sim/sim7.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim0.o: ../z80sim/sim0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim0.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim0.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim0.o.d" -o ${OBJECTDIR}/_ext/664612396/sim0.o ../z80sim/sim0.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/simglb.o: ../z80sim/simglb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/simglb.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/simglb.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/simglb.o.d" -o ${OBJECTDIR}/_ext/664612396/simglb.o ../z80sim/simglb.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim1.o: ../z80sim/sim1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim1.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim1.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim1.o.d" -o ${OBJECTDIR}/_ext/664612396/sim1.o ../z80sim/sim1.c   -funsigned-char 
	
${OBJECTDIR}/Video/Video.o: Video/Video.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Video 
	@${RM} ${OBJECTDIR}/Video/Video.o.d 
	@${FIXDEPS} "${OBJECTDIR}/Video/Video.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/Video/Video.o.d" -o ${OBJECTDIR}/Video/Video.o Video/Video.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim6.o: ../z80sim/sim6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim6.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim6.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim6.o.d" -o ${OBJECTDIR}/_ext/664612396/sim6.o ../z80sim/sim6.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/disas.o: ../z80sim/disas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/disas.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/disas.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/disas.o.d" -o ${OBJECTDIR}/_ext/664612396/disas.o ../z80sim/disas.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/simfun.o: ../z80sim/simfun.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/simfun.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/simfun.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/simfun.o.d" -o ${OBJECTDIR}/_ext/664612396/simfun.o ../z80sim/simfun.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/simint.o: ../z80sim/simint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/simint.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/simint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/simint.o.d" -o ${OBJECTDIR}/_ext/664612396/simint.o ../z80sim/simint.c   -funsigned-char 
	
${OBJECTDIR}/Video/DrawChar.o: Video/DrawChar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Video 
	@${RM} ${OBJECTDIR}/Video/DrawChar.o.d 
	@${FIXDEPS} "${OBJECTDIR}/Video/DrawChar.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/Video/DrawChar.o.d" -o ${OBJECTDIR}/Video/DrawChar.o Video/DrawChar.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim4.o: ../z80sim/sim4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim4.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim4.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim4.o.d" -o ${OBJECTDIR}/_ext/664612396/sim4.o ../z80sim/sim4.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1352663294/FSIO.o: ../SDCard/Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1352663294 
	@${RM} ${OBJECTDIR}/_ext/1352663294/FSIO.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1352663294/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1352663294/FSIO.o.d" -o ${OBJECTDIR}/_ext/1352663294/FSIO.o "../SDCard/Microchip/MDD File System/FSIO.c"   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim5.o: ../z80sim/sim5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim5.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim5.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim5.o.d" -o ${OBJECTDIR}/_ext/664612396/sim5.o ../z80sim/sim5.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1472/uart5.o: ../uart5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/uart5.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/uart5.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/uart5.o.d" -o ${OBJECTDIR}/_ext/1472/uart5.o ../uart5.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim2.o: ../z80sim/sim2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim2.o.d" -o ${OBJECTDIR}/_ext/664612396/sim2.o ../z80sim/sim2.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1845873724/simctl.o: ../cpmsim/srcsim/simctl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1845873724 
	@${RM} ${OBJECTDIR}/_ext/1845873724/simctl.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1845873724/simctl.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1845873724/simctl.o.d" -o ${OBJECTDIR}/_ext/1845873724/simctl.o ../cpmsim/srcsim/simctl.c   -funsigned-char 
	
else
${OBJECTDIR}/Keyboard/Keyboard.o: Keyboard/Keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Keyboard 
	@${RM} ${OBJECTDIR}/Keyboard/Keyboard.o.d 
	@${FIXDEPS} "${OBJECTDIR}/Keyboard/Keyboard.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/Keyboard/Keyboard.o.d" -o ${OBJECTDIR}/Keyboard/Keyboard.o Keyboard/Keyboard.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1352663294/SD-SPI.o: ../SDCard/Microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1352663294 
	@${RM} ${OBJECTDIR}/_ext/1352663294/SD-SPI.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1352663294/SD-SPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1352663294/SD-SPI.o.d" -o ${OBJECTDIR}/_ext/1352663294/SD-SPI.o "../SDCard/Microchip/MDD File System/SD-SPI.c"   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim3.o: ../z80sim/sim3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim3.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim3.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim3.o.d" -o ${OBJECTDIR}/_ext/664612396/sim3.o ../z80sim/sim3.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1472/VT100.o: ../VT100.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/VT100.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/VT100.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/VT100.o.d" -o ${OBJECTDIR}/_ext/1472/VT100.o ../VT100.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1845873724/iosim.o: ../cpmsim/srcsim/iosim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1845873724 
	@${RM} ${OBJECTDIR}/_ext/1845873724/iosim.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1845873724/iosim.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1845873724/iosim.o.d" -o ${OBJECTDIR}/_ext/1845873724/iosim.o ../cpmsim/srcsim/iosim.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1472/uart2.o: ../uart2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/uart2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/uart2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/uart2.o.d" -o ${OBJECTDIR}/_ext/1472/uart2.o ../uart2.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1472/uart1.o: ../uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/uart1.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/uart1.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/uart1.o.d" -o ${OBJECTDIR}/_ext/1472/uart1.o ../uart1.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim7.o: ../z80sim/sim7.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim7.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim7.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim7.o.d" -o ${OBJECTDIR}/_ext/664612396/sim7.o ../z80sim/sim7.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim0.o: ../z80sim/sim0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim0.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim0.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim0.o.d" -o ${OBJECTDIR}/_ext/664612396/sim0.o ../z80sim/sim0.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/simglb.o: ../z80sim/simglb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/simglb.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/simglb.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/simglb.o.d" -o ${OBJECTDIR}/_ext/664612396/simglb.o ../z80sim/simglb.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim1.o: ../z80sim/sim1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim1.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim1.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim1.o.d" -o ${OBJECTDIR}/_ext/664612396/sim1.o ../z80sim/sim1.c   -funsigned-char 
	
${OBJECTDIR}/Video/Video.o: Video/Video.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Video 
	@${RM} ${OBJECTDIR}/Video/Video.o.d 
	@${FIXDEPS} "${OBJECTDIR}/Video/Video.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/Video/Video.o.d" -o ${OBJECTDIR}/Video/Video.o Video/Video.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim6.o: ../z80sim/sim6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim6.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim6.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim6.o.d" -o ${OBJECTDIR}/_ext/664612396/sim6.o ../z80sim/sim6.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/disas.o: ../z80sim/disas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/disas.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/disas.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/disas.o.d" -o ${OBJECTDIR}/_ext/664612396/disas.o ../z80sim/disas.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/simfun.o: ../z80sim/simfun.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/simfun.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/simfun.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/simfun.o.d" -o ${OBJECTDIR}/_ext/664612396/simfun.o ../z80sim/simfun.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/simint.o: ../z80sim/simint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/simint.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/simint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/simint.o.d" -o ${OBJECTDIR}/_ext/664612396/simint.o ../z80sim/simint.c   -funsigned-char 
	
${OBJECTDIR}/Video/DrawChar.o: Video/DrawChar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Video 
	@${RM} ${OBJECTDIR}/Video/DrawChar.o.d 
	@${FIXDEPS} "${OBJECTDIR}/Video/DrawChar.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/Video/DrawChar.o.d" -o ${OBJECTDIR}/Video/DrawChar.o Video/DrawChar.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim4.o: ../z80sim/sim4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim4.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim4.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim4.o.d" -o ${OBJECTDIR}/_ext/664612396/sim4.o ../z80sim/sim4.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1352663294/FSIO.o: ../SDCard/Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1352663294 
	@${RM} ${OBJECTDIR}/_ext/1352663294/FSIO.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1352663294/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1352663294/FSIO.o.d" -o ${OBJECTDIR}/_ext/1352663294/FSIO.o "../SDCard/Microchip/MDD File System/FSIO.c"   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim5.o: ../z80sim/sim5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim5.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim5.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim5.o.d" -o ${OBJECTDIR}/_ext/664612396/sim5.o ../z80sim/sim5.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1472/uart5.o: ../uart5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/uart5.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/uart5.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/uart5.o.d" -o ${OBJECTDIR}/_ext/1472/uart5.o ../uart5.c   -funsigned-char 
	
${OBJECTDIR}/_ext/664612396/sim2.o: ../z80sim/sim2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/664612396 
	@${RM} ${OBJECTDIR}/_ext/664612396/sim2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/664612396/sim2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/664612396/sim2.o.d" -o ${OBJECTDIR}/_ext/664612396/sim2.o ../z80sim/sim2.c   -funsigned-char 
	
${OBJECTDIR}/_ext/1845873724/simctl.o: ../cpmsim/srcsim/simctl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1845873724 
	@${RM} ${OBJECTDIR}/_ext/1845873724/simctl.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1845873724/simctl.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DMaximite -I"/Volumes/WD320GB/z80pack-1.17/Microchip/Include" -I"/Volumes/WD320GB/z80pack-1.17/z80pack-1.17.X" -I"/Volumes/WD320GB/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard/Microchip/Include" -I"M:/z80pack-1.17/SDCard" -O1 -MMD -MF "${OBJECTDIR}/_ext/1845873724/simctl.o.d" -o ${OBJECTDIR}/_ext/1845873724/simctl.o ../cpmsim/srcsim/simctl.c   -funsigned-char 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/z80pack-1.17.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/z80pack-1.17.X.${IMAGE_TYPE}.elf ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=16384,--defsym=_min_stack_size=4096,-O1 
else
dist/${CND_CONF}/${IMAGE_TYPE}/z80pack-1.17.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/z80pack-1.17.X.${IMAGE_TYPE}.elf ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=16384,--defsym=_min_stack_size=4096,-O1
	${MP_CC_DIR}/pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/z80pack-1.17.X.${IMAGE_TYPE}.elf  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/CPM-Maximite
	${RM} -r dist/CPM-Maximite

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard $(addsuffix .d, ${OBJECTFILES}))
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
