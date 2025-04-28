#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J yahs
#SBATCH --mail-type=ALL
#SBATCH --mail-user biancasarcani@gmail.com
#SBATCH --output=%x.%j.out

# Load modules
module load bioinfo-tools
module load samtools

# Your commands
/proj/uppmax2025-3-3/Genome_Analysis/yahs/yahs /home/bianc/genomeanalysis/results/polishing/pilon.fasta /home/bianc/genomeanalysis/results/scaffolding/duplicate_marking/duplicate_marked.bam

