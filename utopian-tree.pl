#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $num = <STDIN>;
chomp($num);

for ( my $i = 1; $i <= $num; $i++ ){
	my $height = 1;
	my $cycle = <STDIN>;
	chomp($cycle);
	if( !$cycle ){
		print "1\n";
		next;
	}
	for ( 1..$cycle ){
		if ($_ % 2 != 0){
			$height = $height*2;
		}
		else{
			$height = $height+1;
		}
	}
	print $height."\n";
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/utopian-tree

=cut
