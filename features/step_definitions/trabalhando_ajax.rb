Quando("clico botao ajax") do
    @pagina = PageAjax.new
    @pagina.load
    @pagina.clicar_botao
end
  
Então("verifico se o texto eh exibido") do
    @pagina.wait_until_mensagem_visible
    expect(@pagina.mensagem.text).to eql 'Você Clicou no Botão!'
end