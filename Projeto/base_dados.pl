% ------- estrutura da base de dados --------

%doença(ritmo_cardiaco,temperatura,dor_inalar,tensao_art,tosse,inchaco_garganta,tipo_tosse[(espeturacao, seca, sangue)],dispeneia, diagnostico[nome_doenca, nome_doença, nome_doença].
% ritmo_cardiaco (rc_alto, rc_baixo, rc_normal)
% temperatura (temp_alta, temp_normal)
% dor_inalar (di_sim, di_nao)
% tensao_art (ta_alta, ta_baixa, ta_normal)
% tosse (t_sim, t_nao)
% inchaco_garganta (ig_sim, ig_nao)
% tipo_tosse (tt_seca, tt_espeturacao, tt_sangue, tt_nulo)
% dispeneia (d_sim, d_nao)


doenca(rc_normal, temp_normal, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Sem doenças pulmunares aparentes, procure ajuda médica noutra área']).
doenca(rc_alto, temp_normal, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Ansiedade ou Stress']).
doenca(rc_baixo, temp_normal, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Braquicardia']).

doenca(rc_alto, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Infeção bacteriana', 'Infeção vírica', 'Infeção fúngica']).
doenca(rc_normal, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Febre Viral', 'Infeções nao pulmunares']).
doenca(rc_baixo, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).

doenca(rc_alto, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_alto, temp_normal, di_sim, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_alto, temp_alta, di_sim, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_baixo, temp_alta, di_sim, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).

doenca(rc_baixo, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_baixo, temp_normal, di_sim, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_baixo, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_baixo, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_baixo, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_baixo, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_baixo, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_baixo, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).
doenca(rc_baixo, temp_alta, di_nao, ta_normal, t_nao, ig_nao, tt_nulo, d_nao,['Condição Neurológica', 'Condição cardíaca']).



membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).


verdoenca(doenca, Medicamentos) :-
    findall(Medicamento, sintoma(doenca, Medicamento, _, _, _), Medicamentos).


medicamento_para_doenca(X,Y) :-doenca(X,Y, _, _, _). %verifica se existe um Y medicamento para uma doença X