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
q1(Class):- classify([idade=idade18a25,area=cidade,temp=temp_alta,tosse=tt_sangue],Class).

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
                    3- 26 a 40
                    4- 41 a 60
                    5- Maior de 61
 
                    0- Sair 


___________________________________________________________________________________________________"),nl,nl,
    read(Idade),
        ((Idade == 0), halt;
        (Idade == 1), assert(fact(idade=idade15a17));
        (Idade == 2), assert(fact(idade=idade18a25));
        (Idade == 3), assert(fact(idade=idade26a40));
        (Idade == 4), assert(fact(idade=idade41a60));
        (Idade == 5), assert(fact(idade=idademaior61))), nl, 
        

    write(
"____________________________________________________________________________________________________
 
                    Qual a sua area de residencia?

                    1- Cidade
                    2- Campo

                    0- Sair 


____________________________________________________________________________________________________"),nl,nl,
    read(Area),
        ((Area == 0), halt;
        (Area == 1), assert(fact(area=cidade));
        (Area == 2), assert(fact(area=campo))), nl, 


write(
"____________________________________________________________________________________________________
             
                    Tem febre?
            
                    1- Sim
                    2- Nao
            
                    0- Sair 
            
            
____________________________________________________________________________________________________"),nl,nl,
    read(Temp),
        ((Temp == 0), halt;
        (Temp == 1), assert(fact(temp=temp_alta));
        (Temp == 2), assert(fact(temp=temp_normal))), nl,

write(
"____________________________________________________________________________________________________
             
                    Tem o ritmo cardiaco elevado?
            
                    1- Sim
                    2- Nao
            
                    0- Sair 
            
            
____________________________________________________________________________________________________"),nl,nl,
    read(Rc),
        ((Rc == 0), halt;
        (Rc == 1), assert(fact(rc=rc_alt));
        (Rc == 2), assert(fact(rc=rc_normal))), nl,

write(
"____________________________________________________________________________________________________
             
                    Tem inchaco ou incomodo na garganta?
            
                    1- Sim
                    2- Nao
            
                    0- Sair 
            
            
____________________________________________________________________________________________________"),nl,nl,
    read(Ig),
        ((Ig == 0), halt;
        (Ig == 1), assert(fact(ig=ig_sim));
        (Ig == 2), assert(fact(ig=ig_nao))), nl,

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
        (Tosse == 1), assert(fact(tosse=tt_seca));
        (Tosse == 2), assert(fact(tosse=tt_espeturacao));
        (Tosse == 3), assert(fact(tosse=tt_sangue));
        (Tosse == 4), assert(fact(tosse=tt_nulo))), nl,


write(
"____________________________________________________________________________________________________
                         
                    Apresenta dispneia ou dificuldade em respirar?
                        
                    1- Sim
                    2- Nao
                        
                    0- Sair 
                        
                        
____________________________________________________________________________________________________"),nl,nl,
    read(Disp),
        ((Disp == 0), halt;
        (Disp == 1), assert(fact(disp=d_sim));
        (Disp == 2), assert(fact(disp=d_nao))), nl,


write("____________________________________________________________________________________________________"),nl,nl,

write('RESULTADO'),nl, 

q4(C),

write('Ir ao hospital: '), write(C),nl,nl,


write("Obrigado pela participacao!"),nl.