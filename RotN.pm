# --- RotN Package ---
package RotN;
use strict;
use warnings;
use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(&rotString);

sub rotN
{
    my ($char, $n) = @_;
    my $op = ($n > 0 ? -26 : 26);
    if (chr(ord($char) + $n) =~ /[^a-zA-Z]/)
    {
	return chr(ord($char) + $n + $op) if (chr(ord($char) + $n + $op) =~ /[a-zA-Z]/);
	return $char;
    }
    return chr(ord($char) + $n);
}

sub rotString
{
    my ($string, $n) = @_;
    my $crypString = "";
    foreach (split //, $string) 
    {
	$crypString .= ($_ =~ /\S/ ? rotN($_, $n) : $_);
    }
    return $crypString;
}
1;
