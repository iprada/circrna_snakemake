#!/bin/bash
#SBATCH --partition normal
#SBATCH --mem 32G
#SBATCH -c 6
#SBATCH -t 00:10:00
#SBATCH -o slurm_out


#PATHS to software
export PATH="/home/iprada/bin/anaconda3/bin:$PATH"
#script

snakemake --snakefile circ_rna_snakemake.snk --dir /home/iprada/faststorage/projects/circrna_snakemake/working_directory/ --cores 4
