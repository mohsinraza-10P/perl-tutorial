#!/usr/bin/perl
# chmod 755 forms.cgi
# ./forms.cgi

use warnings;
use strict;
use diagnostics;

use feature 'say';

use CGI;

my $obj = new CGI();

sub main {
    print $obj->header();

    my $query = $obj->param("query");

    print <<HTML;
<html>
<head>
    <title>CGI - Forms</title>
</head>
<body>
<h1>CGI - Forms</h1>
<form action="forms.cgi" method="get">
    <input type="text" name="query" />
    <input type="hidden" name="go" value="true" />
    <input type="submit" name="submit" value="Done" />
</form>
<p>Last submitted: $query</p>
</body>
</html>
HTML
}

main();