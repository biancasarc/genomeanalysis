#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -c 6
#SBATCH -t 10:00:00
#SBATCH -J featurecounts
#SBATCH --mail-type=ALL
#SBATCH --mail-user biancasarcani@gmail.com
#SBATCH --output=%x.%j.out

module load bioinfo-tools
module load subread/2.0.3 

BAM=/proj/uppmax2025-3-3/nobackup/work/bianca/hisat2/BAM
BRAKER=/domus/h1/bianc/genomeanalysis/results/braker2/braker
OUT=/home/bianc/genomeanalysis/results/featurecounts

featureCounts -T 6 -p --countReadPairs -t exon -g gene_id -a "$BRAKER"/braker_changedIDs.gtf -o "$OUT"/counts.txt "$BAM"/*
