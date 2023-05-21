require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

wait = Selenium::WebDriver::Wait.new(timeout: WAIT_TIME)

driver.navigate.to BASE_URL + PRACTICE

# Component - Button Click "Open Tab"


# Component - Print Page Title + Current Url


# Component - Switch to First Tab


# Component - Print Page Title
