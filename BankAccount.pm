package BankAccount;

use strict;
use warnings;

# Constructor for the BankAccount class
sub new {
    my ($class, $account_number, $balance) = @_;
    my $self = {
        account_number => $account_number,
        balance => $balance,
    };
    bless $self, $class;
    return $self;
}

# Method to deposit money into the account
sub deposit {
    my ($self, $amount) = @_;
    $self->{balance} += $amount;
    print "Amount deposited = $amount\n";
    $self->display_balance();
}

# Method to withdraw money from the account
sub withdraw {
    my ($self, $amount) = @_;
    if ($self->{balance} >= $amount) {
        $self->{balance} -= $amount;
        print "Amount withdrawn = $amount\n";
        $self->display_balance();
    } else {
        print "Insufficient balance.\n";
        $self->display_balance();
    }
}

# Method to display the account balance
sub display_balance {
    my $self = shift;
    print "Current balance = $self->{balance}\n";
}

1;