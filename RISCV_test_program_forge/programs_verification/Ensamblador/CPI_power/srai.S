.section .text
.globl _start
_start:
        csrrwi x0,6,0x1F
        srai x3,x13,0
        srai x2,x30,2
        srai x28,x27,15
        srai x12,x15,2
        srai x14,x24,12
        srai x2,x28,24
        srai x13,x11,14
        srai x17,x3,18
        srai x12,x6,1
        srai x0,x12,13
        srai x2,x11,12
        srai x25,x23,21
        srai x21,x10,5
        srai x31,x18,11
        srai x11,x19,31
        srai x0,x28,26
        srai x19,x3,18
        srai x24,x18,31
        srai x20,x8,19
        srai x12,x13,11
        srai x4,x28,7
        srai x7,x17,1
        srai x16,x22,19
        srai x11,x18,9
        srai x24,x5,3
        srai x11,x31,11
        srai x21,x30,15
        srai x17,x23,9
        srai x24,x24,25
        srai x3,x13,5
        srai x20,x6,22
        srai x12,x17,6
        srai x5,x11,26
        srai x12,x4,18
        srai x0,x2,6
        srai x4,x7,18
        srai x26,x19,12
        srai x28,x25,4
        srai x0,x2,7
        srai x4,x19,18
        srai x2,x27,7
        srai x1,x26,12
        srai x18,x16,24
        srai x4,x0,3
        srai x0,x16,18
        srai x7,x5,2
        srai x17,x11,13
        srai x16,x17,10
        srai x11,x2,15
        srai x21,x5,4
        srai x5,x16,22
        srai x28,x25,16
        srai x17,x20,2
        srai x20,x6,14
        srai x28,x7,11
        srai x7,x7,28
        srai x16,x18,27
        srai x12,x31,14
        srai x8,x29,17
        srai x11,x21,5
        srai x23,x13,13
        srai x22,x27,24
        srai x11,x20,23
        srai x2,x1,29
        srai x4,x24,22
        srai x9,x6,13
        srai x27,x16,10
        srai x7,x5,5
        srai x23,x9,15
        srai x1,x23,21
        srai x2,x25,20
        srai x30,x25,12
        srai x11,x13,3
        srai x7,x27,29
        srai x1,x5,22
        srai x11,x11,8
        srai x7,x9,17
        srai x22,x19,9
        srai x5,x22,0
        srai x14,x7,0
        srai x15,x25,9
        srai x9,x5,18
        srai x9,x19,3
        srai x29,x26,21
        srai x10,x9,2
        srai x18,x13,9
        srai x17,x27,1
        srai x8,x5,2
        srai x13,x26,18
        srai x23,x19,16
        srai x16,x20,4
        srai x4,x23,3
        srai x3,x8,29
        srai x5,x7,20
        srai x9,x22,30
        srai x16,x4,21
        srai x14,x11,17
        srai x0,x4,12
        srai x10,x16,22
        srai x6,x8,6
        srai x5,x20,6
        srai x6,x30,31
        srai x12,x16,20
        srai x18,x23,27
        srai x10,x22,22
        srai x26,x5,29
        srai x13,x30,22
        srai x7,x24,1
        srai x5,x17,20
        srai x22,x8,21
        srai x10,x28,29
        srai x11,x3,15
        srai x30,x25,0
        srai x7,x3,5
        srai x5,x5,12
        srai x13,x17,10
        srai x14,x4,8
        srai x19,x31,29
        srai x6,x1,30
        srai x15,x10,24
        srai x8,x12,3
        srai x19,x26,6
        srai x14,x13,22
        srai x31,x19,28
        srai x20,x17,23
        srai x10,x22,6
        srai x20,x17,11
        srai x31,x17,0
        srai x16,x3,28
        srai x4,x31,29
        srai x26,x28,17
        srai x27,x23,30
        srai x5,x22,24
        srai x22,x10,15
        srai x19,x17,18
        srai x28,x25,12
        srai x17,x17,24
        srai x3,x30,12
        srai x22,x24,17
        srai x28,x1,4
        srai x9,x12,25
        srai x3,x9,17
        srai x3,x26,12
        srai x13,x15,26
        srai x11,x22,6
        srai x20,x31,3
        srai x30,x0,10
        srai x25,x16,4
        srai x13,x17,19
        srai x28,x7,8
        srai x13,x15,8
        srai x27,x4,23
        srai x25,x31,2
        srai x28,x26,30
        srai x22,x8,29
        srai x9,x26,22
        srai x21,x0,15
        srai x1,x3,13
        srai x7,x23,8
        srai x11,x13,20
        srai x14,x8,14
        srai x19,x21,9
        srai x4,x12,1
        srai x25,x26,7
        srai x8,x11,7
        srai x16,x24,8
        srai x14,x27,9
        srai x20,x5,7
        srai x11,x29,10
        srai x29,x18,24
        srai x23,x18,6
        srai x21,x12,24
        srai x24,x6,29
        srai x12,x6,6
        srai x10,x3,4
        srai x14,x16,17
        srai x5,x23,14
        srai x18,x16,10
        srai x0,x8,20
        srai x7,x0,15
        srai x6,x25,4
        srai x25,x17,27
        srai x23,x26,28
        srai x28,x23,20
        srai x3,x28,19
        srai x25,x8,20
        srai x31,x13,28
        srai x9,x28,11
        srai x23,x11,29
        srai x6,x23,3
        srai x13,x24,9
        srai x25,x11,13
        srai x0,x23,19
        srai x18,x28,12
        srai x23,x3,10
        srai x11,x26,19
        srai x23,x25,18
        srai x29,x19,22
        srai x21,x28,9
        srai x22,x3,29
        srai x15,x3,22
        srai x10,x30,4
        srai x27,x24,10
        srai x28,x24,17
        srai x15,x25,14
        srai x2,x29,25
        srai x10,x12,7
        srai x0,x12,3
        srai x27,x7,22
        srai x4,x18,4
        srai x13,x1,29
        srai x27,x15,18
        srai x14,x8,17
        srai x3,x8,21
        srai x9,x19,25
        srai x10,x20,9
        srai x12,x29,0
        srai x21,x25,30
        srai x2,x31,15
        srai x29,x2,9
        srai x24,x7,29
        srai x1,x6,9
        srai x8,x14,21
        srai x26,x22,4
        srai x29,x24,23
        srai x16,x15,8
        srai x9,x6,30
        srai x9,x26,10
        srai x1,x6,3
        srai x13,x8,3
        srai x15,x6,31
        srai x9,x29,1
        srai x21,x7,12
        srai x11,x16,26
        srai x6,x21,30
        srai x1,x18,14
        srai x11,x0,27
        srai x7,x0,18
        srai x8,x5,8
        srai x1,x11,8
        srai x12,x3,16
        srai x0,x30,18
        srai x30,x31,7
        srai x2,x11,8
        srai x11,x31,3
        srai x3,x1,31
        srai x1,x11,13
        srai x29,x22,22
        srai x15,x4,29
        srai x14,x22,29
        srai x28,x8,27
        srai x2,x11,9
        srai x15,x23,23
        srai x25,x19,26
        srai x7,x16,2
        srai x8,x1,9
        srai x22,x18,13
        srai x3,x27,10
        srai x13,x9,20
        srai x27,x23,11
        srai x23,x27,20
        srai x0,x1,21
        srai x14,x30,30
        srai x23,x21,7
        srai x24,x17,8
        srai x10,x31,19
        srai x30,x26,3
        srai x30,x4,10
        srai x15,x17,1
        srai x11,x11,1
        srai x2,x2,4
        srai x17,x24,20
        srai x29,x10,9
        srai x0,x5,27
        srai x7,x20,4
        srai x15,x27,11
        srai x9,x28,11
        srai x29,x10,18
        srai x8,x8,23
        srai x23,x27,2
        srai x27,x9,2
        srai x2,x28,19
        srai x1,x12,27
        srai x12,x13,25
        srai x19,x26,22
        srai x22,x23,14
        srai x18,x13,5
        srai x25,x0,5
        srai x10,x20,30
        srai x1,x15,15
        srai x3,x8,28
        srai x25,x1,10
        srai x18,x12,4
        srai x15,x5,0
        srai x24,x12,8
        srai x7,x29,13
        srai x23,x21,10
        srai x0,x11,4
        srai x12,x29,16
        srai x10,x12,5
        srai x23,x19,0
        srai x13,x30,13
        srai x23,x5,20
        srai x22,x3,2
        srai x17,x31,1
        srai x1,x3,0
        srai x9,x19,28
        srai x16,x11,22
        srai x3,x23,11
        srai x23,x0,25
        srai x6,x9,2
        srai x4,x10,25
        srai x27,x25,9
        srai x22,x9,19
        srai x24,x6,27
        srai x24,x0,30
        srai x0,x17,29
        srai x27,x26,24
        srai x17,x27,18
        srai x10,x17,19
        srai x6,x0,10
        srai x2,x21,7
        srai x22,x16,21
        srai x19,x6,28
        srai x10,x21,14
        srai x29,x5,10
        srai x9,x17,17
        srai x15,x13,3
        srai x16,x15,2
        srai x24,x14,27
        srai x14,x9,14
        srai x31,x26,7
        srai x14,x16,25
        srai x23,x4,8
        srai x2,x6,11
        srai x13,x7,15
        srai x27,x13,30
        srai x0,x14,9
        srai x27,x29,16
        srai x27,x0,5
        srai x15,x8,21
        srai x14,x24,8
        srai x31,x14,18
        srai x26,x6,15
        srai x2,x30,0
        srai x9,x7,18
        srai x26,x5,8
        srai x4,x16,22
        srai x6,x22,17
        srai x11,x3,31
        srai x2,x29,30
        srai x9,x6,9
        srai x7,x7,14
        srai x3,x0,6
        srai x22,x21,23
        srai x17,x17,20
        srai x26,x2,10
        srai x31,x30,31
        srai x10,x30,12
        srai x13,x14,16
        srai x31,x29,12
        srai x30,x18,31
        srai x26,x9,20
        srai x17,x5,15
        srai x13,x13,4
        srai x20,x14,0
        srai x1,x14,30
        srai x5,x0,10
        srai x4,x0,18
        srai x24,x25,7
        srai x3,x24,26
        srai x23,x28,3
        srai x26,x30,25
        srai x10,x27,24
        srai x28,x9,2
        srai x29,x9,1
        srai x6,x6,28
        srai x1,x12,23
        srai x17,x15,8
        srai x6,x1,12
        srai x1,x14,20
        srai x16,x29,31
        srai x27,x8,9
        srai x21,x20,29
        srai x4,x22,29
        srai x18,x23,24
        srai x8,x23,3
        srai x4,x6,21
        srai x6,x11,23
        srai x16,x13,26
        srai x4,x23,19
        srai x31,x25,7
        srai x3,x17,14
        srai x31,x2,22
        srai x11,x1,11
        srai x12,x19,22
        srai x28,x25,5
        srai x8,x0,19
        srai x16,x18,26
        srai x12,x25,24
        srai x6,x6,13
        srai x22,x4,2
        srai x9,x26,20
        srai x8,x15,20
        srai x10,x10,1
        srai x7,x31,18
        srai x3,x25,31
        srai x26,x25,19
        srai x22,x25,30
        srai x4,x1,25
        srai x2,x20,27
        srai x12,x30,1
        srai x10,x3,23
        srai x9,x9,19
        srai x26,x18,24
        srai x21,x27,5
        srai x26,x31,8
        srai x5,x20,0
        srai x13,x0,20
        srai x10,x29,6
        srai x12,x14,31
        srai x1,x1,16
        srai x0,x22,19
        srai x1,x22,22
        srai x17,x2,24
        srai x0,x24,14
        srai x3,x29,10
        srai x30,x0,24
        srai x9,x2,9
        srai x16,x9,6
        srai x9,x20,7
        srai x12,x28,21
        srai x7,x18,11
        srai x8,x17,9
        srai x12,x22,22
        srai x9,x14,25
        srai x8,x19,0
        srai x15,x21,28
        srai x5,x12,10
        srai x15,x14,27
        srai x6,x10,1
        srai x14,x9,31
        srai x0,x21,29
        srai x19,x13,7
        srai x22,x6,30
        srai x30,x25,18
        srai x1,x8,23
        srai x31,x29,17
        srai x3,x31,29
        srai x8,x31,23
        srai x8,x2,29
        srai x3,x8,25
        srai x21,x29,0
        srai x26,x26,16
        srai x26,x6,27
        srai x29,x10,5
        srai x10,x25,25
        srai x6,x25,18
        srai x29,x5,13
        srai x11,x21,13
        srai x26,x15,2
        srai x25,x0,13
        srai x14,x28,21
        srai x26,x3,21
        srai x27,x5,29
        srai x12,x25,4
        srai x26,x12,29
        srai x11,x19,18
        srai x2,x17,21
        srai x4,x29,18
        srai x14,x1,11
        srai x14,x23,6
        srai x21,x12,5
        srai x1,x25,10
        srai x30,x24,8
        srai x24,x19,30
        srai x8,x17,25
        srai x13,x21,7
        srai x2,x22,25
        srai x21,x3,1
        srai x18,x28,26
        srai x22,x30,12
        srai x27,x31,7
        srai x10,x11,9
        srai x30,x6,25
        srai x7,x21,17
        srai x2,x23,28
        srai x21,x8,31
        srai x12,x28,10
        srai x9,x10,25
        srai x4,x13,28
        srai x16,x8,8
        srai x13,x2,18
        srai x16,x3,14
        srai x28,x1,5
        srai x22,x21,30
        srai x19,x18,13
        srai x7,x22,22
        srai x15,x6,1
        srai x13,x27,5
        srai x20,x20,29
        srai x7,x17,25
        srai x10,x19,15
        srai x10,x14,4
        srai x12,x14,28
        srai x1,x14,5
        srai x26,x30,11
        srai x12,x7,27
        srai x8,x13,11
        srai x4,x26,4
        srai x10,x2,8
        srai x15,x7,27
        srai x9,x24,12
        srai x16,x31,7
        srai x25,x24,21
        srai x13,x25,15
        srai x10,x29,5
        srai x30,x26,11
        srai x11,x10,7
        srai x2,x0,10
        srai x22,x27,24
        srai x14,x13,7
        srai x2,x10,17
        srai x28,x6,0
        srai x24,x5,5
        srai x18,x29,24
        srai x16,x9,5
        srai x25,x3,16
        srai x8,x28,20
        srai x12,x0,21
        srai x2,x16,1
        srai x31,x7,21
        srai x13,x2,8
        srai x15,x5,10
        srai x6,x25,24
        srai x8,x25,28
        srai x10,x20,25
        srai x2,x6,6
        srai x13,x16,31
        srai x11,x10,5
        srai x25,x2,22
        srai x15,x29,6
        srai x24,x6,22
        srai x13,x10,1
        srai x24,x22,12
        srai x28,x18,0
        srai x15,x11,7
        srai x31,x21,30
        srai x9,x12,13
        srai x16,x24,6
        srai x16,x19,6
        srai x25,x16,8
        srai x5,x11,9
        srai x29,x8,3
        srai x3,x7,28
        srai x7,x27,6
        srai x6,x21,17
        srai x28,x1,18
        srai x7,x1,27
        srai x10,x8,23
        srai x24,x17,16
        srai x11,x19,29
        srai x27,x13,23
        srai x28,x4,2
        srai x15,x8,31
        srai x10,x16,19
        srai x20,x1,1
        srai x5,x15,16
        srai x24,x24,6
        srai x24,x30,0
        srai x21,x2,31
        srai x22,x21,22
        srai x1,x20,3
        srai x2,x18,21
        srai x16,x24,12
        srai x10,x1,30
        srai x29,x30,11
        srai x27,x9,22
        srai x6,x9,10
        srai x16,x12,7
        srai x6,x0,10
        srai x8,x29,20
        srai x30,x30,21
        srai x27,x29,29
        srai x5,x0,26
        srai x10,x13,14
        srai x4,x13,7
        srai x4,x2,3
        srai x10,x15,2
        srai x26,x3,29
        srai x6,x4,9
        srai x24,x29,14
        srai x22,x15,10
        srai x27,x10,6
        srai x24,x26,0
        srai x11,x13,20
        srai x8,x20,0
        srai x29,x11,1
        srai x5,x16,1
        srai x8,x10,3
        srai x30,x14,4
        srai x19,x2,26
        srai x10,x11,5
        srai x19,x21,4
        srai x11,x3,23
        srai x10,x25,1
        srai x8,x25,23
        srai x29,x12,3
        srai x19,x15,20
        srai x23,x7,18
        srai x22,x11,24
        srai x29,x23,9
        srai x14,x18,14
        srai x25,x22,22
        srai x22,x2,7
        srai x1,x19,10
        srai x18,x6,19
        srai x0,x14,31
        srai x20,x18,3
        srai x3,x6,30
        srai x23,x28,11
        srai x23,x15,28
        srai x16,x9,27
        srai x24,x24,23
        srai x17,x21,20
        srai x28,x31,28
        srai x16,x25,5
        srai x13,x8,15
        srai x4,x26,20
        srai x2,x17,2
        srai x23,x19,1
        srai x14,x17,25
        srai x1,x31,8
        srai x2,x1,10
        srai x12,x4,30
        srai x15,x26,11
        srai x13,x16,19
        srai x20,x14,2
        srai x20,x23,17
        srai x17,x15,13
        srai x27,x1,16
        srai x31,x20,23
        srai x2,x28,19
        srai x13,x28,12
        srai x17,x17,29
        srai x15,x11,12
        srai x12,x13,5
        srai x2,x15,4
        srai x29,x30,7
        srai x27,x18,30
        srai x1,x6,11
        srai x24,x19,31
        srai x29,x28,14
        srai x26,x14,31
        srai x19,x4,24
        srai x23,x14,19
        srai x31,x16,8
        srai x19,x29,23
        srai x9,x1,25
        srai x28,x25,19
        srai x10,x18,14
        srai x20,x17,30
        srai x19,x2,16
        srai x2,x26,26
        srai x21,x14,11
        srai x11,x23,16
        srai x23,x21,14
        srai x21,x11,4
        srai x5,x10,27
        srai x12,x15,1
        srai x28,x18,12
        srai x18,x31,12
        srai x21,x30,17
        srai x5,x31,2
        srai x5,x8,29
        srai x12,x10,24
        srai x12,x24,18
        srai x30,x30,3
        srai x12,x18,12
        srai x17,x19,2
        srai x14,x28,23
        srai x18,x15,24
        srai x0,x28,14
        srai x1,x19,8
        srai x21,x26,8
        srai x13,x12,9
        srai x25,x10,19
        srai x8,x21,26
        srai x0,x13,30
        srai x8,x0,31
        srai x1,x5,24
        srai x4,x25,16
        srai x0,x2,8
        srai x14,x22,13
        srai x13,x5,28
        srai x13,x13,24
        srai x25,x3,2
        srai x9,x3,19
        srai x20,x2,1
        srai x20,x15,26
        srai x10,x13,5
        srai x22,x1,29
        srai x27,x13,20
        srai x5,x11,21
        srai x11,x25,7
        srai x25,x3,11
        srai x24,x13,10
        srai x8,x26,19
        srai x28,x10,21
        srai x3,x29,15
        srai x6,x28,17
        srai x4,x20,4
        srai x30,x30,2
        srai x20,x13,27
        srai x4,x22,13
        srai x1,x7,16
        srai x12,x25,25
        srai x5,x21,20
        srai x2,x27,27
        srai x10,x30,25
        srai x7,x13,30
        srai x15,x22,18
        srai x19,x21,25
        srai x3,x30,2
        srai x27,x10,22
        srai x14,x19,27
        srai x5,x17,18
        srai x21,x31,26
        srai x4,x24,23
        srai x24,x12,6
        srai x17,x9,0
        srai x6,x13,3
        srai x19,x24,3
        srai x28,x29,24
        srai x27,x9,28
        srai x12,x29,3
        srai x0,x21,30
        srai x18,x12,29
        srai x22,x4,26
        srai x26,x19,18
        srai x8,x14,30
        srai x21,x29,15
        srai x4,x19,24
        srai x16,x16,6
        srai x26,x10,10
        srai x7,x25,12
        srai x21,x25,3
        srai x27,x4,5
        srai x28,x29,15
        srai x29,x21,21
        srai x14,x12,28
        srai x10,x5,7
        srai x8,x28,31
        srai x18,x1,23
        srai x27,x30,25
        srai x15,x12,29
        srai x4,x29,3
        srai x17,x31,4
        srai x18,x6,23
        srai x17,x21,2
        srai x12,x16,28
        srai x4,x3,28
        srai x19,x17,31
        srai x30,x20,8
        srai x4,x31,6
        srai x14,x16,25
        srai x21,x12,3
        srai x21,x0,12
        srai x12,x11,25
        srai x11,x7,22
        srai x15,x24,30
        srai x18,x23,2
        srai x25,x27,9
        srai x18,x8,10
        srai x18,x5,7
        srai x0,x1,8
        srai x2,x12,8
        srai x22,x30,30
        srai x8,x25,14
        srai x25,x4,13
        srai x11,x17,15
        srai x8,x22,1
        srai x11,x29,11
        srai x25,x3,20
        srai x10,x28,13
        srai x23,x9,27
        srai x10,x4,28
        srai x15,x27,27
        srai x6,x4,29
        srai x5,x10,1
        srai x22,x25,13
        srai x7,x31,24
        srai x12,x6,0
        srai x25,x30,10
        srai x11,x1,12
        srai x10,x12,29
        srai x4,x13,20
        srai x29,x5,23
        srai x2,x23,30
        srai x15,x12,16
        srai x2,x13,17
        srai x8,x10,21
        srai x0,x9,21
        srai x22,x9,25
        srai x20,x19,16
        srai x20,x3,13
        srai x0,x29,20
        srai x8,x16,20
        srai x21,x24,26
        srai x1,x28,10
        srai x17,x19,2
        srai x7,x18,16
        srai x6,x7,14
        srai x8,x16,17
        srai x15,x11,0
        srai x22,x4,23
        srai x16,x11,15
        srai x15,x28,0
        srai x17,x27,7
        srai x0,x6,9
        srai x17,x7,31
        srai x25,x12,23
        srai x21,x19,24
        srai x29,x24,1
        srai x3,x15,11
        srai x5,x0,24
        srai x15,x12,22
        srai x21,x8,22
        srai x3,x19,15
        srai x9,x5,18
        srai x4,x2,20
        srai x3,x11,8
        srai x25,x2,19
        srai x6,x13,22
        srai x5,x26,27
        srai x9,x5,16
        srai x30,x12,12
        srai x9,x26,20
        srai x13,x12,25
        srai x1,x4,18
        srai x18,x25,2
        srai x31,x15,17
        srai x8,x25,12
        srai x20,x13,2
        srai x10,x30,9
        srai x7,x14,12
        srai x28,x13,15
        srai x1,x14,21
        srai x13,x25,8
        srai x24,x21,3
        srai x11,x8,22
        srai x27,x31,21
        srai x21,x24,26
        srai x15,x16,20
        srai x17,x19,21
        srai x27,x23,0
        srai x10,x30,22
        srai x29,x16,16
        srai x10,x1,30
        srai x26,x30,20
        srai x4,x12,0
        srai x7,x5,7
        srai x26,x15,20
        srai x31,x7,10
        srai x29,x10,26
        srai x19,x13,13
        srai x13,x29,14
        srai x27,x6,21
        srai x10,x5,20
        srai x20,x23,15
        srai x21,x2,3
        srai x11,x12,19
        srai x22,x21,14
        srai x0,x16,14
        srai x27,x25,19
        srai x18,x28,7
        srai x2,x31,23
        srai x10,x2,2
        srai x30,x24,31
        srai x9,x20,5
        srai x11,x0,20
        srai x26,x27,30
        srai x24,x28,29
        srai x25,x6,4
        srai x6,x31,3
        srai x11,x12,0
        srai x23,x10,7
        srai x7,x18,11
        srai x20,x28,0
        srai x1,x15,26
        srai x28,x7,1
        srai x13,x1,8
        srai x8,x9,20
        srai x31,x21,7
        srai x22,x14,21
        srai x17,x0,8
        srai x25,x19,3
        srai x24,x31,28
        srai x30,x16,8
        srai x29,x19,11
        srai x27,x30,4
        srai x0,x23,14
        srai x29,x11,8
        srai x25,x31,28
        srai x21,x1,7
        srai x4,x18,20
        srai x13,x10,6
        srai x7,x9,9
        srai x18,x27,16
        srai x21,x0,29
        srai x0,x8,28
        srai x9,x18,25
        srai x14,x16,1
        srai x15,x26,28
        srai x11,x20,14
        srai x20,x5,25
        srai x18,x2,31
        srai x15,x6,2
        srai x10,x5,15
        srai x13,x15,21
        srai x11,x16,20
        srai x12,x19,26
        srai x17,x23,11
        srai x10,x1,17
        srai x7,x30,12
        srai x0,x28,4
        srai x4,x25,5
        srai x3,x14,14
        srai x25,x8,1
        srai x5,x24,1
        srai x1,x14,21
        srai x28,x9,27
        srai x11,x5,6
        srai x29,x9,22
        srai x9,x3,29
        srai x8,x31,25
        srai x21,x3,0
        srai x11,x6,30
        srai x9,x8,25
        srai x20,x29,28
        srai x13,x8,16
        srai x2,x25,7
        srai x20,x27,9
        srai x15,x8,10
        srai x15,x24,4
        srai x13,x10,3
        srai x16,x4,22
        srai x1,x16,15
        srai x5,x8,23
        srai x17,x2,13
        srai x31,x7,29
        srai x27,x7,23
        srai x0,x25,7
        srai x7,x13,2
        srai x21,x13,23
        srai x19,x8,24
        srai x14,x30,5
        srai x8,x9,20
        srai x5,x4,22
        srai x15,x3,10
        srai x10,x22,23
        srai x6,x15,31
        srai x16,x29,6
        srai x30,x8,6
        srai x15,x27,23
        srai x0,x2,19
        srai x21,x21,10
        srai x29,x14,12
        srai x27,x9,6
        srai x21,x14,8
        srai x24,x28,31
        srai x0,x29,12
        srai x16,x21,29
        srai x22,x19,13
        srai x27,x18,26
        srai x14,x5,2
        srai x12,x21,13
        srai x17,x0,2
        srai x10,x13,21
        srai x16,x11,22
        srai x24,x26,10
        srai x27,x4,4
        srai x12,x10,22
        srai x22,x14,24
        srai x24,x10,18
        srai x12,x25,25
        srai x28,x25,12
        srai x18,x12,23
        srai x8,x27,7
        srai x25,x26,25
        srai x24,x30,1
        srai x4,x31,26
        srai x27,x12,18
        srai x31,x15,4
        srai x6,x5,30
        srai x24,x0,13
        srai x23,x4,15
        srai x12,x31,1
        srai x26,x19,7
        srai x30,x7,1
        li t6,0x00001770
        jalr x0,0(t6)
