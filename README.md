# Genome Analysis Project– Paper 4
## First things first: Data Organization  
All data is organized into three main directories:  

- **`code/`**  
  Contains all scripts/code for each tool and process.  

- **`data/`**  
  Stores outcomes, statistics, and plots in formats like `.html`, `.txt`, `.csv`, and `.pdf`.  

- **`images/`**  
  Exclusively for plots in `.png` format (GitHub wiki-friendly).  
  - *Note*: R-generated plots are found only here, while other plots (for example `.pdf`) are also available in `Data/`.  

---

# Paper: Chromosome-level genome assembly of *Niphotrichum japonicum* provides new insights into heat stress responses in mosses  

**Authors**: Xuping Zhou, Tao Peng, Yuying Zeng, Yuqing Cai, Qin Zuo, Li Zhang, Shanshan Dong, Yang Liu  

## Project Overview  
This paper presents a high-quality *de novo* chromosome-level genome assembly of the moss *Niphotrichum japonicum* to understand heat defense mechanisms induced by gene activity. Nanopore long reads combined with Hi-C scaffolding produced 14 pseudochromosomes, followed by comparative genomics. Both previously known and species-specific genes showed differential expression under 12 hours of heat stress exposure. These discoveries are crucial for understanding resilient plant responses to extreme conditions.  

In this project, I will attempt to recreate the results by:  
1. Building chromosome 3 of *Niphotrichum japonicum*  
2. Performing differential expression analysis  

---

## Pipeline Steps & Tools  

### Main Workflow:  
1. **Reads Pre-processing**  
   - FastQC  
   - Trimmomatic  

2. **Genome Assembly**  
   - FLYE  

3. **Assembly Quality Assessment**  
   - BUSCO  
   - QUAST  

4. **DNA Mapping**  
   - BWA  

5. **Genome Polishing**  
   - Pilon  

6. **Polish Quality Assessment**  
   - QUAST  

7. **Polished DNA Mapping**  
   - BWA  

8. **Duplicate Marking**  
   - Samtools  

9. **Hi-C Scaffolding** *(extra analysis)*  
   - YAHS  
   - Juicer  

10. **Scaffold Quality Assessment**  
    - QUAST  

11. **Repeat Masking**  
    - RepeatMasker  

12. **RNA Mapping**  
    - hisat2  

13. **Structural Annotation**  
    - BRAKER2  

14. **Functional Annotation**  
    - eggNOGmapper  

15. **Differential Expression Analysis**  
    - featureCounts  
    - DESeq2  

16. **Chloroplast Assembly & Analysis** *(extra analysis)*  
    - GetOrganelle  
    - QUAST  



