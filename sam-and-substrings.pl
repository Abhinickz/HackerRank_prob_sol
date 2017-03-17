#!/usr/bin/perl
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
my $input = <STDIN>;
chomp($input);
my @numbers = split( '', $input );
my $sum = 0;
my $temp = 1;
my $MOD = ( 10**9 + 7 );

for ( my $i = scalar(@numbers)-1; $i >= 0; $i-- ){
	$sum = ( $sum + ( $numbers[$i]-'0')*$temp*($i+1)) % $MOD;
	$temp = ( $temp*10+1 ) % $MOD;
}
print $sum;
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/sam-and-substrings

=head2  sub subString to get all the substrings in Perl.

  my @cache;
  sub subString {
  	$_ = shift;
  	return &{$cache[length($_)]} if exists $cache[length($_)];
  	my $sub = 'sub { return (';
  	foreach my $len (1..length($_)-1) {
  		foreach my $off (0..length($_)-$len) {
  			$sub .= "substr(\$_,$off,$len),";
  		}
  	}
  	$sub .= "\$_)};";
  	$cache[length($_)] = eval $sub;
  	return &{$cache[length($_)]};
  }

=cut
