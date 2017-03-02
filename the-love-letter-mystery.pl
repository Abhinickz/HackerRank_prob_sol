#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
no warnings "uninitialized";

my $debug = 0;
# $debug = 1;

my $input_temp = <STDIN>;
chomp($input_temp);

foreach ( 1..$input_temp ){
	my $del_count = 0;
	my $string = <STDIN>;
	chomp($string);
	print "---------------\n".$_.". => $string\n" if ($debug);
	my @strings = split( '', $string );
	my $element = scalar(@strings);
	print "length : $element\n" if ($debug);
	for( my $i = 0; $i < int($element/2); $i++ ) {
		my $j = ($element-$i)-1;
		print "\tstrings[$i]:$strings[$i]\tstrings[$j]:$strings[$j]\n" if ($debug);
		if ( $strings[$i] eq $strings[$j]){
			next;
		}
		else{
			print "\tstrings[$i]:$strings[$i]\t".ord($strings[$i])."\n\tstrings[$j]:$strings[$j]\n". if ($debug);
			$del_count += abs (ord($strings[$i]) - ord($strings[$j]));
		}
	}
	print $del_count."\n";
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/the-love-letter-mystery

=cut
