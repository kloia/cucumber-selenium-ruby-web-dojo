require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to SELENIUM_DEV_URL + DRAG_AND_DROP_PATH

# Component - Drag & Drop

# Companent - Print Dropped Text



