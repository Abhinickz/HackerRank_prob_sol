#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $a0_temp = <STDIN>;
my @a0_arr = split ( / /, $a0_temp );
my $a0 = $a0_arr[0];
chomp($a0); 
my $a1 = $a0_arr[1];
chomp($a1);
my $a2 = $a0_arr[2];
chomp($a2);
my $b0_temp = <STDIN>;
my @b0_arr = split( / /, $b0_temp );
my $b0 = $b0_arr[0];
my chomp $b0; 
my $b1 = $b0_arr[1];
chomp($b1);
my $b2 = $b0_arr[2];
chomp($b2);
my $alice = 0;
my $bob = 0;
if ($a0 > $b0){
    $alice++;
}
elsif($a0 == $b0){
    
}
else{
    $bob++;
}

if ($a1 > $b1){
    $alice++;
}
elsif($a1 == $b1){
    
}
else{
    $bob++;
}

if ($a2 > $b2){
    $alice++;
}
elsif($a2 == $b2){
    
}
else{
    $bob++;
}
print "$alice $bob";
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/compare-the-triplets

=cut