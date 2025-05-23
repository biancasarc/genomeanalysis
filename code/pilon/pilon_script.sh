#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 24:00:00
#SBATCH -J POLISHING
#SBATCH --mail-type=ALL
#SBATCH --mail-user biancasarcani@gmail.com
#SBATCH --output=%x.%j.out

# Load modules
module load bioinfo-tools
module load Pilon/1.24

# Your commands
java -jar $PILON_HOME/pilon.jar --genome /home/bianc/genomeanalysis/results/dna_assembly/assembly.fasta --frags /proj/uppmax2025-3-3/nobackup/work/bianca/paired_end.sorted.bam --threads 2
