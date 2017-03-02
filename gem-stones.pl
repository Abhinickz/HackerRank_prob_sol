#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $number = <STDIN>;
chomp($number);
my %unq = ();
for ( my $num = 1; $num <= $number; $num++ ){
	my $rock = <STDIN>;
	chomp($rock);
	my %rocks = ();
	my @rock_com = split( '', $rock );
	for ( my $r = 0; $r < scalar( @rock_com ); $r++ ){
		if ( $num == 1 ){
			$unq{$rock_com[$r]} = 1;
		}
		else{
			if( !exists $rocks{$rock_com[$r]} && exists $unq{$rock_com[$r]} ){
				my $count = 0;
				$count = $unq{$rock_com[$r]} + 1;
				$unq{$rock_com[$r]} = $count;
				$rocks{$rock_com[$r]} = 1;
			}
			elsif( !exists $unq{$rock_com[$r]} ){
				delete $unq{$rock_com[$r]};
				$rocks{$rock_com[$r]} = 1;
			}
		}
	}
}
my $count = 0;
foreach ( values %unq ){
	$count++ if ( $_  == $number );
}

print $count;
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/gem-stones

=cut
