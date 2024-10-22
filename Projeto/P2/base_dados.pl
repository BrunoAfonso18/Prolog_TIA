%custos(Tratamento, Custo)
%custos(paracetamol, 5).
%custos(brufen, 4).
%custos(aspirina, 2).
%custos(anti_histaminico, 8).
%custos(descanso, 100).
%custos(fisioterapia, 150).
%custos(cine_terapia, 200).
%custos(desporto, 0).
%custos(cirurgia, 1200).
%custos(inalacoes, 50).
%custos(insulina, 34).
%custos(antibiotico, 25).
%custos(dieta, 0).
%custos(ginastica, 90).
%custos(internamento, 250).
%custos(dialise, 100).
%custos(calmante, 80).
%custos(injecoes, 75).
%custos(inalo_terapia, 90).
%custos(soro, 15).
%custos(oculos, 500).
%custos(lentes, 300).
%custos(ambulatorio, 800).

%custo(Origem, Destino, valor_custo)
custo(origem, paracetamol, 5).
custo(origem, brufen, 4).
custo(origem, aspirina, 2).
custo(origem, anti_histaminico, 8).
custo(origem, descanso, 100).
custo(paracetamol, descanso, 100).
custo(brufen, descanso, 100).
custo(paracetamol, fisioterapia, 150).
custo(brufen, fisioterapia, 150).
custo(fisioterapia, destino, 0).
custo(paracetamol, cine_terapia, 200).
custo(descanso, cine_terapia, 200).
custo(cine_terapia, destino, 0).
custo(brufen,desporto,0).
custo(fisioterapia,cirurgia,1200).
custo(aspirina,inalacoes,50).
custo(aspirina,insulina,34).
custo(paracetamol,antibiotico,25).
custo(aspirina,antibiotico,25).
custo(anti_histaminico,antibiotico,25).
custo(antibiotico,destino,0).
custo(aspirina,dieta,0).
custo(desporto,dieta,0).
custo(dieta,destino,0).
custo(brufen,ginastica,90).
custo(fisioterapia,ginastica,90).
custo(anti_histaminico,internamento,250).
custo(cirurgia,internamento,250).
custo(antibiotico,internamento,250).
custo(internamento,destino,0).
custo(insulina,dialise,100).
custo(dialise,destino,0).
custo(fisioterapia,calmante,80).
custo(cine_terapia,calmante,80).
custo(desporto,calmante,80).
custo(fisioterapia,injecoes,75).
custo(insulina,injecoes,75).
custo(injecoes,inalo_terapia,90).
custo(inalo_terapia,destino,0).
custo(aspirina,soro,15).
custo(cirurgia,soro,15).
custo(inalacoes,soro,15).
custo(paracetamol,oculos,500).
custo(brufen,oculos,500).
custo(aspirina,oculos,500).
custo(descanso,oculos,500).
custo(oculos,destino,0).
custo(paracetamol,lentes,300).
custo(brufen,lentes,300).
custo(aspirina,lentes,300).
custo(descanso,lentes,300).
custo(lentes,destino,0).
custo(descanso,ambulatorio,800).
custo(ginastica,ambulatorio,800).
custo(fisioterapia,ambulatorio,800).
custo(calmante,ambulatorio,800).
custo(injecoes,ambulatorio,800).
custo(soro,ambulatorio,800).
custo(ambulatorio,destino,0).


