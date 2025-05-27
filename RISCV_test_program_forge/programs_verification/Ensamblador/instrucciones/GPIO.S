.section .text
.global _start

_start:

li s0,0x0000FF00
csrrs x0,0,s0
li s1,0x00000070
csrrw a0,4,s1
csrrc x0,0,s0
csrrw a1,4,s1


#--------------------------------
#END
#--------------------------------
li x3,0x00000300
jalr x0,0(x3)
