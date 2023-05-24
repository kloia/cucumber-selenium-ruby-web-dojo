require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

wait = Selenium::WebDriver::Wait.new(timeout: WAIT_TIME)

driver.navigate.to BASE_URL + PRACTICE

# Component - Button Click "Open Tab"

driver.find_element(:id, 'opentab').click

#wait.until { driver.window_handles.length == 2 }
# Component - Print Page Title + Current Url

puts driver.title
puts driver.current_url

# Component - Switch to First Tab

second_window = driver.window_handle

driver.window_handles.each do |item|
  if item != second_window
    driver.switch_to.window item
    break
  end
end

# Component - Print Page Title

puts driver.title
puts driver.current_url