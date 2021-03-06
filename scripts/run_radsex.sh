#!/bin/bash

module load gcc

projhome=/mnt/ceph/stah3621/diorhabda/annotation_genome/radsex
assmdir=/mnt/ceph/stah3621/diorhabda/assemble_genome/Hilo

popmap=$projhome/carinulata/carinulata_sex_popmap.txt
samplesdir=$projhome/carinulata/sexed_samples
outdir=$projhome/carinulata

spp=carinulata
assm=$assmdir/Diorhabda_${spp}_male/Diorhabda_${spp}_phaseScaffolds.fasta

./bin/radsex map --markers-file $outdir/markers_table.tsv \
--output-file  $outdir/${spp}_map_results.tsv \
--popmap $popmap --genome-file $assm --min-depth 5 --groups M,F

