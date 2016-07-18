#!/usr/bin/perl -w
use strict;
my @raw = <>;
chomp(@raw);
my @icons = qx(ls ../sounds/pan-chimes/*.wav);
chomp(@icons);
my %hash;
foreach my $w (@icons) {
    $w =qx(basename $w .wav);
    chomp($w);
    $hash{$w}=0;
}

foreach my $i  (@raw) {
    next unless defined ($i);
    if (defined ($hash{$i})) {
$hash{$i}++;
} else {
$hash{$i} = 1;
}
}

 
foreach  my $k   (sort {$hash{$a} <=>  $hash{$b} or $a cmp $b } keys %hash) {
    print "$k: $hash{$k}\n";
}