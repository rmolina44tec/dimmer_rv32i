.section .text
.globl _start
_start:
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#Carga el registro ra en puros 1.
li ra,0xFFFFFFFF
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#Escribe este contenido en los CSR.
#csrrw x0,0,ra
csrrw x0,1,ra
csrrw x0,2,ra
csrrw x0,3,ra
csrrw x0,4,ra
csrrw x0,5,ra
csrrw x0,6,ra
csrrw x0,7,ra
csrrw x0,8,ra
csrrw x0,9,ra
csrrw x0,10,ra
csrrw x0,11,ra
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#ahora se va escribir un nuevo dato en los CSR
#En este caso en los registros destinos se deberia guardar el contenido anterior de cada CSR
li ra,0xFFFF0000
csrrw s0,0,ra
csrrw s1,1,ra
csrrw a0,2,ra
csrrw a1,3,ra
csrrw a2,4,ra
csrrw a3,5,ra
csrrw a4,6,ra
csrrw a5,7,ra
csrrw a6,8,ra
csrrw a7,9,ra
csrrw s2,10,ra
csrrw s3,11,ra
li t6,0x00000300
jalr x0,0(t6)
