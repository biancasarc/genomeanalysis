#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J BWA
#SBATCH --mail-type=ALL
#SBATCH --mail-user biancasarcani@gmail.com
#SBATCH --output=%x.%j.out

# Load modules
module load bioinfo-tools
module load bwa/0.7.18
module load samtools

# Your commands
bwa mem -t 2 /home/bianc/genomeanalysis/results/dna_assembly/assembly.fasta /home/bianc/genomeanalysis/data/raw_data/chr3_illumina_R1.fastq.gz /home/bianc/genomeanalysis/data/raw_data/chr3_illumina_R2.fastq.gz > paired_end.sam
samtools view -bS paired_end.sam | samtools sort -o paired_end.sorted.bam
samtools index paired_end.sorted.bam
