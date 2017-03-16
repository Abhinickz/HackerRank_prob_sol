#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $number_temp = <STDIN>;
chomp($number_temp);
#	  0    2 	5 	3
my ( $x1, $v1, $x2, $v2 )  = split( ' ', $number_temp );

my $var = [ $x1, $v1, $x2, $v2 ];
print check( $var );


sub check {
	my $shift = shift;
	my $x1 = $shift->[0];
	my $v1 = $shift->[1];
	my $x2 = $shift->[2];
	my $v2 = $shift->[3];
	return 'NO' if ( $x1 > 100000000 || $x2 > 100000000 ); 
	if ( $v1 <= $v2 && $x1 < $x2 ){
		return 'NO';
	}
    elsif( $v1 >= $v2 && $x1 > $x2 ){
        return 'NO';
    }
	else{
		$x1 += $v1;
		$x2 += $v2;
		if ( $x1 == $x2 ){
			return 'YES';
		}
		else{
			return check( [ $x1, $v1, $x2, $v2 ] );
		}
	}
}
# Recursion Example
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/kangaroo

=cut
