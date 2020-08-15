class TransactionLog
  
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def log_deposit(account)
    transaction = []
    transaction << Time.new << " " << "%0.2f" % [account.credit] << "%0.2f" % [account.balance]
    @transactions << transaction
  end

  def log_withdrawal(account)
    transaction = []
    transaction << Time.new << "%0.2f" % [account.debit] << " " << "%0.2f" % [account.balance]
    @transactions << transaction
  end
end