#!/bin/bash

#PBS -l nodes=2:ppn=32
#PBS -l walltime=10:00:00
#PBS -q normal_q
#PBS -A IntroToGDS  #account name
#PBS -W group_list=cascades   ##server name
#PBS -M parulsharma@vt.edu
#PBS -m bea

cd /some/dir/..

#call script here..

exit;
