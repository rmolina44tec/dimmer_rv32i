.section .text
.globl _start
.equ ONE, 5
.equ TEN, 10
.equ FORTY, 40
.equ SEVENTY, 70
.equ EIGHTY, 80
.equ HUNDRED, 100

.equ WAIT_ONE, 85
.equ WAIT_TEN, 80
.equ WAIT_FORTY, 50
.equ WAIT_SEVENTY, 20
.equ WAIT_EIGHTY, 10

.equ PULSE,10
.equ DEBOUNCE_DELAY, 20 # Debounce time

_start:
    jal x0, main

main:
    li s0, 0x00010002       # Configure CSR read mode
    csrrw x0, 0, s0
    
    li s1, 0                # General counter
    li s4, 0                # Initial state
    li s5, PULSE            # Time that GPIO4 stays high
    
main_loop1:
    li ra, 0x00000020       # Button test
    csrrw x0, 4, ra         # Button test
    jal x0, debounce_button  # Call debounce function
    
main_loop:
    
    # Evaluate state and adjust timer
    li t0, 0
    li s2, EIGHTY
    li s3, WAIT_EIGHTY
    beq s4, t0, wait_gpio4      
    li t0, 1
    li s2, SEVENTY
    li s3, WAIT_SEVENTY
    beq s4, t0, wait_gpio4     
    li t0, 2
    li s2, FORTY
    li s3, WAIT_FORTY
    beq s4, t0, wait_gpio4     
    li t0, 3
    li s2, TEN
    li s3, WAIT_TEN
    beq s4, t0, wait_gpio4  
    li t0, 4
    li s2, ONE
    li s3, WAIT_ONE
    beq s4, t0, wait_gpio4  
    li t0, 5
    li s2, HUNDRED 
    beq s4, t0, hundred_percent_state  
    j main_loop
    
    
update_state:
    li ra, 0x00000000       # Button test
    csrrw x0, 4, ra         # Button test
    addi s4, s4, 1          # Increment state
    li t3, 5
    bgt s4, t3, reset_state # If state > 5, reset
    j main_loop


reset_state:
    li s4, 0                # Reset state to 0
    j main_loop
    
    
wait_gpio4:    
    li ra, 0x00000000
    csrrw x0, 4, ra         # Write to GPIO
    li s1, 0                # Reset counter
    
    # Wait for low cycle
wait_low:
    addi s1, s1, 1
    beq s1, s2, wait_high   # Jump to high cycle if counter reached
    j wait_low

wait_high:
    li s1, 0                # Reset counter
    li ra, 0x00000010
    csrrw x0, 4, ra         # Reset GPIO

 # Wait for high cycle
wait_timer:
    addi s1, s1, 1
    beq s1, s5, wait_low_2    # Return to main loop if counter reached
    j wait_timer
    
wait_low_2:
   li s1, 0                # Reset counter
   li ra, 0x00000000
   csrrw x0, 4, ra         # Reset GPIO

# Wait for low cycle 2
wait_timer_2:
    addi s1, s1, 1
    beq s1, s3, main_loop1   # Jump to high cycle if counter reached
    j wait_timer_2

hundred_percent_state:
   li s1, 0                # Reset counter
   li ra, 0x00000000
   csrrw x0, 4, ra         # Reset GPIO
wait_hundred:
   addi s1, s1, 1
   beq s1, s2, main_loop1   # Jump to high cycle if counter reached
   j wait_hundred
   
# Debounce function
debounce_button:
    li t2, 0               # Initialize debounce counter
    
debounce_loop:
    csrrs t1, 4, ra        # Read GPIO5
    andi t1, t1, 0x20      # Mask to read button bit
    beqz t1, main_loop     # If not pressed, exit
    
    addi t2, t2, 1         # Increment debounce counter
    li t3, DEBOUNCE_DELAY  # Load debounce value
    blt t2, t3, debounce_loop # Repeat if debounce time not reached
    
    j update_state         # Update state if debounce successful


    

    



      
      



