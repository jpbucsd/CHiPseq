#!/bin/bash
#SRR3401659 -> WT G27 untreated A
#SRR3401908 -> WT G27 treated A
#SRR3401754 -> WT G27 untreated B
#SRR3401911 -> WT G27 treated B
#SRR3401915 -> deltaNiKR strain A
#SRR3401914 -> deltaNiKR strain A (mi seq)

#wt G27 replicate A treated vs untreated
bin/findPeaks tagDirs/SRR3401908 -i tagDirs/SRR3401659 -style factor -o auto
#WT G27 replicate B treated vs untreated
bin/findPeaks tagDirs/SRR3401911 -i tagDirs/SRR3401754 -style factor -o auto
#delta NiKR strain A vs G27 replicate A control
bin/findPeaks tagDirs/SRR3401915 -i tagDirs/SRR3401659 -style factor -o auto
#delta NiKR strain A (mi Seq) replica B vs G27 replica B control
bin/findPeaks tagDirs/SRR3401914 -i tagDirs/SRR3401754 -style factor -o auto
