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

visit HEROKU_APP_URL + FILE_UPLOAD_PATH

# Component - File Upload

attach_file("file-upload", File.expand_path("../../resource/big-logo.png"))
#find(:id,file-upload).send_keys(File.expand_path("../../resource/big-logo.png"))
click_button("file-submit")

# Component - Verify Upload

page.should have_text("File Uploaded!")
page.should have_selector("#uploaded-files", text: "big-logo.png")
sleep 5

