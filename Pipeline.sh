#!/bin/bash

# Step 1: Quality check
fastqc data/sample.fastq

# Step 2: Alignment
bwa mem reference.fa data/sample.fastq > aligned.sam

# Step 3: Convert SAM to BAM
samtools view -Sb aligned.sam > aligned.bam

# Step 4: Sort BAM
samtools sort aligned.bam -o sorted.bam

# Step 5: Variant Calling
gatk HaplotypeCaller \
   -R reference.fa \
   -I sorted.bam \
   -O variants.vcf
