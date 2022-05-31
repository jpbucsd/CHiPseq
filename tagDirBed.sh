#!/bin/bash
pdir=$(pwd)//dir
mkdir tagDirs
#identify binding sites/peaks
#as the original paper identifies promoter regions and does not look for histone modifications we will be using the factors style for the homer commands
for prefix in SRR3401659 SRR3401911 SRR3401908 SRR3401754 SRR3401915 SRR3401914
do
	#make tag directory
	bin/makeTagDirectory tagDirs/${prefix} ${prefix}.bam
	#produce a bed graph using the directory
	bin/makeUCSCfile tagDirs/${prefix} -o auto
done
