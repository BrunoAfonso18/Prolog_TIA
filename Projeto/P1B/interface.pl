% Paulo Cortez 2021@
% Beatriz Silva, Daniela Ferreira, Márcia Veloso, Diogo Silva (2021)
:-[satisfy, induce_ifthen, restaurantes_ifthen].

% the goal is to classify 
learn_rules:-
	learn(nao),  % negative examples
	learn(sim), % positive examples
        % save new rules:
	tell('restaurantes_ifthen.pl'),
	listing(<==),
	told.

% example of classifying
q1(Class):- classify([idade=idade18a25,aspeto=preco,tipo=carne,preco=preco5a7],Class), write(classify([idade=idade18a25,aspeto=preco,tipo=carne,preco=preco5a7],Class)).
q2(Class):- classify([idade=idade18a25,aspeto=variedade,tipo=carne,preco=preco7a10],Class).
q3(Class):- classify([tipo=francesinha, preco=preco5a7],Class).
q7(Class):- classify([tipo=hamburguer, aspeto=variedade, preco=preco5a7],Class).
q5(Class):- classify([idade=idademaior55,aspeto=comida,tipo=peixe,preco=preco15a20], Class).

q4(Class):- findall(A,fact(A),Z), classify(Z,Class), retractall(fact(_)).



menu :- 
     write(
"
                  Tem duvidas entre comprar uma refeicao num restaurante ou num hipermercado?
                  Seja bem-vindo ao sistema de recomendacao! Esperamos corresponder as suas expetativas *_*

"),nl,

    write(
"____________________________________________________________________________________________________
 
                    Indique a sua idade

                    1- 15 a 17
                    2- 18 a 25
                    3- 26 a 35
                    4- 36 a 45
                    5- 46 a 55
                    6- Maior de 55
 
                    0- Sair 


___________________________________________________________________________________________________"),nl,nl,
    read(Idade),
        ((Idade == 0), halt;
        (Idade == 1), assert(fact(idade=idade15a17));
        (Idade == 2), assert(fact(idade=idade18a25));
        (Idade == 3), assert(fact(idade=idade26a35));
        (Idade == 4), assert(fact(idade=idade36a45));
        (Idade == 5), assert(fact(idade=idade46a55));
        (Idade == 6), assert(fact(idade=idademaior55))), nl, 
        

    write(
"____________________________________________________________________________________________________
 
                    Qual o principal aspeto que tem em consideracao quando vai consumir uma refeicao?

                    1- Qualidade da comida
                    2- Preco
                    3- Qualidade do atendimento
                    4- Variedade da comida
                    5- Tempo de espera/entrega
 
                    0- Sair 


____________________________________________________________________________________________________"),nl,nl,
    read(Aspeto),
        ((Aspeto == 0), halt;
        (Aspeto == 1), assert(fact(aspeto=comida));
        (Aspeto == 2), assert(fact(aspeto=preco));
        (Aspeto == 3), assert(fact(aspeto=atendimento));
        (Aspeto == 4), assert(fact(aspeto=variedade));
        (Aspeto == 5), assert(fact(aspeto=tempoesperaentrega))), nl, 

    write(
"____________________________________________________________________________________________________
 
                    Qual o tipo de comida que pretende consumir ?

                    1- Opcoes Vegetarianas
                    2- Opcoes Vegan
                    3- Hamburgers
                    4- Pizza
                    5- Francesinha e similares
                    6- Pratos de carne
                    7- Pratos de peixe
 
                    0- Sair 


____________________________________________________________________________________________________"),nl,nl,
    read(Tipoprato),
        ((Tipoprato == 0), halt;
        (Tipoprato == 1), assert(fact(tipo=vegetarianas));
        (Tipoprato == 2), assert(fact(tipo=vegan));
        (Tipoprato == 3), assert(fact(tipo=hamburguers));
        (Tipoprato == 4), assert(fact(tipo=pizza));
        (Tipoprato == 5), assert(fact(tipo=francesinha));
        (Tipoprato == 6), assert(fact(tipo=carne));
        (Tipoprato == 7), assert(fact(tipo=peixe))), nl, 

    write(
"____________________________________________________________________________________________________

                    Qual o preco que pretende gastar ?

                    1- 5 a 7 euros
                    2- 7 a 10 euros
                    3- 10 a 15 euros
                    4- 15 a 20 euros
                    5- Acima de 20 euros
 
                    0- Sair 


____________________________________________________________________________________________________"),nl,nl,
    read(Preco),
        ((Preco == 0), halt;
        (Preco == 1), assert(fact(preco=preco5a7));
        (Preco == 2), assert(fact(preco=preco7a10));
        (Preco == 3), assert(fact(preco=preco10a15));
        (Preco == 4), assert(fact(preco=preco15a20));
        (Preco == 5), assert(fact(preco=precoacima20))), nl,

write("____________________________________________________________________________________________________"),nl,nl,

 write('RESULTADO'),nl, 

q4(C),

 write('Refeicao em Restaurante: '), write(C),nl,nl,

 

 write("Disfrute da sua refeicao! Obrigada!"),nl.