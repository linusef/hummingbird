require 'capybara'
require 'capybara/rspec'
include Capybara::DSL
Capybara.app_host = "http://localhost:5000"
Capybara.current_driver = :selenium