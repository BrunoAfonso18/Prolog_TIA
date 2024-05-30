:- [base_dados, base_conhecimento].

menu :-
    write('Bem-vindo ao sistema de tratamento medico!'), nl,nl,
    write('Estado clinico inicial:'), nl,
    read(Origem),nl,
    write('Estado clinico final:'), nl,
    read(Destino),nl,
    write('--------------------------------------------------------------------------------------------------------------------------------------------------'),nl,
    write('Que parametro quer avaliar?'), nl,
    write('1) Custo'), nl,
    write('2) Tempo'), nl,
    write('---------------------------------------------------------------------------------------------------------------------------------------------------'),nl,
    read(Opcao),nl,
    calcular_caminho(Origem, Destino, Opcao).

% Função para calcular o caminho
calcular_caminho(Origem, Destino, Opcao) :-
    (Opcao == 1 -> calcular_menor_custo(Origem, Destino);
    Opcao == 2 -> calcular_menor_tempo(Origem, Destino)).
