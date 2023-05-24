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

visit N11_URL

# Component - Click Login-1

click_link("Giriş Yap")

# Component -Verify redirect page & current url

puts current_url
current_url.should == "https://www.n11.com/giris-yap"
assert_current_path("https://www.n11.com/giris-yap")
title.should == "Giriş Yap - n11.com"
puts title
assert_title("Giriş Yap - n11.com")

# Component - Navigate to the previous page

page.go_back

# Component - Verify current url
puts current_url
current_url.should == "https://www.n11.com/"
assert_current_path("https://www.n11.com/")
puts title
