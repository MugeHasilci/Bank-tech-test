# frozen_string_literal: true

class Account
  attr_reader :balance, :date, :statement

  def initialize
    @balance = 0
    @date = date
    @statement = []
  end

  def deposit(date, amount)
    @date = date
    @balance += amount
    @statement << "#{date} || #{amount}.00 || || #{@balance}.00"
  end

  def withdrawal(date, amount)
    raise 'Withdrawal denied: insufficient funds' if @balance < 1

    @date = date
    @balance -= amount
    @statement << "#{date} || || #{amount}.00 || #{@balance}.00"
  end

  def show
    puts 'date || deposit || withdrawal || balance'
    @statement.reverse_each do |account|
      puts account
    end
  end
end
