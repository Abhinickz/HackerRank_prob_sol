#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $test_cases = <STDIN>;
chomp( $test_cases );

foreach ( 1..$test_cases ){
	my $n = <STDIN>;
	chomp( $n );
	my $numbers_input = <STDIN>;
	chomp( $numbers_input );
	my $sum1 = 0;
	my $sum2 = 0;
	my $out = 0;
	my @numbers = split( ' ', $numbers_input );
	my $element = scalar( @numbers );
	for( my $i = 0; $i < $element; $i++ ){
		$sum1 += $numbers[$i];
	}
	for ( my $j = 0; $j< $element; $j++ ){
		$sum1 -= $numbers[$j];
		$out++ if ( $sum1 == $sum2 );
		$sum2 += $numbers[$j];
	}
	if ( $out ){
		print "YES\n";
	}
	else{
		print "NO\n";
	}
}

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/sherlock-and-array

=cut
