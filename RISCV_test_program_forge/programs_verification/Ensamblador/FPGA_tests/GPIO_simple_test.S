.section .text
.globl _start
_start:
#Description:
#This program just turns on the LEDs connected to the GPIO ports of SIWA, and then they start to blink (around 0.5s).
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#ra register holds the GPIO CSR value
loop:
	li ra,0x00000010
#-------------------------------------------------------------------------------
#Before writting the GPIO CSR, the CSR read mode must be enabled on the MIE/MIP register. s0 holds this value
#-------------------------------------------------------------------------------
	li s0,0x00010002
#-------------------------------------------------------------------------------
#Now let's write the CSR registers
#-------------------------------------------------------------------------------
	csrrw x0,0,s0
	csrrw x0,4,ra
	addi s1,x0,0
	li s2,50
wait:
	addi s1,s1,1
	bne s1,s2,wait

#-------------------------------------------------------------------------------
#Turn the LEDs off
#-------------------------------------------------------------------------------
	li ra,0x00000000
	csrrw x0,4,ra
	addi s1,x0,0
	li s2,50
wait2:
	addi s1,s1,1
	bne s1,s2,wait2
#loop:
	j loop
