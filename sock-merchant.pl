#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $n = <STDIN>;
chomp $n;
my $c_temp = <STDIN>;
chomp($c_temp);
my @c = split( / /, $c_temp );
my %hash = ();
my $total = 0;
foreach ( @c ){
    if (!exists $hash{$_}){
        $hash{$_} = 1;
    }
    else{
        my $count = $hash{$_};
        $hash{$_} = $count + 1;
        if (($count + 1 ) % 2 == 0){
            $total++;        
        }
    }
}
print $total;
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/sock-merchant

=cut
