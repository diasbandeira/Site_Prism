Quando("clico no elemento da sessao") do
    @paginaS = Pagina.new
    @paginaS.load
    
    @paginaS.navBar.youtube.click
    @paginaS.load

    @paginaS.navBar.medium.click
end