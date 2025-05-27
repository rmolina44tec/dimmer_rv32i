#Prueba basica para observar el comportamiento de escritura de datos del GPIO_0

.section .text
.globl _start

main:
    li s0, 0x00010102       # Configurar modo de lectura CSR
    csrrw x0, 0, s0

    
state:
    csrrs t1, 4, ra         # Leer GPIOs
    andi t1, t1, 0x01       # Mascara con GPIO_0      
    beqz t1, down           # Si no está presionado, ir a apagado
    
    # Encender el GPIO
    li ra, 0x00000002
    csrrw x0, 4, ra
    li t1, 1000000
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


