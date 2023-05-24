Given(/^login with (valid|admin|standart)$/) do |user_type|
  $user = USER[user_type.to_sym]
  $user = USER[user_type.to_sym]
  find("a.btnSignIn").click
  #click_link("Giriş Yap")
  fill_in "email", with:  $user[:username]
  fill_in "password", with:  $user[:password]
  find(:id, "loginButton").click
end