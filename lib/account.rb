require_relative "printer.rb"

class Account

  attr_reader :balance, :transaction, :transactions, :statement_header, :balance_header

  def initialize
    @transactions = []
    @balance = 0
    @transaction = []
    @statement_header = "date || credit || debit || balance"
    @balance_header = "Current Balance: "
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
    @transactions.reverse!
    puts @statement_header
    @transactions.each do |transaction|
      puts transaction[0].strftime("%d/%m/%Y") + " || " + transaction[1].to_s + " || " + transaction[2].to_s + " || " + transaction[3].to_s
    end
  end

end
