Given("go to the login page") do
    @driver = Selenium::WebDriver.for:chrome
    @driver.get'http://117.4.244.176:4200/login'
    @driver.manage.window.maximize
  end
  
  When("enter username and password") do
    @driver.find_element(:xpath, '//input[@type=\'text\']').send_keys('admin')
    @driver.find_element(:xpath, '//input[@type=\'password\']').send_keys('123456')
    @driver.find_element(:css, '.mt-1').click
    sleep 3
  end
  
  Then("display dashboard page") do
    expect(@driver.title).to eq('Trang chủ')
  end
