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

% TRATAMENTOS
% -g gravidas
% -a alergias
% -n paciente normal
 
doenca(rc_alt, temp_alta, ig_sim, tt_seca, d_sim, 'Infeção respiratória grave', ['Amoxicilina-g', 'Clindamicina-a', 'Amoxicilina-clavulanato-n']).
doenca(rc_alt, temp_alta, ig_sim, tt_seca, d_nao, 'Gripe viral',['Paracetamol-g','Ibuprofeno-n','Aspirina-a']).
doenca(rc_alt, temp_alta, ig_sim, tt_espeturacao, d_sim, 'Pneumotórax',['Consultar medico']).
doenca(rc_alt, temp_alta, ig_sim, tt_espeturacao, d_nao, 'Infeção bacteriana',['Esomeprazol-n','Mupirocina-g','Hidratar-a']).
doenca(rc_alt, temp_alta, ig_sim, tt_sangue, d_sim, 'Pneumonia bacteriana com hemoptise',['Amoxicilina-g','Azitromicina-n','Descanso-a']).
doenca(rc_alt, temp_alta, ig_sim, tt_sangue, d_nao, 'Tuberculose pulmonar avançada',['Rifampicina-g','isoniazida-n','Consultar medico-a']).
doenca(rc_alt, temp_alta, ig_sim, tt_nulo, d_sim, 'Pneumonia bacteriana grave',['Levofloxacino-n','Ceftriaxona-g','Descanso-a']).
doenca(rc_alt, temp_alta, ig_sim, tt_nulo, d_nao, 'Infeção respiratória viral',['Zanamivir-n','Oseltamivir-g','Oximetazolina-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_seca, d_sim, 'Doença pulmonar intersticial',['Nintedanibe-n','Prednisona-g',' albuterol-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_seca, d_nao, 'Gripe grave',['Oseltamivir-n','Oseltamivir-g','Zanamivir-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_espeturacao, d_sim, 'Bronquite bacteriana',['Azitromicina-n','Amoxicilina-g','Claritromicina-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_espeturacao, d_nao, 'Pneumonia viral leve',['Paracetamol-n','Paracetamol-g','guaifenesina-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_sangue, d_sim, 'Pneumonia com hemoptise',['Paracetamol-n','Paracetamol-g','Guaifenesina-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_sangue, d_nao, 'Bronquite crónica com hemoptise',['Levofloxacino-n','Amoxicilina-g','Consultar medico-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_nulo, d_sim, 'Insuficiência cardíaca aguda',['Espironolactona-n','Furosemida-g','Enalapril-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_nulo, d_nao, 'Pneumonia bacteriana atípica',['Azitromicina-n','Eritromicina-g','Paracetamol-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_seca, d_sim, 'Asma aguda',['Terbutalina-n','Salbutamol-g','Prednisona-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_seca, d_nao, 'Condição pulmonar aguda',['Codeina-n','Paracetamol-g','Dextrometorfano-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_espeturacao, d_sim, 'Infeção pulmonar bacteriana',[]).
doenca(rc_alt, temp_normal, ig_sim, tt_espeturacao, d_nao, 'Bronquioectasia estável',[]).
doenca(rc_alt, temp_normal, ig_sim, tt_sangue, d_sim, 'Embolia pulmonar',[]).
doenca(rc_alt, temp_normal, ig_sim, tt_sangue, d_nao, 'Infeção pulmonar bacteriana com hemoptise',[]).
doenca(rc_alt, temp_normal, ig_sim, tt_nulo, d_sim, 'Bronquite aguda com dispneia',[]).
doenca(rc_alt, temp_normal, ig_sim, tt_nulo, d_nao, 'Infeção viral leve',[]).
doenca(rc_alt, temp_normal, ig_nao, tt_seca, d_sim, 'Doença pulmonar obstrutiva crónica',[]).
doenca(rc_alt, temp_normal, ig_nao, tt_seca, d_nao, 'Refluxo gastroesofágico',[]).
doenca(rc_alt, temp_normal, ig_nao, tt_espeturacao, d_sim, 'Fibrose cística',[]).
doenca(rc_alt, temp_normal, ig_nao, tt_espeturacao, d_nao, 'Bronquite aguda',[]).
doenca(rc_alt, temp_normal, ig_nao, tt_sangue, d_sim, 'Bronquiectasia',[]).
doenca(rc_alt, temp_normal, ig_nao, tt_sangue, d_nao, 'Aspergilose broncopulmonar alérgica',[]).
doenca(rc_alt, temp_normal, ig_nao, tt_nulo, d_sim, 'Insuficiência cardíaca congestiva',[]).
doenca(rc_alt, temp_normal, ig_nao, tt_nulo, d_nao, 'Taquicardia',[]).
doenca(rc_normal, temp_alta, ig_sim, tt_seca, d_sim, 'Amigdalite',[]).
doenca(rc_normal, temp_alta, ig_sim, tt_seca, d_nao, 'Rinite alérgica',[]).
doenca(rc_normal, temp_alta, ig_sim, tt_espeturacao, d_sim, 'Abcesso pulmonar',[]).
doenca(rc_normal, temp_alta, ig_sim, tt_espeturacao, d_nao, 'Faringite bacteriana',[]).
doenca(rc_normal, temp_alta, ig_sim, tt_sangue, d_sim, 'Tuberculose',[]).
doenca(rc_normal, temp_alta, ig_sim, tt_sangue, d_nao, 'Traqueobronquite',[]).
doenca(rc_normal, temp_alta, ig_sim, tt_nulo, d_sim, 'Edema pulmonar',[]).
doenca(rc_normal, temp_alta, ig_sim, tt_nulo, d_nao, 'Amigdalite crônica',[]).
doenca(rc_normal, temp_alta, ig_nao, tt_seca, d_sim, 'Fibrose pulmonar',[]).
doenca(rc_normal, temp_alta, ig_nao, tt_seca, d_nao, 'Infeção respiratória superior',[]).
doenca(rc_normal, temp_alta, ig_nao, tt_espeturacao, d_sim, 'Infeção respiratória aguda',[]).
doenca(rc_normal, temp_alta, ig_nao, tt_espeturacao, d_nao, 'Constipação comum',[]).
doenca(rc_normal, temp_alta, ig_nao, tt_sangue, d_sim, 'Tuberculose pulmonar',[]).
doenca(rc_normal, temp_alta, ig_nao, tt_sangue, d_nao, 'Tromboembolia pulmonar',[]).
doenca(rc_normal, temp_alta, ig_nao, tt_nulo, d_sim, 'Asma',[]).
doenca(rc_normal, temp_alta, ig_nao, tt_nulo, d_nao, 'Febre comum',[]).
doenca(rc_normal, temp_normal, ig_sim, tt_seca, d_sim, 'Laringite Grave',[]).
doenca(rc_normal, temp_normal, ig_sim, tt_seca, d_nao, 'Laringite Leve',[]).
doenca(rc_normal, temp_normal, ig_sim, tt_espeturacao, d_sim, 'Pneumonia comum',[]).
doenca(rc_normal, temp_normal, ig_sim, tt_espeturacao, d_nao, 'Faringite aguda bacteriana',[]).
doenca(rc_normal, temp_normal, ig_sim, tt_sangue, d_sim, 'Embolia pulmonar',[]).
doenca(rc_normal, temp_normal, ig_sim, tt_sangue, d_nao, 'Tuberculose laringotraqueobrônquica',[]).
doenca(rc_normal, temp_normal, ig_sim, tt_nulo, d_sim, 'Epiglotite',[]).
doenca(rc_normal, temp_normal, ig_sim, tt_nulo, d_nao, 'Inflamação na garganta',[]).
doenca(rc_normal, temp_normal, ig_nao, tt_seca, d_sim, 'Fibrose pulmonar idiopática',[]).
doenca(rc_normal, temp_normal, ig_nao, tt_seca, d_nao, 'Irritação na garganta',[]).
doenca(rc_normal, temp_normal, ig_nao, tt_espeturacao, d_sim, 'Bronquite crónica',[]).
doenca(rc_normal, temp_normal, ig_nao, tt_espeturacao, d_nao, 'Tosse com obstrução',[]).
doenca(rc_normal, temp_normal, ig_nao, tt_sangue, d_sim, 'Cancro avançado',[]).
doenca(rc_normal, temp_normal, ig_nao, tt_sangue, d_nao, 'Inflamação pulmonar',[]).
doenca(rc_normal, temp_normal, ig_nao, tt_nulo, d_sim, 'Ataque de asma',[]).
doenca(rc_normal, temp_normal, ig_nao, tt_nulo, d_nao, 'Sem doenças pulmonares, procure ajuda noutra área',[]).

membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).

verdoenca(doenca, Medicamentos) :-
    findall(Medicamento, sintoma(doenca, Medicamento, _, _, _), Medicamentos).

medicamento_para_doenca(X,Y) :-doenca(X,Y, _, _, _). %verifica se existe um Y medicamento para uma doença X