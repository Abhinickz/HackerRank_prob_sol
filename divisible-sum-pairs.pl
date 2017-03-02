#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $number_temp = <STDIN>;
chomp($number_temp);

my ( $n, $k ) = split( ' ' ,$number_temp );

my $numbers_temp = <STDIN>;
chomp($numbers_temp);

my @numbers = split( ' ' ,$numbers_temp );
my $element = scalar( @numbers );
my $count = 0;
my $sum = 0;
my $mod = 1;
for ( my $loop1 = 0; $loop1 < $element; $loop1++){
	for ( my $loop2 = 0; $loop2 < $element; $loop2++){
		$sum = $numbers[$loop1] + $numbers[$loop2];
		$mod = $sum / $k - int($sum / $k);
		if ( $loop1 < $loop2 ){
			if ( !$mod ) {
				$count++;
        	}
        }
    }
}    
print $count;
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/divisible-sum-pairs

=cut
