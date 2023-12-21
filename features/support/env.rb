require 'byebug'
require 'capybara'
require 'capybara/cucumber'
# require 'capybara-screenshot/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/table'
require 'cucumber'
require 'capybara-screenshot/cucumber'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--disable-dev-shm-usage')
options.add_argument('--disable-gpu')
options.add_argument('--headless')

Capybara.register_driver :chrome do |app|
    options.add_argument('--user-agent=selenium')
    options.add_argument('--start-maximized')
    options.add_argument('--disable-web-security')
    options.add_argument('--disable-site-isolation-trials')
    options.add_argument('--allow-running-insecure-content')
    options.page_load_strategy = :eager
    options.add_option('goog:chromeOptions',
                     'perfLoggingPrefs' => {
                       'enableNetwork' => true
                     })
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.open_timeout = 120
    client.read_timeout = 120
    Capybara::Selenium::Driver.new(app, browser: :chrome, timeout: 60, options: options, http_client: client)
end

path = "#{Dir.pwd}/reports"
Capybara::Screenshot.register_driver :chrome do |driver, path|
    driver.browser.save_screenshot path
end
Capybara::Screenshot.autosave_on_failure = true
Capybara::Screenshot.webkit_options = {
  width: 100,
  height: 90
}
Capybara.save_path = "#{path}/screenshots"

Capybara.configure do |config|
    config.default_driver = :chrome
    config.default_max_wait_time = 120
end


