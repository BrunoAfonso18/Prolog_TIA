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


% tempo(Origem, Destino, Tempo)
tempo(origem, paracetamol, 2).
tempo(origem, brufen, 3).
tempo(origem, aspirina, 4).
tempo(origem, anti_histaminico, 5).
tempo(origem, descanso, 2).
tempo(origem, fisioterapia, 6).
tempo(origem, cine_terapia, 8).
tempo(origem, desporto, 12).
tempo(paracetamol, fisioterapia, 6).
tempo(paracetamol, cine_terapia, 8).
tempo(paracetamol, antibiotico, 8).
tempo(paracetamol, descanso, 2).
tempo(paracetamol, destino, 6).
tempo(brufen, fisioterapia, 6).
tempo(brufen, cine_terapia, 8).
tempo(brufen, ginastica, 15).
tempo(brufen, descanso, 2).
tempo(brufen, destino, 6).
tempo(aspirina, insulina, 30).
tempo(aspirina, injeções, 3).
tempo(aspirina, inalações, 10).
tempo(aspirina, antibiotico, 8).
tempo(aspirina, destino, 30).
tempo(anti_histaminico, antibiotico, 8).
tempo(anti_histaminico, destino, 3).
tempo(descanso, cine_terapia, 8).
tempo(descanso, antibiotico, 8).
tempo(descanso, oculos, 1000).
tempo(descanso, lentes_de_contacto, 200).
tempo(descanso, ambulatorio, 20).
tempo(descanso, destino, 20).
tempo(fisioterapia, cirurgia, 3).
tempo(fisioterapia, calmante, 90).
tempo(fisioterapia, ginastica, 15).
tempo(fisioterapia, injeções, 3).
tempo(fisioterapia, soro, 20).
tempo(fisioterapia, destino, 20).
tempo(cine_terapia, calmante, 90).
tempo(cine_terapia, destino, 20).
tempo(desporto, calmante, 90).
tempo(desporto, destino, 20).
tempo(cirurgia, internamento, 3).
tempo(cirurgia, soro, 20).
tempo(cirurgia, destino, 20).
tempo(inalações, soro, 20).
tempo(insulina, antibiotico, 8).
tempo(insulina, injeções, 3).
tempo(insulina, dialise, 10).
tempo(insulina, soro, 20).
tempo(insulina, destino, 20).
tempo(antibiotico, internamento, 3).
tempo(antibiotico, destino, 3).
tempo(ginastica, ambulatorio, 20).
tempo(ginastica, destino, 20).
tempo(dieta, soro, 20).
tempo(dieta, destino, 20).
tempo(calmante, ambulatorio, 20).
tempo(calmante, destino, 20).
tempo(injeções, inalo_terapia, 6).
tempo(injeções, ambulatorio, 20).
tempo(injeções, destino, 6).
tempo(soro, ambulatorio, 20).
tempo(soro, destino, 20).

% Correspondências para facilitar a leitura e consulta
medicamento(1, origem).
medicamento(2, paracetamol).
medicamento(3, brufen).
medicamento(4, aspirina).
medicamento(5, anti_histaminico).
medicamento(6, descanso).
medicamento(7, fisioterapia).
medicamento(8, cine_terapia).
medicamento(9, desporto).
medicamento(10, cirurgia).
medicamento(11, inalações).
medicamento(12, insulina).
medicamento(13, antibiotico).
medicamento(15, ginastica).
medicamento(16, dieta).
medicamento(17, calmante).
medicamento(18, injeções).
medicamento(20, soro).
medicamento(0, destino).



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