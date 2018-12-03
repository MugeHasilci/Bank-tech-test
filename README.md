# Bank-tech-test

### User Stories
```
As a client
So I can have money in my Account
I want to be able to make a deposit.

As a client
So I can withdraw money from my account
I want to be able to make a withdrawal.

As a client
So I can check my transactions
I want to be able to see my statement containing date, amount(deposit/withdrawal), balance.
```

### Tech/framework used
```
Ruby
Rspec
```
### How to use ?
```
1. Open your terminal and clone this repository
```
git clone https://github.com/MugeHasilci/Bank-tech-test.git
```
2. Change directory by typing ```cd bank_tech_test``` and then  ```
bundle```
3. Open IRB by typing ```irb``` on you terminal
4. Type the following commands, and press enter after each one
```
require './lib/account.rb'
```
```
account = Account.new (you start with a new Account statement)
```
```
account.deposit("13/02/2012", 1000) (make a deposit with a date and amount)
```
```
account.withdrawal("21/02/2012", 150) (make a withdrawal with a date and amount)
```
```
account.show  (will print all of the transactions on screen)
```
5. After account.show, you can either deposit or withdrawal as many times you want and then account.show to display all the transactions together.
6. When you want to finish the session, type ```exit``` on your terminal

###Screen shot

## Screenshoot from running the app in the terminal:

![alt tag](https://github.com/MugeHasilci/Bank-tech-test.git/blob/master/public/irb.png)
