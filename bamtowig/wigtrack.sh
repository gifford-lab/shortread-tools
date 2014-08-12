#!/bin/bash

for name in $(find `pwd` -name "*.bw"); do
    bamname=$(basename $name)
    echo "track type=bigWig name=\"$bamname\" description=\"$bamname\" bigDataUrl=http://thashim:cgs@pax6.csail.mit.edu/thashim/wigs/$bamname"
    ln $name /cluster/thashim/www/wigs/$bamname 2> /dev/null
done

touch /cluster/thashim/www/wigs/tracks.txt
for name in $(find /cluster/thashim/www/wigs -name "*.bw"); do
    bamname=$(basename $name)
    echo "track type=bigWig name=\"$bamname\" description=\"$bamname\" bigDataUrl=http://thashim:cgs@pax6.csail.mit.edu/thashim/wigs/$bamname" >> /cluster/thashim/www/wigs/tracks.txt
done
