require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :firefox

driver.navigate.to BASE_URL + PRACTICE

# Component - Dropdown-1 - Select Class Example - Select by value

ele = driver.find_element(:id, "carselect").click

drop = Selenium::WebDriver::Support::Select.new(ele)
drop.select_by(:value, "honda")

sleep 5

# Component - Dropdown-2 - Select Class Example - Select by index

drop.select_by(:index, 1)
# Component - Dropdown-3 - Select Class Example - Select by text

drop.select_by(:text, "BMW")