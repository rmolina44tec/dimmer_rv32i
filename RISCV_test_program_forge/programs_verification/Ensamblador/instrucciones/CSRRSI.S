.section .text
.globl _start
_start:

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#Ahora se prueba la instruccion variando su inmediato
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#csrrsi s0,0,0x00
csrrsi s1,1,0x1F
csrrsi a0,2,0x00
csrrsi a1,3,0x1F
csrrsi a2,4,0x00
csrrsi a3,5,0x1F
csrrsi a4,6,0x00
csrrsi a5,7,0x1F
csrrsi a2,8,0x00
csrrsi a3,9,0x1F
csrrsi a4,10,0x00
csrrsi a5,11,0x1F
li t6,0x00000300
jalr x0,0(t6)
