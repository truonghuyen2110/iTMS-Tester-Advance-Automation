require 'selenium-webdriver'
driver =Selenium::WebDriver.for:chrome
driver.get'https://www.google.com'
# get initial window size
# puts driver.manage.window.size
# set window size using Dimension struct
#target_size = Selenium::WebDriver::Dimension.new(1024, 768)
#driver.manage.window.size = target_size
#puts driver.manage.window.size
# resize window
#driver.manage.window.resize_to(480, 320)
# puts driver.manage.window.size
# maximize window
driver.manage.window.maximize
puts driver.manage.window.size
sleep 3
driver.quit