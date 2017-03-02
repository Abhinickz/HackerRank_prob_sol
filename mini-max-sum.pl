#!/usr/bin/perl 
use strict; use warnings; use Data::Dumper; $Data::Dumper::Sortkeys = 1;
no warnings "uninitialized";	# Sometimes I understand warnings but ignore them.

my $input = <STDIN>;
chomp($input);
my $flag = 0;
my $input2 = $input;
$input2 =~ s/\s//g;
my @input_num = split( ' ', $input );
my @sums = ();
my $sum = 0;

if ( $input2 =~ m/^(\d)\1+$/g ){
    my $number = same_num( @input_num );
    print "$number $number\n";
    exit;
}

foreach my $num1 ( @input_num ){
    $sum = 0;
    foreach my $num2 ( @input_num ){
        if ( $num1 == $num2 ){
            next;        
        }
        $sum += $num2;
    }
    push @sums, $sum;
}

sub same_num {
    my @input_nums = @_;
    pop @input_nums;
	$sum = 0;
	my $i;
    for($i = 0; $i <= scalar(@input_nums); $i++ ){
       $sum += $input_nums[$i];
    }
    return $sum;
}
my ( $max, $min ) = ( -1e99, 1e99 );
map { $max = $_ if ( $_ > $max ); $min = $_ if( $_ < $min ); } @sums;

print "$min $max\n";
__END__
=pod

=head1 Link : https://www.hackerrank.com/challenges/mini-max-sum

=cut
