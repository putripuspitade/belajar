class MainPage < SitePrism::Page
    set_url '/discovery/deals'
    element :war_diskon, '//*[@id="divComp#13"]/div/div/div/div[1]/div/div/div/div/div/div/div/div/button[1]/p'
end 