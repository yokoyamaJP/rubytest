require "./report.rb"

class PlaneTextReport < Report
  # レポートの先頭に出力
  def output_start
    puts "**** #{@title} ****"
  end
  # 本文内のLINE出力部分
  def output_line(line)
    puts line
  end
end
