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
        addi x0,x31,927
        addi x1,x29,-1726
        addi x2,x28,-1290
        addi x3,x27,-1590
        addi x4,x26,1912
        addi x5,x25,-1719
        addi x6,x24,-1805
        addi x7,x23,-699
        addi x8,x22,2022
        addi x9,x21,649
        addi x10,x20,660
        addi x11,x19,1393
        addi x12,x18,-1720
        addi x13,x17,314
        addi x14,x16,-1110
        addi x15,x15,-1628
        addi x16,x14,-461
        addi x17,x13,-2042
        addi x18,x12,-171
        addi x19,x11,2004
        addi x20,x10,-899
        addi x21,x9,1511
        addi x22,x8,-307
        addi x23,x7,1530
        addi x24,x6,111
        addi x25,x5,1632
        addi x26,x4,-1329
        addi x27,x3,100
        addi x28,x2,430
        addi x29,x1,-1490
        addi x30,x0,771
        addi x31,x0,371
        j Main

