class MainPage < SitePrism::Page
    set_url '/' #atau bisa pake visit('/')
    element :btn_search, 'input[data-unify="Search"]'
    element :loading_page, 'div[data-unify="LoaderSquare"]'
    element :btn_masuk, 'button[data-testid="btnHeaderLogin"]'
    element :btn_regist, 'button[data-testid="btnHeaderRegister"]'
    element :logo_tokped, 'a[data-testid="icnHeaderIcon"]'
    element :no_telp_pulsa, 'input[name="clientNumber"]'
    element :basic_layout, 'div[data-testid="divBasicLayout"]'
end

