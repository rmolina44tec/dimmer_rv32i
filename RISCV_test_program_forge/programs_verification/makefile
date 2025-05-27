all:
	@cd Ensamblador/instrucciones && make
	@cd Ensamblador/interrupciones && make
	@cd Ensamblador/CPI_power && make
	@cd Objetos/instrucciones && make
	@cd Objetos/interrupciones && make
	@cd Objetos/CPI_power && make
clean:
	@cd Ensamblador/instrucciones && make clean
	@cd Ensamblador/interrupciones && make clean
	@cd Objetos/instrucciones && make clean
	@cd Objetos/interrupciones && make clean
Instest:
	@cd Ensamblador/instrucciones && make $(program)
	@cd Objetos/instrucciones && make $(program)	
Intetest:
	@cd Ensamblador/interrupciones && make $(program)
	@cd Objetos/interrupciones && make $(program)