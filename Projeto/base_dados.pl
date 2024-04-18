% ------- estrutura da base de dados --------

%doença(ritmo_cardiaco,temperatura,inchaco_garganta,tipo_tosse[(espeturacao, seca, sangue, nulo)],dispeneia, diagnostico[nome_doenca, nome_doença, nome_doença], tratamentos[nome_tratamento, nome_tratamento].

% ritmo_cardiaco (rc_alt, rc_normal)
% temperatura (temp_alta, temp_normal)
% inchaco_garganta (ig_sim, ig_nao)
% tipo_tosse (tt_seca, tt_espeturacao, tt_sangue, tt_nulo)
% dispneia (d_sim, d_nao)

%   Depois tens de ter factos só com os tratamentos com dados dos próprios 
%   tratamentos como contra-indicações, tipologia de doentes e outros que possam 
%   ser úteis para adequar o melhor tratamento para a doença/ pessoa.

%   As doenças é que terão o nome do tratamento num Array. Depois a seleção do melhor tratamento e feito na base de conhecimento.

doenca(rc_alt, temp_alta, ig_sim, tt_seca, d_sim, ['Pneumonia', 'Bronquite aguda']).
doenca(rc_alt, temp_alta, ig_sim, tt_seca, d_nao, ['Gripe Viral', 'Infeção respiratória grave']).
doenca(rc_alt, temp_alta, ig_sim, tt_espeturacao, d_sim, ['Pneumonia bacteriana']).
doenca(rc_alt, temp_alta, ig_sim, tt_espeturacao, d_nao, ['Infecao bacteriana', 'Bronquite aguda']).
doenca(rc_alt, temp_alta, ig_sim, tt_sangue, d_sim, ['Pneumonia bacteriana com hemoptise', 'Tuberculose pulmonar avançada', 'Embolia pulmonar']).
doenca(rc_alt, temp_alta, ig_sim, tt_sangue, d_nao, ['Tuberculose pulmonar avançada', 'Cancro no pulmão']).
doenca(rc_alt, temp_alta, ig_sim, tt_nulo, d_sim, ['Pneumonia bacteriana grave', 'Bronquite aguda com dispneia']).
doenca(rc_alt, temp_alta, ig_sim, tt_nulo, d_nao, ['Infeção respiratória viral', 'Gripe grave', 'Reação alérgica']).

doenca(rc_alt, temp_alta, ig_nao, tt_seca, d_sim, ['Pneumonia viral', 'Pneumonia bacteriana', 'Crise de asma']).
doenca(rc_alt, temp_alta, ig_nao, tt_seca, d_nao, ['Constipação comum', 'Infeção respiratória viral', 'Gripe grave']).
doenca(rc_alt, temp_alta, ig_nao, tt_espeturacao, d_sim, ['Pneumonia Bacteriana', 'Bronquite bacteriana']).
doenca(rc_alt, temp_alta, ig_nao, tt_espeturacao, d_nao, ['Bronquite aguda', 'Pneumonia viral']).
doenca(rc_alt, temp_alta, ig_nao, tt_sangue, d_sim, ['Embolia pulmunar', 'Pneumonia com hemoptise', 'Tuberculose pulmonar avançada']).
doenca(rc_alt, temp_alta, ig_nao, tt_sangue, d_nao, ['Bronquite crónica com hemoptise', 'Bronquiectasia', 'Cancro no pulmão']).
doenca(rc_alt, temp_alta, ig_nao, tt_nulo, d_sim, ['Insuficiência cardíaca aguda', 'Doença pulmonar obstrutiva crónica', 'Fibrose pulmonar']).
doenca(rc_alt, temp_alta, ig_nao, tt_nulo, d_nao, ['Pneumonia bacteriana atípica', 'Infeção pulmonar com septicemia']).

doenca(rc_alt, temp_normal, ig_sim, tt_seca, d_sim, ['Condição pulmonar aguda', 'Asma aguda', 'Bronquite aguda']).
doenca(rc_alt, temp_normal, ig_sim, tt_seca, d_nao, ['Condição pulmonar aguda', 'Faringite']).
doenca(rc_alt, temp_normal, ig_sim, tt_espeturacao, d_sim, ['Infeção pulmonar bacteriana', 'Pneumonia bacteriana']).
doenca(rc_alt, temp_normal, ig_sim, tt_espeturacao, d_nao, ['Bronquite aguda', 'Infeção respiratória viral']).
doenca(rc_alt, temp_normal, ig_sim, tt_sangue, d_sim, ['Embolia pulmunar', 'Pneumonia com hemoptise', 'Tuberculose pulmonar avançada', 'Pneumonia bacteriana com hemoptise']).
doenca(rc_alt, temp_normal, ig_sim, tt_sangue, d_nao, ['Tuberculose pulmonar', 'Cancro no pulmão em estágio inicial/avançado', 'Bronquiectasia', 'Infeção pulmonar bacteriana com hemoptise']).
doenca(rc_alt, temp_normal, ig_sim, tt_nulo, d_sim, ['Insuficiência cardíaca congestiva', 'Edema pulmonar', 'Embolia pulmonar', 'Bronquite aguda com obstrução grave das vias aéreas']).
doenca(rc_alt, temp_normal, ig_sim, tt_nulo, d_nao, ['Infeção viral leve', 'Ansiedade /stress']).

doenca(rc_alt, temp_normal, ig_nao, tt_seca, d_sim, ['Asma', 'Doença pulmonar obstrutiva crónica']).
doenca(rc_alt, temp_normal, ig_nao, tt_seca, d_nao, ['Asma leve/intermitente', 'Refluxo gastroesofágico', 'Tosse psicogénica']).
doenca(rc_alt, temp_normal, ig_nao, tt_espeturacao, d_sim, ['Bronquite crónica', 'Fibrose cística']).
doenca(rc_alt, temp_normal, ig_nao, tt_espeturacao, d_nao, ['Bronquite aguda', 'Pneumonia leve/atípica']).
doenca(rc_alt, temp_normal, ig_nao, tt_sangue, d_sim, ['Pneumonia com complicação', 'Bronquiectasia']).
doenca(rc_alt, temp_normal, ig_nao, tt_sangue, d_nao, ['Aspergilose broncopulmonar alérgica', 'Bronquiectasia']).
doenca(rc_alt, temp_normal, ig_nao, tt_nulo, d_sim, ['Insuficiência cardíaca congestiva', 'Doença pulmonar intersticial', 'Pneumotórax']).
doenca(rc_alt, temp_normal, ig_nao, tt_nulo, d_nao, ['Hipertireoidismo', 'Outras condições cardíacas']).

doenca(rc_normal, temp_alta, ig_sim, tt_seca, d_sim, ['Amigdalite', 'Faringite']).
doenca(rc_normal, temp_alta, ig_sim, tt_seca, d_nao, ['Rinite alérgica', 'Reação alérgica']).
doenca(rc_normal, temp_alta, ig_sim, tt_espeturacao, d_sim, ['Abcesso pulmonar', 'Bronquite bacteriana']).
doenca(rc_normal, temp_alta, ig_sim, tt_espeturacao, d_nao, ['Sinusite', 'Amigdalite bacteriana', 'Faringite bacteriana']).
doenca(rc_normal, temp_alta, ig_sim, tt_sangue, d_sim, ['Embolia pulmonar', 'Tuberculose']).
doenca(rc_normal, temp_alta, ig_sim, tt_sangue, d_nao, ['Traqueobronquite', 'Sinusite crônica']).
doenca(rc_normal, temp_alta, ig_sim, tt_nulo, d_sim, ['Edema pulmonar', 'Asma grave']).
doenca(rc_normal, temp_alta, ig_sim, tt_nulo, d_nao, ['Amigdalite crônica', 'Reação alérgica']).

doenca(rc_normal, temp_alta, ig_nao, tt_seca, d_sim, ['Insuficiência cardíaca congestiva', 'Asma']).
doenca(rc_normal, temp_alta, ig_nao, tt_seca, d_nao, ['Infecção respiratória superior', 'Faringite viral']).
doenca(rc_normal, temp_alta, ig_nao, tt_espeturacao, d_sim, []).
doenca(rc_normal, temp_alta, ig_nao, tt_espeturacao, d_nao, []).
doenca(rc_normal, temp_alta, ig_nao, tt_sangue, d_sim, []).
doenca(rc_normal, temp_alta, ig_nao, tt_sangue, d_nao, []).
doenca(rc_normal, temp_alta, ig_nao, tt_nulo, d_sim, []).
doenca(rc_normal, temp_alta, ig_nao, tt_nulo, d_nao, []).

doenca(rc_normal, temp_normal, ig_sim, tt_seca, d_sim, []).
doenca(rc_normal, temp_normal, ig_sim, tt_seca, d_nao, []).
doenca(rc_normal, temp_normal, ig_sim, tt_espeturacao, d_sim, []).
doenca(rc_normal, temp_normal, ig_sim, tt_espeturacao, d_nao, []).
doenca(rc_normal, temp_normal, ig_sim, tt_sangue, d_sim, []).
doenca(rc_normal, temp_normal, ig_sim, tt_sangue, d_nao, []).
doenca(rc_normal, temp_normal, ig_sim, tt_nulo, d_sim, []).
doenca(rc_normal, temp_normal, ig_sim, tt_nulo, d_nao, []).

doenca(rc_normal, temp_normal, ig_nao, tt_seca, d_sim, []).
doenca(rc_normal, temp_normal, ig_nao, tt_seca, d_nao, []).
doenca(rc_normal, temp_normal, ig_nao, tt_espeturacao, d_sim, []).
doenca(rc_normal, temp_normal, ig_nao, tt_espeturacao, d_nao, []).
doenca(rc_normal, temp_normal, ig_nao, tt_sangue, d_sim, []).
doenca(rc_normal, temp_normal, ig_nao, tt_sangue, d_nao, []).
doenca(rc_normal, temp_normal, ig_nao, tt_nulo, d_sim, []).
doenca(rc_normal, temp_normal, ig_nao, tt_nulo, d_nao, []).

membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).

verdoenca(doenca, Medicamentos) :-
    findall(Medicamento, sintoma(doenca, Medicamento, _, _, _), Medicamentos).

medicamento_para_doenca(X,Y) :-doenca(X,Y, _, _, _). %verifica se existe um Y medicamento para uma doença X