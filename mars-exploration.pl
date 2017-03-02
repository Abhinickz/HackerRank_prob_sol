#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1; no warnings 'recursion';

my $string_temp = <STDIN>;
chomp($string_temp);
my $length = length($string_temp);
my $count = 0;
my @string = ();
while ($length){
    push @string , ( substr $string_temp, -$length, 3 );
    $length--;
    $length--;
    $length--;
}
foreach (@string){
    my @temp = split ('', $_);
        $count++ if ( $temp[0] ne 'S');
        $count++ if ( $temp[1] ne 'O');
        $count++ if ( $temp[2] ne 'S');
}
print $count;
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/mars-exploration

=cut
