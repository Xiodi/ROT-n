# --- RotN Package ---
package RotN;
use strict;
use warnings;
use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(&rotString);

sub rotN
{
    my ($char, $n, $operator) = @_;
    return chr(ord($char) + $n) if ($operator eq "ENCRYPT");
    return chr(ord($char) - $n) if ($operator eq "DECRYPT");
}

sub rotString
{
    my ($string, $n, $operator) = @_;
    my $crypString = "";
    foreach (split //, $string) 
    {
	$crypString .= ($_ =~ /\S/ ? rotN($_, $n, $operator) : $_);
    }
    return $crypString;
}
1;
