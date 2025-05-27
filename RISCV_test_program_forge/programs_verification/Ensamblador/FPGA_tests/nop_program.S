.section .text
.globl _start
_start:
#Description:
#This program just loops NOP instructions to measure power consumption.
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#NOPs loop
loop:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	j loop
