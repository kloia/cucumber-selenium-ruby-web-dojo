require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to HEROKU_APP_URL + REDIRECT_LINK_PATH

# Component - Click Redirect Link


# Component - Print Page Title & Url


# Component - Back


# Component - Print Url