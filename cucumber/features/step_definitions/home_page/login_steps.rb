Given(/^login with valid_user$/) do

  find("a.btnSignIn").click
  #click_link("Giriş Yap")
  fill_in "email", with: "sinemgkorkmaz@gmail.com"
  fill_in "password", with: "123456aA"
  find(:id, "loginButton").click
end