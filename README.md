# Core-genome_scripts
Scripts for performing core and pan genome analysis

bakta_PIRATE_iqtree.sh : Script to perform gene-annotations -> core-genome construction -> maximum-likelihood tree contruction
Takes folder of containing assembled genomes in fasta file format and annotates them to produce gff (gene file format) files using 'bakta' gene annotation tool. The gff files are then used by 'PIRATE' to contruct core and pan-genomes. A bunch of useful output files are produced containing lists of core genes and pan genes and so on... The core-genome.fasta file is used for the contruction of core-genome based phylogenetic tree using maximum likelihood by 'IQtree'. 

prokka_PIRATE.sh : Script to perform gene-annotations -> core-genome construction
Takes folder of containing assembled genomes in fasta file format and annotates them to produce gff (gene file format) files using 'PROKKA' gene annotation tool. The gff files are then used by 'PIRATE' to contruct core and pan-genomes. A bunch of useful output files are produced containing lists of core genes and pan genes and so on

prokka_Roary.sh : Script to perform gene-annotations -> core-genome construction
Takes folder of containing assembled genomes in fasta file format and annotates them to produce gff (gene file format) files using 'PROKKA' gene annotation tool. The gff files are then used by 'Roary' to contruct core and pan-genomes. 

sub_PBS.sh : Example script for submittimg jobs to PBS job scheduler
