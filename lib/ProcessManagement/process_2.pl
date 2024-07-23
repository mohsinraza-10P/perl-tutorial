#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# local $SIG{CHLD} = "IGNORE";

# The fork function is used to create a child process.
# It returns the process ID of the child process to the parent process, and undef if the fork fails.
my $pid = fork();

if (!defined($pid)) {
    # fork returned undef, so unsuccessful
    die "Cannot fork a child: $!";
}
elsif ($pid == 0) {
    # If fork returns 0, this indicates that the code is running in the child process.
    print "Printed by child process\n";

    # The exec function is then called to replace the current process with a new program
    # For example, in this case the date command.
    # If exec fails, the script dies with the message "can't exec date".
    exec("date") or die "can't exec date: $!";
}
else {
    # This block is executed by the parent process.
    print "Printed by parent process\n";
    # Waits for the child process to finish.
    my $ret = waitpid($pid, 0);
    # Prints the completed process ID.
    print "Completed process id: $ret\n";

    kill('INT', $ret);
}