Given("open tokopedia page") do
    @app.main_page.load
    Capybara.current_session.driver.browser.execute_script "window.scrollBy(0,1000)"
    @app.main_page.wait_until_basic_layout_visible
    
    if @app.main_page.has_no_telp_pulsa?(wait: 2)
        p 'yeay input no telepon ditemukan'
    else
        p 'input no telp ga ditemuin'
    end

    # if @app.sales.has_btn_sales_revamp? # cuma ngasih balikan true/false
    #     # bikin sales di element v3
    # else
    #     # bikin sales di element v1
    # end

    # expect().to eql false

    # expect(@app.main_page.has_no_telp_pulsa?(wait: 1)).to eql true
end
    
Then("verify that already on main page") do

    expect(@app.main_page).to have_btn_search
    expect(@app.main_page).to have_btn_masuk
    expect(@app.main_page).to have_btn_regist
    expect(@app.main_page).to have_logo_tokped
end