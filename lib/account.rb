# require_relative "transaction"
class Account

  # attr_reader :balance, :transaction, :transactions, :statement_header, :balance_header

  def initialize
    @transactions = []
    @balance = 0
    @transaction = []
    # @transaction = Transaction.new
  end

  def make_deposit(credit)
    @balance += credit
    @transaction << Time.new << " " << "%0.2f" % [credit] << "%0.2f" % [@balance]
    @transactions << @transaction
    @transaction = []
  end

  def make_withdrawal(debit)
    @balance -= debit
    @transaction << Time.new << "%0.2f" % [debit] << " " << "%0.2f" % [@balance]
    @transactions << @transaction
    @transaction = []
  end

  def print_statement
    reversed_transactions = @transactions.reverse
    puts "date || credit || debit || balance"
    reversed_transactions.each do |transaction|
      puts transaction[0].strftime("%d/%m/%Y") + " || " + transaction[1].to_s + " || " + transaction[2].to_s + " || " + transaction[3].to_s
    end
  end

  def print_balance
    puts "Current Balance: £" + "%0.2f" % [@balance]
  end
end
