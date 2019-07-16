require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"

Capybara.register_driver :chrome do |app|
   Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome
Capybara.default_max_wait_time = 20
Capybara.javascript_driver = :webkit
