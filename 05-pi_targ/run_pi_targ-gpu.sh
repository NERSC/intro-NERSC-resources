#!/bin/bash
#SBATCH -N 1
#SBATCH -C gpu
#SBATCH -G 4
#SBATCH -t 5
#SBATCH -A ntrain3
##SBATCH --reservation=intro_gpu

module load gpu

echo "=== use Nvidia compiler ======="
module load PrgEnv-nvidia
ftn -mp=gpu -o pi_targ pi_targ.f90
./pi_targ

echo "=== use CCE compiler ======="
module load PrgEnv-cray
ftn -homp -hnoacc -o pi_targ pi_targ.f90
./pi_targ
