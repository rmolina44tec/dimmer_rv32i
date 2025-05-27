.section .text
.globl _start
.equ valor, 0x00000004
_start:
        auipc ra,valor
        auipc sp,valor
        auipc gp,valor
        auipc tp,valor
        li t6,0x00000300
    	jalr x0,0(t6)
