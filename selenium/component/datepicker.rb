require 'selenium-webdriver'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

wait = Selenium::WebDriver::Wait.new(timeout: WAIT_TIME)

driver.navigate.to BASE_URL + DATE_PICKER_PATH

# Component - Datepicker-1