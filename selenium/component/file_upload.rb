require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to HEROKU_APP_URL + FILE_UPLOAD_PATH

# Component - File Upload-1


# Component - Verify File Title


