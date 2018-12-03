require 'account'

describe Account do
  describe "#balance" do
    it "returns the initial balance as zero" do
      account = Account.new
      expect(account.balance).to eq 0
    end
  end
end
