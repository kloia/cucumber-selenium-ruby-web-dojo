class LoginPage

  def initialize
    super
    @btn_sign_in = "a.btnSignIn"
    @txt_email = "email"
    @txt_password = "password"
    @btn_login = "loginButton"
  end

  def click_sign_in
    find(@btn_sign_in).click
  end

  def fill_email(email)
    fill_in @txt_email, with: email
  end

  def fill_password(password)
    fill_in @txt_password, with: password
  end

  def click_login_button
    find(:id, @btn_login).click
  end

  def login(email, password)
    fill_email(email)
    fill_password(password)
    click_login_button
  end



end