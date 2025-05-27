#Prueba basica para observar el comportamiento de escritura de datos del GPIO_0

.section .text
.globl _start

main:
    li s0, 0x00000002       # Configurar modo de lectura CSR
    csrrw x0, 0, s0

main1:    
    li t0, 0                # Inicializar contador a 0
    li t2, 0x01             # Valor de activación (dirección 0x01)
    li ra, 0x00000000
    csrrw x0, 4, t2
    
state:
    csrrs t1, 4, ra         # Leer GPIOs
    andi t1, t1, 0x01       # Mascara con GPIO_0      
    beqz t1, down           # Si no está presionado, ir a apagado
    
    # Encender el GPIO
    li ra, 0x00000002
    csrrw x0, 4, ra
    
    # Incrementar el contador
    addi t0, t0, 1
    li t3, 10               # Comparar con 10 ciclos            
    csrrw x0, 4, t2
    blt t0, t3, state       # Si el contador es menor a 10, repetir ciclo de encendido
    
    csrrw x0, 4, ra
    # Resetear el contador para el próximo ciclo de apagado
    li t0, 0
    j state

down:
    # Apagar el GPIO
    csrrw x0, 4, ra
    
    # Incrementar el contador
    addi t0, t0, 1
    li t3, 10               # Comparar con 10 ciclos
    blt t0, t3, down        # Si el contador es menor a 10, repetir ciclo de apagado
    
    # Resetear el contador para el próximo ciclo de encendido
    li t0, 0
    j main1


