require 'selenium-webdriver'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to BASE_URL + DROPDOWN_PATH

# Component - Dropdown-1


# Component - Dropdown-2


# Component - Dropdown-3


# Component - Dropdown-4