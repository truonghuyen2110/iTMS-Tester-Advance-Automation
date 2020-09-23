require'selenium-webdriver'
#1. Launch browser of your choice say., Firefox, chrome etc
driver = Selenium::WebDriver.for:chrome
#2. Open this URL - https://www.google.com/
driver.get'https://www.google.com/'
#3. Maximize or set size of browser window.
driver.manage.window.maximize
puts driver.manage.window.size
#4. Search with ‘iTMS Coaching’ word
#search= driver.find_element(xpath:"//input[@name='q']")
search = driver.find_element(name:'q')
search.send_keys("iTMS Coaching")
sleep 3
#5. Get Page title and print it.
puts driver.title
#6. Close browser.
driver.close
