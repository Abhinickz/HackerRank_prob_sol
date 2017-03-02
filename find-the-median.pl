#!/usr/bin/perl 
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
no warnings "uninitialized";

my $input_num = <STDIN>;
chomp($input_num);
my $input = <STDIN>;
chomp($input);
my @input_num = split(' ', $input);

my @sorted = sort { $a <=> $b } @input_num;
my $index;
if (scalar(@sorted)%2 != 0){
    $index = ((scalar(@sorted)+1)/2 - 1);
    print $sorted[$index];
	print "\n";
    exit;
}
else{
    $index = ((scalar(@sorted))/2 - 1);
    print (($sorted[$index]+$sorted[$index+1])/2);
	print "\n";
    exit;
}

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/find-the-median

=cut