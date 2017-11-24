require "./report.rb"

report = Report.new(&HTML_FORMATTER)
report.output_report

report.formatter = PLANE_TEXT_FORMATTER
report.output_report
