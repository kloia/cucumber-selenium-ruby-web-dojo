require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to BASE_URL + PRACTICE

# Component - Checkbox Example - Checkbox-1 - BMW

driver.find_element(:id, "bmwcheck").click

# Component - Checkbox Example - Checkbox-2 - Benz

driver.find_element(:id, "benzcheck").click

# Component - Checkbox Example - Checkbox-2 - Honda

driver.find_element(:id, "hondacheck").click


