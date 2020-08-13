
require "account.rb"

describe Account do

  let(:account) { Account.new }

  describe ".make_deposit" do
    it "allows to deposit money on the account" do
      account.make_deposit(1000)
      expect(account.balance).to eq(1000.00)
    end

    it "allows to deposit money on the account more than once" do
      3.times { account.make_deposit(1000) }
      expect(account.balance).to eq(3000.00)
    end
  end

  describe ".make_withdrawal" do
    it "allows to withdraw money from the account" do
      account.make_deposit(1000)
      account.make_withdrawal(500)
      expect(account.balance).to eq(500.00)
    end

    it "allows to withdraw money from the account more than once" do
      account.make_deposit(1000)
      3.times { account.make_withdrawal(500) }
      expect(account.balance).to eq(-500.00)
    end
  end
end
