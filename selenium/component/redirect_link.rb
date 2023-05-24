require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to HEROKU_APP_URL + REDIRECT_LINK_PATH

# Component - Redirect Link-1
driver.find_element(:id, "redirect").click

redirect_text = driver.find_element(:css,"#content h3").text


puts driver.current_url

driver.navigate.back

puts driver.current_url

