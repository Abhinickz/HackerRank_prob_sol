#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $time = <STDIN>;
chomp($time);
if ( $time =~ /(\d\d)\:(\d\d):(\d\d)(PM|AM)/i ){
    my $hor = $1;
    my $min = $2;
    my $sec = $3;
    my $am_pm = $4;
    if ( $am_pm eq 'PM' && $hor < 12 ){
        $hor += 12;
    }
    if ( $hor == 12 && $am_pm eq 'AM' ){
        $hor = '00';
    }
    print "$hor\:$min\:$sec";
}
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/time-conversion/

=cut