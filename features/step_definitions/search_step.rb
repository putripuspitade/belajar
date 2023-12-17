When("user find product {string}") do |product_name|
    @app.main_page.input_search.set product_name
    @app.main_page.input_search.send_keys :enter
    @product_name =  product_name

    # note:
    # cheat sheet https://www.rubydoc.info/gems/capybara/Capybara%2FNode%2FElement:send_keys
end
  
Then("user verify the product successfully found") do
    expect(current_url.include?('/search')).to eql true
    @app.search_page.has_result_header?(wait: 1)
    
    if @app.search_page.has_notif_product_not_found?(wait: 1)
        expect(@app.search_page).to have_no_result_header
        expect(@app.search_page).to have_text('Coba kata kunci lain atau cek produk rekomendasi di bawah.')
    else
        actual_result_header = @app.search_page.result_header.text.gsub(/^\"|\"$/, "") 
        expect(actual_result_header).to eql @product_name
        expect(@app.search_page).to have_result_header
    end
end