.section .text
.globl _start
_start:
#------------------------------------------------------------------------
#---------------AND 0 con 0----------------------------------------------
#---------------s0=00000000----------------------------------------------
        csrrwi x0,6,0x1F
        li ra,0x00000000
        and s0,ra,x0
#-----------------------------------------------------------------------
#-----------------------AND 0 con 1-------------------------------------
#----------------------Prueba tambien usar registro entreda salida------
#----------------Resultado en s1=00000000-------------------------------
        li ra, 0xFFFFFFFF
        and s1,ra,x0
#------------------AND 1 con 0-----------------------------------------
#-----------------------s2=00000000------------------------------------
        and s2,x0,ra
#------------------AND 1 con 0-----------------------------------------
#-----------------------s3=FFFFFFFF------------------------------------
        li sp, 0xFFFFFFFF
        and s3,sp,ra
        li t6,0x00000300
        jalr x0,0(t6)



#---------------------------------------------------------------------
#----------------------Resultado--------------------------------------
#---------------------------------------------------------------------
#ra=FFFFFFFF
#sp=FFFFFFFF
#s0=00000000
#s1=00000000
#s2=00000000
#s3=FFFFFFFF
