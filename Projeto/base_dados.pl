%doenca(doenca, medicamento, gravidez, idade, alergia)

%A- Adulto
%B- Idoso
%C- Crianca -7
%D- Crianca +7

%nao gravida- condicao falsa para utente
%V- condicao verdadeira para utente 

doenca('Dor_cabeca', ['Paracetamol','Nurofen','Nurofen xarope','Cha calmante'], naogravida ,adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol xarope','Cha calmante','Nurofen xarope'], naogravida, adulto, nalergia,xarope).
doenca('Dor_cabeca', ['Nurofen','Nurofen xarope','Cha calmante'], naogravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Nurofen xarope','Cha calmante'], naogravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol','Cha calmante'], gravida, adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Consultar medico'], gravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol xarope','Cha calmante'], gravida, adulto,nalergia,xarope).
doenca('Dor_cabeca', ['Nurofen xarope','Consultar medico'], gravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Nurofen xarope'], naogravida, crianca,nalergia,xarope).
doenca('Dor_cabeca', ['Consultar medico'], naogravida, crianca,alergia,xarope).


doenca('Dor_garganta', ['Paracetamol','Paracetamol xarope','Strepsils','Epiniferina'],naogravida, adulto,nalergia,comprimido).
doenca('Dor_garganta', ['Paracetamol xarope','Strepsils','Epiniferina'],naogravida, adulto,nalergia,xarope).
doenca('Dor_garganta', ['Consultar medico','Strepsils'],naogravida, adulto,alergia,xarope).
doenca('Dor_garganta', ['Strepsils'],naogravida, adulto,alergia,comprimido).
doenca('Dor_garganta', ['Paracetamol','Paracetamol xarope'],gravida, adulto,nalergia,comprimido).
doenca('Dor_garganta', ['Consultar medico'],gravida, adulto,alergia,comprimido).
doenca('Dor_garganta', ['Consultar medico','Strepsils'],gravida, adulto,alergia,xarope).
doenca('Dor_garganta', ['Paracetamol xarope','Strepsils'],gravida, adulto,nalergia,xarope).
doenca('Dor_garganta', 'Epiniferina', naogravida, crianca, nalergia,xarope).
doenca('Dor_garganta', 'Epiniferina', naogravida, crianca, alergia,xarope).


sintoma('Dor_muscular', ['Ibuprofeno','Nurofen'], naogravida, adulto, nalergia,comprimido).
sintoma('Dor_muscular', ['Nurofen','compressas'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_muscular', ['Consultar medico','compressas'], naogravida, adulto, alergia,comprimido).
sintoma('Dor_muscular', ['Nurofen','compressas'], naogravida, adulto, alergia,xarope).
sintoma('Dor_muscular', ['Consultar medico','compressas'], gravida, adulto, nalergia,comprimido).
sintoma('Dor_muscular', ['Consultar medico','compressas'], gravida, adulto, nalergia,xarope).
sintoma('Dor_muscular', ['Consultar medico','compressas'], gravida, adulto, alergia,comprimido).
sintoma('Dor_muscular', ['Consultar medico','compressas'], gravida, adulto, alergia,xarope).
sintoma('Dor_muscular', ['Consultar medico'], naogravida, crianca, alergia,xarope).
sintoma('Dor_muscular', ['Nurofen','Consultar medico'], naogravida, crianca, nalergia,xarope).


sintoma('Dor_articulacoes', ['Paracetamol','Nurofen'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_articulacoes', ['Paracetamol','Nurofen'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_articulacoes', ['Consultar medico','Voltaren'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_articulacoes', ['Consultar medico','Voltaren'], naogravida, adulto,alergia,xarope).
sintoma('Dor_articulacoes', ['Consultar medico','Voltaren'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_articulacoes', ['Consultar medico','Voltaren'], gravida, adulto,alergia,comprimido).
sintoma('Dor_articulacoes', ['Consultar medico','Voltaren'], gravida, adulto,nalergia,xarope).
sintoma('Dor_articulacoes', ['Consultar medico','Voltaren'], gravida, adulto,alergia,xarope).
sintoma('Dor_articulacoes', ['Nurofen,Voltaren'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_articulacoes', ['Consultar medico','Voltaren'], naogravida, crianca,alergia,xarope).



sintoma('Dor_costas', ['Paracetamol','Voltaren','Compressas'], naogravida ,adulto,nalergia,comprimido).
sintoma('Dor_costas', ['Paracetamol','Voltaren','Compressas'], naogravida, adulto, nalergia,xarope).
sintoma('Dor_costas', ['Voltaren','Compressas'], naogravida, adulto,alergia,comprimido).
sintoma('Dor_costas', ['Voltaren','Compressas'], naogravida, adulto,alergia,xarope).
sintoma('Dor_costas', ['Paracetamol','Voltaren','Compressas'], gravida, adulto,nalergia,comprimido).
sintoma('Dor_costas', ['Voltaren','Compressas'], gravida, adulto,alergia,comprimido).
sintoma('Dor_costas', ['Paracetamol','Voltaren','Compressas'], gravida, adulto,nalergia,xarope).
sintoma('Dor_costas', ['Consultar medico','Voltaren','Compressas'], gravida, adulto,alergia,xarope).
sintoma('Dor_costas', ['Paracetamol','Voltaren','Compressas'], naogravida, crianca,nalergia,xarope).
sintoma('Dor_costas', ['Consultar medico','Voltaren','Compressas'], naogravida, crianca,alergia,xarope).


sintoma('febre', ['Paracetamol','Brufen'], naogravida ,adulto,nalergia,comprimido).
sintoma('febre', ['Paracetamol','Brufen'], naogravida, adulto, nalergia,xarope).
sintoma('febre', ['Consultar medico'], naogravida, adulto,alergia,comprimido).
sintoma('febre', ['Consultar medico'], naogravida, adulto,alergia,xarope).
sintoma('febre', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
sintoma('febre', ['Consultar medico'], gravida, adulto,alergia,comprimido).
sintoma('febre', ['Paracetamol'], gravida, adulto,nalergia,xarope).
sintoma('febre', ['Consultar medico'], gravida, adulto,alergia,xarope).
sintoma('febre', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
sintoma('febre', ['Consultar medico'], naogravida, crianca,alergia,xarope).


doenca('Tosse', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Tosse', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Tosse', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Tosse', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Tosse', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Tosse', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Tosse', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Tosse', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Tosse', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Tosse', ['Paracetamol'], naogravida, crianca,alergia,xarope).


doenca('Congestao_nasal', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Congestao_nasal', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Congestao_nasal', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Congestao_nasal', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Congestao_nasal', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Congestao_nasal', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Congestao_nasal', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Congestao_nasal', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Congestao_nasal', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Congestao_nasal', ['Paracetamol'], naogravida, crianca,alergia,xarope).


doenca('Azia', ['Gaviscon', 'ENO Efervescente'], naogravida ,adulto,nalergia,comprimido).
doenca('Azia', ['ENO Efervescente','Bicarbonato de sodio'], naogravida, adulto, nalergia,xarope).
doenca('Azia', ['Consultar medico','Bicarbonato de sodio'], naogravida, adulto,alergia,comprimido).
doenca('Azia', ['Consultar medico'], naogravida, adulto,alergia,xarope).
doenca('Azia', ['ENO Efervescente'], gravida, adulto,nalergia,comprimido).
doenca('Azia', ['Consultar medico'], gravida, adulto,alergia,comprimido).
doenca('Azia', ['ENO Efervescente'], gravida, adulto,nalergia,xarope).
doenca('Azia', ['Consultar medico'], gravida, adulto,alergia,xarope).
doenca('Azia', ['ENO Efervescente'], naogravida, crianca,nalergia,xarope).
doenca('Azia', ['Consultar medico'], naogravida, crianca,alergia,xarope).



doenca('Nausea', ['Vomidrine', 'Consumir gengibre', 'Gurosan'], naogravida ,adulto,nalergia,comprimido).
doenca('Nausea', ['Gurosan', 'Consumir gengibre'], naogravida, adulto, nalergia,xarope).
doenca('Nausea', ['Consumir gengibre'], naogravida, adulto,alergia,comprimido).
doenca('Nausea', ['Consumir gengibre'], naogravida, adulto,alergia,xarope).
doenca('Nausea', ['Consumir gengibre', 'Consultar medico'], gravida, adulto,nalergia,comprimido).
doenca('Nausea', ['Consumir gengibre', 'Consultar medico'], gravida, adulto,alergia,comprimido).
doenca('Nausea', ['Consumir gengibre', 'Consultar medico'], gravida, adulto,nalergia,xarope).
doenca('Nausea', ['Consumir gengibre', 'Consultar medico'], gravida, adulto,alergia,xarope).
doenca('Nausea', ['Vomikids', 'Consumir gengibre'], naogravida, crianca,nalergia,xarope).
doenca('Nausea', ['Consumir gengibre'], naogravida, crianca,alergia,xarope).


doenca('Vomito', ['Vomidrine', 'Gurosan','Enjomin', 'Metoclopramida'], naogravida ,adulto,nalergia,comprimido).
doenca('Vomito', ['Gurosan'], naogravida, adulto, nalergia,xarope).
doenca('Vomito', ['Vomidrine', 'Enjomin'], naogravida, adulto,alergia,comprimido).
doenca('Vomito', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Vomito', ['Metocloropramida'], gravida, adulto,nalergia,comprimido).
doenca('Vomito', ['Consultar medico'], gravida, adulto,alergia,comprimido).
doenca('Vomito', ['Consultar medico', 'Metoclopramida'], gravida, adulto,nalergia,xarope).
doenca('Vomito', ['Consultar medico',], gravida, adulto,alergia,xarope).
doenca('Vomito', ['Vomilids' , 'Gurosan'], naogravida, crianca,nalergia,xarope).
doenca('Vomito', ['Paracetamol'], naogravida, crianca,alergia,xarope).


doenca('Diarreia', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Diarreia', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Diarreia', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Diarreia', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Diarreia', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Diarreia', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Diarreia', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Diarreia', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Diarreia', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Diarreia', ['Paracetamol'], naogravida, crianca,alergia,xarope).


doenca('Insonia', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Insonia', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Insonia', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Insonia', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Insonia', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Insonia', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Insonia', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Insonia', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Insonia', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Insonia', ['Paracetamol'], naogravida, crianca,alergia,xarope).



doenca('Ansiedade', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Ansiedade', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Ansiedade', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Ansiedade', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Ansiedade', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Ansiedade', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Ansiedade', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Ansiedade', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Ansiedade', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Ansiedade', ['Paracetamol'], naogravida, crianca,alergia,xarope).



doenca('Alergias', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Alergias', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Alergias', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Alergias', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Alergias', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Alergias', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Alergias', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Alergias', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Alergias', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Alergias', ['Paracetamol'], naogravida, crianca,alergia,xarope).




doenca('Inchaco', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Inchaco', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Inchaco', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Inchaco', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Inchaco', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Inchaco', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Inchaco', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Inchaco', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Inchaco', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Inchaco', ['Paracetamol'], naogravida, crianca,alergia,xarope).




doenca('Queimadura_leve', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Queimadura_leve', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Queimadura_leve', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Queimadura_leve', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Queimadura_leve', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Queimadura_leve', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Queimadura_leve', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Queimadura_leve', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Queimadura_leve', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Queimadura_leve', ['Paracetamol'], naogravida, crianca,alergia,xarope).




doenca('Congestao_ocular', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Congestao_ocular', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Congestao_ocular', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Congestao_ocular', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Congestao_ocular', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Congestao_ocular', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Congestao_ocular', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Congestao_ocular', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Congestao_ocular', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Congestao_ocular', ['Paracetamol'], naogravida, crianca,alergia,xarope).




doenca('Hemorroidas', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Hemorroidas', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Hemorroidas', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Hemorroidas', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Hemorroidas', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Hemorroidas', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Hemorroidas', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Hemorroidas', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Hemorroidas', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Hemorroidas', ['Paracetamol'], naogravida, crianca,alergia,xarope).




doenca('Enjoo', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Enjoo', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Enjoo', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Enjoo', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Enjoo', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Enjoo', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Enjoo', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Enjoo', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Enjoo', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Enjoo', ['Paracetamol'], naogravida, crianca,alergia,xarope).



doenca('Dor_estomago', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Dor_estomago', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Dor_estomago', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Dor_estomago', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Dor_estomago', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Dor_estomago', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Dor_estomago', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Dor_estomago', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Dor_estomago', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Dor_estomago', ['Paracetamol'], naogravida, crianca,alergia,xarope).



doenca('Picada_inseto', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Picada_inseto', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Picada_inseto', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Picada_inseto', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Picada_inseto', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Picada_inseto', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Picada_inseto', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Picada_inseto', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Picada_inseto', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Picada_inseto', ['Paracetamol'], naogravida, crianca,alergia,xarope).




doenca('Dor_menstrual', ['Buscopan','Paracetamol','Compressas quentes'], naogravida ,adulto,nalergia,comprimido).
doenca('Dor_menstrual', ['Buscopan','Paracetamol','Compressas quentes'], naogravida, adulto, nalergia,xarope).
doenca('Dor_menstrual', ['Paracetamol','Compressas quentes'], naogravida, adulto,alergia,comprimido).
doenca('Dor_menstrual', ['Paracetamol','Compressas quentes'], naogravida, adulto,alergia,xarope).




doenca('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



doenca('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).




doenca('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



doenca('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



doenca('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



doenca('Dor_cabeca', ['Paracetamol'], naogravida ,adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], gravida, adulto,alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,comprimido).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, idoso, alergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,nalergia,xarope).
doenca('Dor_cabeca', ['Paracetamol'], naogravida, crianca,alergia,xarope).



membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).


verdoenca(doenca, Medicamentos) :-
    findall(Medicamento, doenca(doenca, Medicamento, _, _, _), Medicamentos).


medicamento_para_doenca(X,Y) :-doenca(X,Y, _, _, _). %verifica se existe um Y medicamento para uma doença X