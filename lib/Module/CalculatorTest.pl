#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use feature 'say';
use Module::Calculator;

say "Enter two numbers to add & subtract: ";
my $a = <STDIN>;
my $b = <STDIN>;

Module::Calculator::addition($a, $b);
Module::Calculator::subtraction($a, $b);