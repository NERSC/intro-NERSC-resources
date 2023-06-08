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

echo "use default GNU compiler"
module load gpu
CC -o gpus_for_tasks gpus_for_tasks.cpp
srun ./gpus_for_tasks

echo "=============="
echo "use Nvidia compiler"
module load PrgEnv-nvidia
CC -cuda -o gpus_for_tasks gpus_for_tasks.cpp
srun ./gpus_for_tasks
