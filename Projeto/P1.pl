%doenca(sintoma, medicamento, gravidez, idade, alergia)

doenca('Dor_cabeca', 'Paracetamol', 'F', 'B', 'F').
doenca('Dor_cabeca', 'Paracetamol', 'F', 'B', 'T').
doenca('Dor_cabeca', 'Paracetamol', 'T', 'B', 'F').
doenca('Dor_garganta', 'Paracetamol', 'T', 'B', 'F').
doenca('Dor_garganta', 'Epiniferina', 'F', 'B', 'T').
doenca('Dor_muscular', 'Ibuprofeno', 'F', 'B', 'F').
doenca('Dor_muscular', 'Ibuprofeno', 'T', 'B', 'F').
doenca('Dor_articulacoes', 'Voltaren', 'F', 'B', 'F').
doenca('Dor_articulacoes', 'Nurofen', 'F', 'A', 'F').
doenca('Dor_costas', 'Voltaren', 'F', 'B', 'F').
doenca('Dor_costas', 'Compressas', 'F', 'B', 'T').
doenca('Dor_costas', 'Paracetamol', 'T', 'B', 'F').
doenca('Febre', 'Paracetamol', 'F', 'B', 'F').
doenca('Febre', 'Brufen', 'F', 'A', 'F').
doenca('Tosse', 'Dextrometorfano', 'F', 'B', 'F').
doenca('Tosse', 'Bisolvon', 'F', 'A', 'F').

membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).

/*verdoenca(X,W,Z):- findall(Y,(doenca(Y,H,_,U,_,_,_,W), H>=Z, membro(X,U)),K), print(K).*/

verdoencamedicamento(X):- findall(Y,(doenca(Y,U,_,_,_,_,_,_), X=U),K), print(K).

/*verfilmeator(X):- findall(Y,(filme(Y,_,_,_,_,_,U,_), membro(X,U)),K), print(K).*/


/*filme(titulo,ano,classificacao,genero(1,2,3),duracao, realizador,ator(1,2))*/