:- consult('base_dados.pl').
:- style_check(-singleton).

% Regra para encontrar todos os caminhos a partir de um estado de origem até o estado final (0)
caminho(Origem, Caminho) :-
    caminho_rec([Origem], Caminho).

% Regra para calcular o custo total de um caminho
custo_total([], 0).
custo_total([_], 0).
custo_total([Origem, Destino|T], CustoTotal) :-
    custo(Origem, Destino, Custo),
    custo_total([Destino|T], CustoRestante),
    CustoTotal is Custo + CustoRestante.

% Regra para calcular a duração total de um caminho
duracao_total([], 0).
duracao_total([_], 0).
duracao_total([Origem, Destino|T], DuracaoTotal) :-
    duracao(Origem, Destino, Duracao),
    duracao_total([Destino|T], DuracaoRestante),
    DuracaoTotal is Duracao + DuracaoRestante.

% Regra para encontrar o nome dos tratamentos ao longo do caminho
nomes_tratamentos([], []).
nomes_tratamentos([_], []).
nomes_tratamentos([Origem, Destino|T], [Nome|NomesRestantes]) :-
    tratamento(Origem, Destino, Nome),
    nomes_tratamentos([Destino|T], NomesRestantes).

% Função auxiliar que encontra o caminho
caminho_rec([0|CaminhoReverso], Caminho) :-
    reverse([0|CaminhoReverso], Caminho).
caminho_rec([Atual|CaminhoParcial], Caminho) :-
    arco(Atual, Proximo),
    \+ member(Proximo, CaminhoParcial),
    caminho_rec([Proximo, Atual|CaminhoParcial], Caminho).

% Regra inicial para encontrar o caminho mais adequado em termos de custo
caminho_mais_vantajoso_custo(Origem, Caminho, Custo, NomesTratamentos) :-
    findall((C, P), (caminho(Origem, P), custo_total(P, C)), ListaCaminhos),
    sort(ListaCaminhos, [(Custo, Caminho)|_]),
    nomes_tratamentos(Caminho, NomesTratamentos).

% Regra inicial para encontrar o caminho mais adequado em termos de duração
caminho_mais_vantajoso_duracao(Origem, Caminho, Duracao, NomesTratamentos) :-
    findall((D, P), (caminho(Origem, P), duracao_total(P, D)), ListaCaminhos),
    sort(ListaCaminhos, [(Duracao, Caminho)|_]),
    nomes_tratamentos(Caminho, NomesTratamentos).

% Função de debug para listar todas as rotas possíveis e os seus custos
listar_rotas(Origem) :-
    findall((C, P), (caminho(Origem, P), custo_total(P, C)), ListaCaminhos),
    forall(member((Custo, Caminho), ListaCaminhos),
           (write('Caminho: '), write(Caminho), write(' | Custo: '), write(Custo), nl)).

% Menu utilizador
opcao :-
    write('Qual o estado clinico de origem: '), read(Origem),
    (   arco(Origem, _) ->
        write('Menu:'), nl,
        write('1 - Caminho mais adequado em termos de custo.'), nl,
        write('2 - Caminho mais adequado em termos de duracao.'), nl,
        write('3 - Listar todos os caminhos possiveis.'), nl,
        write('4 - Sair'), nl,
        read(Opcao),
        (Opcao == 1 ->
            caminho_mais_vantajoso_custo(Origem, Caminho, Custo, NomesTratamentos),
            write('Caminho mais adequado em termos de custo: '), write(Caminho), nl,
            write('Custo: '), write(Custo), nl,
            write('Tratamentos: '), write(NomesTratamentos), nl, opcao;
         Opcao == 2 ->
            caminho_mais_vantajoso_duracao(Origem, Caminho, Duracao, NomesTratamentos),
            write('Caminho mais adequado em termos de duracao: '), write(Caminho), nl,
            write('Duracao: '), write(Duracao), nl,
            write('Tratamentos: '), write(NomesTratamentos), nl, opcao;
         Opcao == 3 ->
            listar_rotas(Origem), opcao;
         Opcao == 4 ->
            write('A encerrar.'), nl;
         write('Opcao invalida.'), nl, opcao)
    ;   write('Estado clinico de origem invalido.'), nl, opcao).