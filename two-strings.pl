#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $input_temp = <STDIN>;
chomp($input_temp);

foreach ( 1..$input_temp ){
	my $string1 = <STDIN>;
	chomp($string1);
	my $string2 = <STDIN>;
	chomp($string2);
	my $out = 0;
	my @strings1 = split( '', $string1 );
	my @strings2 = split( '', $string2 );
	my %string1 = ();
	my %string2 = ();
	foreach ( @strings1 ){
		$string1{$_} = 1;
	}
	foreach ( @strings2 ){
		$string2{$_} = 1;
	}
	foreach my $key1 ( keys %string1 ){
		foreach my $key2 ( keys %string2 ){
			if ($key1 eq $key2){
				$out = 1;
				last;
			}
		}
		last if ( $out );
	}
	if ( $out ){
		print 'YES'."\n";
	}
	else{
		print 'NO'."\n";
	}
}

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/two-strings

=cut
