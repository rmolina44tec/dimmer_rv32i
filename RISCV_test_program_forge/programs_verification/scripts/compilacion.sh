#!/bin/bash
#-------------------------------------------------------------------------
#----------------Compilacion de los programas-----------------------------
#-------------------------------------------------------------------------
cd ../Ensamblador/instrucciones/
make
cd ../interrupciones/
make
cd ../CPI_power/
make
cd ../FPGA_tests/
make
cd ../Power_measure
make
#-------------------------------------------------------------------------
#-------------------------------Hexadecimales-----------------------------
#-------------------------------------------------------------------------
cd ../../Objetos/instrucciones
export Var=$(ls *.o)
for a in $Var
do
   riscv32-unknown-elf-elf2hex --bit-width 32 --input $a >> $a.txt
done
mv *.txt ../../hexfiles/instrucciones/
cd ../interrupciones
export Var=$(ls *.o)
for a in $Var
do
  riscv32-unknown-elf-elf2hex --bit-width 32 --input $a >> $a.txt
done
mv *.txt ../../hexfiles/interrupciones
cd ../CPI_power
export Var=$(ls *.o)
for a in $Var
do
  riscv32-unknown-elf-elf2hex --bit-width 32 --input $a >> $a.txt
done
mv *.txt ../../hexfiles/CPI_power
cd ../FPGA_tests
export Var=$(ls *.o)
for a in $Var
do
  riscv32-unknown-elf-elf2hex --bit-width 32 --input $a >> $a.txt
done
mv *.txt ../../hexfiles/FPGA_tests
cd ../Power_measure
export Var=$(ls *.o)
for a in $Var
do
  riscv32-unknown-elf-elf2hex --bit-width 32 --input $a >> $a.txt
done
mv *.txt ../../hexfiles/Power_measure
cd ../../scripts
