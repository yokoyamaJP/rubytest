class TaxMan
  def update(changed_employee)
    puts <<-EOS
#{changed_employee.name}"に新しい税金の請求書を送ります
    EOS
  end
end
