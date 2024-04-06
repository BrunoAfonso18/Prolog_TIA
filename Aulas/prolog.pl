/*Aula 1*/
/*Factos*/
trabalhapara(joao,rita,c).
trabalhapara(rui,rita,c).
trabalhapara(iva,rita,c).
trabalhapara(iva,joao,c).
trabalhapara(ivo,tomas,s).
trabalhapara(miguel,rui,s).
trabalhapara(rui,vitor,s).
trabalhapara(tomas,vitor,s).
trabalhapara(miguel,vitor,s).
trabalhapara(ivo,vitor,s).

chefe(rita,c).
chefe(vitor,s).

sexo(rita,f).
sexo(joao,m).
sexo(rui,m).
sexo(iva,f).
sexo(ivo,m).
sexo(tomas,m).
sexo(vitor,m).
sexo(miguel,m).
                
/*Regras*/
mesmonivel(X,Y):-trabalhapara(X,B,_),trabalhapara(Y,B,_),X\=Y.
empregado(X,E):-trabalhapara(X,_,E);chefe(X,E).
temchefe(X,Y):-trabalhapara(X,_,E),chefe(Y,E),X\=Y. /*como por sem repetir*/
acima(X,Y,E):-trabalhapara(X,Y,E).
acima(X,Y,E):-trabalhapara(X,Z,E),acima(Z,Y,E).
perigoassedio(X,Y):-trabalhapara(X,Y,_),sexo(X,Sx),sexo(Y,Sy),Sx\=Sy,X\=Y.

/*Aula 2*/
:-dynamic(lista1/1).

adiciona(X,L,[X|L]).

membro(X,[X|_]).
membro(X,[_|R]):-membro(X,R).

junta([], L, L).
junta([X | R], L1, [X | L2]) :- junta(R, L1, L2).

apagar(X,[X|R],R).
apagar(X,[P|R],[P|S]) :- apagar(X,R,S).

concatena([],L,L).
concatena([X|L1],L2,[X|L3]):- concatena(L1,L2,L3).

sublista(S,L):-
concatena(_,L2,L), concatena(S,_,L2).

comprimento(0,[]).
comprimento(N,[_|R]):- comprimento(N1,R),

N is 1 + N1.

max(X,[X]).
max(X,[Y|R]):- max(X,R), X > Y, !.
%max(Y,[Y|R]):- max(X,R), X < Y, !.
max(Y,[Y|_]).

somatorio(0,[]).
somatorio(X,[Y|R]):- somatorio(S,R), X is S+Y.
media(X,L):-comprimento(N,L), somatorio(S,L),

X is S/N.

nelem(N,L,X):-

nelem(N,1,L,X).
nelem(N,N,[X|_],X):-!.
nelem(N,I,[_|R],X):-

I1 is I+1, nelem(N,I1,R,X).




