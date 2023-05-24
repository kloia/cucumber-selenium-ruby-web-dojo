
Before(tag="not @kep") do |scenario|
  puts "Scenario has been started #{scenario.name}"
end

Before(tag="@kep") do |scenario|
  puts "Scenario has been finished #{scenario}"
end

After do |scenario|
  puts "Scenario has been finished #{scenario.name}"
end
