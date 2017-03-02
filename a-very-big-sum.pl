#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1; use bigint;

my $n = <STDIN>;
chomp($n);
my $arr_temp = <STDIN>;
my @arr = split( / /, $arr_temp );
chomp(@arr);
my $output = 0;
foreach (@arr){
    $output += $_;
}
print $output;
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/a-very-big-sum

=cut