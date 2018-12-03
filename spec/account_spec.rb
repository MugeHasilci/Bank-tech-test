require 'account'

describe Account do
  subject(:account) { described_class.new }

  describe "#balance" do
    it "returns the initial balance as zero" do
      expect(account.balance).to eq 0
    end
  end

  describe "deposit" do
    it { is_expected.to respond_to(:deposit).with(1).argument }
    it "adds money to the balance" do
      account.deposit(1000)
      expect(account.balance). to eq 1000
    end
  end
end
