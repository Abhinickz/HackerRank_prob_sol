#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
use bigint;

my $num = <STDIN>;
chomp($num);
if ( $num == 1 ){
    print 1;
    exit;
}
my $factorial = 1;

for (my $i = $num; $i >= 1; $i-- ){
	$factorial = $factorial*$i;

}
print $factorial;

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/extra-long-factorials

=cut
