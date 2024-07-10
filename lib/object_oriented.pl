#!/usr/bin/perl
# chmod 0755 hello.pl

# Force us to write good code and to provide information on how to correct errors
use warnings;
use strict;
use diagnostics;

# Prints a line followed by a newline
use feature 'say';

# Use Perl version 5.16
use v5.16;

# ---------- OBJECT ORIENTED PERL ----------
# In Perl a class corresponds to a package which is a
# self contained unit of variables and subroutines

use lib 'lib';

use Animal::Cat;

# Create a Cat object
my $cat = new Animal::Cat("Billy", "Mohsin");

# Call the subroutine that returns the name
say $cat->getName();

# Change the name
$cat->setName("Whiskers");

say $cat->getName();

say $cat->getSound();

# Inheriting object
use Animal::Lion;

# Create object that inherits from Cat
my $king = new Animal::Lion("King", "No Owner");

# Call overridden method
say $king->getSound();