#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "Hello, World\n";

while(<DATA>) {
    print $_;
}

__END__

=head3 Hello, World Example
This example demonstrate very basic syntax of Perl.
print "Hello, Universe\n";