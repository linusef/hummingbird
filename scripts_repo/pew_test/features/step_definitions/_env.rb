#require 'cucumber'
require 'capybara'
#require 'rspec'
require 'capybara/rspec'
# require 'capybara/accessible'
# https://github.com/Casecommons/capybara-accessible
include Capybara::DSL

Capybara.app_host = 'http://pewgrf:robinson@dev1.pewresearch.org'

#Capybara.default_driver = :accessible
#Capybara.javascript_driver = :accessible

Capybara.current_driver = :selenium

Capybara.register_driver :selenium_with_long_timeout do |app|
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.timeout = 240
  Capybara::Driver::Selenium.new(app, :browser => :firefox, :http_client => client)
end

#Capybara.current_session.driver.browser.manage.window.resize_to(1280, 768)