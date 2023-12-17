When 'click register register' do 
    sleep 5
    @app.main_page.btn_regist.send_keys :click
    
end

Then 'user successfully do register' do 
    expect(current_url.include?('/register')).to eql true
    @app.register_page.has_result_register?(wait: 5)
    @app.register_page.has_google_login?
    @app.input_regist.send_keys('081325767159')
    sleep 5
    @app.register_page.daftar_able.send_keys :click
    @app.register_page.has_popup_modal?(wait: 5)
    @app.register_page.confirm_yes.send_keys :click
    @app.register_page.wait_until_btn_another_method_visible(wait: 5)
    @app.register.btn_verif.click
end