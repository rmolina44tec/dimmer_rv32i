.section .text
.globl _start
.equ rv, 0x00000400
_start:
#Description:
#This program writes and reads data at the main memory. If the read data matches the written data then a LED is turned on.
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#initialize all General Purpose Registers
	addi x1,x0,0
	addi x2,x0,0
	addi x3,x0,0
	addi x4,x0,0
	addi x5,x0,0
	addi x6,x0,0
	addi x7,x0,0
	addi x8,x0,0
	addi x9,x0,0
	addi x10,x0,0
	addi x11,x0,0
	addi x12,x0,0
	addi x13,x0,0
	addi x14,x0,0
	addi x15,x0,0
	addi x16,x0,0
	addi x17,x0,0
	addi x18,x0,0
	addi x19,x0,0
	addi x20,x0,0
	addi x21,x0,0
	addi x22,x0,0
	addi x23,x0,0
	addi x24,x0,0
	addi x25,x0,0
	addi x26,x0,0
	addi x27,x0,0
	addi x28,x0,0
	addi x29,x0,0
	addi x30,x0,0
	addi x31,x0,0
#-------------------------------------------------------------------------------
#Load the Stack Pointer and some values to store inside the memory
#-------------------------------------------------------------------------------
	li sp,rv
	li a0,0xeeee2222
    	li a1,0xdddd3333
	sw a0,0(sp)
    	sw a1,4(sp)
#-------------------------------------------------------------------------------
#Load back from memory the values and check if they are correct
#-------------------------------------------------------------------------------
	lw a2,0(sp)
    	lw a3,4(sp)
#-------------------------------------------------------------------------------
#If the result is the expected one, a GPIO LED will turn on.
#-------------------------------------------------------------------------------
	bne a0, a2, loop #if the result is bad just end the test
	bne a1, a3, loop #if the result is bad just end the test	
	li a0,0x00000001 #if the result is correct, turn on a GPIO LED
	csrrw x0,4,a0    #send the output to the GPIO port
loop:
	j loop
