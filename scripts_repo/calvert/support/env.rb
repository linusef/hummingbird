require 'capybara'
include Capybara::DSL

Capybara.app_host = 'https://calvert:intridea4calvert@dev.calvert.intridea.com'

Capybara.current_driver = :selenium

Capybara.register_driver :selenium_with_long_timeout do |app|
  client = Selenium::WebDriver::Remote::Http::Default.new
  Capybara::Driver::Selenium.new(app, :browser => :firefox, :http_client => client)
end