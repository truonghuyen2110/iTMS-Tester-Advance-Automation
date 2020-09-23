require'selenium-webdriver'
#1. Launch browser of your choice say., Firefox, chrome etc.
driver = Selenium::WebDriver.for:chrome
#2. Open this URL - https://itmscoaching.herokuapp.com/form
driver.get'https://itmscoaching.herokuapp.com/form'
#3. Maximize or set size of browser window.
driver.manage.window.maximize
puts driver.manage.window.size
sleep 3
#4. Enter the form with following data:
#-First name: iTMS
first_name = driver.find_element(id:'first-name')
first_name.send_keys("iTMS")
#first_name = driver.find_element(xpath:"//input[@id='first-name']")
#-Last name: Coaching
#last_name = driver.find_element(id:'last-name')
last_name = driver.find_element(xpath:"//input[@id='last-name']")
last_name.send_keys("Coaching")
#-Job Title: QA
job_title = driver.find_element(id:'job-title')
job_title.send_keys("QA")
#-Highest level of education: College
highest_level =driver.find_element(xpath:"//div[4]//div[3]")
highest_level.click
#-Sex: Male
sex = driver.find_element(id:'checkbox-1')
sex.click
#-Year of experience: 2-4
options = driver.find_element(id:'select-menu')
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:value,"2")
#-Date: 27/10/2025
datepicker = driver.find_element(id:'datepicker')
datepicker.send_keys("27/10/2025")
#5. Click Submit
btn_submit = driver.find_element(xpath:"//a[@class='btn btn-lg btn-primary']")
btn_submit.click
sleep 3
#6. Close browser
driver.close