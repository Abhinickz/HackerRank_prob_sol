#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
use List::Util qw(min);

my $num = <STDIN>;
chomp($num);
my $input = <STDIN>;
chomp($input);
my @numbers = split( ' ', $input );

do {
	my $element = scalar(@numbers);
	print $element."\n";
	my $min = min @numbers;
	my @temp = grep ! /^$min$/, @numbers;
	@numbers = @temp;
}while( scalar(@numbers) != 0 );
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/cut-the-sticks

=cut
