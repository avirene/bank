require_relative "transaction_log"
class Account

  attr_reader :balance, :transaction_log, :credit, :debit

  def initialize
    @balance = 0
    @transaction_log = TransactionLog.new
  end

  def make_deposit(credit)
    @credit = credit
    @balance += credit
    @transaction_log.log_deposit(self)
  end

  def make_withdrawal(debit)
    @debit = debit
    @balance -= debit
    @transaction_log.log_withdrawal(self)
  end

  def print_statement
    reversed_transactions = @transaction_log.transactions.reverse
    puts "date || credit || debit || balance"
    reversed_transactions.each do |transaction|
      puts transaction[0].strftime("%d/%m/%Y") + " || " + transaction[1].to_s + " || " + transaction[2].to_s + " || " + transaction[3].to_s
    end
  end

  def print_balance
    puts "Current Balance: £" + "%0.2f" % [@balance]
  end
end
