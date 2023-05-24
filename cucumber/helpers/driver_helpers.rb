class  DriverHelper

  def self.get_driver
    browser = ENV["browser"] || "chrome"
    headless_mode = ENV["headless"] || "false"

    case browser
    when "chrome"
      options = Selenium::WebDriver::Chrome::Options.new
      options.add_argument("--headless") if headless_mode == "true"
      options.add_argument('--disable-popup-blocking')
      options.add_argument('--ignore-certificate-errors')
      options.add_argument('--disable-notifications')
      Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, browser: :chrome, options:options)
      end
    when "firefox"
      options = Selenium::WebDriver::Firefox::Options.new
      options.add_argument("--headless") if headless_mode == "true"
      Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, browser: :firefox, options:options)
      end
    end

  end
end
