#bamtowig

Automated converter from bam to wig file. 

Supports the following genomes
 - hg19
 - mm10
 - sacCer3

Also supports auto-batch converting, generating track names and adding bigwigs to a web accessible page.

## main functions

**allwig.sh** : takes in genome name (mm10/hg19/etc) batch converts everything in the current directory ending in .bam and makes UCSC track lines outputted as wigtracks.txt

**bamtobigwig.sh** : takes a bam and a genome name (mm10, hg19 etc) and generates a bigwig file (.bw) in the same directory

**wigtrack.sh** : no arguments, batch processes all bigwigs in current directory by symlinking them to /cluster/thashim/www/wigs and generating text ucsc track lines.
