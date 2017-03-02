#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $n = <STDIN>;
chomp $n;
my $arr_temp = <STDIN>;
my @arr = split( / /,$arr_temp );
chomp @arr;
my $sum = 0;
$sum = $sum + $_ for @arr;
print $sum;

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/simple-array-sum/

=cut
