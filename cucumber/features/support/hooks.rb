Before(tag = "not @kep") do |scenario|
  puts "Scenario has been started #{scenario.name}"
  DriverHelper.get_driver
end

Before(tag = "@kep") do |scenario|
  puts "Scenario has been finished #{scenario}"
end

After do |scenario|
  puts "Scenario has been finished #{scenario.name}"
  if scenario.failed?
    ScreenshotHelper.take_screenshot(scenario.name)
  end
end
