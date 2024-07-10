# Force us to write good code and to provide information on how to correct errors
use warnings;
use strict;
use diagnostics;

# Prints a line followed by a newline
use feature 'say';

# Use Perl version 5.16
use v5.16;

# ---------- MATH ----------
my $num1 = 5;
my $num2 = 4;

say("$num1 + $num2 = ", $num1 + $num2);
say("$num1 - $num2 = ", $num1 - $num2);
say("$num1 * $num2 = ", $num1 * $num2);
say("$num1 / $num2 = ", $num1 / $num2);
say("$num1 % $num2 = ", $num1 % $num2);
say("$num1 ** $num2 = ", $num1 ** $num2);

# Built in functions
# Includes Trig functions plus
say("EXP 1 = ", exp 1);        # e to the power of
say("HEX 10 = ", hex 10);      # Convert from hexidecimal
say("OCT 10 = ", oct 10);      # Convert from Octal
say("INT 6.45 = ", int(6.45)); # Truncate You can use parentheses
say("LOG 2 = ", log 2);        # Number to the power of e
say("Random between 0 - 10 = ", int(rand(11)));
say("SQRT 9 = ", sqrt 9);

# Assignment Operators
# +=, -=, *=, /=
my $my_num = 5;
$my_num += 1;
say("My number 5 incremented by 1 = ", $my_num);

# Shortcut Increment and Decrement
say("6++ = ", $my_num++);
say("++6 = ", ++$my_num);
say("6-- = ", $my_num--);
say("--6 = ", --$my_num);

# Order of operations
say("3 + 2 * 5 = ", 3 + 2 * 5);
say("(3 + 2) * 5 = ", (3 + 2) * 5);
