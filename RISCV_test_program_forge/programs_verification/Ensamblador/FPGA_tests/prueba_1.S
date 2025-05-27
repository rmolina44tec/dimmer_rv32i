#Descripcion
#Prueba de timer con un PWM de 8 ms

#Reloj del Siwa 20MHz = 50ns 
# Un ciclo de 50Hz = 20ms
# Se regula solo la mitad de la onda por lo que solo se ocupa el 10ms
# Para el 80% debe contar 50ns x 160000 veces = 8ms
#.equ ochenta,  160000
#.equ timer,    400000

.section .text
.globl _start
.equ ochenta,  16
.equ timer,    40

_start:
	jal x0,_main

_main:
#Before writing the GPIO CSR, the CSR read mode must be enabled on the MIE/MIP
#register. s0 holds this value
    li t0,0x00010002
    #li t0,0x00010000
    csrrw x0,0,t0
  
_main_loop:
    li t0, 4                   # 
    li t1, timer               # Posible valor de interrupcion
    csrrw x0, 5, t0            # Dirreccion del interrupcion MPVTEC CSR 
    csrrw x0, 6, t1            # Escribe al registro CSR 
    li s1,0
    
wait_1:
    li t0,0x00000010  
    csrrw x0,4,t0
    li s2, ochenta
    addi s1,s1,1
    beq s1,s2, wait_time
    j wait_1

wait_time:
    li s3,0   
    
wait_timer:
    li t6, 1
    csrrs t0, 2, x0       # leer el CSR mcause y verificar si ocurri� el bit del temporizador (3'b011)
    andi t1, t0, 7        # enmascarar los bits de c�digo (bits 0, 1 y 2 de mcause) y descartar el resto
    li t0, 3              # c�digo del temporizador
    bne t0, t1, wait_timer # verificar si la causa de la interrupci�n fue el temporizador
    li s3, 1              # elevar bandera si apareci� el c�digo del temporizador
    beq s3,t6, _main_loop
 
	
