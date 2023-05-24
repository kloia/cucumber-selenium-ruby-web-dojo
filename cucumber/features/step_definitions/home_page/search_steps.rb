search_page = SearchPage.new

When(/^search "([^"]*)"$/) do |search_data|
  $search_data = search_data
  search_page.search_data_on_home(search_data)
end