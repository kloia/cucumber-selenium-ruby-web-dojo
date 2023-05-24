require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to BASE_URL + PRACTICE

# Component - Hover-1 Hover and print name

ele = driver.find_element(:id, 'mousehover')

driver.action
     .move_to(ele)
     .perform

top_element = driver.find_element(:xpath, '//a[@href="#top"]')

puts top_element.text
top_element.click
sleep 5
