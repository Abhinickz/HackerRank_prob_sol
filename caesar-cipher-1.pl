#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
my $debug = 0;
# $debug = 1;
my $n = <STDIN>;
chomp($n);

my $s = <STDIN>;
chomp($s);

my @strings = split( '', $s );
my $k = <STDIN>;
chomp($k);
my $add = $k-(int($k/26)*26);
my $encrypted = '';
my $count = 0;
foreach ( @strings ){
	$count++;
	last if ( $count == ($n+1) || $count == 101 );
	if ( $_ !~ m/[a-zA-Z]/){
		$encrypted .= $_;
		next;
	}
	my $ascii = ord ($_);
	
	print "$_ \t $ascii+$add\t".($ascii+$add) if ( $debug );

	if ( ( $ascii >= 65 && $ascii <= 90  ) && ( $ascii + $add ) > 90 ){
		$ascii = ((( $ascii + $add ) -90)+64);
		$encrypted .= chr($ascii);
		print "\t=>".chr($ascii)."\t".$ascii."\n" if ( $debug );
		next;
	}
	if ( ( $ascii >= 96 && $ascii <= 122 ) && ( $ascii + $add ) > 122 ){
		$ascii = ((( $ascii + $add ) -122)+96);
		$encrypted .= chr($ascii);
		print "\t=>".chr($ascii)."\t".$ascii."\n" if ( $debug );
		next;
	}
	$ascii += $add;
	$encrypted .= chr($ascii);
	print "\t".chr($ascii)."\t".$ascii."\n" if ( $debug );
}
print $s."\n" if ( $debug );
print $encrypted;

print "\n" if ( $debug );
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/caesar-cipher-1

=cut
