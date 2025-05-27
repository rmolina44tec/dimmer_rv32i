.section .text
.globl _start
_start:
	csrrwi x0,6,0x1F
#---------------or 0 con 0----------------------------------------------
    li ra,0x00000000
    or s0,ra,x0
#-----------------------or 0 con 1-------------------------------------
    li ra, 0xFFFFFFFF
    or s1,ra,x0
#------------------or 1 con 0-----------------------------------------
    or s2,x0,ra
#------------------or 1 con 0-----------------------------------------
    li sp, 0xFFFFFFFF
    or s3,sp,ra
    li t6,0x00000300
    jalr x0,0(t6)
#ra=FFFFFFFF
#sp=FFFFFFFF
#s0=00000000
#s1=FFFFFFFF
#s2=FFFFFFFF
#s3=FFFFFFFF
