And(/^add "([^"]*)" product$/) do |arg|
  find("#listingUl > .NewItemResult:nth-of-type(#{arg}) .btnBasket").click
  $product_name= find("#listingUl > .NewItemResult:nth-of-type(#{arg}) .productName").text
end