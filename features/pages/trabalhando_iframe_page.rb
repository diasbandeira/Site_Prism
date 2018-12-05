class PaginaIframe < SitePrism::Page
    element :nome, '#first_name'
    element :ultimoNome, '#last_name' 
end

class PaginaPadrao < SitePrism::Page
    set_url '/mudancadefoco/iframe'
    iframe :preencherCampos, PaginaIframe, '#id_do_iframe'
end