require 'selenium-webdriver'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to BASE_URL + FILE_UPLOAD_PATH

# Component - File Upload-1