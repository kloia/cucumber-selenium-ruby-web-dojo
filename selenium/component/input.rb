require 'selenium-webdriver'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

input_text = 'Kloia Dojo'

driver.navigate.to BASE_URL + INPUT_PATH

# Component - Input-1


# Component - Input-2


# Component - Input-3


# Component - Input-4


# Component - Input-5