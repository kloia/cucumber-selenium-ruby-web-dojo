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
  config.app_host = BASE_URL
  config.default_max_wait_time = WAIT_TIME
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

visit BASE_URL + PRACTICE

# Component - Checkbox Example - Checkbox-1 - BMW

# Component - Verify BMW is checked

# Component - Checkbox Example - Checkbox-2 - Benz

# Component - Verify Benz is checked

# Component - Checkbox Example - Checkbox-3 - Honda

# Component - Verify Honda is checked

# Component - Checkbox Example - Uncheck - Honda

# Component - Verify Honda is unchecked



