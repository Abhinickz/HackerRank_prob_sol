#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $n = <STDIN>;
chomp($n);

my $primary_sum  = 0;
my $secondry_sum = 0;

my $i = 0;
my $j = $n-1;

foreach ( 1..$n ){
	my $matrix = <STDIN>;
	chomp($matrix);
	my @numbers = split( ' ', $matrix );
	if ( $i <= ( $n - 1 ) ){
		$primary_sum = $primary_sum + $numbers[$i];
	}
	$i++;
	
	if ( $j >= 0 ){
			$secondry_sum = $secondry_sum + $numbers[$j];
	}
	$j--;
}

print abs($primary_sum - $secondry_sum);
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/diagonal-difference

=cut