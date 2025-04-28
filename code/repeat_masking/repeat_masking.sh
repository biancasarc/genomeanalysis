#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 03:00:00
#SBATCH -J repeat_masking
#SBATCH --mail-type=ALL
#SBATCH --mail-user biancasarcani@gmail.com
#SBATCH --output=%x.%j.out

# Load modules
module load bioinfo-tools RepeatMasker/4.1.5


RepeatMasker -pa 1 -xsmall -species embryophyta -dir /home/bianc/genomeanalysis/results/repeatmasker /home/bianc/genomeanalysis/results/scaffolding/yahs/yahs.out_scaffolds_final.fa

