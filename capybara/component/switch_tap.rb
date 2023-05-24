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

# Component - Open New Tab

open_new_window

# Component - Switch New Tab

page.driver.browser.switch_to.window(page.driver.browser.window_handles[1])

# Component - Visit https://www.n11.com/giyim-ayakkabi

visit "https://www.n11.com/giyim-ayakkabi"

# Component - Verify page title

title.should == "Giyim & Ayakkabı - Güneş Gözlüğü & Aksesuar - n11.com"

# Component - Switch First Tab

page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)

# Component - Verify first title

title.should == "n11 - Hayat Sana Gelir"
