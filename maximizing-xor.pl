#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $l = <STDIN>;
chomp($l);
my $r = <STDIN>;
chomp($r);
my $max = 0;
for ( my $i = $l; $i <= $r; $i++ ){
	for ( my $j = $i; $j <= $r; $j++ ){
		# print "$i + $j\n";
		my $xor = $i ^ $j;
		if ( $xor > $max  ){
			$max = $xor;
		}
	}
}
print $max;

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/maximizing-xor

=cut