% tempo(Origem, Destino, valor_tempo)
tempo(origem, paracetamol, 2).
tempo(origem, brufen, 3).
tempo(origem, aspirina, 4).
tempo(origem, anti_histaminico, 5).
tempo(origem, descanso, 2).
tempo(paracetamol, descanso, 2).
tempo(brufen, descanso, 2).
tempo(paracetamol, fisioterapia, 6).
tempo(brufen, fisioterapia, 6).
tempo(fisioterapia, destino, 0).
tempo(paracetamol, cine_terapia, 8).
tempo(descanso, cine_terapia, 8).
tempo(cine_terapia, destino, 0).
tempo(brufen,desporto,12).
tempo(fisioterapia,cirurgia,3).
tempo(aspirina,inalacoes,10).
tempo(aspirina,insulina,30).
tempo(paracetamol,antibiotico,8).
tempo(aspirina,antibiotico,8).
tempo(anti_histaminico,antibiotico,8).
tempo(antibiotico,destino,0).
tempo(aspirina,dieta,30).
tempo(desporto,dieta,30).
tempo(dieta,destino,0).
tempo(brufen,ginastica,15).
tempo(fisioterapia,ginastica,15).
tempo(anti_histaminico,internamento,3).
tempo(cirurgia,internamento,3).
tempo(antibiotico,internamento,3).
tempo(internamento,destino,0).
tempo(insulina,dialise,10).
tempo(dialise,destino,0).
tempo(fisioterapia,calmante,90).
tempo(cine_terapia,calmante,90).
tempo(desporto,calmante,90).
tempo(fisioterapia,injecoes,3).
tempo(insulina,injecoes,3).
tempo(injecoes,inalo_terapia,6).
tempo(inalo_terapia,destino,0).
tempo(aspirina,soro,8).
tempo(cirurgia,soro,8).
tempo(inalacoes,soro,8).
tempo(paracetamol,oculos,1000).
tempo(brufen,oculos,1000).
tempo(aspirina,oculos,1000).
tempo(descanso,oculos,1000).
tempo(oculos,destino,0).
tempo(paracetamol,lentes,200).
tempo(brufen,lentes,200).
tempo(aspirina,lentes,200).
tempo(descanso,lentes,200).
tempo(lentes,destino,0).
tempo(descanso,ambulatorio,20).
tempo(ginastica,ambulatorio,20).
tempo(fisioterapia,ambulatorio,20).
tempo(calmante,ambulatorio,20).
tempo(injecoes,ambulatorio,20).
tempo(soro,ambulatorio,20).
tempo(ambulatorio,destino,0).


%Arco(origem,destino)
arco(origem, paracetamol).
arco(origem, brufen).
arco(origem, aspirina).
arco(origem, anti_histaminico).
arco(origem, descanso).
arco(paracetamol, descanso).
arco(brufen, descanso).
arco(paracetamol, fisioterapia).
arco(brufen, fisioterapia).
arco(fisioterapia, destino).
arco(paracetamol, cine_terapia).
arco(descanso, cine_terapia).
arco(cine_terapia, destino).
arco(brufen,desporto).
arco(fisioterapia,cirugia).
arco(aspirina,inalacoes).
arco(aspirina,insulina).
arco(paracetamol,antibiotico).
arco(aspirina,antibiotica).
arco(anti_histaminico,antibiotico).
arco(antibiotico,destino).
arco(aspirina,dieta).
arco(desporto,dieta).
arco(dieta,destino).
arco(brufen,ginastica).
arco(fisioterapia,ginastica).
arco(anti_histaminico,internamento).
arco(cirurgia,internamento).
arco(antibiotico,internamento).
arco(internamento,destino).
arco(insulina,dialise).
arco(dialise,destino).
arco(fisioterapia,calmante).
arco(cine_terapia,calmante).
arco(desporto,calmante).
arco(fisioterapia,injecoes).
arco(insulina,injecoes).
arco(injecoes,inalo_terapia).
arco(inalo_terapia,destino).
arco(aspirina,soro).
arco(cirurgia,soro).
arco(inalacoes,soro).
arco(paracetamol,oculos).
arco(brufen,oculos).
arco(aspirina,oculos).
arco(descanso,oculos).
arco(oculos,destino).
arco(paracetamol,lentes).
arco(brufen,lentes).
arco(aspirina,lentes).
arco(descanso,lentes).
arco(lentes,destino).
arco(descanso,ambulatorio).
arco(ginastica,ambulatorio).
arco(fisioterapia,ambulatorio).
arco(calmante,ambulatorio).
arco(injecoes,ambulatorio).
arco(soro,ambulatorio).
arco(ambulatorio,destino).


% Correspondências
%medicamento(2, paracetamol).
%medicamento(1, origem).
%medicamento(3, brufen).
%medicamento(4, aspirina).
%medicamento(5, anti_histaminico).
%medicamento(6, descanso).
%medicamento(7, fisioterapia).
%medicamento(8, cine_terapia).
%medicamento(9, desporto).
%medicamento(10, cirurgia).
%medicamento(11, inalacoes).
%medicamento(12, insulina).
%medicamento(13, antibiotico).
%medicamento(15, ginastica).
%medicamento(16, dieta).
%medicamento(17, calmante).
%medicamento(18, injecoes).
%medicamento(20, soro).
%medicamento(0, destino).