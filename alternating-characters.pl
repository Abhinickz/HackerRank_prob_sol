#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $input_temp = <STDIN>;
chomp($input_temp);

foreach ( 1..$input_temp ){
	my $count = 0;
	my $string = <STDIN>;
	chomp($string);
	
	my @strings = split( '', $string );
	my $char = '';
	
	for( my $i = 0; $i < scalar(@strings); $i++){
		my $char_next = $strings[$i];
		$count++ if ( $char eq $char_next );
		$char = $char_next;
	}
	print $count."\n";
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/alternating-characters

=cut
