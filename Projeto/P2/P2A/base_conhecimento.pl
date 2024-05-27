:- dynamic comprimento/2 .
:- dynamic custo/2 .
:- dynamic passageiroKM/2 .
:-[base_dados].

%Custo Tratamento
custoTratamento([],0).
custoTratamento([X|R],Soma) :- custos(X,TotalTratamento), 
custoTratamento(R,TotalMedicamento), Soma is TotalTratamento + TotalMedicamento.

guardarCustoTratamento(Tratamento):- custoTratamento(Tratamento, Valor), 
assertz(custo(Tratamento, Valor)).

gerarCustosTratamentos([]).
gerarCustosTratamentos([C1|R1]):- guardarCustoTratamento(C1), gerarCustosTratamentos(R1).


%DistanciaCaminho
calcularDistancia(_,[],0).
calcularDistancia(P1,[P2|R2], Soma):- percurso(P2,P1,Distancia), 
calcularDistancia(P2, R2, DistanciaPercorrida), Soma is Distancia + DistanciaPercorrida.

guardarDistancia([]).
guardarDistancia([P1|R1]):- calcularDistancia(P1,R1,Valor), assertz(comprimento([P1|R1], Valor)).

gerarDistanciasCaminhos([]).
gerarDistanciasCaminhos([C1|R1]):- guardarDistancia(C1), gerarDistanciasCaminhos(R1).

distanciaCaminho([P1|R1], Valor):-  calcularDistancia(P1,R1,Valor).

%PassageirosKM
calcularPassageirosKM(Caminho):- guardarDistancia(Caminho), guardarOcupacaoAutocarro(Caminho), 
ocupacao(Caminho, OcupacaoCaminho), comprimento(Caminho, DistanciaCaminho), 
assertz(passageiroKM(Caminho, OcupacaoCaminho / DistanciaCaminho)).

gerarPassageirosKM([]).
gerarPassageirosKM([C1|R1]):- calcularPassageirosKM(C1), gerarPassageirosKM(R1).

passageiroKMCaminho(Caminho, Indice):- guardarDistancia(Caminho), guardarOcupacaoAutocarro(Caminho), 
ocupacao(Caminho, OcupacaoCaminho), comprimento(Caminho, DistanciaCaminho), Indice is OcupacaoCaminho / DistanciaCaminho.

%CaminhosDisponiveis
caminho(X,Z,Caminho):- caminho(X,Z,[X],Caminho).
caminho(X,X,Caminho,Caminho):- ocupacaoAutocarro(Caminho,Soma), Soma =< 45.
caminho(X,Z,Visitado,Caminho):- percurso(X,Y,_), \+ member(Y,Visitado), 
caminho(Y,Z,[Y | Visitado],Caminho).

%GerarListaCaminhos
listaCaminhos(X,Y,Lista):- findall(C,caminho(X,Y,C),Lista).

%QuestõesDoUtilizador

%CaminhoMaisCurto
caminhoMaisCurto(X,Y,Caminho):- retractall(comprimento(_,_)), listaCaminhos(X,Y,Lista), 
gerarDistanciasCaminhos(Lista), maisCurto(Caminho).

maisCurto(Caminho):- comprimento(Caminho, V), \+ (comprimento(_, V1), V > V1).


%CaminhoMaisLongo
caminhoMaisLongo(X,Y,Caminho):- retractall(comprimento(_,_)), listaCaminhos(X,Y,Lista), 
gerarDistanciasCaminhos(Lista), maisLongo(Caminho).

maisLongo(Caminho):- comprimento(Caminho, V), \+ (comprimento(_, V1), V1 > V).


%CaminhoMenosPassageiros
caminhoMenosPassageiros(X,Y,Caminho):- retractall(ocupacao(_,_)), listaCaminhos(X,Y,Lista), 
gerarOcupacoesCaminhos(Lista), menosPassageiros(Caminho).

menosPassageiros(Caminho):- ocupacao(Caminho, V), \+ (ocupacao(_, V1), V > V1).

%CaminhoMaisPassageiros
caminhoMaisPassageiros(X,Y,Caminho):- retractall(ocupacao(_,_)), listaCaminhos(X,Y,Lista), 
gerarOcupacoesCaminhos(Lista), maisPassageiros(Caminho).

maisPassageiros(Caminho):- ocupacao(Caminho, V), \+ (ocupacao(_, V1), V1 > V).

%CaminhoMaisVantajoso
caminhoMaisVantajoso(X,Y,Caminho):- retractall(passageiroKM(_,_)), listaCaminhos(X,Y,Lista), 
gerarPassageirosKM(Lista),!, maisVantajoso(Caminho).

maisVantajoso(Caminho):- passageiroKM(Caminho, V), \+ (passageiroKM(_, V1), V1 > V).