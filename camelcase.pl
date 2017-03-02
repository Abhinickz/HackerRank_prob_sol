#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $s = <STDIN>;
chomp($s);
my @arr = split(/[A-Z]/, $s);
print scalar(@arr);
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/camelcase

=cut
