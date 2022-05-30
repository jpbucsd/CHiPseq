#!/bin/bash
#unzip reference genome
tar xvf genome_assemblies_genome_fasta.tar

gzip -d ncbi-genomes-2022-05-29/GCF_000021165.1_ASM2116v1_genomic.fna.gz

bwa index ncbi-genomes-2022-05-29/GCF_000021165.1_ASM2116v1_genomic.fna
#assemble the reads
while read line; \
do
	bwa mem ncbi-genomes-2022-05-29/GCF_000021165.1_ASM2116v1_genomic.fna fastq/${line}.fastq | samtools view -bS > ${line}.bam
done < SraAccList.txt


