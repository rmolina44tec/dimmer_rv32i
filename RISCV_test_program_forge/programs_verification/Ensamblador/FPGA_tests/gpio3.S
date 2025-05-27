#Prueba basica para observar el comportamiento de escritura de datos del GPIO_3

.section .text
.globl _start

_start:
	jal x0,main
    
main:
    li s0, 0x0001EF02       # Configurar modo de lectura CSR
    csrrw x0, 0, s0
    
state:
    csrrs t1, 4, ra        # Leer GPIOs
    andi t1, t1, 0x08      # Mascara con GPIO_3      
    beqz t1, down          # Si no esto presionado, salir 
    
    li ra, 0x00000010
    csrrw x0, 4, ra         # Restablecer GPIO
    j state

down:
   li ra, 0x00000000
   csrrw x0, 4, ra         # Restablecer GPIO
   j state