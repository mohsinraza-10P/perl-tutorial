#!/usr/bin/perl
# chmod 0755 db_operations.pl

use strict;
use warnings FATAL => 'all';
use DBI;
use feature 'say';

# Database connection

my $driver = "mysql";
my $database = 'test_db';
my $hostname = 'localhost';
my $port = 3306;
my $user = 'root';
my $password = 'P@ssword1';

my $dsn = "DBI:$driver:database=$database;host=$hostname;port=$port";

my $dbh = DBI->connect($dsn, $user, $password, {
    PrintError => 0,
    RaiseError => 1,
    AutoCommit => 0,
}) or die "Could not connect to database: $DBI::errstr";

say "Connected to the database successfully!";

# Insert
my $age = int(rand 50);
my $insertSql = <<EOF;
INSERT INTO Person (First_Name, Last_Name, Email, Age)
VALUES ('Mohsin', 'Raza', 'mohsin.raza\@10pearls.com', '$age')
EOF

my $InsertSth = $dbh->prepare($insertSql);
$InsertSth->execute() or die "Error inserting record: " . $InsertSth->errstr;
$InsertSth->finish();
$dbh->commit or die "Error committing changes: " . $dbh->errstr;

say "Record inserted successfully!";

$dbh->disconnect();
