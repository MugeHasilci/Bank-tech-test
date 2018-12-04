# frozen_string_literal: true

describe 'User stories' do
  # As a client
  # So I can have money in my Account
  # I want to be able to make a deposit.

  it 'so a user can save money, deposit some cash on a certain date' do
    account = Account.new
    expect { account.deposit('14/01/2012', 1000) }.not_to raise_error
  end

  # As a client
  # So I can withdraw money from my account
  # I want to be able to make a withdrawal.

  it 'so a user can purchase goods, withdraw some cash on a certain date' do
    account = Account.new
    account.deposit('14/01/2012', 100)
    expect { account.withdrawal('15/01/2012', 10) }.not_to raise_error
  end

  # As a client
  # So I can check my transactions
  # I want to be able to see my statement containing date,
  # amount(deposit/withdrawal), balance.

  it 'so a user can see their transaction history,get the bank account statement' do
    account = Account.new
    account.deposit('14/01/2012', 100)
    account.withdrawal('15/01/2012', 50)
    expect { account.show }.not_to raise_error
  end
end
