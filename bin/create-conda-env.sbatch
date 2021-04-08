#!/bin/bash
#SBATCH --time=6:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem=12G
#SBATCH --constraint=intel
#SBATCH --partition=batch
#SBATCH --job-name=create-conda-env
#SBATCH --mail-type=ALL
#SBATCH --output=bin/%x-%j-slurm.out
#SBATCH --error=bin/%x-%j-slurm.err

# create the conda environment
./bin/create-conda-env.sh
