# Variant Calling Pipeline 🧬

This project demonstrates a basic variant calling pipeline using NGS data.

## Workflow
FASTQ → Alignment → BAM → Variant Calling → VCF

## Tools Used
- FastQC
- BWA
- SAMtools
- GATK

## Steps
1. Quality control using FastQC
2. Alignment using BWA
3. Convert SAM to BAM
4. Sort BAM file
5. Variant calling using GATK

## Files
- pipeline.sh : main pipeline script
- data/ : input FASTQ files
- results/ : output files

Author
Sohana Najrin
