% ------- estrutura da base de dados --------

%doença(ritmo_cardiaco,temperatura,inchaco_garganta,tipo_tosse[(espeturacao, seca, sangue, nulo)],dispeneia, diagnostico[nome_doenca, nome_doença, nome_doença], tratamentos[nome_tratamento, nome_tratamento].

% ritmo_cardiaco (rc_alto, rc_baixo, rc_normal)
% temperatura (temp_alta, temp_normal)
% inchaco_garganta (ig_sim, ig_nao)
% tipo_tosse (tt_seca, tt_espeturacao, tt_sangue, tt_nulo)
% dispeneia (d_sim, d_nao)

doenca(rc_alto, temp_alta, ig_sim, tt_seca, d_sim).
doenca(rc_alto, temp_alta, ig_sim, tt_seca, d_nao).
doenca(rc_alto, temp_alta, ig_sim, tt_espeturacao, d_sim).
doenca(rc_alto, temp_alta, ig_sim, tt_espeturacao, d_nao).
doenca(rc_alto, temp_alta, ig_sim, tt_sangue, d_sim).
doenca(rc_alto, temp_alta, ig_sim, tt_sangue, d_nao).
doenca(rc_alto, temp_alta, ig_sim, tt_nulo, d_sim).
doenca(rc_alto, temp_alta, ig_sim, tt_nulo, d_nao).
doenca(rc_alto, temp_alta, ig_nao, tt_seca, d_sim).
doenca(rc_alto, temp_alta, ig_nao, tt_seca, d_nao).
doenca(rc_alto, temp_alta, ig_nao, tt_espeturacao, d_sim).
doenca(rc_alto, temp_alta, ig_nao, tt_espeturacao, d_nao).
doenca(rc_alto, temp_alta, ig_nao, tt_sangue, d_sim).
doenca(rc_alto, temp_alta, ig_nao, tt_sangue, d_nao).
doenca(rc_alto, temp_alta, ig_nao, tt_nulo, d_sim).
doenca(rc_alto, temp_alta, ig_nao, tt_nulo, d_nao).
doenca(rc_alto, temp_normal, ig_sim, tt_seca, d_sim).
doenca(rc_alto, temp_normal, ig_sim, tt_seca, d_nao).
doenca(rc_alto, temp_normal, ig_sim, tt_espeturacao, d_sim).
doenca(rc_alto, temp_normal, ig_sim, tt_espeturacao, d_nao).
doenca(rc_alto, temp_normal, ig_sim, tt_sangue, d_sim).
doenca(rc_alto, temp_normal, ig_sim, tt_sangue, d_nao).
doenca(rc_alto, temp_normal, ig_sim, tt_nulo, d_sim).
doenca(rc_alto, temp_normal, ig_sim, tt_nulo, d_nao).
doenca(rc_alto, temp_normal, ig_nao, tt_seca, d_sim).
doenca(rc_alto, temp_normal, ig_nao, tt_seca, d_nao).
doenca(rc_alto, temp_normal, ig_nao, tt_espeturacao, d_sim).
doenca(rc_alto, temp_normal, ig_nao, tt_espeturacao, d_nao).
doenca(rc_alto, temp_normal, ig_nao, tt_sangue, d_sim).
doenca(rc_alto, temp_normal, ig_nao, tt_sangue, d_nao).
doenca(rc_alto, temp_normal, ig_nao, tt_nulo, d_sim).
doenca(rc_alto, temp_normal, ig_nao, tt_nulo, d_nao).
doenca(rc_baixo, temp_alta, ig_sim, tt_seca, d_sim).
doenca(rc_baixo, temp_alta, ig_sim, tt_seca, d_nao).
doenca(rc_baixo, temp_alta, ig_sim, tt_espeturacao, d_sim).
doenca(rc_baixo, temp_alta, ig_sim, tt_espeturacao, d_nao).
doenca(rc_baixo, temp_alta, ig_sim, tt_sangue, d_sim).
doenca(rc_baixo, temp_alta, ig_sim, tt_sangue, d_nao).
doenca(rc_baixo, temp_alta, ig_sim, tt_nulo, d_sim).
doenca(rc_baixo, temp_alta, ig_sim, tt_nulo, d_nao).
doenca(rc_baixo, temp_alta, ig_nao, tt_seca, d_sim).
doenca(rc_baixo, temp_alta, ig_nao, tt_seca, d_nao).
doenca(rc_baixo, temp_alta, ig_nao, tt_espeturacao, d_sim).
doenca(rc_baixo, temp_alta, ig_nao, tt_espeturacao, d_nao).
doenca(rc_baixo, temp_alta, ig_nao, tt_sangue, d_sim).
doenca(rc_baixo, temp_alta, ig_nao, tt_sangue, d_nao).
doenca(rc_baixo, temp_alta, ig_nao, tt_nulo, d_sim).
doenca(rc_baixo, temp_alta, ig_nao, tt_nulo, d_nao).
doenca(rc_baixo, temp_normal, ig_sim, tt_seca, d_sim).
doenca(rc_baixo, temp_normal, ig_sim, tt_seca, d_nao).
doenca(rc_baixo, temp_normal, ig_sim, tt_espeturacao, d_sim).
doenca(rc_baixo, temp_normal, ig_sim, tt_espeturacao, d_nao).
doenca(rc_baixo, temp_normal, ig_sim, tt_sangue, d_sim).
doenca(rc_baixo, temp_normal, ig_sim, tt_sangue, d_nao).
doenca(rc_baixo, temp_normal, ig_sim, tt_nulo, d_sim).
doenca(rc_baixo, temp_normal, ig_sim, tt_nulo, d_nao).
doenca(rc_baixo, temp_normal, ig_nao, tt_seca, d_sim).
doenca(rc_baixo, temp_normal, ig_nao, tt_seca, d_nao).
doenca(rc_baixo, temp_normal, ig_nao, tt_espeturacao, d_sim).
doenca(rc_baixo, temp_normal, ig_nao, tt_espeturacao, d_nao).
doenca(rc_baixo, temp_normal, ig_nao, tt_sangue, d_sim).
doenca(rc_baixo, temp_normal, ig_nao, tt_sangue, d_nao).
doenca(rc_baixo, temp_normal, ig_nao, tt_nulo, d_sim).
doenca(rc_baixo, temp_normal, ig_nao, tt_nulo, d_nao).
doenca(rc_normal, temp_alta, ig_sim, tt_seca, d_sim).
doenca(rc_normal, temp_alta, ig_sim, tt_seca, d_nao).
doenca(rc_normal, temp_alta, ig_sim, tt_espeturacao, d_sim).
doenca(rc_normal, temp_alta, ig_sim, tt_espeturacao, d_nao).
doenca(rc_normal, temp_alta, ig_sim, tt_sangue, d_sim).
doenca(rc_normal, temp_alta, ig_sim, tt_sangue, d_nao).
doenca(rc_normal, temp_alta, ig_sim, tt_nulo, d_sim).
doenca(rc_normal, temp_alta, ig_sim, tt_nulo, d_nao).
doenca(rc_normal, temp_alta, ig_nao, tt_seca, d_sim).
doenca(rc_normal, temp_alta, ig_nao, tt_seca, d_nao).
doenca(rc_normal, temp_alta, ig_nao, tt_espeturacao, d_sim).
doenca(rc_normal, temp_alta, ig_nao, tt_espeturacao, d_nao).
doenca(rc_normal, temp_alta, ig_nao, tt_sangue, d_sim).
doenca(rc_normal, temp_alta, ig_nao, tt_sangue, d_nao).
doenca(rc_normal, temp_alta, ig_nao, tt_nulo, d_sim).
doenca(rc_normal, temp_alta, ig_nao, tt_nulo, d_nao).
doenca(rc_normal, temp_normal, ig_sim, tt_seca, d_sim).
doenca(rc_normal, temp_normal, ig_sim, tt_seca, d_nao).
doenca(rc_normal, temp_normal, ig_sim, tt_espeturacao, d_sim).
doenca(rc_normal, temp_normal, ig_sim, tt_espeturacao, d_nao).
doenca(rc_normal, temp_normal, ig_sim, tt_sangue, d_sim).
doenca(rc_normal, temp_normal, ig_sim, tt_sangue, d_nao).
doenca(rc_normal, temp_normal, ig_sim, tt_nulo, d_sim).
doenca(rc_normal, temp_normal, ig_sim, tt_nulo, d_nao).
doenca(rc_normal, temp_normal, ig_nao, tt_seca, d_sim).
doenca(rc_normal, temp_normal, ig_nao, tt_seca, d_nao).
doenca(rc_normal, temp_normal, ig_nao, tt_espeturacao, d_sim).
doenca(rc_normal, temp_normal, ig_nao, tt_espeturacao, d_nao).
doenca(rc_normal, temp_normal, ig_nao, tt_sangue, d_sim).
doenca(rc_normal, temp_normal, ig_nao, tt_sangue, d_nao).
doenca(rc_normal, temp_normal, ig_nao, tt_nulo, d_sim).
doenca(rc_normal, temp_normal, ig_nao, tt_nulo, d_nao).

membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).

verdoenca(doenca, Medicamentos) :-
    findall(Medicamento, sintoma(doenca, Medicamento, _, _, _), Medicamentos).

medicamento_para_doenca(X,Y) :-doenca(X,Y, _, _, _). %verifica se existe um Y medicamento para uma doença X