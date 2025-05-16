#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 01:00:00
#SBATCH -J hisat_build
#SBATCH --mail-type=ALL
#SBATCH --mail-user biancasarcani@gmail.com
#SBATCH --output=%x.%j.out

module load bioinfo-tools HISAT2/2.2.1

GENOME=/home/bianc/genomeanalysis/results/repeatmasker

hisat2-build -p 16 "$GENOME"/yahs.out_scaffolds_final.fa.masked /home/bianc/genomeanalysis/results/hisat2/index
