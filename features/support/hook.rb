Before do |scenario|
    @app = InitializePages.new
    Capybara.app_host = 'https://www.tokopedia.com'
    page.driver.browser.manage.window.resize_to(1440, 877)
    #visit 'https://www.tokopedia.com'
end 

After do |scenario|
end


