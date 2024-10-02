#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use feature 'say';

# - How to get array length?
# - What if I print @array with $array. What is going to be the output?
# - How to get parameters in subroutine?
# - In OOP, what does class/shift means? How does the constructor takes arguments and assign it to properties?
# - bless keyword? Provision a class object to access class methods.
# - Reason why moved to class from struct?
# https://chatgpt.com/share/91fec397-e1bf-493d-8e80-b2b745e0f445

my @arr = (1, 2, 3);
say "Array size: ", scalar @arr;
say "Array last index: ", scalar $#arr;
say "Array elements: ", @arr;
