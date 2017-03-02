#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $num = <STDIN>;
chomp($num);

for ( my $i = 1; $i <= $num; $i++ ){
	my $count = 0;
	my $nums1_temp = <STDIN>;
	chomp($nums1_temp);
	my @numbers = split( '', $nums1_temp );
	foreach ( @numbers ){
		next if ( $_ == 0 );
		$count++ if ( $nums1_temp % $_ == 0 );
	}
	print $count."\n";
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/find-digits

=cut
