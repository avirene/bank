require "account.rb"

describe Account do
  describe ".deposit_money" do
    it "allows to deposit money on the account" do
      account = Account.new
      account.deposit_money(1000)
      expect(account.balance).to eq(1000)
    end
  end

  describe ".withdraw_money" do
    it "allows to withdraw money from the account" do
      account = Account.new
      account.deposit_money(1000)
      account.withdraw_money(500)
      expect(account.balance).to eq(500)
    end
  end
end
