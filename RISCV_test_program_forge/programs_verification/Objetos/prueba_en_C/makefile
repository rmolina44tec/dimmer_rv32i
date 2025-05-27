Comand = riscv32-unknown-elf-elf2hex
FLAGS  = --bit-width 32
Dir_sav= ../../hexfiles/prueba_en_C/
SRCS = $(wildcard *.o)
PROGS = $(patsubst %.o,%,$(SRCS))
PROGS2 = $(patsubst %.o,$(Dir_sav)/%.txt,$(SRCS))

all: $(PROGS)

%: %.o
	$(Comand) $(FLAGS) --input $@.o --output $(Dir_sav)$@.txt
clean:
	rm -f $(PROGS2)

