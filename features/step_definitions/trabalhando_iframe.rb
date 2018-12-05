Quando("preencho os campos") do
    @pagina = PaginaPadrao.new
    @pagina.load

    @pagina.preencherCampos do |iframe|
        iframe.nome.set 'Andre'
        iframe.ultimoNome.set 'Dias'
    end
end