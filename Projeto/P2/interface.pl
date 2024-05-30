:- [base_dados, base_conhecimento].

menu :-
    write('Bem-vindo ao sistema de tratamento medico!'), nl,nl,
    write('Estado clinico inicial:'), nl,
    read(Origem),nl,
    %write('Estado clinico final:'), nl,
    %read(Destino),nl,
    Destino = destino, % os caminhos tem que todos acabar no estado clinico 0 ('destino')
    write('--------------------------------------------------------------------------------------------------------------------------------------------------'),nl,
    write('Que parametro quer avaliar?'), nl,
    write('1) Todos os caminhos possiveis'), nl,
    write('2) Custo'), nl,
    write('3) Tempo'), nl,
    write('---------------------------------------------------------------------------------------------------------------------------------------------------'),nl,
    read(Opcao),nl,
    write('--------------------------------------------------------------------------------------------------------------------------------------------------'),nl,
    calcular_caminho(Origem, Destino, Opcao).

% Função para calcular o caminho
calcular_caminho(Origem, Destino, Opcao) :-
        (Opcao == 1 -> listar_caminhos_possiveis(Origem, Destino);
        Opcao == 2 -> calcular_menor_custo(Origem, Destino); %"Custo"
        Opcao == 3 -> calcular_menor_tempo(Origem, Destino)  %"Tempo"
        ).