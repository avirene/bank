# Bank tech test

In this Ruby project I practiced doing a tech test, my OO design and TDD skills.

## Specification

* You can interact with the code via a REPL like IRB or pry.  (I wasn't asked to implement a command line interface that takes input from STDIN.)
* You can make deposits, withdrawal.
* You can print account statement (date, amount, balance).
* Data is kept in memory (I wasn't asked to store it to a database).

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank balance  
**Then** she would see

```
Current Balance: £2500.00
```

## Domain Model

## to install gems
```
$ bundle install
```
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)

## to run linter
```
$ rubocop
```

## to run tests
```
$ rspec
```
## to run the code in pry
```
$ pry
```

```
require "./lib/account.rb"
```
```
account = Account.new
```
```
account.make_deposit(2000)
```
```
account.make_withdrawal(500)
```
```
account.print_statement
```
```
account.print_balance
```

## to exit pry
```
exit
```

MIT © [Iryna Audzei]()