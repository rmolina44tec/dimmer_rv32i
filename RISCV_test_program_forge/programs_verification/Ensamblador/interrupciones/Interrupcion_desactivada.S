.section .text
.globl _start
_start:
      li sp, 0x00000400 # Memoria de 8kB
      csrrwi x0,5,0x14
      csrrwi x0,6,0x1F
      csrrsi x0,0,0
      j Main
Interrupt_handler:
      li t6,0x00000300
      jalr x0,0(t6)
Main:
      li s0,0x4433F211
      li s1,0x01036640
      sb s0,0(s1)
      lb s0,0(s1)
ciclo:
      j ciclo
