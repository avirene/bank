class TransactionLog
  
  attr_reader :transactions, :credit

  def initialize
    @transactions = []
    @transaction = []
  end

  def log_deposit(account)
    @transaction << Time.new << " " << "%0.2f" % [account.credit] << "%0.2f" % [account.balance]
    @transactions << @transaction
    @transaction = []
  end

  def log_withdrawal(account)
    @transaction << Time.new << "%0.2f" % [account.debit] << " " << "%0.2f" % [account.balance]
    @transactions << @transaction
    @transaction = []
  end
end