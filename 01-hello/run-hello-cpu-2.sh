#!/bin/bash
#SBATCH -q debug
#SBATCH -N 1
#SBATCH -C cpu
#SBATCH -t 00:10:00
#SBATCH -J my_job

srun -n 8 -c 32 --cpu-bind=cores ./mpi-hello |sort -k4
