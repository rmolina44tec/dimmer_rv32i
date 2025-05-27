#Prueba basica para observar el comportamiento de escritura de datos del GPIO_4

.section .text
.globl _start
_start:
    li s0, 0x00011002       # Configurar el registro MIE/MIP
    csrrw x0, 0, s0
    li t1, 1
    
state:
    csrrs t1, 4, ra         # Leer GPIOs
    andi t1, t1, 0x10       # Mascara con GPIO_4      
    beqz t1, down           # Si no está presionado, ir a apagado
    
    # Encender el GPIO
    li ra, 0x00000020
    csrrw x0, 4, ra
    li t0, 0
contador:
    beq t0, t1, state
    addi t0,t0,1
    j contador
    

down:
    # Apaga el GPIO
    li ra, 0x00000000
    # Apagar el GPIO
    csrrw x0, 4, ra
    j state



