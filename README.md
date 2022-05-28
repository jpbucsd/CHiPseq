# CHiPseq
CHiPseq pipeline for reproduction of figures in:  Comprehensive mapping of the Helicobacter pylori NikR regulon provides new insights in bacterial nickel responses

Download git repositoryL
create a new folder in your computer, and cd to the folder in git bash. then enter the following commands:
git config --global user.email "your email"
git init
git pull http://github.com/jpbuscd/CHiPseq

contents of get_data.sh:
execution:
bash get_data.sh

purpose:
this script first installs fastq-dumpo for windows, configures it, and then installs the fastq files using SRA accessions. The loop to download the accessions was created by user eboone1001. when running this, you will have to do user input while SRA tools is being configured. When you are prompted click enter.
