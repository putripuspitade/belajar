require 'byebug'
require 'capybara'
require 'capybara/cucumber'
# require 'capybara-screenshot/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/table'
require 'cucumber'

options = Selenium::WebDriver::Chrome::Options.new

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome, timeout: 60, options: options)
end

Capybara.configure do |config|
    config.default_driver = :chrome
    config.default_max_wait_time = 120
end

