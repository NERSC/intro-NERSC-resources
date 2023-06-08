#!/bin/bash
#SBATCH -A ntrain3
##SBATCH --reservation=intro_gpu
#SBATCH -C gpu
#SBATCH -q debug
#SBATCH -t 10:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=4
#SBATCH -c 32
#SBATCH --gpus-per-task=1

export SLURM_CPU_BIND="cores"
srun ./gpus_for_tasks
