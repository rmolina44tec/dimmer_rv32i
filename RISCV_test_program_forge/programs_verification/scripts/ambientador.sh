export RISCV=/mnt/vol_NFS_rh003/profesores/rmolina/tools_riscv
export PATH=$PATH:$RISCV/bin

#watch out for symbolic links for libmpc.so.2 -> libmpc.so.3 and libmpfr.so -> libmpfr.so.6
#ln -s libmpc.so.3 libmpc.so.2
#ln -s libmpfr.so.6 libmpfr.so
#ln -s libmpfr.so.6 libmpfr.so.1
#ln -s libmpfr.so.10 libgmp.so.3
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/
#scl enable rh-python35 bash
