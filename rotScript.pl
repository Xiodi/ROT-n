#!/usr/bin/perl

use strict;
use warnings;
use RotN;

my $before = <>;
my $after = rotString($before, 3, "ENCRYPT");
print("After encryption : ".$after."And after decrypt : " . rotString($after, 3, "DECRYPT"));
