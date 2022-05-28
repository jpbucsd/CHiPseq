#!/bin/bash
#download fastq dump
wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/3.0.0/sratoolkit.3.0.0-win64.zip
#decompress fastq dump
unzip sratoolkit.3.0.0-win64.zip
#naviage to location of tool and change path location
#cd sratoolkit.3.0.0-win64/bin
ldir=$(pwd)
sdir=sratoolkit.3.0.0-win64/bin
export PATH=$PATH:%"${ldir}/'$sdir'}"
"$sdir/vdb-config" --interactive-mode textual
echo -ne '\n'
#test fasterq - dump works
"$sdir"/fasterq-dump -V
#travel back to directory with accession list to execute command written by eric
while read line; \
do
	echo "Now downloading ${line}..."
	"$sdir/fastq-dump" -O fastq $line	
done < SraAccList.txt
