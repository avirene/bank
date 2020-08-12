class Printer

attr_reader :statement_header, :balance_header

def initialize
  @statement_header = "date || credit || debit || balance"
  @balance_header = "Current Balance: "
end

def print_statement
  @transactions.reverse
  puts @statement_header
  @transactions.each do |transaction|
    puts transaction[1].strftime("%d/%m/%Y") + " ||" + transaction[2] + " ||" + transaction[3] + " ||" + transaction[4]
  end
end

end
