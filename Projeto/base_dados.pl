%sintoma(sintoma, medicamento, gravidez, idade, alergia)

%A- Adulto
%B- Idoso
%C- Crianca -7
%D- Crianca +7

%nao gravida- condicao falsa para utente
%V- condicao verdadeira para utente 

sintoma('Dor_cabeca', ['Paracetamol','Nurofen','Nurofen xarope','Cha calmante'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol xarope','Cha calmante','Nurofen xarope'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Nurofen','Nurofen xarope','Cha calmante'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Nurofen xarope','Cha calmante'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol','Cha calmante'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Consultar medico'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol xarope','Cha calmante'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Nurofen xarope','Consultar medico'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Nurofen xarope'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Consultar medico'], naogravida, crianca,alergia,xarope).


sintoma('Dor_garganta', ['Paracetamol','Paracetamol xarope','Strepsils','Epiniferina'],naogravida, adulto,nalergia,comprimido).
sintoma('Dor_garganta', ['Paracetamol xarope','Strepsils','Epiniferina'],naogravida, adulto,nalergia,xarope).
sintoma('Dor_garganta', ['Consultar medico','Strepsils'],naogravida, adulto,alergia,xarope).
sintoma('Dor_garganta', ['Strepsils'],naogravida, adulto,alergia,comprimido).
sintoma('Dor_garganta', ['Paracetamol','Paracetamol xarope'],gravida, adulto,nalergia,comprimido).
sintoma('Dor_garganta', ['Consultar medico'],gravida, adulto,alergia,comprimido).
sintoma('Dor_garganta', ['Consultar medico','Strepsils'],gravida, adulto,alergia,xarope).
sintoma('Dor_garganta', ['Paracetamol xarope','Strepsils'],gravida, adulto,nalergia,xarope).
sintoma('Dor_garganta', 'Epiniferina', naogravida, crianca, nalergia,xarope).
sintoma('Dor_garganta', 'Epiniferina', naogravida, crianca, alergia,xarope).


sintoma('Dor_muscular', ['Ibuprofeno'], naogravida, adulto, nalergia,comprimido).
sintoma('Dor_muscular', ['Ibuprofeno'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_muscular', ['Ibuprofeno'], naogravida, adulto, alergia,comprimido).
sintoma('Dor_muscular', ['Ibuprofeno'], naogravida, adulto, alergia,xarope).
sintoma('Dor_muscular', ['Ibuprofeno'], gravida, adulto, nalergia,comprimido).
sintoma('Dor_muscular', ['Ibuprofeno'], gravida, adulto, nalergia,xarope).
sintoma('Dor_muscular', ['Ibuprofeno'], gravida, adulto, alergia,comprimido).
sintoma('Dor_muscular', ['Ibuprofeno'], gravida, adulto, alergia,xarope).
sintoma('Dor_muscular', ['Ibuprofeno'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_muscular', ['Ibuprofeno'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_muscular', ['Ibuprofeno'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_muscular', ['Ibuprofeno'], naogravida, idoso, alergia,xarope).
sintoma('Dor_muscular', ['Ibuprofeno'], naogravida, crianca, alergia,xarope).
sintoma('Dor_muscular', ['Ibuprofeno'], naogravida, crianca, nalergia,xarope).

sintoma('Dor_articulacoes', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_articulacoes', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_articulacoes', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_articulacoes', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_articulacoes', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_articulacoes', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_articulacoes', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_articulacoes', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_articulacoes', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_articulacoes', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_articulacoes', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_articulacoes', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_articulacoes', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_articulacoes', ['Paracetamol'], naogravida, crianca,alergia,xarope).


sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).


sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).


sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).


sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).


sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).


sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).


sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).


sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).




sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).




sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).




sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).




sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).




sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).




sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).




sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



sintoma('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).


verdoenca(Sintoma, Medicamentos) :-
    findall(Medicamento, sintoma(Sintoma, Medicamento, _, _, _), Medicamentos).


medicamento_para_doenca(X,Y) :-sintoma(X,Y, _, _, _). %verifica se existe um Y medicamento para uma doença X