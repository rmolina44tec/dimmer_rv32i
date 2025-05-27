.section .text
.globl _start
_start:
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#Escribe este contenido en los CSR con un inmediato.
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#csrrwi x0,0,0x1F
csrrwi x0,1,0x1F
csrrwi x0,2,0x1F
csrrwi x0,3,0x1F
csrrwi x0,4,0x1F
csrrwi x0,5,0x1F
csrrwi x0,6,0x1F
csrrwi x0,7,0x1F
csrrwi x0,8,0x1F
csrrwi x0,9,0x1F
csrrwi x0,10,0x1F
csrrwi x0,11,0x1F
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#ahora se va escribir un nuevo dato en los CSR
#En este caso en los registros destinos se deberia guardar el contenido anterior de cada CSR
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#csrrwi s0,0,0x1F
csrrwi s1,1,0x0F
csrrwi a0,2,0x0F
csrrwi a1,3,0x0F
csrrwi a2,4,0x0F
csrrwi a3,5,0x0F
csrrwi a4,6,0x0F
csrrwi a5,7,0x0F
csrrwi a6,8,0x0F
csrrwi a7,9,0x0F
csrrwi s2,10,0x0F
csrrwi s3,11,0x0F
li t6,0x00000300
jalr x0,0(t6)
