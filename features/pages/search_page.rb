class SearchPage < SitePrism::Page
    element :result_header, 'div[data-testid="result-header-wrapper"] strong'
    elements :product_list, 'div[class *=prd_link-product-name]'
    element :btn_search, 'input[data-unify="Search"]'
    element :notif_product_not_found, 'h4[data-unify="Typography"]'
end