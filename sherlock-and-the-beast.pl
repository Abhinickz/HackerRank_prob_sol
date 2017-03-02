#!/usr/bin/perl 
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
my $cases = <STDIN>;
chomp($cases);

for ( 1..$cases ){
	my $digit = <STDIN>;
	chomp($digit);
	my $digit_copy = $digit;
	my $fives = 0;
	if ( ( ( $digit%3 ) == 0 ) && ( ( $digit%5 ) == 0 ) ){
		print '5' x $digit;
		print "\n";
		next;
	}
	elsif( ( $digit%3 ) == 0 ){
		print '5' x $digit;
		print "\n";
		next;
	}
	elsif( $digit>5 && (( $digit%3 ) != 0) || ( $digit%5 ) != 0 ) {
		while ( $digit >= 5 ){
			last if ( $digit%3 == 0 );
			$digit = $digit - 5;
			$fives = $digit_copy - $digit;
		}
		if ( $digit%3 == 0 ){
			print '5' x $digit;
			print '3' x $fives;
			print "\n";
			next;
		}
		else{
			print -1;
			print "\n";
			next;
		}
	}
	elsif( ( $digit%5 ) == 0 ){
		print '3' x $digit;
		print "\n";
		next;
	}


	else{
		print -1;
		print "\n";
		next;
	}
}

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/sherlock-and-the-beast

=cut
