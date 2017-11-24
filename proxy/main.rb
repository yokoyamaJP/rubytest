require "./bank_account.rb"
require "./bank_account_proxy.rb"

# ログインユーザーの場合
account = BankAccount.new(100)
# login_userの部分はこの処理を行うMac/Linuxのログイン中のユーザー名に書き換えて下さい
proxy = BankAccountProxy.new(account, "yokoyama")
puts proxy.deposit(50)
#=> 150
puts proxy.withdraw(10)
#=> 140
# ログインユーザーではない場合
account = BankAccount.new(100)
proxy = BankAccountProxy.new(account, "no_login_user")
puts proxy.deposit(50)
