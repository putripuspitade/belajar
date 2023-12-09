class MainPage < SitePrism::Page
    set_url '/'
    element :btn_search, 'input[data-unify="Search"]'
    element :btn_masuk, 'button[data-testid="btnHeaderLogin"]'
    element :btn_regist, 'button[data-testid="btnHeaderRegister"]'
    element :logo_tokped, 'img[alt="tokopedia-logo"]'
end

