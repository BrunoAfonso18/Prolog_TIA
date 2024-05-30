:-[base_dados].

%CAMINHOS POSSIVEIS
% Predicado para listar todos os caminhos possíveis da origem até ao destino
listar_caminhos_possiveis(Origem, Destino) :-
    write('Caminhos possiveis da origem ate ao destino:'), nl,
    listar_caminhos(Origem, Destino, [], []).

% Predicado para encontrar um caminho e imprimi-lo
listar_caminhos(Origem, Destino, Visitados, CaminhoAtual) :-
    arco(Origem, Proximo),
    \+ member(Proximo, Visitados), 
    append(CaminhoAtual, [Origem], NovoCaminho), 
    (Proximo = Destino -> 
        append(NovoCaminho, [Destino], CaminhoCompleto),
        write('Caminho: '), writeln(CaminhoCompleto),
        fail;
    listar_caminhos(Proximo, Destino, [Proximo | Visitados], NovoCaminho)).

%CUSTO
% Predicado para encontrar o caminho de menor custo
menor_custo_caminho(Origem, Destino, Caminho, Custo) :-
    caminho_custo(Origem, Destino, [Origem], Caminho, Custo).

% Predicado para encontrar um caminho e calcular seu custo
caminho_custo(Destino, Destino, Caminho, Caminho, 0).
caminho_custo(Atual, Destino, Visitados, Caminho, Custo) :-
    arco(Atual, Proximo),
    \+ member(Proximo, Visitados),
    caminho_custo(Proximo, Destino, [Proximo | Visitados], Caminho, Custo1),
    custo(Atual, Proximo, C),
    Custo is Custo1 + C.

% Predicado principal para encontrar o menor custo e imprimir o caminho
calcular_menor_custo(Origem, Destino) :-
    findall((C, P), menor_custo_caminho(Origem, Destino, P, C), Resultados),
    sort(Resultados, [(MelhorCusto, MelhorCaminho)|_]),
    reverse(MelhorCaminho, CaminhoInvertido),
    write('Caminho: '), writeln(CaminhoInvertido),
    write('Custo: '), writeln(MelhorCusto).


%TEMPO
% Predicado para encontrar o caminho de menor tempo
menor_tempo_caminho(Origem, Destino, Caminho, Tempo) :-
    caminho_tempo(Origem, Destino, [Origem], Caminho, Tempo).

% Predicado para encontrar um caminho e calcular seu tempo
caminho_tempo(Destino, Destino, Caminho, Caminho, 0).
caminho_tempo(Atual, Destino, Visitados, Caminho, Tempo) :-
    arco(Atual, Proximo),
    \+ member(Proximo, Visitados),
    caminho_tempo(Proximo, Destino, [Proximo | Visitados], Caminho, Tempo1),
    tempo(Atual, Proximo, T),
    Tempo is Tempo1 + T.

% Predicado principal para encontrar o menor tempo e imprimir o caminho
calcular_menor_tempo(Origem, Destino) :-
    findall((T, P), menor_tempo_caminho(Origem, Destino, P, T), Resultados),
    sort(Resultados, [(MelhorTempo, MelhorCaminho)|_]),
    reverse(MelhorCaminho, CaminhoInvertido),
    write('Caminho: '), writeln(CaminhoInvertido),
    write('Tempo: '), writeln(MelhorTempo).