#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $input = <STDIN>;
chomp($input);

my $count = 0;
my ( $day1, $day2, $div ) = split( ' ', $input );

for ( $day1..$day2 ){
	$count++ if ( abs( $_ - reverse($_))% $div == 0 );
}
print $count;
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/beautiful-days-at-the-movies

=cut
