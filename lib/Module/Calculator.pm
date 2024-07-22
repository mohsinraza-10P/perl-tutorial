package Module::Calculator;

use strict;
use warnings FATAL => 'all';
use feature 'say';

sub addition {
    # my ($a, $b) = @_;

    my $a = $_[0];
    my $b = $_[1];

    my $c = $a + $b;

    print "Addition: $c";
}

sub subtraction {
    # my ($a, $b) = @_;

    my $a = $_[0];
    my $b = $_[1];

    my $c = $a - $b;

    print "Subtraction: $c";
}

1;