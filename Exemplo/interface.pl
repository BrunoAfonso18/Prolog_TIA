:-dynamic(fact/1),
[forward, base_dados, proof, base_conhecimento].

menu:- nl,nl , 	write('\e[H\e[2J'),
				write('                                                                                                        '), nl,
				write('                                                                                                        '), nl,
				write('           Seja Bem vindo ao assistente! Antes de iniciar, qual o seu nome?'),nl,
				write('                                                                                                        '), nl,
				read(X) ,nl,
				write('\e[H\e[2J'),
				write('                                                                                                        '), nl,
				write('  Prazer em estar a ajuda-lo '), write(X) ,nl,nl,nl,
				write('                                                                                                        '), nl,
				write('    Gostaria de pesquisar por algum ingrediente em especifico?'), nl,
				write('                                                                                                        '), nl,
				write('    1 - Sim'), nl,
				write('    2 - Nao'), nl,nl,
				write('                                                                                                        '), nl,
				read(A1),
			(
			(A1 == 1),assert(fact(ingrediente)), questao2;
            (A1 == 2),  questao3).

questao2:-	write('\e[H\e[2J'),
			write('                                                                                                        '), nl,
			write('                                                                                                        '), nl,
			write('    Qual o nome do ingrediente? (abaixo alguns exemplos)'), nl,
			write('                                                                                                        '), nl,
			write(' tomate      | rucula    | cebola          | chourico          | camarao         | parmesao             '), nl,
			write(' queijo      | bacon     | massa           | molho_carbonara   | cogumelos       | azeitonas            '), nl,
			write(' mozzarella  | fiambre   | ananas          | pepperoni         | nachos          | manjericao           '), nl,
			write(' presunto    | frango    | tomate_cherry   | oregaos           | molho_barbecue  |                      '), nl,
			write(' alface      | maionese  | queijo_cheddar  | atum              | ovo             |                      '), nl,
			write('                                                                                                        '), nl,
			read(A4),assert(variavel(A4)),resultado.
			
questao3:-	write('\e[H\e[2J'),
			write('                                                                                                        '), nl,
			write('                                                                                                        '), nl,
			write('    Qual o tipo de comida que que lhe apetece? Destas opcoes, introduza o numero correspondente:'), nl,
			write('  '),nl,
			write('    1 - Pizza'), nl,
			write('    2 - Francesinha'), nl, 
			write('    3 - Cachorro'),nl,
			write('    4 - Hamburger'), nl,
			write('    5 - Salada'), nl,
			write('                                                                                                        '), nl,
			read(A3),
			(
			(A3 == 1), assert(fact(pizza)), questao4;
            (A3 == 2), assert(fact(francesinha)), questao4;
            (A3 == 3), assert(fact(cachorro)), questao4;
            (A3 == 4), assert(fact(hamburger)), questao4;
            (A3 == 5), assert(fact(salada)), questao4).
			

questao4:- 	write('\e[H\e[2J'),
			write('                                                                                                        '), nl,
			write('                                                                                                        '), nl,
			write('    Ate que valor deseja pagar?'), nl, 
			write('  '),nl,nl,			
			read(A4), assert(variavel(A4)),
			questao5.
			

questao5:- 	write('\e[H\e[2J'),
			write('                                                                                                        '), nl,
			write('                                                                                                        '), nl,
			write('    Deseja vegetariana?'), nl,
			write('  '),nl,
			write('    1 - Sim'),nl, 
			write('    2 - Nao'),nl, 
			write('    3 - Indiferente' ),nl, nl,
			read(A5),nl,
		    (
		    (A5 == 1), assert(fact(vegetariana_sim)), resultado;
		    (A5 == 2), assert(fact(vegetariana_nao)), resultado;
			(A5 == 3), assert(fact(vegetariana_indiferente)), resultado).
			
			
resultado :- 	write('\e[H\e[2J'),
				write('                                                                                                        '), nl,
				write('                                                                                                        '), nl,
				write('                                           Resultado Obtido                                             '), nl, 
				result.

resultadowrite(P):-	variavel(A4),nl,
					write('     O seu perfil e o: '),write(P),write('    '),nl,nl,
					write('     Pratos aconselhados: '),perfil(P,A4),nl,nl,
					write('                                                                                                        '),
					retract(variavel(A4)), retractall(fact(_)).