Given("open tokopedia page") do
#@app.main_page.load
#sleep 5
end
  
Then("verify that already on main page") do

    expect (@app.main_page).to have_btn_search
end