#!/bin/bash
#travel back to directory with accession list to execute command written by eric
sdir=sratoolkit.3.0.0-ubuntu64/bin
while read line; \
do
	echo "Now downloading ${line}..."
	"$sdir/fastq-dump" -O fastq $line	
done < SraAccList.txt
