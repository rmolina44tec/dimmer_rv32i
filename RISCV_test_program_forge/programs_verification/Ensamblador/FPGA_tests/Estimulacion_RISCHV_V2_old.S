# mcr	  0x00
# mepc	  0x01
# mcauseA 0x02
# mcauseB 0x03
# GPIO	  0x04
# mvtec	  0x05
# tmrfnc  0x06
# tmrval  0x07
# frls	  0x08
# isval	  0x09	
# isconf  0x0a (10)
# istrg	  0x0b (11)

.global main
main:
# Por defecto las GPIO estan en 0 y 0 es que estan como salida asique no hay que hacer nada
li a2, 0x000000ff # Valor que va a tener el timer. Asumo que el CLK esta a 20 MHz
li a3, 0x7cc000ff # Los primeros 8 son la fuente
		  # Ultimos 10 bits de is_config son los bits de trimming. -> (31)HV_b4->HV_b0 -> LV_b4->LV_b0(22)
li a6, 0x00000002 # Cantidad de ciclos que quiero
li a5, 0x00000001 # Primer bit controla la fuente LV
li a7, 0x00000002 # Segundo bit controla la fuente HV

li t3, 0x00000001 # Para poner 1 en el LSB de cualquier registro
li t4, 0x00000000 # Inicializo el contador  

csrw 9, a3 # Cargo los valores de las fuentes a la variable isval

csrw 6, a2 # Cargo el tiempo de estimulacion deseado en el registro del timer

lla a4, Interrupcion1
csrw 5, a4 # Cargo el valor de la primer interrupcion en el mvtec

csrw 10, a5 # Cargo en el registro isconfig que fuente encender

csrw 11, t3 # Prendo el trigger

csrrs x0, 0, t3 # Seteo el miet en 1 (empieza a correr el reloj)

Loop:
nop
nop
j Loop


Interrupcion1:
csrrc x0, 0, t3 # Seteo el miet en 0 (Se resetea y queda parado el reloj)

csrw 11, x0 # Apago el trigger

csrw 10, a7 # Cargo en el registro isconfig que fuente encender

csrw 11, t3 # Prendo el trigger

csrrs x0, 0, t3 # Seteo el miet en 1 (empieza a correr el reloj)

addi t4, t4, 1 # Incremento el contador ya que se finalizo un ciclo

lla a4, Interrupcion2
csrw 5, a4 # Cargo el valor de la segunda interrupcion en el mvtec

mret


Interrupcion2:
bge t4, a6, FinDeCiclos # Chequeo si el contado llego a la cantidad de ciclos deseados si no llego no salto

csrrc x0, 0, t3 # Seteo el miet en 0 (Se resetea y queda parado el reloj)

csrw 11, x0 # Apago el trigger

csrw 10, a5 # Cargo en el registro isconfig que fuente encender

csrw 11, t3 # Prendo el trigger

csrrs x0, 0, t3 # Seteo el miet en 1 (empieza a correr el reloj)

lla a4, Interrupcion1
csrw 5, a4 # Cargo el valor de la primer interrupcion en el mvtec

mret

FinDeCiclos:
csrrc x0, 0, t3 # Seteo el miet en 0 (Se resetea y queda parado el reloj)

csrw 11, x0 # Apago el trigger

csrw 10, x0 # Apago los canales del segundo pulso

csrrs x0, 4, t3 # Seteo un bit del gpio en 1

mret # Me voy al loop infinito
