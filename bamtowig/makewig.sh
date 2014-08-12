#!/usr/bin/perl
print "track type=print wiggle_0 name=fileName description=fileName\n";
my $lastC;
my $stepSize=10;
my $minCutoff=3;
while (<>) {
    my ($c, $start, $depth) = split;
    if ($c ne $lastC) {
        print "variableStep chrom=$c span=$stepSize\n";
    };
    $lastC=$c;
    next unless $. % $stepSize ==0;
    print "$start\t$depth\n" unless $depth<$minCutoff;
}
