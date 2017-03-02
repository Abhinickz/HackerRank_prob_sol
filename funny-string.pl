#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1; no warnings 'recursion';

my $number = <STDIN>;
chomp($number);
my $debug = 0;
# $debug = 1;
for (my $num = 1; $num <= $number; $num++){
	my $string_temp = <STDIN>;
	chomp($string_temp);
	next if ( $num != 2 && $debug );
	print "------------\n++$string_temp++\n" if ( $debug );

	my $length = length($string_temp);
	my @string = split('', $string_temp);
	my $check = 'Funny';
	for (my $i = 0; $i < ($length-1)/2; $i++ ){
		my $j = ( $length - 1 ) - $i;
		my $i_next = $i + 1;
		my $j_next = $j - 1;

		print "string_i[$i][$i_next]: $string[$i] $string[$i_next]\n" if ( $debug );
		print "string_j[$j][$j_next]: $string[$j] $string[$j_next]\n" if ( $debug );

		print abs ( ord("$string[$i]") - ord("$string[$i_next]" ) )."\n" if ( $debug );
		print abs ( ord("$string[$j]") - ord("$string[$j_next]" ) )."\n" if ( $debug );
		$check = 'Not Funny' if ( abs ( ord("$string[$i]") - ord("$string[$i_next]" ) ) != abs ( ord("$string[$j]") - ord("$string[$j_next]" ) ) );
		last if ( $length - $j_next >= ( $length/2 ));
    }
	print $check."\n";
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/funny-string

=cut
