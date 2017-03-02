#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $input_temp = <STDIN>;
chomp($input_temp);
$input_temp =~ s/(.)\1//g;
while ( $input_temp =~ /(.)\1/ ){
	$input_temp =~ s/(.)\1//g;
}

if ( !$input_temp ){
	print "Empty String";
}
else{
	print $input_temp;
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/reduced-string

=cut
