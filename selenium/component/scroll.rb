
require 'selenium-webdriver'
require 'webdrivers'
require_relative '../../config'

include BaseConstants

driver = Selenium::WebDriver.for :chrome

driver.navigate.to N11_URL

ele = driver.find_element(:css, ".brandsList .slick-slide:nth-of-type(2) a")
# Component - Scroll until brands

driver.action
      .scroll_to(ele)
      .perform

puts ele.attribute("title")
puts ele.attribute("href")

sleep 1
# Component - Get Second Brand Name

driver.execute_script("window.scrollTo(0,document.body.scrollHeight)")
# Component - Scroll page bottom


# Component - Verify page bottom
puts driver.find_element(:css,".socialBar h4").text

# Component - Scroll page top

driver.execute_script("window.scrollTo(0,0)")
# Component - Verify Login Button
#
sleep 2
puts driver.find_element(:css,'nav  a[href="https://www.n11.com/giyim-ayakkabi"]').attribute("title")

sleep 3