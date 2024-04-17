:-dynamic(fact/1),
[forward, basedados, proof, baseconhecimento].

menu:- nl,nl , 	write('********************************************************************************************************'), nl,
				write('           Seja Bem vindo ao seu guia televisivo! Antes de iniciar, qual o seu nome?'),nl,
				read(X) ,nl,
				write('********************************************************************************************************'), nl,nl,
				write('  Prazer em estar a ajuda-lo/a Sr./a '), write(X) ,nl,nl,nl,
				write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                          Descubra qual/quais o/s melhor/es filme/s para si!                        **'), nl,
				write('**                      Faremos algumas perguntas para o/a ajudar na sua escolha!                     **'), nl, 
				write('**                                                                                                    **'), nl,			 
				write('********************************************************************************************************'), nl,
				write('**   Menu:'), nl,
				write('**'), nl,
				write('**   1- Iniciar'), nl,
				write('**   2- Sair'), nl,nl,
				read(Y),
				avaliarEscolha(Y).

avaliarEscolha(1):- questao1.
avaliarEscolha(2):- write('Foi um prazer ajuda-lo!'), halt.
avaliarEscolha(other):- write('Introduza uma opcao valida, por favor comece de novo'), menu.

questao1:-	write('********************************************************************************************************'), nl,
			write('**  Gostaria de pesquisar por ator?'), nl,
			write('**'),nl,
			write('**  1 - Sim'), nl,
			write('**  2 - Nao'), nl,nl,
			read(A1),
			(
			(A1 == 1),assert(fact(ator)), questao2;
            (A1 == 2),  questao3).

questao2:-	write('********************************************************************************************************'), nl,
			write('**  Qual o nome do ator/atriz?'), nl,
			write('**'),nl,nl,
			read(A4),assert(variavel(A4)),resultado.
			
questao3:-	write('********************************************************************************************************'), nl,
			write('**  Qual o seu genero favorito? Destas opcoes, introduza o numero correspondente:'), nl,
			write('**'),nl,
			write('**  1 - Terror'), nl,
			write('**  2 - Comedia'), nl, 
			write('**  3 - Crime'),nl,
			write('**  4 - Drama'), nl,
			write('**  5 - Thriller'), nl,
			write('**  6 - Biografia'), nl,
			write('**  7 - Sci-fi'), nl,
			write('**  8 - Fantasia'), nl,
			write('**  9 - Familia'), nl,
			write('**  10 - Misterio'), nl,
			write('**  11 - Animacao'), nl,
			write('**  12 - Guerra'), nl,
			write('**  13 - Aventura'), nl,
			write('**  14 - Acao'), nl,
			write('**  15 - Musica'), nl,
			write('**  16 - Historia'), nl,
			write('**  17 - Romance'), nl,nl,
			read(A3),
			(
			(A3 == 1), assert(fact(terror)), questao4;
            (A3 == 2), assert(fact(comedia)), questao4;
            (A3 == 3), assert(fact(crime)), questao4;
            (A3 == 4), assert(fact(drama)), questao4;
            (A3 == 5), assert(fact(thriller)), questao4;
            (A3 == 6), assert(fact(biografia)), questao4;
            (A3 == 7), assert(fact(sci-fi)), questao4;
            (A3 == 8), assert(fact(fantasia)), questao4;
            (A3 == 9), assert(fact(familia)), questao4;
            (A3 == 10), assert(fact(misterio)), questao4;
            (A3 == 11), assert(fact(animacao)), questao4;
            (A3 == 12), assert(fact(guerra)), questao4;
            (A3 == 13), assert(fact(aventura)), questao4;
            (A3 == 14), assert(fact(acao)), questao4;
            (A3 == 15), assert(fact(muscia)), questao4;
			(A3 == 16), assert(fact(historia)), questao4;
	        (A3 == 17), assert(fact(romance)), questao4).
			

questao4:- 	write('********************************************************************************************************'), nl,
			write('**  A partir de que ano deseja?'), nl, 
			write('**'),nl,nl,			
			read(A4), assert(variavel(A4)),
			questao5.
			

questao5:- 	write('********************************************************************************************************'), nl,
			write('**  E maior de idade?'), nl,
			write('**'),nl,
			write('**  1 - Sim, tenho mais de 18 anos'),nl, 
			write('**  2 - Nao, tenho menos de 18 anos' ),nl, nl,
			read(A5),nl,
		    (
		    (A5 == 1), assert(fact(maior18)), resultado;
			(A5 == 2), assert(fact(menor18)), resultado).
			
			
resultado :- 	write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                                         Resultado Obtido                                           **'), nl, 
				write('**                                                                                                    **'), nl,			 
				write('********************************************************************************************************'),
				result.

resultadowrite(P):-	variavel(A4),nl,
					write('     O seu perfil e o'),nl,
					write('     *** '),write(P),write(' ***'),nl,nl,
					write('     Filmes aconselhados: '),perfil(P,A4),nl,nl,
					write('********************************************************************************************************'),
					retract(variavel(A4)), retractall(fact(_)).