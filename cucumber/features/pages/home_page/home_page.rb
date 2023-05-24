class HomePage
  def initialize
    @lbl_user_icon = "a.user"
    @btn_basket = ".myBasket"
  end

  def verify_user_icon
    page.should have_selector(@lbl_user_icon, text: $user[:user_icon])
  end

  def click_basket
    find(@btn_basket).click
  end

end
