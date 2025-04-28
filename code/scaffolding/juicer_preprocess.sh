#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 03:00:00
#SBATCH -J juicer
#SBATCH --mail-type=ALL
#SBATCH --mail-user biancasarcani@gmail.com
#SBATCH --output=%x.%j.out

# Load modules
module load bioinfo-tools
module load samtools

# Your commands
(/proj/uppmax2025-3-3/Genome_Analysis/yahs/juicer pre yahs.out.bin yahs.out_scaffolds_final.agp /home/bianc/genomeanalysis/results/polishing/pilon.fasta.fai | sort -k2,2d -k6,6d -T ./ --parallel=8 -S32G | awk 'NF' > alignments_sorted.txt.part) && (mv alignments_sorted.txt.part alignments_sorted.txt)
