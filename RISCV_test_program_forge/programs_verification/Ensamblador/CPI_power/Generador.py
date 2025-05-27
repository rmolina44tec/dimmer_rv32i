import os
import sys
import subprocess
import numpy as np
import matplotlib.pyplot as plt
import Function
from random import randint
#-----------------------------------------------------------------
#---------------------instrucciones Tipo R------------------------
#-----------------------------------------------------------------
Function.test_Instruc_R("add")
Function.test_Instruc_R("sub")
Function.test_Instruc_R("and")
Function.test_Instruc_R("or")
Function.test_Instruc_R("xor")
Function.test_Instruc_R("slt")
Function.test_Instruc_R("sltu")
Function.test_Instruc_R("srl")
Function.test_Instruc_R("sll")
Function.test_Instruc_R("sra")
#-----------------------------------------------------------------
#---------------------instrucciones Tipo I------------------------
#-----------------------------------------------------------------

Function.test_Instruc_I_no_shift("addi")
Function.test_Instruc_I_no_shift("andi")
Function.test_Instruc_I_no_shift("ori")
Function.test_Instruc_I_no_shift("xori")
Function.test_Instruc_I_no_shift("slti")
Function.test_Instruc_I_no_shift("sltiu")

Function.test_Instruc_I_shift("srli")
Function.test_Instruc_I_shift("srai")
Function.test_Instruc_I_shift("slli")
#-----------------------------------------------------------------
#---------------------instrucciones Tipo U------------------------
#-----------------------------------------------------------------
Function.test_Instruccion_U("lui")
Function.test_Instruccion_U("auipc")
#-----------------------------------------------------------------
#---------------------instrucciones Tipo Store/load------------------------
#-----------------------------------------------------------------
Function.test_Load_Store("sw")
Function.test_Load_Store("sh")
Function.test_Load_Store("sb")
Function.test_Load_Store("lw")
Function.test_Load_Store("lh")
Function.test_Load_Store("lhu")
Function.test_Load_Store("lb")
Function.test_Load_Store("lbu")
#-----------------------------------------------------------------
#---------------------Test de beq ramdom------------------------
#-----------------------------------------------------------------

file = open("beq.S","w")
Function.encabezado_riscv(file)
Function.Inicializacion_beq_reg(file)
file.write("        li x1,1\n")
Function.encabezado_CSR_timer(file)
for i in range(999):
    file.write("        beq x%i,x0,A\n" %(randint(1,31)))
file.write("        beq x0,x0,A\n")
file.write("A:\n")
Function.final(file)
file.close()
#-----------------------------------------------------------------
#---------------------Test de bne ramdom------------------------
#-----------------------------------------------------------------
file = open("bne.S","w")
Function.encabezado_riscv(file)
Function.Inicializacion_beq_reg(file)
file.write("        li x1,1\n")
Function.encabezado_CSR_timer(file)
for i in range(999):
    a=randint(1,31)
    file.write("        bne x%i,x%i,A\n" %(a,a))
file.write("        beq x1,x0,A\n")
file.write("A:\n")
Function.final(file)
file.close()
#-----------------------------------------------------------------
#---------------------Test de blt ramdom------------------------
#-----------------------------------------------------------------
file = open("blt.S","w")
Function.encabezado_riscv(file)
Function.Inicializacion_beq_reg(file)
file.write("        li x1,1\n")
Function.encabezado_CSR_timer(file)
for i in range(1000):
    a=randint(1,31)
    file.write("        blt x%i,x%i,A\n" %(a,a))
Function.final(file)
file.write("A:\n")
Function.fallo(file)
file.close()
#-----------------------------------------------------------------
#---------------------Test de bge ramdom------------------------
#-----------------------------------------------------------------
file = open("bge.S","w")
Function.encabezado_riscv(file)
Function.Inicializacion_beq_reg(file)
Function.encabezado_CSR_timer(file)
for i in range(1000):
    a=randint(0,30)
    file.write("        bge x%i,x31,A\n" %(a))
Function.final(file)
file.write("A:\n")
Function.fallo(file)
file.close()
#-----------------------------------------------------------------
#---------------------Test de bgeu ramdom------------------------
#-----------------------------------------------------------------
file = open("bgeu.S","w")
Function.encabezado_riscv(file)
Function.Inicializacion_beq_reg(file)
Function.encabezado_CSR_timer(file)
for i in range(1000):
    a=randint(0,30)
    file.write("        bgeu x%i,x31,A\n" %(a))
Function.final(file)
file.write("A:\n")
Function.fallo(file)
file.close()
#-----------------------------------------------------------------
#---------------------Test de bltu ramdom------------------------
#-----------------------------------------------------------------
file = open("bltu.S","w")
Function.encabezado_riscv(file)
Function.Inicializacion_beq_reg(file)
Function.encabezado_CSR_timer(file)
for i in range(1000):
    a=randint(1,31)
    file.write("        bltu x%i,x%i,A\n" %(a,a))
Function.final(file)
file.write("A:\n")
Function.fallo(file)
file.close()

#-----------------------------------------------------------------
#---------------------Test de jal ramdom------------------------
#-----------------------------------------------------------------
file = open("jal.S","w")
Function.encabezado_riscv(file)
Function.encabezado_CSR_timer(file)
for i in range(1000):
    file.write("        jal x%i,A%i\n" %(randint(0,31),i))
    file.write("A%i:\n" %(i))
Function.final(file)
file.close()

#-----------------------------------------------------------------
#---------------------Test de jalr ramdom------------------------
#-----------------------------------------------------------------
file = open("jalr.S","w")
Function.encabezado_riscv(file)
Function.encabezado_CSR_timer(file)
for i in range(500):
    file.write("        jalr x%i,%i(x0)\n" %(randint(0,31),(i+2)*4))
Function.final(file)
file.close()
#-----------------------------------------------------------------
#---------------------Test de csrrwi ramdom------------------------
#-----------------------------------------------------------------
file = open("csrrw.S","w")
Function.encabezado_riscv(file)
Function.Inicializacion_ramdom_reg(file)
Function.encabezado_CSR_timer(file)
for i in range(500):
    Function.csrrw(file)
Function.final(file)
file.close()

#-----------------------------------------------------------------
#---------------------Test de csrrwi ramdom------------------------
#-----------------------------------------------------------------
file = open("csrrwi.S","w")
Function.encabezado_riscv(file)
Function.encabezado_CSR_timer(file)
for i in range(500):
    Function.csrrwi(file)
Function.final(file)
file.close()
#-----------------------------------------------------------------
#---------------------Test de csrrc y csrrs ramdom------------------------
#-----------------------------------------------------------------
file = open("csrrs_c.S","w")
Function.encabezado_riscv(file)
Function.Inicializacion_ramdom_reg(file)
Function.encabezado_CSR_timer(file)
for i in range(500):
    Function.csrrs(file)
    Function.csrrc(file)
Function.final(file)
file.close()

#-----------------------------------------------------------------
#---------------------Test de csrrci y csrrsi ramdom------------------------
#-----------------------------------------------------------------
file = open("csrrws_ci.S","w")
Function.encabezado_riscv(file)
Function.encabezado_CSR_timer(file)
for i in range(500):
    Function.csrrsi(file)
    Function.csrrci(file)
Function.final(file)
file.close()
