
When(/^verify excel data$/) do
  book = Spreadsheet.open(File.expand_path("#{Dir.pwd}/../resource/test.xlsx"))
  sheet1 = book.worksheet('Sheet1') # can use an index or worksheet name
  sheet1.each do |row|
    break if row[0].nil? # if first cell empty
    puts row.join(',') # looks like it calls "to_s" on each cell's Value
  end
end