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
        j A0
A0:
        jal x0,A1
A1:
        jal x25,A2
A2:
        jal x3,A3
A3:
        jal x19,A4
A4:
        jal x5,A5
A5:
        jal x25,A6
A6:
        jal x5,A7
A7:
        jal x27,A8
A8:
        jal x1,A9
A9:
        jal x5,A10
A10:
        jal x0,A11
A11:
        jal x28,A12
A12:
        jal x22,A13
A13:
        jal x10,A14
A14:
        jal x16,A15
A15:
        jal x24,A16
A16:
        jal x0,A17
A17:
        jal x21,A18
A18:
        jal x27,A19
A19:
        jal x11,A20
A20:
        jal x15,A21
A21:
        jal x17,A22
A22:
        jal x26,A0
A30:
        jal x15,A21
A31:
        jal x17,A22
A32:
        jal x26,A0
