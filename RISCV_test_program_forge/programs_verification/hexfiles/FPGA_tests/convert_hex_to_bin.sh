export Var=$(ls *.o.txt)
for a in $Var
do
	python3.9 memory.py $a
	xxd -r -p mem_model.txt > $a.bin   
done
mv *.bin binfiles/
rm mem_model.txt
