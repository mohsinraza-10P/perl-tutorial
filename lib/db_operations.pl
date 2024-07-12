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
my $personAge = int(rand 50);
my $insertSql = <<EOF;
INSERT INTO Person (First_Name, Last_Name, Email, Age)
VALUES ('Mohsin', 'Raza', 'mohsin.raza\@10pearls.com', '$personAge')
EOF

my $InsertSth = $dbh->prepare($insertSql);
$InsertSth->execute() or die "Error inserting record: " . $InsertSth->errstr;
$InsertSth->finish();
$dbh->commit() or die "Error committing changes: " . $dbh->errstr();

say "Record inserted successfully!";

# Select
print "Enter age to filter records: ";
my $filterAge = <STDIN>;
selectDataByAge($filterAge);

# Update
my $updateSql = <<EOF;
UPDATE Person
SET AGE = AGE + 1
WHERE AGE > ?
EOF

my $updateSth = $dbh->prepare($updateSql);
$updateSth->execute($filterAge) or die "Error updating record: " . $updateSth->errstr;
say "Number of rows updated : ", $updateSth->rows;
$updateSth->finish();
$dbh->commit() or die "Error committing changes: " . $dbh->errstr();

selectDataByAge($filterAge);

# Delete
my $deleteSql = <<EOF;
DELETE FROM Person
WHERE ID < 5
EOF

my $deleteSth = $dbh->prepare($deleteSql);
$deleteSth->execute() or die "Error deleting record: " . $deleteSth->errstr;
say "Number of rows deleted : ", $deleteSth->rows;
$deleteSth->finish();
$dbh->commit() or die "Error committing changes: " . $dbh->errstr();

selectDataByAge();

$dbh->disconnect();

sub selectDataByAge {
    my ($age) = @_;

    $age ||= 0;

    my $selectSql = "SELECT * FROM PERSON WHERE AGE > ? ORDER BY ID";
    my $selectSth = $dbh->prepare($selectSql);
    $selectSth->execute($age) or die $DBI::errstr;
    say "Number of rows found : ", $selectSth->rows;
    while (my @row = $selectSth->fetchrow_array()) {
        my ($id, $first_name, $last_name, $email, $age) = @row;
        say "ID = $id, First Name = $first_name, Last Name = $last_name, Email = $email, Age = $age";
    }
    $selectSth->finish();
}