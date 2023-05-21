require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to BASE_URL + PRACTICE

# Component - Checkbox Example - Checkbox-1 - BMW

# Component - Checkbox Example - Checkbox-2 - Benz

# Component - Checkbox Example - Checkbox-3 - Honda

