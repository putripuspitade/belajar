Before do |scenario|
    @app = InitializePages.new
    Capybara.app_host = 'https://www.tokopedia.com'
    page.driver.browser.manage.window.resize_to(1440, 877)
    #visit 'https://www.tokopedia.com'
end 

After do |scenario|
    byebug
    if scenario.failed?
        Capybara.using_session_with_screenshot(Capybara.session_name.to_s) do
        end
    end
end


