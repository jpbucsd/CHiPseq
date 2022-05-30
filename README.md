# CHiPseq
CHiPseq pipeline for reproduction of figures in:  Comprehensive mapping of the Helicobacter pylori NikR regulon provides new insights in bacterial nickel responses https://www.nature.com/articles/srep45458

As some later steps can only be performed in linux/ubuntu it is best to do this in a linux shell.
## Optional steps to set up shell:

(in git bash)

0a)wsl --install -d Ubuntu

0b)wsl -l -v


Open your new ubuntu terminal


0c)sudo apt install git

0d)sudo apt install make

## Download git repository:
create a new folder in your computer, and cd to the folder. then enter the following commands:

1) git init

2) git config --global user.email "your email"

3) git pull http://github.com/jpbuscd/CHiPseq

4) git remote add origin http://github.com/jpbuscd/CHiPseq

now you are in the master branch. to move to the main branch:

5) git branch -m master main

upload changes to github:

6) git stage (changed files)
 
7) git commit

8) git push origin (name of current branch (probably main))

note that when pushing from an ubuntu shell, every time you will be prompted for your github username and "password". This is not actually a password and instead a "token". go to github.com and log in to your account. Go to settings, developer settings (bottom of left side of page), personal access tokens, and then create a new token. This token is your password.
## Download reads from SRA accession numbers
Next to we will download the fastq reads
The script SRAtools_ubuntu.sh installs the necessary tool fastq-dump. skip if you already have it.

9) bash SRAtools_ubuntu.sh

Now to download the reads into a folder called fastq

10) bash get_reads.sh

On windows the script get_data.sh serves as an alternative to step 9 and 10

## Align reads to the reference genome
Now we want to install the tools BWA and SAMTOOLs to align the fastq reads to the reference genome. The reference genome is already saved into the github repository.
Skip step 11 if you already have BWA and SAMTOOLS

11) bash aligner_tools.sh

Now we want to extract and index the reference genome, and use it to perform the alignment for each accession.

12) bash align.sh

The previous command produces 14 bam files, containing the alignment for each accession.
