#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $t = <STDIN>;
chomp($t);

foreach ( 1..$t ){
	my $input = <STDIN>;
	chomp($input);
	my ( $n, $k ) = split( ' ', $input );
	my $array = <STDIN>;
	chomp($array);
	my $out = 1;
	my @numbers = split( ' ', $array );
	foreach ( @numbers ){
		if ($_ <= 0){
			$k--;
		}
	}
	if ( $k <= 0 ){
		print "NO\n";
	}
	else{
		print "YES\n";
	}
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/angry-professor

=cut
