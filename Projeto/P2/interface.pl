:- [base_dados, base_conhecimento].

menu :-
    write('Bem-vindo ao sistema de tratamento medico!'), nl,
    write('Por favor, insira o estado clinico inicial:'), nl,
    read(Inicio),
    write('Por favor, insira o estado clinico final:'), nl,
    read(Fim),
    write('Por favor, escolha o tipo de regra que deseja utilizar:'), nl,
    write('1. Caminho com menor custo'), nl,
    write('2. Caminho com menor tempo'), nl,
    read(Opcao).

% Função para calcular o caminho
calcular_caminho(Inicio, Fim, Opcao) :-
    (Opcao == 1 -> arco_barato(Inicio, Fim, Caminho);
    Opcao == 2 -> arco_curto(Inicio, Fim, Caminho)),
    write('O melhor caminho e: '), reverse(Caminho, CaminhoI), write(CaminhoI), nl.