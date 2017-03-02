#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $input_temp = <STDIN>;
chomp($input_temp);

my ( $n, $k, $q )= split( ' ', $input_temp );

my $input_arr_temp = <STDIN>;
chomp($input_arr_temp);

my @array = split( ' ', $input_arr_temp );

for ( 1..$k ){
	my $popped = pop( @array );
	unshift @array, $popped;
}

for ( my $i = 1; $i <= $q; $i++ ){
	my $m = <STDIN>;
	chomp($m);
	print $array[$m]."\n";
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/circular-array-rotation/

=cut