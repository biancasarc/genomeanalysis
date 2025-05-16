#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -c 2
#SBATCH -t 1:00:00
#SBATCH -J getorganelle
#SBATCH --mail-type=ALL
#SBATCH --mail-user biancasarcani@gmail.com
#SBATCH --output=%x.%j.out


module load bioinfo-tools GetOrganelle/1.7.7.0


ILLUMINA=/home/bianc/genomeanalysis/results/preprocessing/trimmomatic
OUT=/proj/uppmax2025-3-3/nobackup/work/bianca/get_organelle

get_organelle_from_reads.py -1 "$ILLUMINA"/output_R1_paired.fastq -2 "$ILLUMINA"/output_R2_paired.fastq -k 21,45,65,85,105 -t 2 -o "$OUT" -R 20 -F embplant_pt
