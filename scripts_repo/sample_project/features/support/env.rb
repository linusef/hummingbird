require 'capybara'
include Capybara::DSL
Capybara.run_server = false
Capybara.current_driver = :selenium
page.driver.browser.manage.window.resize_to(1280, 768)

# Capybara.register_driver :selenium do |app|
#  Capybara::Selenium::Driver.new(app, :browser => :chrome )
# end


# Hook

Before do
end

After do
end

at_exit do
end