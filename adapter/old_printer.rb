class OldPrinter
  def initialize(string)
    @string = string.dup
  end

  def show_with_bracket
    puts "[#{@string}]"
  end

  def show_with_asterisk
    puts "**#{@string}**"
  end
end
