from random import randint
def encabezado_riscv(file):
    file.write(".section .text\n")
    file.write(".globl _start\n")
    file.write("_start:\n")

def Inicializacion_ramdom_reg(file):
    for i in range(32):
        file.write("        addi x%i,x0,%i\n" %(i,randint(-2047,2047)))

def encabezado_CSR_timer(file):
    file.write("        csrrw x0,0,x0\n")
    file.write("        csrrwi x0,6,0x1F\n")

def R_instruction(file,instruccion):
    file.write("        %s x31,x%i,x%i\n" %(instruccion,randint(0,31),randint(0,31)))

def I_instruction_noshift(file,instruccion):
    file.write("        %s x%i,x%i,%i\n" %(instruccion,randint(0,31),randint(0,31),randint(-2047,2047)))

def I_instruction_shift(file,instruccion):
    file.write("        %s x%i,x%i,%i\n" %(instruccion,randint(0,31),randint(0,31),randint(0,31)))

def load_store_inst(file,instruccion):
    file.write("        %s x%i,%i(x1)\n" %(instruccion,randint(2,31),randint(0,29)*4))

def U_instruccion(file,instruccion):
    file.write("        %s x%i,%i\n" %(instruccion,randint(0,31),randint(0,524287)))

def test_Instruc_R(instruccion):
    file = open("%s.S"%(instruccion),"w")
    encabezado_riscv(file)
    Inicializacion_ramdom_reg(file)
    encabezado_CSR_timer(file)
    for i in range(1000):
        R_instruction(file,instruccion)
    final(file)
    file.close()

def test_Instruc_I_no_shift(instruccion):
    file = open("%s.S"%(instruccion),"w")
    encabezado_riscv(file)
    encabezado_CSR_timer(file)
    for i in range(1000):
        I_instruction_noshift(file,instruccion)
    final(file)
    file.close()

def test_Instruc_I_shift(instruccion):
    file = open("%s.S"%(instruccion),"w")
    encabezado_riscv(file)
    encabezado_CSR_timer(file)
    for i in range(1000):
        I_instruction_shift(file,instruccion)
    final(file)
    file.close()

def test_Load_Store(instruccion):
    file = open("%s.S"%(instruccion),"w")
    encabezado_riscv(file)
    Inicializacion_Store_reg(file)
    encabezado_CSR_timer(file)
    for i in range(1000):
        load_store_inst(file,instruccion)
    final(file)
    file.close()

def test_Instruccion_U(instruccion):
    file = open("%s.S"%(instruccion),"w")
    encabezado_riscv(file)
    encabezado_CSR_timer(file)
    for i in range(1000):
        U_instruccion(file,instruccion)
    final(file)
    file.close()

def csrrwi(file):
    file.write("        csrrwi x%i,%i,%i\n" %(randint(0,31),randint(1,11),randint(0,31)))
def csrrw(file):
    file.write("        csrrw x%i,%i,x%i\n" %(randint(0,31),randint(1,11),randint(0,31)))
def csrrsi(file):
    file.write("        csrrsi x%i,%i,%i\n" %(randint(0,31),randint(1,11),randint(0,31)))
def csrrs(file):
    file.write("        csrrs x%i,%i,x%i\n" %(randint(0,31),randint(1,11),randint(0,31)))
def csrrci(file):
    file.write("        csrrci x%i,%i,%i\n" %(randint(0,31),randint(1,11),randint(0,31)))
def csrrc(file):
    file.write("        csrrc x%i,%i,x%i\n" %(randint(0,31),randint(1,11),randint(0,31)))

def Inicializacion_beq_reg(file):
    for i in range(32):
        file.write("        addi x%i,x0,%i\n" %(i,i+1000))
def Inicializacion_Store_reg(file):
    file.write("        li x1,5500\n")
    for i in range(30):
        file.write("        addi x%i,x0,%i\n" %(i+2,randint(-2047,2047)))
    for i in range(30):
        file.write("        sw x%i,%i(x1)\n" %(i+2,i*4))
def final(file):
    file.write("        li t6,0x00001770\n")
    file.write("        jalr x0,0(t6)\n")
def fallo(file):
    file.write("        li t6,0x00001778\n")
    file.write("        jalr x0,0(t6)\n")
