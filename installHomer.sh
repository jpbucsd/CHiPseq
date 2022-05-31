#!/bin/bash

sudo apt-get install zip
sudo apt-get install unzip
sudo apt-get install g++

pdir=$(pwd)
wget http://homer.ucsd.edu/homer/configureHomer.pl

perl ${pdir}/configureHomer.pl -install


echo "#something for homer" >> .bashrc
echo "export PATH=\$PATH:${pdir}/homer/bin/" >> .bashrc

