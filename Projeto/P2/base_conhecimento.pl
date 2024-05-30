:-[base_dados].

% Predicado para encontrar o caminho de menor custo
menor_custo_caminho(Origem, Destino, Caminho, Custo) :-
    caminho_custo(Origem, Destino, [Origem], Caminho, Custo).

% Predicado para encontrar um caminho e calcular seu custo
caminho_custo(Destino, Destino, Caminho, Caminho, 0).
caminho_custo(Atual, Destino, Visitados, Caminho, Custo) :-
    arco(Atual, Proximo),
    \+ member(Proximo, Visitados),
    caminho_custo(Proximo, Destino, [Proximo | Visitados], Caminho, Custo1),
    custo(Atual, Proximo, C),
    Custo is Custo1 + C.

% Predicado principal para encontrar o menor custo e imprimir o caminho
calcular_menor_custo(Origem, Destino) :-
    findall((C, P), menor_custo_caminho(Origem, Destino, P, C), Resultados),
    sort(Resultados, [(MelhorCusto, MelhorCaminho)|_]),
    reverse(MelhorCaminho, CaminhoInvertido),
    write('Caminho: '), writeln(CaminhoInvertido),
    write('Custo: '), writeln(MelhorCusto).

% Predicado para encontrar o caminho de menor tempo
menor_tempo_caminho(Origem, Destino, Caminho, Tempo) :-
    caminho_tempo(Origem, Destino, [Origem], Caminho, Tempo).

% Predicado para encontrar um caminho e calcular seu tempo
caminho_tempo(Destino, Destino, Caminho, Caminho, 0).
caminho_tempo(Atual, Destino, Visitados, Caminho, Tempo) :-
    arco(Atual, Proximo),
    \+ member(Proximo, Visitados),
    caminho_tempo(Proximo, Destino, [Proximo | Visitados], Caminho, Tempo1),
    tempo(Atual, Proximo, T),
    Tempo is Tempo1 + T.

% Predicado principal para encontrar o menor tempo e imprimir o caminho
calcular_menor_tempo(Origem, Destino) :-
    findall((T, P), menor_tempo_caminho(Origem, Destino, P, T), Resultados),
    sort(Resultados, [(MelhorTempo, MelhorCaminho)|_]),
    reverse(MelhorCaminho, CaminhoInvertido),
    write('Caminho: '), writeln(CaminhoInvertido),
    write('Tempo: '), writeln(MelhorTempo).




% Hill Climbing para custo
hill_climbing_custo(Origem, Destino, Caminho, Custo) :-
    hill_climbing_custo_aux(Origem, Destino, [Origem], Caminho, 0, Custo).

hill_climbing_custo_aux(Destino, Destino, Visitados, Caminho, Custo, Custo) :-
    reverse(Visitados, Caminho).
hill_climbing_custo_aux(Atual, Destino, Visitados, Caminho, CustoAtual, CustoFinal) :-
    findall((C, Proximo), (arco(Atual, Proximo), \+ member(Proximo, Visitados), custo(Atual, Proximo, C)), Vizinhos),
    sort(Vizinhos, [(_, MelhorProximo)|_]),  % Seleciona o vizinho com o menor custo
    custo(Atual, MelhorProximo, CustoVizinho),
    NovoCusto is CustoAtual + CustoVizinho,
    hill_climbing_custo_aux(MelhorProximo, Destino, [MelhorProximo|Visitados], Caminho, NovoCusto, CustoFinal).

% Hill Climbing para tempo
hill_climbing_tempo(Origem, Destino, Caminho, Tempo) :-
    hill_climbing_tempo_aux(Origem, Destino, [Origem], Caminho, 0, Tempo).

hill_climbing_tempo_aux(Destino, Destino, Visitados, Caminho, Tempo, Tempo) :-
    reverse(Visitados, Caminho).
hill_climbing_tempo_aux(Atual, Destino, Visitados, Caminho, TempoAtual, TempoFinal) :-
    findall((T, Proximo), (arco(Atual, Proximo), \+ member(Proximo, Visitados), tempo(Atual, Proximo, T)), Vizinhos),
    sort(Vizinhos, [(_, MelhorProximo)|_]),  % Seleciona o vizinho com o menor tempo
    tempo(Atual, MelhorProximo, TempoVizinho),
    NovoTempo is TempoAtual + TempoVizinho,
    hill_climbing_tempo_aux(MelhorProximo, Destino, [MelhorProximo|Visitados], Caminho, NovoTempo, TempoFinal).





next(a,b,10).
next(a,c,20).
next(b,c,5).
next(b,a,50).
next(c,a,4).
next(c,b,9).


eval([_],0).
eval([X,Y|Z],E):-next(X,Y,E1),eval([Y|Z],E2), E is E1 + E2.

change(S, SNEW):-
findall(X,permutation(S,X),L), length(L,LE), random(1,LE,R), nth0(R,L,SNEW),
 dif(SNEW,S).




demo:- hill_climbing([a,b,c],[20,1,0,max],S),write(S).

% assumes eval(Solution,Result)
% assumes change(S1,S2)

% return SR, the best value of S1 and S2: SR (solution) and ER (eval)
best(Prob,Opt,S1,E1,S2,E2,SR,ER):-
	eval(S2,E2),
	best_opt(Prob,Opt,S1,E1,S2,E2,SR,ER).

best_opt(Prob,_,_,_,S2,E2,S2,E2):-
	random(X), % random from 0 to 1,
	X< Prob. % accept new solution

best_opt(_,Opt,S1,E1,S2,E2,SR,ER):- % else, select the best one
    ( (Opt=max,max_list([E1,E2],ER));(Opt=min,min_list([E1,E2],ER)) ),
    ( (ER==E1,SR=S1); (ER==E2,SR=S2) ).

% show evolution:
show(final,Verbose,S1,E1,_,_):-
	 Verbose>0,
	 write('final:'),write(' S:'),write(S1),write(' E:'),write(E1),nl.
show(0,Verbose,S1,E1,_,_):-
	Verbose>0,
	write('init:'),write(' S0:'),write(S1),write(' E0:'),write(E1),nl.
show(I,Verbose,S1,E1,S2,E2):-
	0 is I mod Verbose,
	write('iter:'),write(I),write(' S1:'),write(S1),write(' E1:'),
	write(E1),write(' S2:'),write(S2),write(' E2:'),write(E2),nl.
show(_,_,_,_,_,_).

% hill climbing
% Prob=0 is pure hill climbing, Prob>0 means Stochastic Hill Climbing
% S0 is the initial solution, Control is a list with the number of iterations, verbose in console, probability and type of optimization.
hill_climbing(S0,[Iter,Verbose,Prob,Opt],S1):-
	eval(S0,E0),
        show(0,Verbose,S0,E0,_,_),
	hill_climbing(S0,E0,0,Iter,Verbose,Prob,Opt,S1).

hill_climbing(S,_,Iter,Iter,_,_,_,S).
hill_climbing(S1,E1,I,Iter,Verbose,Prob,Opt,SFinal):-
	change(S1,SNew),
	best(Prob,Opt,S1,E1,SNew,_,S2,E2),
	I1 is I+1,
        show(I1,Verbose,S1,E1,S2,E2),
	hill_climbing(S2,E2,I1,Iter,Verbose,Prob,Opt,SFinal).