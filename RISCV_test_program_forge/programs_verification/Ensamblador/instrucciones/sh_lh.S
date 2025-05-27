.section .text
.globl _start
.equ rv, 0x00000400
_start:
    li ra,0x00001111
    li sp,rv
    li gp,0x0000FFFF
    sh ra,0(sp)
    sh gp,2(sp)
    add ra,x0,x0
    add gp,x0,x0
    lh ra,0(sp)
    lh gp,2(sp)
    lw tp,0(sp)
    li t6,0x00000300
    jalr x0,0(t6)
