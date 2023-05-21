require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to HEROKU_APP_URL + HOVER_PATH

# Component - Hover-1 Hover and print name


# Component - Hover-2 Hover and print name


# Component - Hover-2 Hover and print name
