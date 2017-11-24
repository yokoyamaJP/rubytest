require "./bank_account.rb"
require "./virtual_account_proxy.rb"


proxy = VirtualAccountProxy.new(100)
#=> VirtualAccountPoxyを生成しました。BankAccountはまだ生成していません。
puts proxy.announce
#=> Virtual Account Proxyが担当するアナウンスです
puts proxy.deposit(50)
#=> BankAccountを生成しました
#=> 150
puts proxy.withdraw(10)
#=> 140
