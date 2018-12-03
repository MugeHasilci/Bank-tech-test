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
    @date = date
    @balance -= amount
    @statement << "#{date} || || #{amount}.00 || #{@balance}.00"
  end

  def show
    puts "date || deposit || withdrawal || balance"
    @statement.reverse.each do |account|
      puts account
    end
  end
end
