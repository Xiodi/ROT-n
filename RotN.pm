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
	if (ord($char) <= ord("Z"))
	{
	    return chr(ord($char) + $n + 26) if (ord($char) + $n < ord("A"));
	    return chr(ord($char) + $n - 26) if (ord($char) + $n > ord("Z"));
	}
	else
	{
	    return chr(ord($char) + $n + 26) if (ord($char) + $n < ord("a"));
	    return chr(ord($char) + $n - 26) if (ord($char) + $n > ord("z"));
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
	$crypString .= rotN($_, $n);
    }
    return $crypString;
}
1;
