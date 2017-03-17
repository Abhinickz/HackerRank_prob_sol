#!/usr/bin/perl
use strict; use warnings; use Data::Dumper;use bigint;
use Memoize;
memoize('fibonacci');

my $input = <STDIN>;
chomp($input);

my ( $t1, $t2, $number ) = split( ' ', $input );
my $fib = fibonacci( $number-1 );
print $fib;
print "\n";

sub fibonacci {
	my $number = shift;	
    my @fib = ( $t1, $t2 );
	for ( $#fib + 1 .. $number ) {
		$fib[$_] = $fib[ $_ - 2 ] + $fib[ $_ - 1 ]**2;
	}

    return $fib[$number];
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/fibonacci-modified

=cut
