require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for(:chrome)

driver.manage.timeouts.implicit_wait = 50

first_name = 'Kloia'

driver.navigate.to BASE_URL + INPUT_PATH


# Component - First Name

driver.find_element(:css,"#name").send_keys(first_name)

# Component - Last Name
driver.find_element(:xpath,"//input[@id='last_name']").send_keys("sinem")

# Component - Email Address
driver.find_element(:id,"email").send_keys("sinem@gmail.com")

# Component - Password

driver.find_element(id: 'password').send_keys("123456")

# Component - Confirm Password

driver.find_element(id: 'password_confirmation').send_keys("123456")

sleep 5