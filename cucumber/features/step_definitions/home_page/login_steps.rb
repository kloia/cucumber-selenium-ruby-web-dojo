login_page = LoginPage.new

Given(/^login with (valid|admin|standart)$/) do |user_type|
  $user = USER[user_type.to_sym]
  login_page.click_sign_in
  login_page.login($user[:username],$user[:password])
end