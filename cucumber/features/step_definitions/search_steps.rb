When(/^search "([^"]*)"$/) do |arg|
  $search_data = arg
  fill_in "searchData", with: arg
  find(".searchBtn").click
end