#!/bin/bash

basedir=$(dirname $0)

find `pwd` -name "*.bam" | parallel $basedir/bamtowig.sh {} $1
$basedir/wigtrack.sh > wigtracks.txt
