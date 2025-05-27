.section .text
.globl _start
_start:
      li sp, 0x00001000 # Memoria de 8kB
      csrrwi x0,5,0x0c
      j main
Interrupt_handler:
      addi sp,sp,-120
#----Rutina de guardado------------------
      sw ra,116(sp)
      sw gp,112(sp)
      sw tp,108(sp)
      sw t0,104(sp)
      sw t1,100(sp)
      sw t2,96(sp)
      sw s0,92(sp)
      sw s1,88(sp)
      sw a0,84(sp)
      sw a1,80(sp)
      sw a2,76(sp)
      sw a3,72(sp)
      sw a4,68(sp)
      sw a5,64(sp)
      sw a6,60(sp)
      sw a7,56(sp)
      sw s2,52(sp)
      sw s3,48(sp)
      sw s4,44(sp)
      sw s5,40(sp)
      sw s6,36(sp)
      sw s7,32(sp)
      sw s8,28(sp)
      sw s9,24(sp)
      sw s10,20(sp)
      sw s11,16(sp)
      sw t3,12(sp)
      sw t4,8(sp)
      sw t5,4(sp)
      csrrw s0,2,x0
      csrrw s1,3,x0
      li s2,0x00000003
      andi s3,s1,0x003
      beq s3,s2,timer
timer:
      li s4,0xFFFF0000
      li s5,0x00000400
      sw s4,0(s5)
      j Retorno
Retorno:
      lw ra,116(sp)
      lw gp,112(sp)
      lw tp,108(sp)
      lw t0,104(sp)
      lw t1,100(sp)
      lw t2,96(sp)
      lw s0,92(sp)
      lw s1,88(sp)
      lw a0,84(sp)
      lw a1,80(sp)
      lw a2,76(sp)
      lw a3,72(sp)
      lw a4,68(sp)
      lw a5,64(sp)
      lw a6,60(sp)
      lw a7,56(sp)
      lw s2,52(sp)
      lw s3,48(sp)
      lw s4,44(sp)
      lw s5,40(sp)
      lw s6,36(sp)
      lw s7,32(sp)
      lw s8,28(sp)
      lw s9,24(sp)
      lw s10,20(sp)
      lw s11,16(sp)
      lw t3,12(sp)
      lw t4,8(sp)
      lw t5,4(sp)
main:
      add t6,x0,x0
      csrrwi x0,6,0x0c
      csrrsi x0,0,0x01
ciclo:
      beq t6,x0,ciclo
      csrrci x0,0,0x01
      li s0,0x00000400
      li s1,0xFFFF0000
      lw a0,0(s0)
      bne s0,s1,fail
      beq s0,s1,success
      j fail
#---------------------------------------------------------------------
#-------------------------fail----------------------------------------
#---------------------------------------------------------------------
fail:
        li t6,0x00000300
        jalr x0,0(t6)
#---------------------------------------------------------------------
#-------------------------success-------------------------------------
#---------------------------------------------------------------------
success:
        li t6,0x00000200
        jalr x0,0(t6)
