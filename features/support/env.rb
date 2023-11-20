require 'byebug'
require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'
require 'rspec'

options = Selenium::WebDriver::Chrome::Options.new

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome, timeout: 60, options: options)
end

Capybara.configure do |config|
    config.default_driver = :chrome
    config.default_max_wait_time = 60
end

