class MyBasketPage
  def initialize
    @lbl_product_name = ".prodDescription"
  end

  def self.verify_product_name(product_name)
    page.should have_selector(@lbl_product_name, text: product_name)
    page.should have_text(product_name)
  end

end