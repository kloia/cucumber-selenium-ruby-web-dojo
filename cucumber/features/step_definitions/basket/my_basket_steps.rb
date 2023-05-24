Then(/^verify my basket$/) do
  page.should have_selector(".prodDescription", text: $product_name)
  page.should have_text($product_name)
end