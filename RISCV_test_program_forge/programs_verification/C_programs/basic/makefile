CC = riscv32-unknown-elf-gcc
CFLAGS  = -nostdlib -nostartfiles
SRCS = $(wildcard *.c)
Dir_save =../../Objetos/C_programs/basic

PROGS = $(patsubst %.S,%,$(SRCS))
PROGS2 = $(patsubst %.S, $(Dir_save)/%.o,$(SRCS))

all: $(PROGS)

%: %.c
	$(CC) $(CFLAGS) -o $(Dir_save)/$@.o $@.c
clean:
	rm -f $(PROGS2) 
