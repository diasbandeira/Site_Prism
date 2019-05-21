After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        tirar_foto(scenario_name.downcase!, 'Cenario_com_falha')
    else
        tirar_foto(scenario_name.downcase!, 'Cenario_com_sucesso')
    end
end
