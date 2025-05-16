#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -c 8
#SBATCH -t 1:00:00
#SBATCH -J eggnog
#SBATCH --mail-type=ALL
#SBATCH --mail-user biancasarcani@gmail.com
#SBATCH --output=%x.%j.out

module load bioinfo-tools eggNOG-mapper/2.1.9

BRAKER=/domus/h1/bianc/genomeanalysis/results/braker2/braker
OUT_DIR=/home/bianc/genomeanalysis/results/eggnog_with_gtf

emapper.py --cpu 8 -i "$BRAKER"/braker_protein_output.faa --itype proteins --output_dir "$OUT_DIR" -o eggnog_annotation --decorate_gff "$BRAKER"/braker_changedIDs.gtf --decorate_gff_ID_field ID
