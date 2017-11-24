require "./portfolio.rb"
require "./account.rb"

portfolio = Portfolio.new
portfolio.add_account(Account.new("account1", 1000))
portfolio.add_account(Account.new("account2", 2000))
portfolio.add_account(Account.new("account3", 3000))
portfolio.add_account(Account.new("account4", 4000))
portfolio.add_account(Account.new("account5", 5000))

puts "portfolio.any? >3000"
puts portfolio.any? { |account| account.balance > 3000 }

puts "portfolio.all? >=2000"
puts portfolio.all? { |account| account.balance >= 2000 }
