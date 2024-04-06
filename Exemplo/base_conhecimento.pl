%perfis
/*
if pizza and vegetariana_sim then 1.
if pizza and vegetariana_nao then 2.
if pizza and vegetariana_indiferente then 3.
if francesinha and vegetariana_sim then 4.
if francesinha and vegetariana_nao then 5.
if francesinha and vegetariana_indiferente then 6.
if cachorro and vegetariana_sim then 7.
if cachorro and vegetariana_nao then 8.
if cachorro and vegetariana_indiferente then 9.
if hamburger and vegetariana_sim then 10.
if hamburger and vegetariana_nao then 11.
if hamburger and vegetariana_indiferente then 12.
if salada and vegetariana_sim then 13.
if salada and vegetariana_nao then 14.
if salada and vegetariana_indiferente then 15.
if ingrediente then 16.
*/

perfil(1,Z):- procuracomida(pizza,vegetariana_sim,Z).
perfil(2,Z):- procuracomida(pizza,vegetariana_nao,Z).
perfil(3,Z):- procuracomida(pizza,_,Z).
perfil(4,Z):- procuracomida(francesinha,vegetariana_sim,Z).
perfil(5,Z):- procuracomida(francesinha,vegetariana_nao,Z).
perfil(6,Z):- procuracomida(francesinha,_,Z).
perfil(7,Z):- procuracomida(cachorro,vegetariana_sim,Z).
perfil(8,Z):- procuracomida(cachorro,vegetariana_nao,Z).
perfil(9,Z):- procuracomida(cachorro,_,Z).
perfil(10,Z):- procuracomida(hamburger,vegetariana_sim,Z).
perfil(11,Z):- procuracomida(hamburger,vegetariana_nao,Z).
perfil(12,Z):- procuracomida(hamburger,_,Z).
perfil(13,Z):- procuracomida(salada,vegetariana_sim,Z).
perfil(14,Z):- procuracomida(salada,vegetariana_nao,Z).
perfil(15,Z):- procuracomida(salada,_,Z).
perfil(16,Z):- procuraingrediente(Z).

membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).


% ------- estrutura da base de dados --------

%comida(tipo_comida,nome,[caracteristicas],vegetariana_sim/nao,categoria_preco,preco,loja,[nome_ingrediente,nome_ingrediente,nome_ingrediente]).

%lista todas as comidas
lista_comidas:-findall([Tipo,Nome,Preco,Loja],(comida(Tipo,Nome,_,_,_,Preco,Loja,_)),Lista_comidas), print(Lista_comidas).

%procura por ingrediente
procuraingrediente(Ingrediente):- findall([Tipo,Nome,Preco,Loja],(comida(Tipo,Nome,_,_,_,Preco,Loja,Ingredientes), membro(Ingrediente,Ingredientes)),Lista_comidas), print(Lista_comidas).

%procura por comida
procuracomida(Tipo,Vegetariana_SN,Preco_max):- findall([Tipo,Nome,Preco,Loja],(comida(Tipo,Nome,_,Vegetariana_SN,_,Preco,Loja,_), Preco<Preco_max),Lista_comidas), print(Lista_comidas).