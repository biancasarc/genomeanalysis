#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 12:00:00
#SBATCH -J braker2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=biancasarcani@gmail.com
#SBATCH --output=%x.%j.out

module load bioinfo-tools samtools braker/2.1.6 augustus/3.5.0 GeneMark/4.68-es
export AUGUSTUS_CONFIG_PATH=/home/bianc/genomeanalysis/augustus_config
export AUGUSTUS_BIN_PATH=$(dirname $(which augustus))
export AUGUSTUS_SCRIPTS_PATH=$(dirname $(which autoAug.pl))
export GENEMARK_PATH=/sw/bioinfo/GeneMark/4.68-es/snowy/gmes_petap

GENOME=/home/bianc/genomeanalysis/results/repeatmasker
BAM=/proj/uppmax2025-3-3/nobackup/work/bianca/hisat2

braker.pl --cores=8 --AUGUSTUS_CONFIG_PATH=/home/bianc/genomeanalysis/augustus_config --AUGUSTUS_BIN_PATH=/sw/bioinfo/augustus/3.4.0/snowy/bin --AUGUSTUS_SCRIPTS_PATH=/sw/bioinfo/augustus/3.4.0/snowy/scripts --GENEMARK_PATH=/sw/bioinfo/GeneMark/4.68-es/snowy --genome="$GENOME"/yahs.out_scaffolds_final.fa.masked --bam="$BAM"/control_1.sorted.bam,"$BAM"/control_2.sorted.bam,"$BAM"/control_3.sorted.bam --prot_seq=/proj/uppmax2025-3-3/Genome_Analysis/4_Zhou_2023/embryophyte_proteomes.faa --gff3 --etpmode
