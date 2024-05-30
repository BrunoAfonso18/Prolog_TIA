:-[basedados].

%Caminhos Disponiveis dos Tratamentos
caminho_tempo(X,Z,C):- 
	caminho_tempo(X,Z,[X],C).
caminho_tempo(X,X,Caminho,Caminho).
caminho_tempo(X,Z,Visitado,Caminho):- 
	tratamento(X,Y,_), 
	\+ member(Y,Visitado), 
	caminho_tempo(Y,Z,[Y | Visitado],Caminho).

% Calcula o tempo de um dado arco: 
tempo([],0).
tempo([_],0).
tempo([X,Y|R],N):- tratamento(Y,X,D), 
    tempo([Y|R],N1), N is N1+D.

% Calcula e obtem-se o arco que demore menos tempo: 
arco_curto(X,Y,C):-caminho_tempo(X,Y,C),
mais_curto(X,Y,C).
mais_curto(X,Y,C):- tempo(C,NC),!,
\+ menor_tempo(X,Y,NC).
menor_tempo(X,Y,NC):- caminho_tempo(X,Y,C1),
tempo(C1,NC1),
NC1<NC.


%Caminhos Disponiveis dos Tratamentos
caminho_custo(X,Z,C):- 
	caminho_custo(X,Z,[X],C).
caminho_custo(X,X,Caminho,Caminho).
caminho_custo(X,Z,Visitado,Caminho):- 
	tratamento(X,Y,_), 
	\+ member(Y,Visitado), 
	caminho_custo(Y,Z,[Y | Visitado],Caminho).

% Calcula o custo de um dado arco: 
custo([],0).
custo([_],0).
custo([X,Y|R],N):- custos(Y,X,C),
    custo([Y|R],N1), N is N1+C.

% Calcula e obtem-se o arco que apresenta menor custo:
arco_barato(X,Y,C):-caminho_custo(X,Y,C),
mais_barato(X,Y,C).
mais_barato(X,Y,C):- custo(C,NC),!,
\+ menor_custo(X,Y,NC).
menor_custo(X,Y,NC):- caminho_custo(X,Y,C1),
custo(C1,NC1),
NC1<NC.