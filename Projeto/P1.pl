%doenca(sintoma, medicamento, gravidez, idade, alergia)

%A- Adulto
%B- Idoso
%C- Crianca -7
%D- Crianca +7

%F- condicao falsa para utente
%V- condicao verdadeira para utente 

doenca('Dor_cabeca', 'Paracetamol', 'F', 'A', 'F','V').
doenca('Dor_cabeca', 'Paracetamol', 'F', 'A', 'T','').
doenca('Dor_cabeca', 'Paracetamol', 'T', 'A', 'F','').
doenca('Dor_cabeca', 'Paracetamol', 'F', 'B', 'F','').
doenca('Dor_cabeca', 'Paracetamol', 'T', 'C','F','').
doenca('Dor_cabeca', 'Paracetamol', 'T', 'D','F').
doenca('Dor_garganta', 'Paracetamol', 'T', 'B', 'F').
doenca('Dor_garganta', 'Epiniferina', 'F', 'B', 'T').
doenca('Dor_muscular', 'Ibuprofeno', 'F', 'B', 'F').
doenca('Dor_muscular', 'Ibuprofeno', 'T', 'B', 'F').
doenca('Dor_articulacoes', 'Voltaren', 'F', 'B', 'F').
doenca('Dor_articulacoes', 'Nurofen', 'F', 'A', 'F').
doenca('Dor_costas', 'Voltaren', 'F', 'B', 'F').
doenca('Dor_costas', 'Compressas', 'F', 'B', 'T').
doenca('Dor_costas', 'Paracetamol', 'T', 'B', 'F').
doenca('Febre', ['Paracetamol', 'Benuron'], 'F', 'B', 'F').
doenca('Febre', 'Brufen', 'F', 'A', 'F').
doenca('Tosse', 'Dextrometorfano', 'F', 'B', 'F').
doenca('Tosse', 'Bisolvon', 'F', 'A', 'F').

membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).


verdoenca(Sintoma, Medicamentos) :-
    findall(Medicamento, doenca(Sintoma, Medicamento, _, _, _), Medicamentos).


