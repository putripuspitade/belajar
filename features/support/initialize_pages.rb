class InitializePages
    def main_page 
        @main_page ||= MainPage.new
    end

    def promo_page 
        @promo_page ||= PromoPage.new
    end
    
    def register 
        @register_page ||= RegisterPage.new
    end 

    def search
        @search_page ||= SearchPage.new
    end
end