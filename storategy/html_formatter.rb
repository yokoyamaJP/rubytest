require "./formatter.rb"

class HTMLFormatter < Formatter
  def output_report(report)
    puts "<html><head><title>#{report.title}</title></head><body>"
    report.text.each { |line| puts "<p>#{line}</p>" }
    puts '</body></html>'
  end
end
