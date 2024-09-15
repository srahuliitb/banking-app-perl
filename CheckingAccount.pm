package CheckingAccount;

use strict;
use warnings;
use lib './';
use parent 'BankAccount'; # Inherits from BankAccount

# Constructor for CheckingAccount
sub new {
    my ($class, $account_number, $balance, $overdraft_limit) = @_;
    my $self = $class->SUPER::new($account_number, $balance);
    $self->{overdraft_limit} = $overdraft_limit;
    return $self;
}

# Override withdraw method to handle overdraft
sub withdraw {
    my ($self, $amount) = @_;
    if ($self->{balance} + $self->{overdraft_limit} >= $amount) {
        $self->{balance} -= $amount;
        print "Amount withdraw with overdraft protection = $self->{balance}\n";
        $self->display_balance();
    } else {
        print "Exceeded the overdraft limit.\n";
        $self->display_balance();
    }
}

1;