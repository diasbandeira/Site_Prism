Quando("acesso a url e listo os elementos de uma tabela") do
    @pagina = MapearListas.new
    @pagina.load
    puts @pagina.lista.size
    puts @pagina.lista[0].text
    expect(@pagina.lista.size).to eql 24
    @pagina.lista.each do |itens|
        puts itens.text
    end


end