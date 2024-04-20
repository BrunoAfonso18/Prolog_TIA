:-dynamic(fact/1),
[forward, base_dados, proof].

menu:- nl,nl , 	write('\e[H\e[2J'),
				write('                                                                                                        '), nl,
				write('                                                                                                        '), nl,
				write('           Este e um programa de apoio a profissionais de saude'),nl,
				write('           Nenhuma das informacoes apresentadas deve ser implementada sem acompanhamento medico'),nl,nl,
				write('           Seja Bem vindo ao assistente! Antes de iniciar, qual o seu nome?'),nl,
				write('                                                                                                        '), nl,
				read(X) ,nl,
				write('\e[H\e[2J'),
				write('                                                                                                        '), nl,
				write('  Prazer em estar a ajuda-lo '), write(X) ,nl,nl,nl,
				write('                                                                                                        '), nl,
				write('    Vamos iniciar o processo de diagnostico'), nl,nl,
				write('    Como se encontra o ritmo cardiaco do paciente? '), nl,
				write('                                                                                                        '), nl,
				write('    1 - Alto'), nl,
				write('    2 - Normal'), nl,nl,
				write('                                                                                                        '), nl,
				read(A1),
			(
			(A1 == 1),assert(fact(rc_alto)), questao2;
            (A1 == 2),assert(fact(rc_normal)), questao2).

questao2:-	write('\e[H\e[2J'),
			write('                                                                                                        '), nl,
			write('                                                                                                        '), nl,
			write('    Que temperatura apresenta o paciente?'), nl,
			write('                                                                                                        '), nl,
			write('    1 - Alta'), nl,
			write('    2 - Normal'), nl,nl,
			write('                                                                                                        '), nl,
			read(A2),
			(
			(A2 == 1),assert(fact(temp_alta)), questao3;
            (A2 == 2),assert(fact(temp_normal)), questao3).
			
questao3:-	write('\e[H\e[2J'),
			write('                                                                                                        '), nl,
			write('                                                                                                        '), nl,
			write('    Apresenta inchaco anormal na zona da garganta?'), nl,
			write('                                                                                                        '), nl,
			write('    1 - Sim'), nl,
			write('    2 - Nao'), nl,nl,
			write('                                                                                                        '), nl,
			read(A3),
			(
			(A3 == 1),assert(fact(ig_sim)), questao4;
            (A3 == 2),assert(fact(ig_nao)), questao4).
            
			

questao4:-	write('\e[H\e[2J'),
			write('                                                                                                        '), nl,
			write('                                                                                                        '), nl,
			write('    Selecione uma das opcoes abaixo no que diz respeito ao tipo de tosse do paciente'), nl,
			write('                                                                                                        '), nl,
			write('    1 - Tosse Seca'), nl,
			write('    2 - Tosse com Espeturação'), nl, 
			write('    3 - Tosse com Sangue'),nl,
			write('    4 - Sem tosse'), nl,
			write('                                                                                                        '), nl,
			read(A4),
			(
			(A4 == 1), assert(fact(tt_seca)), questao5;
            (A4 == 2), assert(fact(tt_espeturacao)), questao5;
            (A4 == 3), assert(fact(tt_sangue)), questao5;
            (A4 == 4), assert(fact(tt_nulo)), questao5).
			

questao5:-	write('\e[H\e[2J'),
			write('                                                                                                        '), nl,
			write('                                                                                                        '), nl,
			write('    O paciente apresenta dispneia <dificuldade em respirar>'), nl,
			write('                                                                                                        '), nl,
			write('    1 - Sim'), nl,
			write('    2 - Nao'), nl,nl,
			write('                                                                                                        '), nl,
			read(A5),
			(
			(A5 == 1),assert(fact(di_sim)), resultado;
            (A5 == 2),assert(fact(di_nao)), resultado).
			
			
resultado :- 	write('\e[H\e[2J'),
				write('                                                                                                        '), nl,
				write('                                                                                                        '), nl,
				write('                                           Diagnostico                                             '), nl, 
				result.

resultadowrite(P):-	variavel(A4),nl,
					write('     O seu perfil e o: '),write(P),write('    '),nl,nl,
					write('     O paciente encontra se com: '),perfil(P,A4),nl,nl,
					write('                                                                                                        '),
					retract(variavel(A4)), retractall(fact(_)).