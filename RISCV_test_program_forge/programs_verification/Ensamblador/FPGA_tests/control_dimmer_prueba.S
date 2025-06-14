#Descripcion
# Este es un programa para la implementacion de un temporizador que permita regular la intesidad 
# de luz de un dimmer (circuitos discretos) mediante los puertos GPIO del Siwa.  
# GPIO4 la salida de la senal regulada.
# GPIO5 un boton que permita definir cuanta intensidad se quiere 100, 80, 60, 40, 20, 10%.

.section .text
.globl _start
.equ TEN, 10
.equ TWENTY, 20
.equ FORTY, 40
.equ SIXTY, 60
.equ EIGHTY, 80
.equ HUNDRED, 100

.equ WAIT_TEN, 80
.equ WAIT_TWENTY, 70
.equ WAIT_FORTY, 50
.equ WAIT_SIXTY, 30
.equ WAIT_EIGHTY, 10

.equ PULSE,10
.equ DEBOUNCE_DELAY, 20     # Tiempo de anti-rebote

_start:
    jal x0, main

main:
    li s0, 0x00010002       # Configurar modo de lectura CSR
    csrrw x0, 0, s0
    
    li s1, 0                # Contador general
    li s4, 0                # Estado inicial
    li s5, PULSE            # Tiempo que GPIO4 permanece alto
    
main_loop:
    li ra, 0x00000020        # PRUEBA BOTON
    csrrw x0, 4, ra          # PRUEBA BOTON
    jal x0, debounce_button  # Llamar a la funcion de anti-rebote

state:    
    # Evaluar estado y ajustar temporizador
    li t0, 0
    li s2, EIGHTY
    li s3, WAIT_EIGHTY
    beq s4, t0, wait_gpio4      
    li t0, 1
    li s2, SIXTY
    li s3, WAIT_SIXTY
    beq s4, t0, wait_gpio4     
    li t0, 2
    li s2, FORTY
    li s3, WAIT_FORTY
    beq s4, t0, wait_gpio4     
    li t0, 3
    li s2, TWENTY
    li s3, WAIT_TWENTY
    beq s4, t0, wait_gpio4  
    li t0, 4
    li s2, TEN
    li s3, WAIT_TEN
    beq s4, t0, wait_gpio4  
    li t0, 5
    li s2, HUNDRED 
    beq s4, t0, hundred_percent_state  
    j main_loop
    
update_state:
    li ra, 0x00000000       # PRUEBA BOTON
    csrrw x0, 4, ra         # PRUEBA BOTON
    addi s4, s4, 1          # Incrementar estado
    li t3, 5
    bgt s4, t3, reset_state # Si el estado > 5, restablecer
    j state

reset_state:
    li s4, 0                # Restablecer estado a 0
    j state
    
wait_gpio4:    
    li ra, 0x00000000
    csrrw x0, 4, ra         # Escribir en GPIO
    li s1, 0                # Restablecer contador
    
# Esperar ciclo bajo
wait_low:
    addi s1, s1, 1
    beq s1, s2, wait_high   # Saltar a ciclo alto 
    j wait_low
wait_high:
    li s1, 0                # Restablecer contador
    li ra, 0x00000010
    csrrw x0, 4, ra         # Restablecer GPIO

# Esperar ciclo alto
wait_timer:
    addi s1, s1, 1
    beq s1, s5, wait_low_2  # Saltar al segundo ciclo bajo
    j wait_timer

# Esperar ciclo bajo 2
wait_low_2:
   li s1, 0                # Restablecer contador
   li ra, 0x00000000
   csrrw x0, 4, ra         # Restablecer GPIO
wait_timer_2:
    addi s1, s1, 1         # Volver al bucle principal 
    beq s1, s3, main_loop  
    j wait_timer_2
    
# Manejar el estado durante el ciclo de 100%
hundred_percent_state:
   li s1, 0                # Restablecer contador
   li ra, 0x00000000
   csrrw x0, 4, ra         # Restablecer GPIO
wait_hundred:
   addi s1, s1, 1
   beq s1, s2, main_loop   # Volver al bucle principal
   j wait_hundred
   
# Funcion de anti-rebote
debounce_button:
    li t2, 0               # Inicializar contador de anti-rebote
    
debounce_loop:
    csrrs t1, 4, ra        # Leer GPIO5
    andi t1, t1, 0x20      
    beqz t1, state         # Si no esto presionado, salir
    
    addi t2, t2, 1         
    li t3, DEBOUNCE_DELAY  
    blt t2, t3, debounce_loop # Repetir si no se ha alcanzado el tiempo 
    
    j update_state  


