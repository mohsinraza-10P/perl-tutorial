#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use feature 'say';

my @files = `ls -l`;
foreach my $file (@files) {
    print $file;
}
say "";

system("ls -l");
say "";

my $path = `pwd`;
say "Path: ", $path;

my $PATH = "I am Perl Variable namely PATH";

system('echo $PATH');  # Treats $PATH as shell variable
say "";
system("echo $PATH");  # Treats $PATH as Perl variable
say "";
system("echo \$PATH"); # Escaping $ works.
say "";
system('echo $ANDROID_SDK_ROOT');  # Treats $ANDROID_SDK_ROOT as shell variable