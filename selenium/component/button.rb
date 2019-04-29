require 'selenium-webdriver'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

wait = Selenium::WebDriver::Wait.new(timeout: WAIT_TIME)

driver.navigate.to BASE_URL + BUTTON_PATH

# Component - Button-1 Click "Button 1" and verify text


# Component - Button-2 Click "Button 2" and verify text


# Component - Button-3 Click "Button 3" and verify text
