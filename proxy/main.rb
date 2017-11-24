require "./bank_account.rb"
require "./bank_account_proxy.rb"

account = BankAccount.new(100)

proxy = BankAccountProxy.new(account, "yokoyama")
puts proxy.deposit(50)
puts proxy.withdraw(10)


account = BankAccount.new(100)

proxy = BankAccountProxy.new(account, "no_login_user")
puts proxy.deposit(50)
