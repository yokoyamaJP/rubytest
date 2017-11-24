module TimestampingWriter
  def write_line(line)
    super("#{Time.new} : #{line}")
  end
end
