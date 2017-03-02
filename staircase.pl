#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $n = <STDIN>;
chomp($n);

my $count = 0;

for ( my $i = 1; $i <= $n; $i++ ){
    $count = $n-$i;
    print ' ' x $count;
    print '#' x $i;
    print "\n";
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/staircase/

=cut