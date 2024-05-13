%Made_by_JoséRibeiro

%passageiros(Paragem, NumeroPassageiros)
passageiros(braga, 5).
passageiros(viana_castelo, 10).
passageiros(esposende, 3).
passageiros(povoa_varzim, 7).
passageiros(guimaraes, 24).
passageiros(penafiel, 15).
passageiros(aveiro, 40).
passageiros(porto, 0).


%percurso(Origem, Destino, DistanciaEmKm)
percurso(braga, viana_castelo, 55).
percurso(braga, esposende, 34).
percurso(braga, povoa_varzim, 55).
percurso(braga, aveiro, 100).
percurso(braga, guimaraes, 25).
percurso(viana_castelo, esposende, 25).
percurso(viana_castelo, guimaraes, 75).
percurso(esposende, povoa_varzim, 15).
percurso(esposende, porto, 50).
percurso(guimaraes, penafiel, 40).
percurso(povoa_varzim, porto, 30).
percurso(penafiel, porto, 20).
percurso(aveiro, porto, 25).

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