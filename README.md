# CHiPseq
CHiPseq pipeline for reproduction of figures in:  Comprehensive mapping of the Helicobacter pylori NikR regulon provides new insights in bacterial nickel responses

Download git repository:

create a new folder in your computer, and cd to the folder in git bash. then enter the following commands:

1) git config --global user.email "your email"

2) git init

3) git pull http://github.com/jpbuscd/CHiPseq

4) git remote add origin http://github.com/jpbuscd/CHiPseq

now you are in the master branch. to move to the main branch:

5) git branch -m master main

upload changes to github:

6) git stage (changed files)
 
7) git commit

8) git push origin (name of current branch (probably main))

contents of get_data.sh:

execution:

9) bash get_data.sh

purpose:

this script first installs fastq-dumpo for windows, configures it, and then installs the fastq files using SRA accessions. The loop to download the accessions was created by user eboone1001. when running this, you will have to do user input while SRA tools is being configured. When you are prompted click enter.
