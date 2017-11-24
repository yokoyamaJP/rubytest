require "./printer.rb"
require "./old_printer.rb"

text = OldPrinter.new("Hello")
def text.print_weak
  show_with_bracket
end
def text.print_strong
  show_with_asterisk
end

p = Printer.new(text)
p.print_weak
p.print_strong
