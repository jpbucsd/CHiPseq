#!/bin/bash
pdir=$(pwd)//dir

mkdir tagDirs

#produce bed graphs for each bam file we have created
while read line; \
do
	#make tag directory
        ${pdir}/makeTagDirectory tagDirs/${line} ${line}.bam
	#produce a bed graph using the directory
	${pdir}/makeUCSCfile tagDirs/${line} -o auto
done < SraAccList.txt

#identify binding sites/peaks
#as the original paper identifies promoter regions and does not look for histone modifications we will be using the factors style for the homer commands
while read line; \
do
	${pdir}/findPeaks tagdirs/${prefix} -i tagdirs/input -style factor -o auto
done < SraAccList.txt
