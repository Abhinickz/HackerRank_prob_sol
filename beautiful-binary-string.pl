#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $n = <STDIN>;
chomp($n);

my $string = <STDIN>;
chomp($string);
my $count = 0;

while ($string =~ /(010)/g){
    $string =~ s/010/011/;
    $count++
}
print $count;

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/beautiful-binary-string

=cut
