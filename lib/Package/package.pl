use strict;
use warnings FATAL => 'all';

use feature 'say';

# This is main package
my $i = 1;
say "Package name : ", __PACKAGE__, " $i";

package Foo;
# This is Foo package
$i = 10;
say "Package name : ", __PACKAGE__, " $i";

package main;
# This is again main package
$i = 100;
say "Package name : ", __PACKAGE__, " $i";
say "Package name : ", __PACKAGE__, " $Foo::i";

1;
