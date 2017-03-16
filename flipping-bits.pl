#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $t = <STDIN>;
chomp($t);

for ( 1..$t ){
	my $int = <STDIN>;
	chomp($int);
	my $bits = dec2bin($int);
	my $flipped_bits = flipBit($bits);
	my $answer = bin2dec($flipped_bits);
	print $answer;
	print "\n";
}

sub dec2bin {
    my $str = unpack("B32", pack("N", shift));
    # $str =~ s/^0+(?=\d)//;   # otherwise you'll get leading zeros
    return $str;
}

sub bin2dec {
    # return unpack("N", pack("B32", substr("0" x 32 . shift, -32)));	 # convert with leading zeroes
    return unpack("N", pack("B32", shift ) );
}

sub flipBit {
	my $bits = shift;
	$bits =~ tr/01/10/;
	return $bits;
}

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/flipping-bits

=cut