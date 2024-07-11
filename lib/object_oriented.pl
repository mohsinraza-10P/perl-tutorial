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

say("-----CAT-----");
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
say("-----LION-----");
use Animal::Lion;

# Create object that inherits from Cat
my $king = new Animal::Lion("King", "No Owner");

# Call overridden method
say $king->getSound();

say("-----PERSON-----");
use Person::Person;

my $object = new Person::Person( "Mohammad", "Saleem", 23234345);

# Get first name which is set using constructor.
my $firstName = $object->getFirstName();

print "Before Setting First Name is : $firstName\n";

# Now Set first name using helper function.
$object->setFirstName( "Mohd." );

# Now get first name set by helper function.
$firstName = $object->getFirstName();
print "After Setting First Name is : $firstName\n";

say("-----EMPLOYEE-----");
use Person::Employee;

my $emp = new Person::Employee( "Ali", "Ahmed", 1234);

# Get first name which is set using constructor.
my $firstNameEmp = $emp->getFirstName();

print "Before Setting First Name is : $firstNameEmp\n";

# Now Set first name using helper function.
$emp->setFirstName( "Mohd." );

# Now get first name set by helper function.
$firstNameEmp = $emp->getFirstName();
print "After Setting First Name is : $firstNameEmp\n";

# Get last name which is set using constructor.
my $lastNameEmp = $emp->getLastName();
say "Last Name is: $lastNameEmp";