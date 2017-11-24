require "./printer.rb"
require "./adapter.rb"

printer = Printer.new(Adapter.new("Hello"))
printer.print_weak

printer.print_strong
