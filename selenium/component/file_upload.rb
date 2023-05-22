require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to HEROKU_APP_URL + FILE_UPLOAD_PATH

file_name = "big-logo.png"
# Component - File Upload-1

driver.find_element(:id, "file-upload").send_keys(File.expand_path("../../resource/#{file_name}"))
driver.find_element(:id, "file-submit").click