class Account
  attr_reader :balance, :date

  def initialize
    @balance = 0
    @date = date
  end

  def deposit(date, amount)
    @date = date
    @balance += amount
  end

  def withdrawal(date, amount)
    @date = date
    @balance -= amount
  end
end
