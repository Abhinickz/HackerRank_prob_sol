#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
my $t = <STDIN>;
chomp($t);

my $numbers = <STDIN>;
chomp($numbers);
my @arrays = split( ' ', $numbers );
my $min = 999999;
@arrays =sort(@arrays);
for ( my $i = 0; $i < scalar(@arrays)-1; $i++ ){
	my $abs = abs($arrays[$i] - $arrays[$i+1]);
	if ( $abs < $min ){
		$min = $abs;
	}
}
$min = 0 if ( $min =~ /9/ );
print $min;
print "\n";

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/minimum-absolute-difference-in-an-array

=cut
