.section .text
.globl _start
_start:
#Description:
#This program makes simple arithmetic and logic calculations, afterwards it turns on a LED connected to a GPIO port and sends data through the UART port if the results are correct.
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
#Now, perform a simple arithmetic operation:
# Partial_Result = 10 + 7 = 17
# Final_Result   = 17 - 5 = 12
#-------------------------------------------------------------------------------
	addi a0, zero, 10
	addi a1, zero, 7
	add a2, a0, a1
	addi a3, zero, 5
	sub a4, a2, a3
#-------------------------------------------------------------------------------
#The Final_Result is now stored on a4 register (x14).
#Let's send the result to the UART port.
#-------------------------------------------------------------------------------
	li s0,0x00989680 #this is a UART addr on the Memory Map
	sw a4,0(s0)      #send data to the UART
#-------------------------------------------------------------------------------
#That is going to take a while. Now, let's test a logic operation using a #mask over a lot of 1's
# Unmasked_value = 0xFFFFFFFF
# Mask           = 0xA0C26F00
# Masked_Value   = 0xA0C26F00 (expected result)
#-------------------------------------------------------------------------------
	li a0, 0xFFFFFFFF
	li a1, 0xA0C26F00
	and a2, a0, a1
#-------------------------------------------------------------------------------
#If the result is the expected one, a GPIO LED will turn on.
#Let's send the result to the UART port.
#-------------------------------------------------------------------------------
	bne a1, a2, loop #if the result is bad just end the test
	li a0,0x00000001 #if the result is correct, turn on a GPIO LED
	csrrw x0,4,a0    #send the output to the GPIO port
loop:
	j loop
