#!/bin/bash

#PBS -l nodes=2:ppn=32
#PBS -l walltime=23:00:00
#PBS -q normal_q
#PBS -A LINbase_BR
#PBS -W group_list=cascades
#PBS -M parulsharma@vt.edu
#PBS -m bea

##conda activate bakta-pirate before running the script

##Usage: ./script.sh path/to/genomes path/to/annotation/directory

cd /work/cascades/parulsharma/cool-virulence/

dir=$1
path=$2

cd $dir
#ls > $path/temp.txt

cd $path
mkdir $path/../GFFs
#####step1: annotating fasta files from NCBI to get prokka formatted gff files###

while read LINE;
do
	echo "analysing file  $LINE";
        var=$(echo "$LINE" | cut -d '.' -f1)
        bakta --db /work/cascades/parulsharma/bakta_test_run/db/db $dir/$LINE
        cp $path/${var}.gff3 $path/../GFFs/${var}.gff
done < $path/temp.txt
rm $path/temp.txt

##conda deactivate bakta-pirate
PIRATE -i $path/../GFFs/ -k "--diamond" -r  -a
#iqtree -s core_alignment.fasta.varsites.phy -m GTR+G+ASC -T AUTO

exit;
