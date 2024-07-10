# Force us to write good code and to provide information on how to correct errors
use warnings;
use strict;
use diagnostics;

# Prints a line followed by a newline
use feature 'say';

# Use Perl version 5.16
use v5.16;

# ---------- SCALARS ----------
# There are 3 data types in Perl
# Scalars, Arrays and Hashes

# Use the my function to declare a variable
# The Sigil $ says we are defining a scalar or single value
# The variable must start with a letter or _ and then numbers
# there after
# A variable receives the default value of undef

my $name = 'Mohsin';

# You can assign multiple values like this and scalars can
# contain strings or numbers
my ($age, $street) = (40, '1d street');

# If you use " for strings you can include things like
# newlines with \n and variables
# Backslash quotes to use them in strings
my $my_info = "$name lives on \"$street\"\n";

# You can avoid escaping quotes with q{} for single quotes
# and qq{} for double quotes
my $my_info2 = qq{$name lives on "$street"\n};

print($my_info);
print($my_info2);

# You can define a long string over multiple lines like this
my $multiline_info = <<"END";
This is a
bunch of information
on multiples lines
wohooo!!
END

# say ends the line with a newline
say($multiline_info);

# The largest integer you can hold
my $big_int = 18446744073709551615;

# You can format strings by defining the data type after %
# %c : Character
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)
printf("%u \n", $big_int + 1);

# You can trust 16 digits of precision for floats on most machines
my $big_float = .1000000000000001;

# You can define the decimal precision amount
printf("%.16f \n", $big_float + .1000000000000001);

# Switch values of scalars
my $first = 1;
my $second = 2;
($first, $second) = ($second, $first);
say "$first $second";
