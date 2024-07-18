#!/usr/bin/perl
# chmod 755 url-params.cgi
# ./url-params.cgi user=abc pass=123

use warnings;
use strict;
use diagnostics;

use feature 'say';

use CGI;

my $obj = new CGI();

sub main {
    print $obj->header();

    my $user = $obj->param("user");
    my $password = $obj->param("pass");

    print <<HTML;
<html>
<head>
    <title>CGI - URL Parameters</title>
</head>
<body>
<h1>CGI - URL Parameters</h1>
User: $user, Password: $password
</body>
</html>
HTML
}

main();