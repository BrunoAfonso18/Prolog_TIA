:-[satisfy, induce_ifthen, doencas_ifthen].

% the goal is to classify 
learn_rules:-
	learn(nao),  % negative examples
	learn(sim), % positive examples
        % save new rules:
	tell('doencas_ifthen.pl'),
	listing(<==),
	told.

% example of classifying
q1(Class):- classify([idade=idade18a25,Area=preco,tipo=carne,preco=preco5a7],Class), write(classify([idade=idade18a25,Area=preco,tipo=carne,preco=preco5a7],Class)).
q2(Class):- classify([idade=idade18a25,Area=variedade,tipo=carne,preco=preco7a10],Class).
q3(Class):- classify([tipo=francesinha, preco=preco5a7],Class).
q7(Class):- classify([tipo=hamburguer, Area=variedade, preco=preco5a7],Class).
q5(Class):- classify([idade=idademaior55,Area=comida,tipo=peixe,preco=preco15a20], Class).

q4(Class):- findall(A,fact(A),Z), classify(Z,Class), retractall(fact(_)).



menu :- 
     write(
"
                  Tem duvidas entre ir ou não ao hospital mais proximo de si?
                  Tem duvidas entre tomar ou não medicação ?
                  Este sistema consiste num processo de recomendacao na categoria de doencas pulmonares
                  Seja bem-vindo!

"),nl,

    write(
"____________________________________________________________________________________________________
 
                    Indique a sua idade?

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
 
                    Qual a sua area de residencia?

                    1- Cidade
                    2- Campo

                    0- Sair 


____________________________________________________________________________________________________"),nl,nl,
    read(Area),
        ((Area == 0), halt;
        (Area == 1), assert(fact(Area=cidade));
        (Area == 2), assert(fact(Area=campo))), nl, 

    write(
"____________________________________________________________________________________________________
             
                    Está gravida?
            
                    1- Sim
                    2- Nao
            
                    0- Sair 
            
            
____________________________________________________________________________________________________"),nl,nl,
    read(Gravidez),
        ((Gravidez == 0), halt;
        (Gravidez == 1), assert(fact(Gravidez=gravida_sim));
        (Gravidez == 2), assert(fact(Gravidez=gravida_nao))), nl, 

write(
"____________________________________________________________________________________________________
             
                    Tem febre?
            
                    1- Sim
                    2- Nao
            
                    0- Sair 
            
            
____________________________________________________________________________________________________"),nl,nl,
    read(Temp),
        ((Temp == 0), halt;
        (Temp == 1), assert(fact(Temp=temp_alta));
        (Temp == 2), assert(fact(Temp=temp_normal))), nl,

write(
"____________________________________________________________________________________________________
             
                    Tem o ritmo cardiaco elevado?
            
                    1- Sim
                    2- Nao
            
                    0- Sair 
            
            
____________________________________________________________________________________________________"),nl,nl,
    read(Rc),
        ((Rc == 0), halt;
        (Rc == 1), assert(fact(Rc=rc_alt));
        (Rc == 2), assert(fact(Rc=rc_normal))), nl,

write(
"____________________________________________________________________________________________________
             
                    Tem inchaco ou incomodo na garganta?
            
                    1- Sim
                    2- Nao
            
                    0- Sair 
            
            
____________________________________________________________________________________________________"),nl,nl,
    read(Ig),
        ((Ig == 0), halt;
        (Ig == 1), assert(fact(Ig=ig_sim));
        (Ig == 2), assert(fact(Ig=ig_nao))), nl,

write(
"____________________________________________________________________________________________________
                         
                    Tem algum tipo de tosse?
                        
                    1- Tosse Seca
                    2- Tosse com Espeturacao
                    3- Tosse com Sangue
                    4- Sem Tosse

                    0- Sair 
                        
                        
____________________________________________________________________________________________________"),nl,nl,
    read(Tosse),
        ((Tosse == 0), halt;
        (Tosse == 1), assert(fact(Tosse=tt_seca));
        (Tosse == 2), assert(fact(Tosse=tt_espeturacao));
        (Tosse == 3), assert(fact(Tosse=tt_sangue));
        (Tosse == 4), assert(fact(Tosse=tt_nulo))), nl,


write(
"____________________________________________________________________________________________________
                         
                    Apresenta dispneia ou dificuldade em respirar?
                        
                    1- Sim
                    2- Nao
                        
                    0- Sair 
                        
                        
____________________________________________________________________________________________________"),nl,nl,
    read(Disp),
        ((Disp == 0), halt;
        (Disp == 1), assert(fact(Disp=d_sim));
        (Disp == 2), assert(fact(Disp=d_nao))), nl,


write("____________________________________________________________________________________________________"),nl,nl,

 write('RESULTADO'),nl, 

q4(C),

 write('Ir ao hospital: '), write(C),nl,nl,
 write('Tomar medicacao: '), write(C),nl,nl,

 

 write("Obrigado pela participacao!"),nl.