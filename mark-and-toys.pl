#!/usr/bin/perl 
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1; use bigint;

my $input = <STDIN>;
chomp($input);
my ( $number, $price ) = split(' ', $input);
$input = <STDIN>;
chomp($input);
my @array = split(' ', $input);
my $cal_price = 0;
my @sorted = sort {$a <=> $b} @array;
my $count = 0;
for( @sorted ){
	if ( $cal_price < $price ){
		$count++;
		$cal_price += $_;
	}
	else{
		last;
	}
}
print $count-1;

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/mark-and-toys

=cut
