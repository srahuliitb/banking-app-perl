package SavingsAccount;

use strict;
use warnings;
use lib './';
use parent 'BankAccount'; # Inherits from BankAccount

# Constructor for SavingsAccount (inherits from BankAccount)
sub new {
    my ($class, $account_number, $balance, $interest_rate) = @_;
    my $self = $class->SUPER::new($account_number, $balance);
    $self->{interest_rate} = $interest_rate;
    return $self;
}

# Method to apply interest
sub apply_interest {
    my $self = shift;
    my $interest = $self->{balance} * $self->{interest_rate} / 100;
    $self->{balance} += $interest;
    print "Interest applied = $interest\n";
    $self->display_balance();
}

1;