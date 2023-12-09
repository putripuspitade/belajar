Given("open tokopedia page") do
#@app.main_page.load
#sleep 5
end
  
Then("verify that already on main page") do

    expect (@app.main_page).to have_btn_search
    expect (@app.main_page).to have_btn_masuk
    expect (@app.main_page).to have_btn_regist
    expect (@app.main_page).to have_logo_tokped
end