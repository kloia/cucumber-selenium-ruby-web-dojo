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

visit N11_REGISTER
find(".btnBlack.close").click

# Component - Dropdown-1 - Birthday

date = Date.today
bday= date.to_s.split("-")[2]
select bday, from: "birthDay"

# Component - Verify - Birthday Selected

page.should have_select("birthDay", selected: bday)
# Component - Dropdown-2 - Select Birth Month

select "10", from: "birthMonth"
# Component - Verify - Birth Month Selected
page.should have_select("birthMonth", selected: "10")

date = Date.today
puts date.strftime("%d/%m/%Y")
puts date.strftime("%d/%m/%Y").split("/")[0]
# Component - Dropdown-3 - Select Birth Year

# Component - Verify - Birth Year Selected

