.section .text
.globl _start
_start:
#------------------------------------------------------------------------
#---------------slut ra = sp----------------------------------------------
#---------------s0=00000000----------------------------------------------
    li ra,0x00000000
    sltiu s0,ra,0
#-----------------------------------------------------------------------
#-----------------------slut ra < sp=TRUE-------------------------------
#----------------Resultado en s1=00000001-------------------------------
    sltiu s1,ra,1
#------------------sltu-------------------------------------------------
#-----------------------slut sp < ra=FALSE------------------------------
#----------------Resultado en s2=00000000-------------------------------
    li ra,0x00000001
    sltiu a0,ra,0
#------------------------con signo--------------------------------------
#-----------------------slut ra < x0= TRUE-------------------------------
#----------------Resultado en s3=000000001-------------------------------
    li ra, -1
    sltiu a1,ra,0
#------------------con signo--------------------------------------------
#-----------------------slut sp < ra=TRUE------------------------------
#----------------Resultado en s4=00000001-------------------------------
    sltiu a2,x0,-1
#------------------entre negativos--------------------------------------
#-----------------------slut sp < ra=FALSE------------------------------
#----------------Resultado en s5=00000000-------------------------------
    sltiu a3,ra,-2
#------------------entre negativos--------------------------------------
#-----------------------slut sp < ra=TRUE------------------------------
#----------------Resultado en s6=00000001-------------------------------
    li sp,-2
    sltiu a4,sp,-1
#------------------entre negativos--------------------------------------
#-----------------------slut sp = ra=FALSE------------------------------
#----------------Resultado en s7=00000000-------------------------------
    sltiu a5,sp,-2
    li t6,0x00000300
    jalr x0,0(t6)

#s0=00000000
#s1=00000001
#a0=00000000
#a1=00000000
#a2=00000001
#a3=00000000
#a4=00000001
#a5=00000000
