Given('Go to the login page') do
  require "rubygems"
require "selenium-webdriver"
  @driver = Selenium::WebDriver.for :chrome
  @driver.get 'http://the-internet.herokuapp.com/login'
end

When('User typing usename:{string}') do |string|
  @username = string
  @driver.find_element(:id, 'username').send_keys(@username)
end
And('Enter password:{string}') do |string|
  @password = string
  @driver.find_element(:id, 'password').send_keys(@password)
end
And('Press login') do 
  @driver.find_element(:css, '.radius').click
end

Then ('{string} result should be listed') do |string|
  @result = string
  expect(@driver.find_element(:id, 'flash').text).to include(@result)
@driver.quit
end

When ('User typing username and password') do 
  @driver.find_element(:id,'username').send_keys('tomsmith')
  @driver.find_element(:id,'password').send_keys('SuperSecretPassword!')
  @driver.find_element(:css,'.radius').click
end
Then ('You logged into a secure area! result should be listed') do
  expect(@driver.find_element(:id,'flash').text). to include('You logged out of the secure area!')
  sleep 3
  @driver.quit
end
