#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $number_temp = <STDIN>;
chomp($number_temp);
my $numbers_temp = <STDIN>;
chomp($numbers_temp);
my @numbers = split( ' ' ,$numbers_temp );
my $element = scalar( @numbers );
my %hash = ();

foreach my $num ( @numbers ){    
    if ( exists $hash{$num} ){
        my $count = $hash{$num};
        $count++;
        $hash{$num} =  $count;
    }
	else{
		$hash{$num} = 1;
	}
}
my $log = 0;
foreach ( reverse sort {$a <=> $b} values %hash ){
    $log = $_;
    last;
}

print scalar(@numbers) - $log;
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/equality-in-a-array

=cut

