#Prueba basica para observar el comportamiento de escritura de datos del GPIO_0

.section .text
.globl _start

_start:
	jal x0,main
    
main:
    li s0, 0x00000002       # Configurar modo de lectura CSR
    csrrw x0, 0, s0
    
state:
    csrrs t1, 4, ra        # Leer GPIOs
    andi t1, t1, 0x01      # Mascara con GPIO_0      
    beqz t1, down          # Si no esto presionado, salir 
    
    li ra, 0x00000002
    csrrw x0, 4, ra         # Restablecer GPIO
    j state

down:
   li ra, 0x00000000
   csrrw x0, 4, ra         # Restablecer GPIO
   j state
