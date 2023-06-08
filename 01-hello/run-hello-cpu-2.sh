#!/bin/bash
#SBATCH -q debug
#SBATCH -N 1
#SBATCH -C cpu
#SBATCH -t 00:10:00
#SBATCH -J my_job

echo "use the default gnu compiler"
module load cpu
cc -o mpi-hello mpi-hello.c
srun -n 8 -c 32 --cpu-bind=cores ./mpi-hello |sort -k4

echo "use the cce compiler"
module load PrgEnv-cray
ftn -o mpi-hello mpi-hello.f90
srun -n 8 -c 32 --cpu-bind=cores ./mpi-hello |sort -k4
