Given(/^go to website$/) do
  visit "https://www.n11.com"
end

Then(/^verify logo is displayed$/) do
  page.should have_selector(".logo.home img[alt='hayat sana gelir']")
end

When(/^click register page$/) do
  find("a.btnSignUp").click
end

Then(/^verify register$/) do
  page.should have_text("n11'e Üye Olun")
  page.should have_selector(".facebook_large")
end

When(/^search "([^"]*)"$/) do |arg|
  $search_data = arg
  fill_in "searchData", with: arg
  find(".searchBtn").click
end

Then(/^verify search data$/) do
  puts "#{$search_data}"
  find(".resultText  strong").text.to_i.should > 0
  page.should have_text("#{$search_data}")
  find(".resultText ").text.should start_with("#{$search_data}")
  find(".resultText ").text.should end_with("sonuç bulundu.")
end