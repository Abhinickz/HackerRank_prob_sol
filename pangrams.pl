#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $input_temp = <STDIN>;
chomp($input_temp);
my %chars = ();

%chars = map { lc($_)=> 1 } split( '', $input_temp );

if ( scalar keys %chars != 27 ){
	print "not pangram";
}
else{
	print "pangram";
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/pangrams

=cut
