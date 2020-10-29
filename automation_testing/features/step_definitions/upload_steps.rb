Given("go to the upload page") do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get('https://the-internet.herokuapp.com/upload')
end

When("choise and upload file") do
  @driver.find_element(:id, 'file-upload').click
  @driver.find_element(:id, 'file-upload').send_keys('C:\Users\HP\Downloads\login.jpg')
  sleep 5
  @driver.find_element(:id, 'file-submit').click
end

Then("Display message successfully") do
  expect(@driver.find_element(:css, 'h3').text).to eq('File Uploaded!')
end