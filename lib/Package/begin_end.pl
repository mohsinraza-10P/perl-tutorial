#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "Begin and Block Demo\n";

BEGIN {
    print "This is BEGIN Block\n"
}

END {
    print "This is END Block\n"
}

1;