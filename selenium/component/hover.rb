require 'selenium-webdriver'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to BASE_URL + HOVER_PATH

# Component - Hover-1 Hover and log text