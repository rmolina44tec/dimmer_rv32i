.section .text
.globl _start
.equ wait_time, 5
_start:
#Description:
#This program just turns on the LEDs connected to the GPIO ports of SIWA, and then they start to blink (around 0.5s).
#-------------------------------------------------------------------------------
#Before writting the GPIO CSR, the CSR read mode must be enabled on the MIE/MIP register. s0 holds this value
#-------------------------------------------------------------------------------
	li t0,0x00010002
	csrrw x0,0,t0
	li s1,0			#timer_counter
	li s3,0			#state register
	li s4,0			#up_down register
	j wait
#-------------------------------------------------------------------------------
#Now let's write the CSR registers
#-------------------------------------------------------------------------------
change_led:
	li t0,0
	beq s3,t0,gpio4
	li t0,1
	beq s3,t0,gpio5
	li t0,2
	beq s3,t0,gpio6
	li t0,3
	beq s3,t0,gpio7
gpio4:
	li t0,0x00000010
	j next_led
	
gpio5:
	li t0,0x00000020
	j next_led
	
gpio6:
	li t0,0x00000040
	j next_led
	
gpio7:
	li t0,0x00000080
	j next_led
next_led:
	csrrw x0,4,t0
	li t1,0
	beq s4,t1,up
	li t1,1
	beq s4,t1,down
up:
	li s4,0
	li t0,3
	beq s3,t0,down
	addi s3,s3,1
	li s1,0
	j wait
down:
	li s4,1
	li t0,0
	beq s3,t0,up
	addi s3,s3,-1
	li s1,0
	j wait
wait:
	li s2,wait_time
	addi s1,s1,1
	bge s1,s2,change_led
	j wait
