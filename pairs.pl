#!/usr/bin/perl 
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $input = <STDIN>;
chomp($input);
my ( $n, $k ) = split( ' ', $input );

$input = <STDIN>;
chomp($input);
my @numbers = split( ' ', $input );
my %hash  = ();
my $count = 0;
for ( my $i = 0; $i < scalar(@numbers); $i++ ){
	$hash{$numbers[$i]} = 1;	

}

for ( my $i = 0; $i < scalar(@numbers); $i++ ){
	if ( $numbers[$i] > $k && $hash{$numbers[$i]-$k} > 0 ){
		$count++;
	}
}
print $count;

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/pairs

=cut
