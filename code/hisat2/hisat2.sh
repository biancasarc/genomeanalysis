#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 04:00:00
#SBATCH -J hisat2
#SBATCH --mail-type=ALL
#SBATCH --mail-user biancasarcani@gmail.com
#SBATCH --output=%x.%j.out

module load bioinfo-tools HISAT2/2.2.1

DATA=/home/bianc/genomeanalysis/data/raw_data
OUT=/proj/uppmax2025-3-3/nobackup/work/bianca/hisat2
INDEX=/home/bianc/genomeanalysis/results/hisat2/index

hisat2 -p 8 -x "$INDEX"/index -1 "$DATA"/Control_1_f1.fq.gz -2 "$DATA"/Control_1_r2.fq.gz -S "$OUT"/control_1.sam 
hisat2 -p 8 -x "$INDEX"/index -1 "$DATA"/Control_2_f1.fq.gz -2 "$DATA"/Control_2_r2.fq.gz -S "$OUT"/control_2.sam 
hisat2 -p 8 -x "$INDEX"/index -1 "$DATA"/Control_3_f1.fq.gz -2 "$DATA"/Control_3_r2.fq.gz -S "$OUT"/control_3.sam 

hisat2 -p 8 -x "$INDEX"/index -1 "$DATA"/Heat_treated_42_12h_1_f1.fq.gz -2 "$DATA"/Heat_treated_42_12h_1_r2.fq.gz -S "$OUT"/heat_treated_1.sam 
hisat2 -p 8 -x "$INDEX"/index -1 "$DATA"/Heat_treated_42_12h_2_f1.fq.gz -2 "$DATA"/Heat_treated_42_12h_2_r2.fq.gz -S "$OUT"/heat_treated_2.sam 
hisat2 -p 8 -x "$INDEX"/index -1 "$DATA"/Heat_treated_42_12h_3_f1.fq.gz -2 "$DATA"/Heat_treated_42_12h_3_r2.fq.gz -S "$OUT"/heat_treated_3.sam
