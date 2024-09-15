#!/usr/bin/perl

use strict;
use warnings;
use lib './';

use SavingsAccount;
use CheckingAccount;

# Create a SavingsAccount object
my $savings = SavingsAccount->new('SA123', 1000, 2.5);  # Account number, balance, interest rate
$savings->deposit(500);   # Deposit money
$savings->apply_interest();  # Apply interest
# $savings->display_balance(); # Display balance

# Create a CheckingAccount object
my $checking = CheckingAccount->new('CA123', 500, 300);  # Account number, balance, overdraft limit
$checking->withdraw(700);   # Withdraw money (within overdraft limit)
# $checking->display_balance(); # Display balance
