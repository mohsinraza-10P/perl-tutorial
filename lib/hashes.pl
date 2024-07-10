# Force us to write good code and to provide information on how to correct errors
use warnings;
use strict;
use diagnostics;

# Prints a line followed by a newline
use feature 'say';

# Use Perl version 5.16
use v5.16;

# ---------- HASHES ----------
# Hashes use keys to access values

my %employees = (
    "Sue"  => 35,
    "Paul" => 43,
    "Sam"  => 39
);

# Use $ to access the hash value
# Note you don't have to use quotes for the key
printf("Sue is %d \n", $employees{Sue});

# Add a new key value to a hash
$employees{Frank} = 44;

# Iterate over hash and print keys and values
while (my ($k, $v) = each %employees) {print "$k $v\n"}

# You can slice data from a hash
my @ages = @employees{"Sue", "Sam"};
say join(", ", @ages);

# Convert a hash into an array
my @hash_array = %employees;
say join(", ", @hash_array);

# Delete a key / value
delete $employees{'Frank'};

# Cycle through all key values with each
while (my ($k, $v) = each %employees) {print "$k $v\n"}

# Check if Sam exists and print out using the Ternary
# Operator
say((exists $employees{'Sam'}) ? "Sam is here" : "No Sam");

# Cycle through keys with keys
for my $key (keys %employees) {
    if ($employees{$key} == 35) {
        say "Hi Sue";
    }
}