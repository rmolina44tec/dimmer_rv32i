CC = riscv32-unknown-elf-gcc
CFLAGS  = -nostdlib -nostartfiles
SRCS = $(wildcard *.S)
Dir_save =../../Objetos/FPGA_tests

PROGS = $(patsubst %.S,%,$(SRCS))
PROGS2 = $(patsubst %.S, $(Dir_save)/%.o,$(SRCS))

all: $(PROGS)

%: %.S
	$(CC) $(CFLAGS) -o $(Dir_save)/$@.o $@.S
clean:
	rm -f $(PROGS2) 
