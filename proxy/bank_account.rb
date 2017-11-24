class BankAccount
  attr_reader :balance

  def initialize(balance)
    puts "BankAccountを生成しました"
    @balance = balance
  end

  # Rubyでは未定義のメソッド呼び出しが発生 => method_missingが呼び出される
  # method_missingを用いることでdeposit, withdrawを省略
  def method_missing(name, *args)
    check_access
    @real_object.send(name, *args)
  end

  # 出金
  def deposit(amount)
    @balance += amount
  end

  # 入金
  def withdraw(amount)
    @balance -= amount
  end
end
