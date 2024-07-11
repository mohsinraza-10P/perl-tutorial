package Person::Person;

use strict;
use warnings FATAL => 'all';

use feature 'say';

sub new {
    my $class = shift;
    my $self = {
        _firstName => shift,
        _lastName  => shift,
        _ssn       => shift
    };
    say("First Name: $self->{_firstName}");
    say("Last Name: $self->{_lastName}");
    say("SSN: $self->{_ssn}");

    bless($self, $class);
    return $self;
}

# You can use simple hash in your constructor if you don't want to
# assign any value to any class variable. For example

# sub new {
#     my $class = shift;
#     my $self = {};
#     bless $self, $class;
#     return $self;
# }

sub getFirstName {
    my ($self) = @_;
    return $self->{_firstName};
}

sub setFirstName {
    my ($self, $firstName) = @_;
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}

sub DESTROY {
    say("Person::Person DESTROY called");
}

1;