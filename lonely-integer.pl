#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $l = <STDIN>;
chomp($l);

my $input = <STDIN>;
chomp($input);
my %seen = ();
my @array = split( ' ', $input );
for ( @array ){
	$seen{$_}++;
}
my $min = min(%seen);
print $min."\n";

sub min {
    my (%data) = @_;
 
    my $min;
    while (my ($key, $value) = each %data) {
        if (not defined $min) {
            $min = $key;
            next;
        }
        if ($data{$min} > $value) {
            $min = $key;
        }
    }
    return $min;
}

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/lonely-integer

=cut
