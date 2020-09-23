require'selenium-webdriver'
#khoi dong trinh duyet
driver = Selenium::WebDriver.for:chrome
#mo url google
driver.get'https://www.google.com/'
#toi da hoa cua so trinh duyet
driver.manage.window.maximize
puts driver.manage.window.size
#Get Page source and print it
puts driver.page_source
sleep 3
#chot duyet
driver.quit