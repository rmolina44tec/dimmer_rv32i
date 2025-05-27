.section .text
.globl _start
_start:
        csrrwi x0,6,0x1F
#---------------positivo con positivo----------------
        addi ra,x0,1000
        addi s0,ra,1000
#-------------------R+ inemdiato neg -----------------------
        addi s1,ra,-500
#-------------------Rneg inemdiato + -----------------------
        addi ra,x0,-1000
        addi a0,ra,500
#------------R neg inmediato neg------------------------
        addi a1,ra,-1000
        li t6,0x00000300
        jalr x0,0(t6)
#-----------------Resultado--------------------------------
#s0=000007D0
#s1=000001F4
#a0=FFFFFE0C
#a1=FFFFF830