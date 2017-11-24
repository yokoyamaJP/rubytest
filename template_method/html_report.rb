require "./report.rb"

class HTMLReport < Report
  # レポートの先頭に出力
  def output_start
    puts "<html><head><title>#{@title}</title></head><body>"
  end
  # 本文内のLINE出力部分
  def output_line(line)
    puts "<p>#{line}</p>"
  end
  # レポートの末尾に出力
  def output_end
    puts '</body></html>'
  end
end
