.section .text
.globl _start
_start:
#----------------------------------------------------------------------------------
#-----------------------Start------------------------------------------------------
#----------------------------------------------------------------------------------
#L1: Se escribe el registro timer_count (para no activar la interrupcion)
#L2: Se escribe el registro mepc que indica la ubicacion en memoria del interrupt handler
#L3: Se guarda la ubicacion del interrupt handler y se guarda un respaldo en t5
#L4: Almacena el final del programa
        csrrwi x0,6,0x1F
        csrrwi x0,5,0x18
        li sp,0x00001ff8
        add t5,sp,x0
        j Main
Main:
        addi x0,x0,1000
        addi x1,x0,1001
        addi x2,x0,1002
        addi x3,x0,1003
        addi x4,x0,1004
        addi x5,x0,1005
        addi x6,x0,1006
        addi x7,x0,1007
        addi x8,x0,1008
        addi x9,x0,1009
        addi x10,x0,1010
        addi x11,x0,1011
        addi x12,x0,1012
        addi x13,x0,1013
        addi x14,x0,1014
        addi x15,x0,1015
        addi x16,x0,1016
        addi x17,x0,1017
        addi x18,x0,1018
        addi x19,x0,1019
        addi x20,x0,1020
        addi x21,x0,1021
        addi x22,x0,1022
        addi x23,x0,1023
        addi x24,x0,1024
        addi x25,x0,1025
        addi x26,x0,1026
        addi x27,x0,1027
        addi x28,x0,1028
        addi x29,x0,1029
        addi x30,x0,1030
        addi x31,x0,1031
 A:
        beq x12,x0,A
        beq x3,x0,A
        beq x6,x0,A
        beq x29,x0,A
        beq x15,x0,A
        beq x11,x0,A
        beq x22,x0,A
        beq x31,x0,A
        beq x17,x0,A
        beq x6,x0,A
        beq x12,x0,A
        beq x18,x0,A
        beq x2,x0,A
        beq x1,x0,A
        beq x4,x0,A
        beq x17,x0,A
        beq x12,x0,A
        beq x18,x0,A
        beq x13,x0,A
        beq x11,x0,A
        beq x20,x0,A
        beq x27,x0,A
        beq x6,x0,A
        beq x28,x0,A
        beq x12,x0,A
        beq x6,x0,A
        beq x24,x0,A
        beq x3,x0,A
        beq x4,x0,A
        beq x2,x0,A
        beq x14,x0,A
        beq x25,x0,A
        beq x4,x0,A
        beq x5,x0,A
        beq x17,x0,A
        beq x13,x0,A
        beq x31,x31,A
        beq x3,x0,A
        beq x4,x0,A
        beq x2,x0,A
        beq x14,x0,A
        beq x25,x0,A
        beq x4,x0,A
        beq x5,x0,A
        beq x17,x0,A
        beq x13,x0,A
        beq x31,x31,A
