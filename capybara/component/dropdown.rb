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

visit N11_URL + N11_REGISTER
find(".btnBlack.close").click

# Component - Dropdown-1 - Birthday



# Component - Verify - Birthday Selected



# Component - Dropdown-2 - Select Birth Month



# Component - Verify - Birth Month Selected



# Component - Dropdown-3 - Select Birth Year



# Component - Verify - Birth Year Selected

