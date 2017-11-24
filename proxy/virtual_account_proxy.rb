class VirtualAccountProxy
  def initialize(starting_balance)
    puts "VirtualAccountProxyを生成しました。BankAccountはまだ生成していません。"
    @starting_balance = starting_balance
  end

  def balance
    subject.balance
  end

  def deposit(amount)
    subject.deposit(amount)
  end

  def withdraw(amount)
    subject.withdraw(amount)
  end

  def announce
    "VirtualAccountProxyが担当するアナウンスです"
  end

  def subject
    @subject || (@subject = BankAccount.new(@starting_balance))
  end
end
