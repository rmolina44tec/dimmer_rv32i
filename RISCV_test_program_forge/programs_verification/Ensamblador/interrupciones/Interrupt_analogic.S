.section .text
.globl _start
_start:
            li sp, 0x00000400 # Memoria de 8kB 
            csrrwi x0,5,0x14
            csrrwi x0,6,0x1F
            csrrsi x0,0,0x12
            j Main
      Interrupt_handler:
            li t6,0x00000300
            jalr x0,0(t6)
Main:
            li t3,1

ciclo:
            j ciclo
