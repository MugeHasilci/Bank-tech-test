require 'account'

describe Account do
  subject(:account) { described_class.new }

  describe "#balance" do
    it "returns the initial balance as zero" do
      expect(account.balance).to eq 0
    end
  end

  describe "deposit" do
    it { is_expected.to respond_to(:deposit).with(2).argument }
    it "adds money to the balance" do
      account.deposit("10-01-2012", 1000)
      expect(account.balance). to eq 1000
    end
  end

  describe "#withdrawal" do
    it { is_expected.to respond_to(:withdrawal).with(2).argument }
    it "substracts money from the balance" do
      account.withdrawal("14-01-2012", 500)
      expect(account.balance).to eq -500
    end
  end
end
