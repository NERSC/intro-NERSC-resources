#!/bin/bash
#SBATCH -q debug
#SBATCH -N 1
#SBATCH -C cpu
#SBATCH -t 00:10:00
#SBATCH -J my_job

echo "srun -n 4 -c 64 --cpu-bind=cores ./matrix 8 4"
srun -n 4 -c 64 --cpu-bind=cores ./matrix 8 4

echo "srun -n 8 -c 32 --cpu-bind=cores ./matrix 8 4"
srun -n 8 -c 32 --cpu-bind=cores ./matrix 8 4
