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
        addi x0,x0,927
        addi x1,x0,-1726
        addi x2,x0,-1290
        addi x3,x0,-1590
        addi x4,x0,1912
        addi x5,x0,-1719
        addi x6,x0,-1805
        addi x7,x0,-699
        addi x8,x0,2022
        addi x9,x0,649
        addi x10,x0,660
        addi x11,x0,1393
        addi x12,x0,-1720
        addi x13,x0,314
        addi x14,x0,-1110
        addi x15,x0,-1628
        addi x16,x0,-461
        addi x17,x0,-2042
        addi x18,x0,-171
        addi x19,x0,2004
        addi x20,x0,-899
        addi x21,x0,1511
        addi x22,x0,-307
        addi x23,x0,1530
        addi x24,x0,111
        addi x25,x0,1632
        addi x26,x0,-1329
        addi x27,x0,100
        addi x28,x0,430
        addi x29,x0,-1490
        addi x30,x0,771
        addi x31,x0,371
Inicio:
        add x31,x17,x21
        add x31,x10,x16
        add x31,x13,x24
        add x31,x31,x5
        add x31,x24,x0
        add x31,x25,x18
        add x31,x27,x8
        add x31,x11,x25
        add x31,x15,x27
        add x31,x16,x18
        add x31,x20,x16
        add x31,x6,x5
        add x31,x28,x9
        add x31,x14,x16
        add x31,x19,x25
        add x31,x15,x10
        add x31,x22,x23
        add x31,x15,x0
        add x31,x5,x12
        add x31,x17,x22
        add x31,x16,x8
        add x31,x13,x18
        add x31,x25,x4
        add x31,x22,x12
        add x31,x30,x15
        add x31,x9,x21
        add x31,x9,x15
        add x31,x20,x6
        add x31,x22,x31
        add x31,x20,x0
        add x31,x2,x4
        add x31,x28,x7
        add x31,x12,x21
        add x31,x12,x13
        add x31,x14,x18
        add x31,x21,x16
        add x31,x11,x1
        add x31,x25,x29
        add x31,x3,x29
        add x31,x13,x23
        add x31,x28,x12
        add x31,x20,x0
        add x31,x22,x10
        add x31,x18,x27
        add x31,x10,x5
        add x31,x29,x28
        add x31,x30,x19
        add x31,x13,x29
        add x31,x20,x14
        add x31,x6,x14
        add x31,x1,x17
        add x31,x17,x21
        add x31,x26,x23
        add x31,x16,x20
        add x31,x8,x2
        add x31,x13,x25
        add x31,x17,x24
        add x31,x24,x4
        add x31,x15,x1
        add x31,x28,x27
        add x31,x8,x15
        add x31,x3,x15
        add x31,x8,x27
        j Inicio

