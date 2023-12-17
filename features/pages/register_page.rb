class RegisterPage < SitePrism::Page
    element :result_register, 'div[class ="box__desc"]'
    element :google_login, 'button[data-testid="google-login"]'
    element :input_regist, 'input[data-unify="TextField"]'
    element :daftar_able, 'button[data-testid="phone-email-submit"]'
    element :popup_modal, 'div[data-unify="Dialog"]'
    element :modal_confirm 'h5.css-xvn0u1-unf-heading.e1qvo2ff5'
    element :confirm_yes 'button[data-testid="confirmation-primary-button"]'
    element :btn_another_method 'button[class="css-1vl9k1s"]'
    element :btn_verif 'div[data-unify="Card"]'
end 