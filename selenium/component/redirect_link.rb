require 'selenium-webdriver'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to BASE_URL + REDIRECT_LINK_PATH

# Component - Redirect Link-1


# Component - Redirect Link-2