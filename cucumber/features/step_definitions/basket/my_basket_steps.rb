my_basket_page = MyBasketPage.new
Then(/^verify my basket$/) do
  my_basket_page.verify_product_name($product_name)
end