#!/bin/bash
#SBATCH --partition normal
#SBATCH --mem 64G
#SBATCH -c 16
#SBATCH -t 01:00:00
#SBATCH -o slurm_out


#PATHS to software
export PATH="/home/iprada/bin/anaconda3/bin:$PATH"
#script

snakemake --snakefile circ_rna_snakemake.snk --latency-wait 30 --dir /home/iprada/faststorage/projects/circrna_snakemake/working_directory/ --cores 16
