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

Then(/^verify search data$/) do
  puts "#{$search_data}"
  find(".resultText  strong").text.to_i.should > 0
  page.should have_text("#{$search_data}")
  find(".resultText ").text.should start_with("#{$search_data}")
  find(".resultText ").text.should end_with("sonuç bulundu.")
end