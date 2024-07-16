#!/usr/bin/perl
# chmod 755 test-cgi.cgi

use warnings;
use strict;
use diagnostics;

use feature 'say';

use CGI;

my $obj = new CGI();

sub main {
    print $obj->header();

print<<HTML;
    <html>
    <head>
        <title>CGI.pm - Program</title>
    </head>
    <body>
        <h1>CGI.pm - Program</h1>
    </body>
    </html>
HTML

}

main();