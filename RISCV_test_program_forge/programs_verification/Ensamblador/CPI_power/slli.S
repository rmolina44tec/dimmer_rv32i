.section .text
.globl _start
_start:
        csrrwi x0,6,0x1F
        slli x18,x10,11
        slli x28,x6,31
        slli x9,x28,16
        slli x22,x14,12
        slli x18,x29,22
        slli x17,x1,18
        slli x12,x4,29
        slli x26,x20,20
        slli x25,x10,22
        slli x8,x18,3
        slli x19,x18,9
        slli x2,x29,5
        slli x31,x27,22
        slli x19,x14,21
        slli x0,x5,0
        slli x30,x24,22
        slli x27,x3,9
        slli x29,x4,0
        slli x9,x25,20
        slli x0,x14,6
        slli x4,x26,16
        slli x22,x14,12
        slli x6,x0,26
        slli x14,x0,6
        slli x24,x11,6
        slli x3,x8,18
        slli x27,x5,2
        slli x25,x0,11
        slli x19,x31,8
        slli x21,x11,11
        slli x27,x7,30
        slli x29,x7,4
        slli x1,x19,17
        slli x30,x19,14
        slli x11,x15,9
        slli x21,x1,31
        slli x13,x8,10
        slli x22,x13,9
        slli x30,x2,15
        slli x20,x29,19
        slli x11,x4,14
        slli x5,x3,11
        slli x24,x15,16
        slli x10,x25,3
        slli x26,x17,16
        slli x12,x22,1
        slli x25,x11,5
        slli x29,x3,25
        slli x4,x24,30
        slli x18,x22,5
        slli x2,x24,3
        slli x12,x31,2
        slli x1,x4,5
        slli x3,x19,21
        slli x17,x11,5
        slli x29,x14,21
        slli x17,x17,28
        slli x24,x24,15
        slli x24,x22,30
        slli x27,x16,8
        slli x1,x20,24
        slli x4,x16,13
        slli x18,x28,16
        slli x1,x30,18
        slli x10,x10,1
        slli x19,x18,1
        slli x29,x26,18
        slli x18,x21,0
        slli x15,x9,26
        slli x10,x29,12
        slli x17,x17,11
        slli x23,x5,11
        slli x28,x4,29
        slli x18,x27,17
        slli x25,x26,23
        slli x17,x23,8
        slli x31,x2,21
        slli x17,x26,4
        slli x10,x23,23
        slli x25,x0,10
        slli x23,x14,10
        slli x6,x18,0
        slli x24,x19,27
        slli x14,x31,10
        slli x12,x0,27
        slli x26,x3,27
        slli x31,x30,3
        slli x17,x7,21
        slli x4,x12,25
        slli x19,x4,23
        slli x25,x14,17
        slli x18,x8,0
        slli x13,x0,8
        slli x21,x6,23
        slli x8,x10,28
        slli x2,x11,23
        slli x10,x2,29
        slli x9,x24,6
        slli x20,x21,17
        slli x11,x24,7
        slli x3,x23,3
        slli x11,x20,12
        slli x5,x28,31
        slli x21,x20,29
        slli x5,x12,4
        slli x14,x15,21
        slli x3,x28,18
        slli x30,x5,7
        slli x20,x28,27
        slli x15,x29,15
        slli x12,x15,5
        slli x17,x18,24
        slli x8,x22,19
        slli x26,x18,12
        slli x13,x13,15
        slli x31,x23,0
        slli x29,x14,21
        slli x18,x23,9
        slli x29,x19,29
        slli x7,x26,5
        slli x15,x16,4
        slli x22,x15,1
        slli x8,x7,9
        slli x5,x19,11
        slli x2,x29,12
        slli x7,x0,26
        slli x17,x14,4
        slli x17,x31,7
        slli x3,x31,24
        slli x11,x17,1
        slli x18,x24,20
        slli x2,x0,25
        slli x4,x21,31
        slli x27,x19,19
        slli x4,x5,8
        slli x16,x22,23
        slli x7,x9,11
        slli x0,x26,5
        slli x26,x29,30
        slli x23,x21,14
        slli x10,x17,7
        slli x6,x14,18
        slli x3,x2,8
        slli x24,x17,24
        slli x0,x12,23
        slli x16,x21,27
        slli x13,x12,5
        slli x16,x31,7
        slli x27,x5,16
        slli x23,x2,23
        slli x9,x9,17
        slli x22,x6,2
        slli x22,x6,29
        slli x4,x31,24
        slli x23,x31,31
        slli x27,x30,7
        slli x5,x2,25
        slli x29,x11,8
        slli x18,x22,8
        slli x21,x13,17
        slli x31,x3,11
        slli x7,x9,20
        slli x5,x29,27
        slli x18,x15,24
        slli x24,x27,31
        slli x9,x3,11
        slli x3,x21,0
        slli x5,x7,28
        slli x22,x17,5
        slli x26,x17,6
        slli x0,x20,31
        slli x16,x26,29
        slli x15,x27,2
        slli x16,x26,27
        slli x23,x7,13
        slli x17,x15,10
        slli x3,x31,15
        slli x14,x18,18
        slli x5,x16,26
        slli x2,x23,25
        slli x17,x18,11
        slli x17,x15,22
        slli x1,x10,27
        slli x4,x0,15
        slli x24,x9,31
        slli x13,x22,21
        slli x11,x11,23
        slli x9,x7,0
        slli x20,x14,12
        slli x23,x27,12
        slli x21,x5,23
        slli x18,x25,30
        slli x24,x26,22
        slli x16,x27,27
        slli x11,x12,11
        slli x10,x14,26
        slli x8,x30,31
        slli x9,x19,7
        slli x3,x23,26
        slli x22,x13,14
        slli x2,x23,4
        slli x27,x23,19
        slli x29,x6,9
        slli x31,x10,6
        slli x16,x23,5
        slli x13,x26,20
        slli x5,x5,13
        slli x30,x14,11
        slli x25,x21,28
        slli x29,x6,10
        slli x27,x6,31
        slli x28,x27,19
        slli x0,x28,19
        slli x19,x2,15
        slli x0,x5,20
        slli x1,x21,18
        slli x11,x29,27
        slli x22,x12,8
        slli x0,x3,7
        slli x23,x27,16
        slli x28,x27,17
        slli x3,x21,31
        slli x1,x26,17
        slli x20,x8,25
        slli x22,x9,15
        slli x14,x2,3
        slli x14,x15,18
        slli x5,x28,3
        slli x10,x7,5
        slli x21,x23,10
        slli x20,x8,25
        slli x24,x1,5
        slli x17,x8,11
        slli x12,x22,19
        slli x19,x10,4
        slli x14,x24,16
        slli x22,x19,14
        slli x14,x28,8
        slli x5,x0,30
        slli x22,x7,5
        slli x20,x18,0
        slli x18,x21,7
        slli x23,x2,11
        slli x8,x10,0
        slli x7,x4,0
        slli x21,x22,10
        slli x16,x25,25
        slli x23,x14,17
        slli x24,x3,4
        slli x10,x11,16
        slli x5,x6,24
        slli x4,x29,19
        slli x31,x18,12
        slli x11,x4,22
        slli x3,x21,25
        slli x13,x27,27
        slli x18,x29,24
        slli x27,x1,12
        slli x7,x4,21
        slli x24,x28,17
        slli x28,x23,4
        slli x9,x20,6
        slli x22,x31,19
        slli x18,x3,23
        slli x16,x6,10
        slli x1,x18,11
        slli x1,x2,31
        slli x19,x10,1
        slli x25,x6,24
        slli x25,x27,23
        slli x19,x9,0
        slli x0,x1,13
        slli x4,x15,8
        slli x27,x5,18
        slli x7,x20,23
        slli x29,x3,6
        slli x19,x10,24
        slli x11,x9,2
        slli x27,x11,23
        slli x11,x20,16
        slli x24,x1,8
        slli x10,x29,10
        slli x27,x27,3
        slli x22,x30,1
        slli x28,x17,14
        slli x13,x5,25
        slli x18,x7,3
        slli x4,x7,4
        slli x14,x27,31
        slli x18,x12,13
        slli x29,x24,24
        slli x11,x19,10
        slli x7,x12,14
        slli x30,x27,7
        slli x13,x17,9
        slli x17,x23,12
        slli x10,x15,8
        slli x6,x5,24
        slli x6,x1,0
        slli x10,x20,21
        slli x8,x22,2
        slli x29,x26,0
        slli x10,x15,20
        slli x7,x5,7
        slli x4,x18,7
        slli x11,x8,28
        slli x28,x26,4
        slli x18,x24,27
        slli x17,x8,20
        slli x20,x8,27
        slli x9,x12,12
        slli x0,x29,16
        slli x28,x28,24
        slli x4,x19,25
        slli x16,x16,4
        slli x4,x4,3
        slli x7,x31,24
        slli x17,x18,15
        slli x22,x2,22
        slli x19,x0,27
        slli x4,x2,14
        slli x4,x8,26
        slli x10,x13,27
        slli x14,x9,19
        slli x19,x2,31
        slli x13,x18,3
        slli x4,x11,11
        slli x28,x27,19
        slli x23,x14,9
        slli x0,x5,10
        slli x22,x16,11
        slli x21,x18,10
        slli x2,x14,12
        slli x12,x28,26
        slli x12,x19,14
        slli x11,x21,30
        slli x0,x3,4
        slli x5,x23,10
        slli x0,x11,31
        slli x31,x9,2
        slli x5,x27,20
        slli x3,x0,28
        slli x23,x7,19
        slli x9,x17,11
        slli x23,x19,25
        slli x16,x15,11
        slli x28,x7,9
        slli x22,x29,11
        slli x27,x16,4
        slli x16,x3,2
        slli x13,x14,23
        slli x18,x28,3
        slli x29,x21,0
        slli x18,x14,29
        slli x24,x9,19
        slli x4,x15,25
        slli x27,x9,0
        slli x23,x4,6
        slli x17,x19,1
        slli x14,x26,1
        slli x15,x26,25
        slli x13,x10,23
        slli x19,x24,29
        slli x22,x23,15
        slli x28,x8,20
        slli x3,x15,17
        slli x21,x23,26
        slli x18,x6,29
        slli x2,x13,13
        slli x0,x6,27
        slli x8,x24,8
        slli x24,x12,11
        slli x27,x24,15
        slli x23,x25,7
        slli x12,x31,29
        slli x16,x11,17
        slli x6,x11,17
        slli x30,x6,31
        slli x23,x20,12
        slli x26,x18,14
        slli x16,x21,4
        slli x14,x12,26
        slli x13,x23,0
        slli x10,x10,9
        slli x1,x9,30
        slli x3,x21,12
        slli x19,x25,5
        slli x13,x28,18
        slli x21,x15,1
        slli x22,x11,3
        slli x31,x13,0
        slli x8,x23,30
        slli x31,x28,12
        slli x0,x26,26
        slli x9,x18,2
        slli x0,x3,31
        slli x19,x27,29
        slli x6,x23,6
        slli x29,x8,24
        slli x20,x26,4
        slli x31,x9,29
        slli x9,x10,29
        slli x4,x7,15
        slli x29,x25,5
        slli x22,x26,20
        slli x2,x21,22
        slli x25,x12,19
        slli x29,x13,11
        slli x26,x24,29
        slli x20,x11,25
        slli x28,x12,3
        slli x21,x16,19
        slli x6,x28,26
        slli x19,x24,2
        slli x28,x9,21
        slli x19,x20,4
        slli x1,x1,23
        slli x16,x25,11
        slli x14,x17,25
        slli x23,x1,9
        slli x10,x26,21
        slli x13,x21,20
        slli x19,x22,6
        slli x13,x3,20
        slli x28,x19,21
        slli x16,x12,11
        slli x6,x1,0
        slli x28,x9,7
        slli x14,x29,10
        slli x27,x23,15
        slli x20,x3,4
        slli x15,x20,1
        slli x9,x20,8
        slli x6,x31,30
        slli x16,x30,28
        slli x23,x5,4
        slli x9,x31,4
        slli x29,x10,0
        slli x14,x18,20
        slli x18,x10,14
        slli x11,x12,28
        slli x16,x27,9
        slli x14,x11,11
        slli x21,x13,28
        slli x30,x24,12
        slli x19,x30,1
        slli x7,x20,11
        slli x2,x22,31
        slli x0,x23,18
        slli x1,x8,18
        slli x12,x31,6
        slli x24,x0,23
        slli x5,x17,5
        slli x30,x13,11
        slli x18,x5,4
        slli x23,x6,27
        slli x4,x7,21
        slli x4,x8,27
        slli x2,x13,14
        slli x30,x17,21
        slli x12,x16,29
        slli x15,x4,18
        slli x30,x25,28
        slli x24,x20,31
        slli x30,x8,0
        slli x26,x3,11
        slli x12,x3,1
        slli x13,x26,14
        slli x1,x19,15
        slli x1,x12,20
        slli x23,x12,25
        slli x21,x29,25
        slli x0,x18,22
        slli x1,x4,1
        slli x4,x4,30
        slli x10,x14,5
        slli x25,x21,19
        slli x15,x4,3
        slli x1,x19,8
        slli x2,x16,0
        slli x5,x19,22
        slli x16,x2,31
        slli x26,x6,7
        slli x12,x8,29
        slli x5,x17,30
        slli x21,x25,28
        slli x14,x14,8
        slli x17,x6,25
        slli x26,x15,6
        slli x9,x28,24
        slli x21,x5,17
        slli x16,x10,5
        slli x26,x26,1
        slli x15,x14,14
        slli x0,x17,6
        slli x9,x8,26
        slli x30,x31,11
        slli x22,x16,26
        slli x8,x11,2
        slli x21,x17,26
        slli x11,x23,25
        slli x2,x11,29
        slli x15,x6,16
        slli x15,x1,14
        slli x0,x1,21
        slli x25,x15,13
        slli x30,x27,0
        slli x20,x0,16
        slli x8,x30,10
        slli x29,x19,8
        slli x26,x2,12
        slli x22,x7,2
        slli x31,x25,21
        slli x4,x17,29
        slli x21,x19,19
        slli x8,x8,0
        slli x27,x9,12
        slli x23,x9,16
        slli x21,x24,24
        slli x21,x3,30
        slli x5,x30,9
        slli x7,x31,30
        slli x16,x22,1
        slli x0,x5,9
        slli x30,x1,20
        slli x30,x14,8
        slli x10,x29,9
        slli x24,x5,10
        slli x4,x6,8
        slli x20,x12,15
        slli x22,x8,14
        slli x18,x30,0
        slli x27,x8,19
        slli x20,x4,2
        slli x4,x11,26
        slli x0,x28,18
        slli x15,x26,15
        slli x0,x24,29
        slli x31,x2,18
        slli x4,x16,0
        slli x12,x5,30
        slli x17,x8,8
        slli x6,x8,5
        slli x6,x2,18
        slli x24,x2,10
        slli x17,x18,24
        slli x10,x18,1
        slli x7,x12,27
        slli x3,x1,6
        slli x4,x13,10
        slli x26,x1,13
        slli x28,x11,9
        slli x2,x18,12
        slli x16,x26,20
        slli x31,x7,29
        slli x2,x31,2
        slli x16,x20,7
        slli x1,x18,0
        slli x11,x2,30
        slli x28,x3,30
        slli x21,x25,19
        slli x7,x22,8
        slli x25,x21,6
        slli x29,x26,14
        slli x31,x24,27
        slli x11,x29,2
        slli x26,x10,8
        slli x4,x20,0
        slli x13,x28,24
        slli x3,x28,7
        slli x19,x23,17
        slli x29,x15,18
        slli x4,x12,31
        slli x12,x16,27
        slli x23,x5,22
        slli x2,x3,18
        slli x8,x14,25
        slli x8,x13,12
        slli x23,x17,12
        slli x13,x25,2
        slli x23,x18,19
        slli x9,x2,29
        slli x12,x10,2
        slli x22,x6,1
        slli x18,x31,25
        slli x20,x13,17
        slli x21,x28,1
        slli x15,x24,25
        slli x23,x3,3
        slli x17,x29,17
        slli x18,x3,7
        slli x3,x11,18
        slli x13,x11,6
        slli x31,x24,30
        slli x29,x21,0
        slli x0,x19,7
        slli x27,x10,3
        slli x15,x3,6
        slli x27,x24,1
        slli x11,x7,18
        slli x24,x28,31
        slli x3,x13,19
        slli x22,x21,20
        slli x17,x24,1
        slli x14,x20,15
        slli x10,x16,7
        slli x5,x3,4
        slli x20,x6,17
        slli x30,x23,13
        slli x4,x10,20
        slli x22,x11,22
        slli x18,x23,14
        slli x28,x4,29
        slli x16,x16,3
        slli x16,x7,26
        slli x27,x0,6
        slli x20,x4,12
        slli x3,x11,26
        slli x5,x20,11
        slli x17,x15,17
        slli x25,x25,29
        slli x25,x12,31
        slli x21,x9,7
        slli x20,x12,19
        slli x20,x8,22
        slli x21,x31,29
        slli x31,x18,24
        slli x18,x25,7
        slli x17,x12,27
        slli x18,x31,28
        slli x8,x16,18
        slli x30,x19,15
        slli x0,x8,28
        slli x5,x31,26
        slli x30,x31,3
        slli x22,x22,6
        slli x25,x13,16
        slli x30,x2,22
        slli x21,x20,13
        slli x17,x29,21
        slli x6,x21,5
        slli x28,x2,7
        slli x17,x10,1
        slli x10,x14,21
        slli x4,x2,29
        slli x18,x2,10
        slli x23,x17,20
        slli x31,x16,2
        slli x21,x30,1
        slli x0,x1,0
        slli x25,x5,28
        slli x9,x19,17
        slli x17,x27,19
        slli x6,x26,0
        slli x0,x31,31
        slli x6,x4,12
        slli x14,x26,20
        slli x25,x28,6
        slli x4,x24,13
        slli x9,x3,23
        slli x18,x20,16
        slli x20,x23,7
        slli x4,x23,31
        slli x1,x24,1
        slli x31,x9,25
        slli x24,x10,1
        slli x16,x20,18
        slli x0,x30,3
        slli x15,x25,27
        slli x19,x26,30
        slli x4,x3,27
        slli x4,x14,28
        slli x15,x7,24
        slli x6,x24,21
        slli x30,x4,18
        slli x10,x15,25
        slli x9,x7,5
        slli x0,x2,15
        slli x22,x7,13
        slli x0,x17,14
        slli x7,x14,3
        slli x26,x4,15
        slli x29,x13,10
        slli x20,x0,5
        slli x6,x13,12
        slli x21,x8,11
        slli x5,x22,30
        slli x1,x30,29
        slli x0,x2,29
        slli x7,x17,26
        slli x0,x4,14
        slli x5,x2,23
        slli x28,x3,23
        slli x9,x10,19
        slli x0,x14,5
        slli x26,x13,15
        slli x23,x10,13
        slli x25,x13,30
        slli x10,x4,9
        slli x27,x25,16
        slli x4,x13,18
        slli x15,x5,2
        slli x24,x15,31
        slli x5,x9,17
        slli x0,x11,30
        slli x16,x16,13
        slli x25,x1,4
        slli x3,x21,10
        slli x24,x8,28
        slli x11,x12,10
        slli x1,x9,25
        slli x25,x1,29
        slli x23,x7,0
        slli x9,x16,4
        slli x0,x28,16
        slli x22,x5,29
        slli x12,x11,13
        slli x28,x25,19
        slli x7,x10,29
        slli x8,x15,5
        slli x9,x8,20
        slli x6,x3,11
        slli x2,x20,23
        slli x18,x9,26
        slli x3,x17,7
        slli x13,x7,23
        slli x1,x18,13
        slli x9,x1,15
        slli x27,x4,18
        slli x9,x19,0
        slli x29,x23,19
        slli x5,x1,6
        slli x24,x20,12
        slli x6,x0,23
        slli x21,x25,25
        slli x31,x21,29
        slli x8,x5,8
        slli x18,x30,27
        slli x15,x6,1
        slli x0,x22,3
        slli x14,x28,1
        slli x4,x22,11
        slli x1,x29,29
        slli x22,x27,6
        slli x25,x11,11
        slli x18,x28,10
        slli x3,x28,18
        slli x10,x1,22
        slli x9,x7,2
        slli x0,x19,17
        slli x3,x9,3
        slli x8,x23,7
        slli x26,x2,23
        slli x26,x23,14
        slli x30,x18,4
        slli x20,x5,22
        slli x28,x9,7
        slli x3,x1,7
        slli x20,x27,2
        slli x28,x21,1
        slli x25,x4,9
        slli x13,x16,17
        slli x11,x5,16
        slli x10,x2,3
        slli x6,x14,19
        slli x2,x19,7
        slli x5,x13,20
        slli x3,x22,22
        slli x15,x5,13
        slli x11,x11,26
        slli x27,x9,17
        slli x9,x11,31
        slli x7,x2,7
        slli x26,x0,16
        slli x31,x14,25
        slli x30,x9,13
        slli x25,x21,20
        slli x7,x23,12
        slli x30,x13,27
        slli x6,x17,18
        slli x31,x24,13
        slli x27,x3,28
        slli x2,x25,3
        slli x26,x26,10
        slli x7,x18,2
        slli x9,x30,26
        slli x2,x5,10
        slli x7,x9,11
        slli x12,x1,14
        slli x31,x21,9
        slli x1,x21,15
        slli x18,x14,24
        slli x28,x3,31
        slli x29,x7,31
        slli x25,x9,0
        slli x5,x13,0
        slli x29,x18,2
        slli x20,x24,3
        slli x4,x30,19
        slli x29,x14,0
        slli x28,x20,13
        slli x4,x20,3
        slli x30,x8,17
        slli x7,x15,28
        slli x23,x17,27
        slli x24,x15,20
        slli x31,x13,26
        slli x17,x4,15
        slli x16,x26,0
        slli x6,x8,2
        slli x3,x15,18
        slli x3,x29,18
        slli x18,x30,5
        slli x21,x10,28
        slli x16,x7,20
        slli x29,x29,19
        slli x28,x18,16
        slli x12,x8,13
        slli x26,x0,4
        slli x12,x15,18
        slli x18,x20,5
        slli x22,x1,22
        slli x4,x24,2
        slli x6,x15,10
        slli x21,x24,23
        slli x23,x15,5
        slli x23,x27,31
        slli x8,x22,29
        slli x17,x19,7
        slli x23,x25,24
        slli x24,x26,27
        slli x21,x16,19
        slli x25,x18,19
        slli x8,x26,19
        slli x4,x13,20
        slli x10,x10,19
        slli x12,x23,13
        slli x30,x31,13
        slli x26,x10,26
        slli x26,x14,7
        slli x1,x20,8
        slli x16,x23,30
        slli x12,x13,29
        slli x25,x6,25
        slli x20,x9,14
        slli x6,x29,15
        slli x14,x8,0
        slli x0,x22,1
        slli x22,x21,14
        slli x26,x11,20
        slli x4,x7,31
        slli x9,x16,4
        slli x19,x12,7
        slli x10,x8,31
        slli x9,x16,18
        slli x30,x11,17
        slli x30,x7,14
        slli x25,x1,26
        slli x22,x9,5
        slli x10,x4,23
        slli x14,x14,24
        slli x6,x1,9
        slli x2,x4,31
        slli x17,x7,9
        slli x0,x2,26
        slli x9,x4,31
        slli x26,x28,3
        slli x22,x12,7
        slli x1,x5,11
        slli x1,x4,9
        slli x24,x13,12
        slli x6,x11,7
        slli x13,x18,2
        slli x14,x12,17
        slli x26,x23,10
        slli x1,x29,9
        slli x7,x19,1
        slli x2,x30,18
        slli x21,x30,30
        slli x10,x29,0
        slli x8,x4,2
        slli x8,x0,27
        slli x28,x29,17
        slli x7,x9,30
        slli x26,x6,10
        slli x23,x24,28
        slli x20,x9,3
        slli x17,x30,20
        slli x0,x0,31
        slli x2,x8,6
        slli x26,x22,9
        slli x21,x22,4
        slli x14,x4,5
        slli x1,x27,1
        slli x12,x12,19
        slli x27,x24,27
        slli x16,x27,6
        slli x2,x15,12
        slli x15,x0,8
        slli x2,x20,8
        slli x10,x9,29
        slli x16,x9,10
        slli x14,x19,17
        slli x12,x2,14
        slli x19,x6,21
        slli x11,x0,13
        slli x13,x13,6
        slli x8,x4,30
        slli x27,x10,21
        slli x5,x11,19
        slli x14,x0,21
        slli x5,x31,20
        slli x10,x16,26
        slli x25,x24,27
        slli x24,x4,21
        slli x8,x4,30
        slli x28,x14,20
        slli x13,x30,20
        slli x26,x18,13
        slli x28,x24,28
        slli x18,x2,26
        slli x10,x12,12
        slli x6,x20,25
        slli x13,x26,27
        slli x6,x12,28
        slli x5,x4,17
        slli x28,x2,27
        slli x28,x11,16
        slli x5,x6,4
        slli x1,x20,3
        slli x30,x29,21
        slli x8,x3,29
        slli x18,x4,24
        slli x18,x2,16
        slli x3,x25,3
        slli x30,x26,6
        slli x9,x28,1
        slli x13,x14,10
        slli x16,x14,13
        slli x10,x0,7
        slli x22,x7,20
        slli x26,x30,3
        slli x28,x6,17
        slli x12,x25,24
        slli x16,x24,3
        slli x1,x0,30
        slli x6,x11,3
        slli x29,x24,20
        slli x19,x11,14
        slli x29,x29,26
        slli x29,x2,31
        slli x26,x23,21
        slli x2,x10,24
        slli x24,x23,26
        slli x4,x8,3
        slli x29,x6,15
        slli x12,x1,28
        slli x14,x30,19
        slli x24,x26,31
        slli x2,x14,28
        slli x11,x30,5
        slli x27,x2,27
        slli x9,x19,7
        slli x6,x11,30
        slli x2,x2,4
        slli x5,x8,14
        slli x29,x19,4
        slli x25,x6,30
        slli x25,x13,1
        slli x29,x22,29
        slli x28,x23,6
        slli x10,x0,22
        slli x23,x10,5
        slli x7,x2,0
        slli x1,x17,14
        slli x10,x13,22
        slli x6,x17,16
        slli x27,x21,1
        slli x13,x18,13
        slli x25,x30,0
        slli x21,x26,4
        slli x2,x18,10
        slli x11,x20,12
        slli x12,x13,10
        slli x15,x4,15
        slli x19,x1,0
        slli x6,x8,22
        slli x1,x13,17
        slli x11,x22,9
        slli x13,x13,11
        slli x4,x15,0
        slli x15,x7,8
        slli x15,x20,22
        slli x19,x2,4
        slli x8,x16,6
        slli x0,x1,30
        slli x27,x23,17
        slli x27,x2,24
        slli x27,x2,0
        slli x21,x29,5
        li t6,0x00001770
        jalr x0,0(t6)
