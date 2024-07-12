#!/usr/bin/perl
# chmod 0755 db_operations.pl

use strict;
use warnings FATAL => 'all';
use DBI;
use feature 'say';

my $driver = "mysql";
my $database = 'test_db';
my $hostname = 'localhost';
my $port = 3306;
my $user = 'root';
my $password = 'P@ssword1';

my $dsn = "DBI:$driver:database=$database;host=$hostname;port=$port";

my $dbh = DBI->connect($dsn, $user, $password)
    or die "Could not connect to database: $DBI::errstr";

say "Connected to the database successfully!";

$dbh->disconnect;
