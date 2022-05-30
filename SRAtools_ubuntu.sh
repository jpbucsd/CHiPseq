#!/bin/bash
#download fastq dump
wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/3.0.0/sratoolkit.3.0.0-ubuntu64.tar.gz
#decompress fastq dump
tar xzvf sratoolkit.3.0.0-ubuntu64.tar.gz
#naviage to location of tool and change path location
#cd sratoolkit.3.0.0-win64/bin
ldir=$(pwd)
sdir=sratoolkit.3.0.0-ubuntu64/bin
export PATH=$PATH:%"${ldir}/'$sdir'}"
"$sdir/vdb-config" --interactive-mode textual
echo -ne '\n'
#test fasterq - dump works
"$sdir"/fasterq-dump -V
