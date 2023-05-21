require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to BASE_URL + PRACTICE

# Component - Dropdown-1 - Select Class Example - Select by value


# Component - Dropdown-2 - Select Class Example - Select by index


# Component - Dropdown-3 - Select Class Example - Select by text
