.section .text
.globl _start
.equ TEN, 2790
.equ TWENTY, 2480
.equ FORTY, 1860
.equ SIXTY, 1240
.equ EIGHTY, 620

.equ WAIT_TEN, 60
.equ WAIT_TWENTY, 370
.equ WAIT_FORTY, 990
.equ WAIT_SIXTY, 1610
.equ WAIT_EIGHTY, 2230

.equ PULSE,250
.equ DEBOUNCE_DELAY, 2000 # Tiempo de anti-rebote

.equ REPEAT_COUNT, 2  # Número de repeticiones del ciclo bajo-alto-bajo2

_start:
    jal x0, main

main:
    li s0, 0x00010002       # Configurar modo de lectura CSR
    csrrw x0, 0, s0
    
    li s1, 0                # Contador general
    li s4, 0                # Estado inicial
    li s5, PULSE            # Tiempo que GPIO4 permanece alto
    li t4, REPEAT_COUNT     # Contador de repeticiones
    
main_loop:
    jal x0, debounce_button  # Llamar a la funcion de anti-rebote

state:
    csrrs t1, 4, ra        # Leer GPIO3
    andi t1, t1, 0x08      
    beqz t1, state         # Si no esto presionado, salir 
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
    j main_loop
    
update_state:
    addi s4, s4, 1          # Incrementar estado
    li t3, 4
    bgt s4, t3, reset_state # Si el estado > 5, restablecer
    j state

reset_state:
    li s4, 0                # Restablecer estado a 0
    j state
    
wait_gpio4:    
    li ra, 0x00000000
    csrrw x0, 4, ra         # Escribir en GPIO
    li s1, 0                # Restablecer contador
    li t4, REPEAT_COUNT     # Contador de repeticiones
repeat_cycle:
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
    beq s1, s3, repeat_or_exit   # Saltar a repetir o salir 
    j wait_timer_2
    
repeat_or_exit:
    addi t4, t4, -1         # Decrementar el contador de repeticiones
    bnez t4, repeat_cycle   # Si no es cero, repetir ciclo
    j main_loop             # Si es cero, volver al bucle principal
   
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


      
      



