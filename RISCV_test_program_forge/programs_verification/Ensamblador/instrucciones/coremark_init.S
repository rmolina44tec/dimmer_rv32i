.section .text
.globl _start
_start:
        li   sp,0x10070
        li   a0,0x10bb8
        jalr x0,a0,0
#This is just for the coremark program startup:set stack pointer, then jumps to _start routine