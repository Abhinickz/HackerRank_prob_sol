#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $val = <STDIN>;
chomp($val);
my $element = <STDIN>;
chomp($element);
my $arr_element = <STDIN>;
my @array = split(' ', $arr_element);
chomp(@array);
my ($index) = grep { $array[$_] eq $val } ( 0 .. @array-1 );
print defined $index ? $index : -1;

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/tutorial-intro

=cut
