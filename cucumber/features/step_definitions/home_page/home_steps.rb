home_page = HomePage.new
And(/^go to my basket$/) do
  home_page.click_basket
end

And(/^verify user icon$/) do
  home_page.verify_user_icon
end
