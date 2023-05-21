require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for(:chrome)

first_name = 'Kloia'

driver.navigate.to BASE_URL + INPUT_PATH

# Component - First Name

# Component - Last Name

# Component - Email Address

# Component - Password

# Component - Confirm Password