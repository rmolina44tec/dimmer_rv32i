.section .text
.globl _start
_start:
            li sp, 0x00000400 # Memoria de 8kB
            csrrwi x0,5,0x14
            csrrwi x0,6,0x1F
            csrrsi x0,0,0x02
            j Main
      Interrupt_handler:
            addi sp,sp,-128
      #----Rutina de guardado-----------------------------------
            sw t6,124(sp)
            sw t5,120(sp)
            sw t4,116(sp)
            sw t3,112(sp)
            sw s11,108(sp)
            sw s10,104(sp)
            sw s9,100(sp)
            sw s8,96(sp)
            sw s7,92(sp)
            sw s6,88(sp)
            sw s5,84(sp)
            sw s4,80(sp)
            sw s3,76(sp)
            sw s2,72(sp)
            sw a7,68(sp)
            sw a6,64(sp)
            sw a5,60(sp)
            sw a4,56(sp)
            sw a3,52(sp)
            sw a2,48(sp)
            sw a1,44(sp)
            sw a0,40(sp)
            sw s1,36(sp)
            sw s0,32(sp)
            sw t2,28(sp)
            sw t1,24(sp)
            sw t0,20(sp)
            sw tp,16(sp)
            sw gp,12(sp)
            sw sp,8(sp)
            sw ra,4(sp)
            csrrs a1,1,x0
            addi a1,a1,4
            csrrw x0,1,a1
      #----Lectura de los Status y identificación-----------------
            csrrw s0,2,x0
            csrrw s1,3,x0
            andi s2,s0,0x007
            beq s2,x0,BAD_ADD
            li s3,1
            beq s2,s3,SPI
            li t6,0x00000500
            jalr x0,0(t6)

      BAD_ADD:
      #--------------Suma cuatro mepc para retornar---------------
            csrrs s4,1,x0
            addi s4,s4,0x004
            csrrw x0,1,s4
      #------------Obtención R1-----------------------------------
            srli s6,s0,10
            andi s2,s6,0x01F
            sll s2,s2,2
            add s2,s2,sp
            lw s2,0(s2)
      #-----------Obtención de inmediato--------------------------
            srai s4,s0,20
      #-----------Identificación----------------------------------
            andi s5,s0,0x3F8
            srli s5,s5,3
            li s3,0x00000013
            beq s5,s3,save_miss
            li s3,0x0000000B
            beq s5,s3,save_miss
            li s3,0x00000014
            beq s5,s3,load_miss
            li s3,0x0000000c
            beq s5,s3,load_miss
            li s3,0x0000002c
            beq s5,s3,load_miss
      save_miss:
      #--------Obtención R2----------------------------------------
            andi s3,s6,0x1e0
            srli s3,s3,5
            sll s3,s3,2
            add s3,s3,sp
            lw s3,0(s3)
      #-------Operación Guardado-----------------------------------
            add s2,s2,s4
            sb s3,0(s2)
            srli s3,s3,8
            sb s3,1(s2)
            li s7,0x0000000B
            beq s7,s5,Retorno
            srli s3,s3,8
            sb s3,2(s2)
            srli s3,s3,8
            sb s3,3(s2)
            j Retorno
      load_miss:
      #---------Obtengo RD------------------------------------------
            andi s3,s1,0x01F
            sll s3,s3,2
            add s3,s3,sp
      #---------Operacion de lectura--------------------------------
            add s2,s2,s4
            lbu s4,0(s2)
            li s7,0x0000000c
            beq s7,s5,LH
            lbu s6,1(s2)
            slli s6,s6,8
            or s4,s6,s4
            li s7,0x0000002c
            beq s7,s5,Escritura
            lbu s6,2(s2)
            slli s6,s6,16
            or s4,s4,s6
            lbu s6,3(s2)
            slli s6,s6,24
            or s4,s4,s6
      Escritura:
            sw s4,0(s3)
            j Retorno
      LH:
            lb s6,1(s2)
            slli s6,s6,8
            or s4,s6,s4
            j Escritura
      Retorno:
            lw t6,124(sp)
            lw t5,120(sp)
            lw t4,116(sp)
            lw t3,112(sp)
            lw s11,108(sp)
            lw s10,104(sp)
            lw s9,100(sp)
            lw s8,96(sp)
            lw s7,92(sp)
            lw s6,88(sp)
            lw s5,84(sp)
            lw s4,80(sp)
            lw s3,76(sp)
            lw s2,72(sp)
            lw a7,68(sp)
            lw a6,64(sp)
            lw a5,60(sp)
            lw a4,56(sp)
            lw a3,52(sp)
            lw a2,48(sp)
            lw a1,44(sp)
            lw a0,40(sp)
            lw s1,36(sp)
            lw s0,32(sp)
            lw t2,28(sp)
            lw t1,24(sp)
            lw t0,20(sp)
            lw tp,16(sp)
            lw gp,12(sp)
            lw ra,4(sp)
            lw sp,8(sp)
            addi sp,sp,128
            mret
SPI:
            add t4,x0,s1
            sw t4,2000(x0)
            j Retorno
Main:
      li s0,0x4433F211
      li s1,0x01036640
      sw s0,0(s1)
      lw s0,0(s1)
ciclo:
      j ciclo
Verificacion:
      li s0,0x4433F211
      lw s2,2000(x0)
      beq s2,s0,exito
      j Fail
exito:
      li t6,0x00000300
      jalr x0,0(t6)
Fail:
      li t6,0x00000500
      jalr x0,0(t6)
