
require "./and.rb"
require "./bigger.rb"
require "./all.rb"
require "./file_name.rb"

complex_expression1 = And.new(FileName.new('*.mp3'), FileName.new('big*'))
puts "*.mp3 and big*"
puts complex_expression1.evaluate('13_test_data')

complex_expression2 = Bigger.new(1024)
puts "bigger than 1024"
puts complex_expression2.evaluate('13_test_data')

complex_expression3 = FileName.new('*.mp3') & FileName.new('big*')
puts "*.mp3 & big*"
puts complex_expression3.evaluate('13_test_data')

complex_expression4 = All.new
puts "all"
puts complex_expression4.evaluate('13_test_data')
