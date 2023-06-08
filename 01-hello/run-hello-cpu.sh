#!/bin/bash
#SBATCH -q debug
#SBATCH -N 1
#SBATCH -C cpu
#SBATCH -t 00:10:00
#SBATCH -J my_job

./serial-hello
srun -n 64 -c 4 --cpu-bind=cores ./mpi-hello
