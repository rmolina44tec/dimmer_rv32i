.section .text
.globl _start
.equ TEN, 90
.equ TWENTY, 80
.equ FORTY, 60
.equ SIXTY, 40
.equ EIGHTY, 20

.equ PULSE,5
.equ DEBOUNCE_DELAY, 1 # Tiempo de anti-rebote

_start:
    # Initialization
    li t0, 0x00012802           # Load immediate value for CSR initialization
    csrrw x0, 0, t0             # Initialize CSR with the value in t0
    
    li s1, 0                # Contador general
    li s4, 0                # Estado inicial
    li s5, PULSE            # Tiempo que GPIO4 permanece alto
    
main_loop:
    jal x0, debounce_button  # Llamar a la funcion de anti-rebote

state:
    csrrs t1, 4, ra        # Leer GPIO3
    andi t1, t1, 0x08      
    beqz t1, state         # Si no esto presionado, salir 
    # Evaluar estado y ajustar temporizador
    li t0, 0
    li s2, EIGHTY
    beq s4, t0, wait_gpio4      
    li t0, 1
    li s2, SIXTY
    beq s4, t0, wait_gpio4     
    li t0, 2
    li s2, FORTY
    beq s4, t0, wait_gpio4     
    li t0, 3
    li s2, TWENTY
    beq s4, t0, wait_gpio4  
    li t0, 4
    li s2, TEN
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
    beq s1, s5, low # Saltar al segundo ciclo bajo
    j wait_timer

# Esperar ciclo bajo 2
low:
   li ra, 0x00000000
   csrrw x0, 4, ra         # Restablecer GPIO
   j main_loop
   
   
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


      
      



