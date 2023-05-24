And(/^go to my basket$/) do
  find(".myBasket").click
end

And(/^verify user icon$/) do
  page.should have_selector("a.user", text:$user[:user_icon])
end