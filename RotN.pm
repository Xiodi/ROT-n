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
    if ($char =~ /[a-zA-Z]/)
    {
	if (ord($char) < 91)
	{
	    return chr(ord($char) + $n + 26) if (ord($char) + $n < 65);
	    return chr(ord($char) + $n - 26) if (ord($char) + $n > 90);
	}
	else
	{
	    return chr(ord($char) + $n + 26) if (ord($char) + $n < 97);
	    return chr(ord($char) + $n - 26) if (ord($char) + $n > 122);
	}
	return chr(ord($char) + $n);
    }
    return $char;
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
