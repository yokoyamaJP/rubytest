require "./numbering_writer.rb"
require "./timestamping_writer.rb"
require "./simple_writer.rb"

f = SimpleWriter.new("file1.txt")
f.extend(NumberingWriter)
f.write_line("Hello out there")
f.close
# file1.txtに以下の内容が出力される
#1 : Hello world
f = SimpleWriter.new("file2.txt")
f.extend(TimestampingWriter)
f.write_line("Hello out there")
f.close
# file2.txtに以下の内容が出力される
#2012-12-09 12:55:38 +0900 : Hello out there
# f = TimestampingWriter.new(NumberingWriter.new(SimpleWriter.new("file3.txt")))
# f.write_line("Hello out there")
# f.close
