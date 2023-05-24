
#Before methodu her senaryo çalışmadan önce çalışır.
Before(tag = "not @kep") do |scenario|
  puts "Scenario has been started #{scenario.name}"
  DriverHelper.get_driver
  page.driver.browser.manage.window.maximize
end

Before(tag = "@kep") do |scenario|
  puts "Scenario has been finished #{scenario}"
end

#Burası her senaryo çalışmadan önce çalışır
After do |scenario|
  begin
    scenario_name = scenario.name.gsub(/[^A-Za-z0-9 ]/, "").gsub(/\s+/, "_")
    puts "Scenario has been finished #{scenario.name}"
    if scenario.failed?
      ScreenshotHelper.take_screenshot(scenario_name)
    end
    Capybara.current_session.driver.quit
  rescue Exception => exception
    puts exception
    Capybara.current_session.driver.quit
  end
end
