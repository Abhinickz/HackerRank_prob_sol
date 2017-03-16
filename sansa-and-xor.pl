#!/usr/bin/perl 
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
my $t = <STDIN>;
chomp($t);

for ( 1..$t ){
	my $total = <STDIN>;
	chomp($total);
	my $numbers = <STDIN>;
	chomp($numbers);
	my @arrays = split( ' ', $numbers );
	my $xor_final = 0;
	if ( scalar(@arrays) %2 != 0 ){
		for ( my $i = 0; $i < scalar(@arrays); $i = $i + 2 ){
				$xor_final = $xor_final ^ $arrays[$i];
		}
	}
	print $xor_final."\n";
}

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/sansa-and-xor

=cut