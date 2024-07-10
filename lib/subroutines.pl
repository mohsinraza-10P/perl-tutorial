# Force us to write good code and to provide information on how to correct errors
use warnings;
use strict;
use diagnostics;

# Prints a line followed by a newline
use feature 'say';

# Use Perl version 5.16
use v5.16;

# ---------- SUBROUTINES ----------
# Subroutines or functions allow you to call for a block of code to execute

sub get_random {
    return int(rand 11);
}

say "Random Number ", get_random();

# Arguments to a subroutine are stored in @_ array
sub get_random_max {
    my ($max_num) = @_;

    # Define a default if no Arguments
    $max_num ||= 11;
    return int(rand $max_num);
}

say "Random Number ", get_random_max(100);

# Receive multiple values
sub get_sum {
    my ($num_1, $num_2) = @_;

    # Define defaults
    $num_1 ||= 1;
    $num_2 ||= 1;

    return $num_1 + $num_2;
}

say get_sum(5, 4);

# Receive an unknown number of values
sub sum_many {
    my $sum = 0;
    foreach my $val (@_) {
        $sum += $val;
    }
    return $sum;
}

say "Sum : ", sum_many(1, 2, 3, 4, 5);

# You can have a variable in a function retain its value with state
sub increment {
    state $execute_total = 0;
    $execute_total++;
    say "Executed $execute_total times";
}

increment();
increment();

# You can return multiple values
sub double_array {
    my @num_array = @_;
    $_ *= 2 for @num_array;
    return @num_array;
}

my @rand_array = (1, 2, 3, 4, 5);

print join(", ", double_array(@rand_array)), "\n";

# You can also return single variables
sub get_mults {
    my ($rand_num) = @_;

    # Define a default if no Arguments
    $rand_num ||= 1;

    return $rand_num * 2, $rand_num * 3;
}

my ($dbl_num, $trip_num) = get_mults(3);

say "$dbl_num, $trip_num";

# Recursive Subroutine
sub factorial {
    my ($num) = @_;
    return 0 if $num <= 0;
    return 1 if $num == 1;
    return $num * factorial($num - 1);
}

say "Factorial 4 = ", factorial(4);

# 1st: num = 4 * factorial(3) = 4 * 6 = 24
# 2nd: num = 3 * factorial(2) = 3 * 2 = 6
# 3rd: num = 2 * factorial(1) = 2 * 1 = 2
