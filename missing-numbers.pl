#!/usr/bin/perl 
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;

my $n = <STDIN>;
chomp($n);
my $list_1 = <STDIN>;
chomp($list_1);

my $m = <STDIN>;
chomp($m);
my $list_2 = <STDIN>;
chomp($list_2);

my @first = split(' ', $list_1 );
my @second = split(' ', $list_2 );

my %first_list = ();
my %second_list = ();

foreach (@first){
	if( !exists $first_list{$_}){
		$first_list{$_} = 1;
	}
	else{
		my $count = $first_list{$_};
		my $assign = ++$count;
		$first_list{$_} = $assign;
	}
}

foreach (@second){
	if( !exists $second_list{$_}){
		$second_list{$_} = 1;
	}
	else{
		my $count = $second_list{$_};
		my $assign = ++$count;
		$second_list{$_} = $assign;
	}
}

my $keys = '';
foreach ( sort {$a <=> $b} keys %first_list ){
	$keys .= " ".$_ if ( $first_list{$_} != $second_list{$_} );
}
$keys =~ s/^ //;
print $keys;

__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/missing-numbers

=cut
