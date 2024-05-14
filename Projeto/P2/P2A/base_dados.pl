%custos(Tratamento, Custo)
custos(paracetamol, 5).
custos(brufen, 4).
custos(aspirina, 2).
custos(anti_histaminico, 8).
custos(descanso, 100).
custos(fisioterapia, 150).
custos(cine_terapia, 200).
custos(desporto, 0).
custos(cirurgia, 1200).
custos(inalacoes, 50).
custos(insulina, 34).
custos(antibiotico, 25).
custos(dieta, 0).
custos(ginastica, 90).
custos(internamento, 250).
custos(dialise, 100).
custos(calmante, 80).
custos(injecoes, 75).
custos(inalo_terapia, 90).
custos(soro, 15).
custos(oculos, 500).
custos(lentes_contacto, 300).
custos(ambulatorio, 800).


%tempo(Origem, Destino, Tempo)
tempo(inicio, anti_histaminico, 5).
tempo(anti_histaminico, antibiotico, 8).
tempo(braga, povoa_varzim, 55).
tempo(braga, aveiro, 100).
tempo(braga, guimaraes, 25).
tempo(viana_castelo, esposende, 25).
tempo(viana_castelo, guimaraes, 75).
tempo(esposende, povoa_varzim, 15).
tempo(esposende, porto, 50).
tempo(guimaraes, penafiel, 40).
tempo(povoa_varzim, porto, 30).
tempo(penafiel, porto, 20).
tempo(aveiro, porto, 25).

%arco(Origem, Destino)
arco(braga, viana_castelo).
arco(braga, esposende).
arco(braga, povoa_varzim).
arco(braga, aveiro).
arco(braga, guimaraes).
arco(viana_castelo, esposende).
arco(viana_castelo, guimaraes).
arco(esposende, povoa_varzim).
arco(esposende, porto).
arco(guimaraes, penafiel).
arco(povoa_varzim, porto).
arco(penafiel, porto).
arco(aveiro, porto).