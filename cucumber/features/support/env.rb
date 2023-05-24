# Proje ilk ayağa kalkerken env dosyası çalışır.
# Proje içinde kullanılacak gerekli kütüphaneler, dosya yolları burada tanımlanır.
# Kullandıpımız kütüphanelerin configurasyonlarıda burada tanımlanmaktadır.
require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'webdrivers'
require 'allure-cucumber'
require 'spreadsheet'

#proje içinde kullanılacak tüm dosyaların yollarının belirtildiği yer
require_relative '../../../config'
require_relative '../../helpers/driver_helpers'
require_relative '../../../resource/user_context'
require_relative '../../config/base_config'
require_relative '../../helpers/screenshot_helper'

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
  config.default_max_wait_time = 15
end

AllureCucumber.configure do |c|
  c.results_directory = 'output/allure-results'
  c.clean_results_directory = true
  c.environment_properties = {
    env: "test",
    browser: ENV["browser"] || "chrome",
    headless: "true",
    base_url: N11_URL
  }
end