require 'csv'

contents = CSV.open "./db/ngreports.csv", headers: true, header_converters: :symbol

contents.each do |row|
  title = row[:report_title]
  type = row[:type]
  name = row[:field_name]

  report = Report.create(report_title: title, field_type: type, field_name: name)
  report.save
end
