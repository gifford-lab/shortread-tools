#!/bin/bash

if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` BAMFILE GENOME_ID"
  exit 0
fi

outfile=$(basename $1 .bam)
basedir=$(dirname $0)
samtools depth $1 | $basedir/makewig.sh > $outfile.wig && $basedir/wigToBigWig -clip $outfile.wig $basedir/$2.chrom.sizes $outfile.bw; rm $outfile.wig
