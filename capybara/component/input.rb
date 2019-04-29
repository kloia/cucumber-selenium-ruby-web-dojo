require 'capybara'
require 'capybara/dsl'
require 'rspec'
require_relative '../../config'

include BaseConstants
include Capybara::DSL
include RSpec::Matchers

input_text = 'Kloia Dojo'

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

visit BASE_URL + INPUT_PATH

# Component - Input-1


# Component - Input-2


# Component - Input-3


# Component - Input-4


# Component - Input-5