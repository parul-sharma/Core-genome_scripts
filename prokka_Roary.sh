#!/bin/bash

##conda activate before running the script

##Usage: ./script.sh path/to/genomes path/to/annotation/directory

#cd /home/parulsharma/PangenomePipeline/data/R.sol/

dir=$1
path=$2

cd $dir
ls > $path/temp.txt

cd $path
mkdir $path/../GFFs
#####step1: annotating fasta files from NCBI to get prokka formatted gff files###

while read LINE;
do
  	echo "analysing file  $LINE";
        var=$(echo "$LINE" | cut -d '_' -f1,2)
        prokka --cpus 0 --prefix $var $dir/$LINE
        cp $path/$var/${var}.gff $path/../GFFs/
done < $path/temp.txt
rm $path/temp.txt

####step2: using roary to get homologues and core genome alignments ###########

roary -e --mafft -p 8 $path/../GFFs/*.gff
