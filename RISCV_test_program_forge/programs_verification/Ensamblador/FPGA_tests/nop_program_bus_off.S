.section .text
.globl _start
_start:
#Description:
#This program just loops NOP instructions to measure power consumption.
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#CSR configuration: activate timer, enable analog interruption, set interrupt address
#-------------------------------------------------------------------------------
#t0 register holds the MIE/MIP CSR configuration value
#-------------------------------------------------------------------------------
	li t0,0x00000000			#bus disabled and maie enabled, the rest is clear by default
	csrrw x0,0,t0 #MIE/MIP CSR
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
