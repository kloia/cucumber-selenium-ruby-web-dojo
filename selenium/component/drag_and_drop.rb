require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to SELENIUM_DEV_URL + DRAG_AND_DROP_PATH

# Component - Drag AND Drop
draggable = driver.find_element(id: 'draggable')
droppable = driver.find_element(id: 'droppable')
driver.action
      .drag_and_drop(draggable, droppable)
      .perform

# Companent - Print Boxes

puts driver.find_element(:id,'drop-status').text




