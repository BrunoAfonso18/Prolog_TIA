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
tempo(fisioterapia,cirugia,3).
tempo(aspirina,inalacoes,10).
tempo(aspirina,insulina,30).
tempo(paracetamol,antibiotico,8).
tempo(aspirina,antibiotica,8).
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

eval([_],0).
eval([D,O|X],C):-tempo(O,D,C1), eval([O|X],C2), C is C1+C2.

origem(origem).
destino(destino).

change(S, SNEW):-origem(O), destino(D),
findall(X,caminho(O,D,X),L), length(L,LE), random(0,LE,R), nth0(R,L,SNEW),
 dif(SNEW,S).
change(S,SNEW):-change(S,SNEW).


demo:- origem(O), destino(D),caminho(O,D,C), hill_climbing(C,[80,1,0,min],S),reverse(S, CaminhoInvertido),write(CaminhoInvertido).


% --------------- -------------
caminho(X,Z,C):-caminho(X,Z,[X],C).
caminho(X,X,Caminho,Caminho).
caminho(X,Z,Visitado,Caminho)
:- arco(X,Y),
\+ member(Y,Visitado),
caminho(Y,Z,[Y | Visitado],Caminho).

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
