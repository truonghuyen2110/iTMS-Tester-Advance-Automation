require'selenium-webdriver'
#khoi dong trinh duyet
driver = Selenium::WebDriver.for:chrome
#mo url google
driver.get'https://www.google.com/'
#toi da hoa cua so trinh duyet
driver.manage.window.maximize
puts driver.manage.window.size
#lay url cua trinh duyet va in 
puts driver.current_url
sleep 3
#chot duyet
driver.quit