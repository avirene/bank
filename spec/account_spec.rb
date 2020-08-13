
require "account.rb"

describe Account do
  describe ".make_deposit" do
    it "allows to deposit money on the account" do
      account = Account.new
      account.make_deposit(1000)
      expect(account.balance).to eq(1000.00)
    end
  end

  describe ".make_withdrawal" do
    it "allows to withdraw money from the account" do
      account = Account.new
      account.make_deposit(1000)
      account.make_withdrawal(500)
      expect(account.balance).to eq(500.00)
    end
  end
end
