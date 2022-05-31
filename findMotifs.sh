#!/bin/bash
#SRR3401659 -> WT G27 untreated A
#SRR3401908 -> WT G27 treated A
#SRR3401754 -> WT G27 untreated B
#SRR3401911 -> WT G27 treated B
#SRR3401915 -> deltaNiKR strain A
#SRR3401914 -> deltaNiKR strain A (mi seq)

cp ncbi-genomes-2022-05-29/GCF_000021165.1_ASM2116v1_genomic.fna ncbi-genomes-2022-05-29/GCF_000021165.1_ASM2116v1_genomic.fa 

mkdir motifs
for prefix in SRR3401908 SRR3401911 SRR3401915 SRR3401914
do
	bin/findMotifsGenome.pl \
	tagDirs/${prefix}/peaks.txt \
	ncbi-genomes-2022-05-29/GCF_000021165.1_ASM2116v1_genomic.fa \
	motifs/${prefix} \
	-mask -size 100 -preparse
done
