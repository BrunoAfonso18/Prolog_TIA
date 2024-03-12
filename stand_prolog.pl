stand(vegas,[

cliente(rui,2324,23,medico,[carro(audi,a2,20000),carro(bmw,serie3,30000)]),
cliente(rita,2325,32,advogado,[carro(audi,a3,30000)]),
cliente(joao,2326,26,professor,[moto(honda,gl1800,26000)]),
cliente(ana,2327,49,medico,[carro(audi,a4,40000),

carro(bmw,serie3,32000),carro(ford,focus,24000)])

]).

stand(miami,[
cliente(rui,3333,33,operario,[carro(fiat,panda,12000)]),
cliente(paulo,3334,22,advogado,[carro(audi,a4,36000)]),
cliente(pedro,3335,46,advogado,[carro(honda,accord,32000),carro(audi,a2,20000)])

]).


listar_clientes(X,LC):- stand(X,L),
findall(C,member(cliente(C,_,_,_,_),L),LC).

listar_dados(X,C,D):- stand(X,L),
findall((N,ID,P),member(cliente(C,N,ID,P,_),L),D).
/*meter so o nome*/
listar_carros(X,LM):- stand(X,L),
    findall(V,member(cliente(_,_,_,_,V),L),LM).

/*resolver*/
listar_advogados(LA):- stand(X,L),
    findall(N,member(cliente(N,_,_,P,_),LA),L),P="advogado".

comprimento(0,[]).
comprimento(N,[_|R]):- comprimento(N1,R),
	N is 1 + N1.

somatorio(0,[]).
somatorio(X,[Y|R]):- somatorio(S,R), X is S+Y.
media(X,L):-comprimento(N,L), somatorio(S,L),
	X is S/N.

preco_medio(X,Med):-
altera_id(X,C,Id):-