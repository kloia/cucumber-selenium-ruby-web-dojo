require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'webdrivers'
require_relative '../../config'

include BaseConstants
include Capybara::DSL
include RSpec::Matchers

RSpec.configure do |config|
  config.include Capybara::DSL, type: :feature
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_selector = :css
  config.app_host = N11_URL
  config.default_max_wait_time = WAIT_TIME
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

visit N11_URL + N11_LOGIN

user_name = 'sinemgkorkmaz@gmail.com'
password = '123456aA'

# Component - Login

fill_in("email", with: user_name)

find(:id, "password").send_keys(password)

find(:id, "loginButton").click

# Component - Hover - Account Icon

find("a.user").hover

# Component - Click button-Logout

click_link("Çıkış Yap")

# Component - Verify Logout-5

page.should have_selector(".btnSignIn", text: "Giriş Yap")
page.should have_text("Giriş Yap")

sleep 5