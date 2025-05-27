#Descripcion
# Este es un programa para la implementacion de un PWM que permita regular la intesidad 
# de luz de un dimmer (circuitos discretos) mediante los puertos GPIO del Siwa.  
# GPIO4 la salida de la senal regulada.
# GPIO5 un boton que permita definir cuanta intensidad se quiere 80, 60, 40, 20%.

#Reloj del Siwa 20MHz = 50ns 
# Un ciclo de 50Hz = 20ms
# Se regula solo la mitad de la onda por lo que solo se ocupa el 10ms
# Para el 80% debe contar 50ns x 160000 veces = 8ms
# Para el 60% debe contar 50ns x 120000 veces = 6ms
# Para el 40% debe contar 50ns x 80000 veces  = 4ms
# Para el 20% debe contar 50ns x 40000 veces  = 2ms
#.equ ochenta,  160000
#.equ sesenta,  120000
#.equ cuarenta, 80000
#.equ veinte,   40000
#.equ timer,    400000

.section .text
.globl _start
#.equ ochenta,  16
#.equ sesenta,  12
#.equ cuarenta, 8
#.equ veinte,   4
#.equ timer,    40

_start:
	jal x0,_main

#Preguntar bien esta parte
int_handler:
    csrrs t0, 2, x0       # leer el CSR mcause y verificar si ocurrió el bit del temporizador (3'b011)
    andi t1, t0, 7        # enmascarar los bits de código (bits 0, 1 y 2 de mcause) y descartar el resto
    li t0, 3              # código del temporizador
    bne t0, t1, _return   # verificar si la causa de la interrupción fue el temporizador
    li s3, 1              # elevar bandera si apareció el código del temporizador
_return:
    mret                  # regresar al programa principal

_main:
#Before writing the GPIO CSR, the CSR read mode must be enabled on the MIE/MIP
#register. s0 holds this value
    li s0,0x00010002
    csrrw x0,0,s0
    
    li s1,0        # Contador en alto
    li s4,0        # Registro de estado
    # Falta agregar el timer para el contador de los 50Hz
  

   
_up_state:
   # Incrementar el estado si el botón es presionado
   addi s4, s4, 1              # Incrementar al siguiente estado
   li t3, 4
   bgt s4, t3, reset_state     # Si el estado es mayor que 4, reiniciar a estado 1



# Evaluar el estado actual para ajustar el ciclo de trabajo y escribir en el registro CSR
_state:
    li t0,0
    beq s4,t0,estado_1         # Si estado_actual es 0, saltar a estado_1
    li t0,1
    beq s4,t0,estado_2         # Si estado_actual es 1, saltar a estado_2
    li t0,2
    beq s4,t0,estado_3         # Si estado_actual es 2, saltar a estado_3
    li t0,3
    beq s4,t0,estado_4         # Si estado_actual es 3, saltar a estado_4
 

estado_1:
    li ra,0x00000010  
    csrrw x0,4,ra
    li s1,0
wait_1:
    li s2, 80
    addi s1,s1,1
    beq s1,s2, wait_time1
    j wait_1

    
estado_2:
    li ra,0x00000010  
    csrrw x0,4,ra
    li s1,0
wait_2:
    li s2, 60
    addi s1,s1,1
    beq s1,s2, wait_time2
    j wait_2   
    

estado_3:
    li ra,0x00000010  
    csrrw x0,4,ra
    li s1,0
wait_3:
    li s2, 40
    addi s1,s1,1
    beq s1,s2, wait_time3
    j wait_3
   

estado_4:
    li ra,0x00000010  
    csrrw x0,4,ra
    li s1,0
wait_4:
    li s2, 20
    addi s1,s1,1
    beq s1,s2, wait_time4
    j wait_4   

wait_time1:
    li s1,0   
    li ra,0x00000000  
    csrrw x0,4,ra
wait_timer1:
    li s2, 20
    addi s1,s1,1
    beq s1,s2, _up_state
    j wait_timer1 
    
wait_time2:
    li s1,0   
    li ra,0x00000000  
    csrrw x0,4,ra
wait_timer2:
    li s2, 40
    addi s1,s1,1
    beq s1,s2, _up_state
    j wait_timer2 
    
wait_time3:
    li s1,0   
    li ra,0x00000000  
    csrrw x0,4,ra
wait_timer3:
    li s2, 60
    addi s1,s1,1
    beq s1,s2, _up_state
    j wait_timer3 
	
wait_time4:
    li s1,0   
    li ra,0x00000000  
    csrrw x0,4,ra  
wait_timer4:
    li s2, 80
    addi s1,s1,1
    beq s1,s2, _up_state
    j wait_timer4 
      
reset_state:
    li s4, 0                   # Reiniciar estado_actual a 1
    j _main             # Volver al bucle principal
