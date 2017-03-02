#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
use Math::BigFloat;
Math::BigFloat->accuracy(8);

$n = <STDIN>;
chomp $n;
$arr_temp = <STDIN>;
@arr = split / /,$arr_temp;
chomp @arr;
my $total_element = scalar(@arr);
my $pos = 0;
my $neg = 0;
my $zer = 0;
foreach (@arr){
    if ( $_ > 0 ){
        $pos++;   
    }
    elsif( $_ == 0 ){
        $zer++;
    }
    else{
        $neg++;
    }
}
print new Math::BigFloat $pos/$total_element;
print "\n";
print new Math::BigFloat $neg/$total_element;
print "\n";
print new Math::BigFloat $zer/$total_element;
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/plus-minus

=cut