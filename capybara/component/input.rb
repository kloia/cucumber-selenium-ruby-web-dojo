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

visit N11_LOGIN

user_name = 'sinemgkorkmaz@gmail.com'
password = '123456aA'

# Component - Input-email

fill_in("email", with: user_name)

# Component - Input-Password

find(:id, "password").send_keys(password)

# Component - Click button-Login
find(:id, "loginButton").click

# Component - Verify Login-5
sleep 2

page.should have_selector("a.user", text:"SK", wait:5)
expect(page).to have_selector("a.user", text:"SK", wait:5)

find("a.user").text.should == "SK"
find("a.user").text.should eq("SK")

sleep 30