.section .text
.globl _start
_start:
      li sp, 0x00000400 # Memoria de 8kB
      csrrwi x0,5,0x14
      csrrwi x0,6,0x1F
      csrrsi x0,0,0x00
      j Main
Interrupt_handler:
      csrrci x0,0,0x01
      csrrs a1,1,x0
      addi a1,a1,4
      csrrw x0,1,a1
      mret
Main:
      li s0,4000
      csrrw x0,6,s0
      csrrsi x0,0,0x01
ciclo:
      j ciclo
main2:
      li s0,4000
      csrrw x0,6,s0
      csrrsi x0,0,0x01
ciclo2:
      j ciclo2
finish:
      li t6,0x00000300
      jalr x0,0(t6)
