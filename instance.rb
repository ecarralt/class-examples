class BankAccount

  def initialize
    puts "I am being initialized"
    @account_balance = 0
  end

  def deposit_hundo
    @account_balance += 100
  end

  def balance
    return @account_balance
  end
end

account = BankAccount.new
puts "Account Balance: #{account.balance}"
account.deposit_hundo
account.deposit_hundo
puts "Account Balance: #{account.balance}"
