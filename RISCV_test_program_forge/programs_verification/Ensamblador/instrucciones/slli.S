.section .text
.globl _start
_start:
#------------------------------------------------------------------------
#---------------shift 1--------------------------------------------------
#------------------------------------------------------------------------
    li sp,0x00000001
    slli gp,sp,1
#------------------------------------------------------------------------
#---------------shift 2--------------------------------------------------
#------------------------------------------------------------------------
    slli tp,sp,2
#------------------------------------------------------------------------
#---------------shift 3--------------------------------------------------
#------------------------------------------------------------------------
    slli t0,sp,3
#------------------------------------------------------------------------
#---------------shift 4--------------------------------------------------
#------------------------------------------------------------------------
    slli t1,sp,4
#------------------------------------------------------------------------
#---------------shift 5--------------------------------------------------
#------------------------------------------------------------------------
    slli t2,sp,5
#------------------------------------------------------------------------
#---------------shift 6--------------------------------------------------
#------------------------------------------------------------------------
    slli s0,sp,6
#------------------------------------------------------------------------
#---------------shift 7--------------------------------------------------
#------------------------------------------------------------------------
    slli s1,sp,7
#------------------------------------------------------------------------
#---------------shift 8--------------------------------------------------
#------------------------------------------------------------------------
    slli a0,sp,8
#------------------------------------------------------------------------
#---------------shift 9--------------------------------------------------
#------------------------------------------------------------------------
    slli a1,sp,9
#------------------------------------------------------------------------
#---------------shift 10--------------------------------------------------
#------------------------------------------------------------------------
    slli a2,sp,10
#------------------------------------------------------------------------
#---------------shift 11--------------------------------------------------
#------------------------------------------------------------------------
    slli a3,sp,11
#------------------------------------------------------------------------
#---------------shift 12--------------------------------------------------
#------------------------------------------------------------------------
    slli a4,sp,12
#------------------------------------------------------------------------
#---------------shift 13--------------------------------------------------
#------------------------------------------------------------------------
    slli a5,sp,13
#------------------------------------------------------------------------
#---------------shift 14--------------------------------------------------
#------------------------------------------------------------------------
    slli a6,sp,14
#------------------------------------------------------------------------
#---------------shift 15--------------------------------------------------
#------------------------------------------------------------------------
    slli a7,sp,15
#------------------------------------------------------------------------
#---------------shift 16--------------------------------------------------
#------------------------------------------------------------------------
    slli s2,sp,16
#------------------------------------------------------------------------
#---------------shift 17--------------------------------------------------
#------------------------------------------------------------------------
    slli s3,sp,17
#------------------------------------------------------------------------
#---------------shift 18--------------------------------------------------
#------------------------------------------------------------------------
    slli s4,sp,18
#------------------------------------------------------------------------
#---------------shift 19--------------------------------------------------
#------------------------------------------------------------------------
    slli s5,sp,19
#------------------------------------------------------------------------
#---------------shift 20--------------------------------------------------
#------------------------------------------------------------------------
    slli s6,sp,20
#------------------------------------------------------------------------
#---------------shift 21--------------------------------------------------
#------------------------------------------------------------------------
    slli s7,sp,21
#------------------------------------------------------------------------
#---------------shift 22--------------------------------------------------
#------------------------------------------------------------------------
    slli s8,sp,22
#------------------------------------------------------------------------
#---------------shift 23--------------------------------------------------
#------------------------------------------------------------------------
    slli s9,sp,23
#------------------------------------------------------------------------
#---------------shift 24--------------------------------------------------
#------------------------------------------------------------------------
    slli s10,sp,24
#------------------------------------------------------------------------
#---------------shift 25--------------------------------------------------
#------------------------------------------------------------------------
    slli s11,sp,25
#------------------------------------------------------------------------
#---------------shift 26--------------------------------------------------
#------------------------------------------------------------------------
    slli t3,sp,26
#------------------------------------------------------------------------
#---------------shift 27--------------------------------------------------
#------------------------------------------------------------------------
    slli t4,sp,27
#------------------------------------------------------------------------
#---------------shift 28--------------------------------------------------
#------------------------------------------------------------------------
    slli t5,sp,28
#------------------------------------------------------------------------
#---------------shift 29--------------------------------------------------
#------------------------------------------------------------------------
    slli t6,sp,29
    li t6,0x00000300
    jalr x0,0(t6)
