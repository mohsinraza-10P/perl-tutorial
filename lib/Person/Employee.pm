package Person::Employee;

use Person::Person;

use strict;
use warnings FATAL => 'all';

our @ISA = qw(Person::Person);

use feature 'say';

# Override constructor
sub new {
    my ($class) = @_;

    # Call the constructor of the parent class, Person.
    my $self = $class->SUPER::new($_[1], $_[2], $_[3]);

    # Add few more attributes
    $self->{_id} = undef;
    $self->{_title} = undef;

    bless $self, $class;
    return $self;
}

# Override helper function
sub getFirstName {
    my ($self) = @_;
    # This is child class function.
    print "This is child class helper function\n";
    return $self->{_firstName};
}

# Add more methods
sub getLastName {
    my ($self) = @_;
    return $self->{_lastName};
}

sub setLastName {
    my ($self, $lastName) = @_;
    $self->{_lastName} = $lastName if defined($lastName);
    return $self->{_lastName};
}

sub DESTROY {
    say("Person::Employee DESTROY called");
}

1;