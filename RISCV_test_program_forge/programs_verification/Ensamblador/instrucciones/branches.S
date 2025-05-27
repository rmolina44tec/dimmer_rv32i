.section .text
.globl _start
.equ valor, 0x00000008
.section .text
.globl _start

_start:
      beq ra, sp, case1
      j Fail

case7:
        li s6,7
        add ra,x0,x0
        add sp,x0,x0
        bne ra, sp, Fail
        addi ra,x0,-1
        blt ra, sp, case8
        j Fail

Write_t1:
        j Fail
Write_t2:
        j Fail
case2:
        li s1,2
        addi ra,x0,1
        bge ra, sp, case3
        j Fail
Write_s1:
        j Fail
case5:
        li s4,5
        addi ra,x0,1
        bgeu ra, sp, case6
        j Fail
Write_a1:
        j Fail
Write_a2:
        j Fail
Write_a3:
        j Fail
case3:
        li s2,3
        bge sp, ra, Fail
        addi ra,x0,-3
        bge sp, ra, case4
        j Fail
Write_a5:
        j Fail
Write_a6:
        j Fail
case9:
        li s8,9
        bltu sp,ra, Fail
        add ra,x0,x0
        add sp,x0,x0
        bltu sp,ra, Fail
        blt sp,ra, Fail
        j succes

Write_s2:
        j Fail
Write_s3:
        j Fail
Write_s4:
        j Fail
Write_s5:
        j Fail
Write_s6:
        j Fail
Write_s7:
        j Fail
case1:
        li s0,1
        bge ra, sp, case2
        j Fail
case8:
        li s7,8
        blt sp, ra, Fail
        add ra,x0,x0
        add sp,x0,x0
        addi sp,x0,1
        bltu ra,sp,case9
        j Fail
case6:
        li s5,6
        bgeu  sp, ra, Fail
        bne ra, sp, case7
        j Fail
case4:
        li s3,4
        add ra,x0,x0
        add sp,x0,x0
        bgeu ra, sp, case5
        j Fail
Write_t3:
        j Fail
Write_t4:
        j Fail
Write_t5:
        j Fail
Write_t6:
        j Fail

succes:
      lui t5, 1
      li t6,0x00000300
      jalr x0,0(t6)

Fail:
      lui t6,1
      li t6,0x00000300
      jalr x0,0(t6)
