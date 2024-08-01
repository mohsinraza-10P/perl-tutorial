#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
use feature 'say';

# A regular expression is usually enclosed in forward slashes (/). For example:
# /myregex/

# Matching
# To check if a string matches a regex pattern, you use the =~ operator:
my $string = "Hello, world!";
if ($string =~ /world/) {
    say "Match found!";
}

# Substitution
# The substitution operator (s///) is used to replace text:
$string = "Hello, world!";
$string =~ s/world/Perl/;
say $string;  # Output: Hello, Perl!

# Common Metacharacters
# .: Matches any single character except newline.
# *: Matches 0 or more occurrences of the preceding element.
# +: Matches 1 or more occurrences of the preceding element.
# ?: Matches 0 or 1 occurrence of the preceding element.
# \d: Matches any digit (equivalent to [0-9]).
# \w: Matches any word character (equivalent to [a-zA-Z0-9_]).
# \s: Matches any whitespace character (spaces, tabs, newlines).

# Character classes allow you to match one character from a set of characters:
#
# /[aeiou]/      # Matches any vowel
# /[A-Za-z]/     # Matches any uppercase or lowercase letter
# /[0-9]/        # Matches any digit

# Anchors
# Anchors assert a position in the string:
#
# ^: Matches the start of the string.
# $: Matches the end of the string.

# Example 1: Simple Match
my $text = "The quick brown fox";
if ($text =~ /quick/) {
    say "Found 'quick' in the text!";
}

# Example 2: Case-Insensitive Match
$text = "The Quick Brown Fox";
if ($text =~ /quick/i) {
    say "Found 'quick' in the text (case-insensitive)!";
}

# Example 3: Extracting Data
my $date = "2024-07-31";
if ($date =~ /(\d{4})-(\d{2})-(\d{2})/) {
    my ($year, $month, $day) = ($1, $2, $3);
    say "Year: $year, Month: $month, Day: $day";
}

# Example 4: Substitution
$text = "The quick brown fox";
$text =~ s/quick/slow/;
say $text;  # Output: The slow brown fox

# Example 5: Global Substitution
$text = "The quick quick brown fox";
$text =~ s/quick/slow/g;
say $text;  # Output: The slow slow brown fox

