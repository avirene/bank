class Transaction
  
  tionattr_reader :transaction

  def initialize
    @transaction = []
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
end