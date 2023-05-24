require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'webdrivers'
require 'allure-cucumber'
require 'spreadsheet'

#proje dosyaları
require_relative '../../../config'
require_relative '../../../url_constants'
require_relative '../../helpers/DriverHelper'
require_relative '../../../resource/context'
#require_relative '../../helpers/screenshots_helper'

include BaseConstants
include UrlConstants
include Capybara::DSL
include RSpec::Matchers

RSpec.configure do |config|
  config.include Capybara::DSL, type: :feature
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_selector = :css
  config.app_host = BASE_URL
  config.default_max_wait_time = 10
end

AllureCucumber.configure do |c|
  c.results_directory = 'output/allure-results'
  c.clean_results_directory = true
  c.environment_properties = {
    env: "test",
    browser: ENV["browser"] || "chrome",
    headless: "true",
    base_url: BASE_URL
  }
end