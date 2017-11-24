require "etc"

class BankAccountProxy
  def initialize(real_object, owner_name)
    @real_object = real_object
    @owner_name = owner_name
  end

  def balance
    check_access
    @real_object.balance
  end

  # 出金
  def deposit(amount)
    check_access
    @real_object.deposit(amount)
  end

  # 入金
  def withdraw(amount)
    check_access
    @real_object.withdraw(amount)
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{@owner_name} cannot access account."
    end
  end
end
