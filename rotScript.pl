#!/usr/bin/perl
use strict;
use warnings;
use Scalar::Util qw(looks_like_number);
use RotN;

die ("Usage: $0 {1|2} n sourceFile\n") if (!defined($ARGV[2]));
die ("Usage : $ARGV[0] must be 1 (Encrypt) or 2 (Decrypt)") if ( $ARGV[0] != 1 && $ARGV[0] != 2);
die ("Usage: $ARGV[1] is not an integer\n") if (!looks_like_number($ARGV[1]));
open(my $sourceFile, '<', $ARGV[2]) or die("open: $!");
my $number = $ARGV[1];
$number = abs($number) % 26;
$number = -$number if ($ARGV[0] == 2);
while (defined(my $c = <$sourceFile>))
{
    print(rotString($c, $number));
}
