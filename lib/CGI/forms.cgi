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

    # Fetch all params
    my @query = $obj->param();
    # Join all params separated by " " along with values
    # param=value param=value param=value
    @query = map($_ . "=" . $obj->param($_), @query);
    my $params = join(" ", @query);

    print <<HTML;
<html>
<head>
    <title>CGI - Forms</title>
</head>
<body>
<h1>CGI - Forms</h1>
<form action="forms.cgi" method="post">
    <input type="text" name="query" />
    <input type="hidden" name="go" value="true" />
    <input type="submit" name="submit" value="Done" />
</form>
<p>Last submitted: $params</p>
</body>
</html>
HTML
}

main();