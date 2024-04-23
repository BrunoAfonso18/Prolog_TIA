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
% -n paciente normal
% -g gravidas
% -a alergias

 
doenca(rc_alt, temp_alta, ig_sim, tt_seca, d_sim, 'Infeção respiratória grave', ['Amoxicilina-g', 'Clindamicina-a', 'Amoxicilina-clavulanato-n']).
doenca(rc_alt, temp_alta, ig_sim, tt_seca, d_nao, 'Gripe viral',['Paracetamol-g','Ibuprofeno-n','Aspirina-a']).
doenca(rc_alt, temp_alta, ig_sim, tt_espeturacao, d_sim, 'Pneumotórax',['Consultar medico']).
doenca(rc_alt, temp_alta, ig_sim, tt_espeturacao, d_nao, 'Infeção bacteriana',['Esomeprazol-n','Mupirocina-g','Hidratar-a']).
doenca(rc_alt, temp_alta, ig_sim, tt_sangue, d_sim, 'Pneumonia bacteriana com hemoptise',['Amoxicilina-g','Azitromicina-n','Descanso-a']).
doenca(rc_alt, temp_alta, ig_sim, tt_sangue, d_nao, 'Tuberculose pulmonar avançada',['Rifampicina-g','isoniazida-n','Consultar medico-a']).
doenca(rc_alt, temp_alta, ig_sim, tt_nulo, d_sim, 'Pneumonia bacteriana grave',['Levofloxacino-n','Ceftriaxona-g','Descanso-a']).
doenca(rc_alt, temp_alta, ig_sim, tt_nulo, d_nao, 'Infeção respiratória viral',['Zanamivir-n','Oseltamivir-g','Oximetazolina-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_seca, d_sim, 'Doença pulmonar intersticial',['Nintedanibe-n','Prednisona-g',' Albuterol-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_seca, d_nao, 'Gripe grave',['Oseltamivir-n','Oseltamivir-g','Zanamivir-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_espeturacao, d_sim, 'Bronquite bacteriana',['Azitromicina-n','Amoxicilina-g','Claritromicina-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_espeturacao, d_nao, 'Pneumonia viral leve',['Paracetamol-n','Paracetamol-g','guaifenesina-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_sangue, d_sim, 'Pneumonia com hemoptise',['Paracetamol-n','Paracetamol-g','Guaifenesina-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_sangue, d_nao, 'Bronquite crónica com hemoptise',['Levofloxacino-n','Amoxicilina-g','Consultar medico-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_nulo, d_sim, 'Insuficiência cardíaca aguda',['Espironolactona-n','Furosemida-g','Enalapril-a']).
doenca(rc_alt, temp_alta, ig_nao, tt_nulo, d_nao, 'Pneumonia bacteriana atípica',['Azitromicina-n','Eritromicina-g','Paracetamol-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_seca, d_sim, 'Asma aguda',['Terbutalina-n','Salbutamol-g','Prednisona-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_seca, d_nao, 'Condição pulmonar aguda',['Codeina-n','Paracetamol-g','Dextrometorfano-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_espeturacao, d_sim, 'Infeção pulmonar bacteriana',['Levofloxacino-n', 'Amoxicilina-g', 'Azitromicina-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_espeturacao, d_nao, 'Bronquioectasia estável',['Levofloxacino-n', 'Amoxicilina-g', 'Azitromicina-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_sangue, d_sim, 'Embolia pulmonar',['Heparina-n', 'Varfarina-g', 'Apixabana-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_sangue, d_nao, 'Infeção pulmonar bacteriana com hemoptise',['Levofloxacino-n', 'Amoxicilina-g', 'Azitromicina-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_nulo, d_sim, 'Bronquite aguda com dispneia',['Albuterol-n', 'Ipratrópio-g', 'Teofilina-a']).
doenca(rc_alt, temp_normal, ig_sim, tt_nulo, d_nao, 'Infeção viral leve',['Oseltamivir-n', 'Zanamivir-g', 'Oximetazolina-a']).
doenca(rc_alt, temp_normal, ig_nao, tt_seca, d_sim, 'Doença pulmonar obstrutiva crónica',['Tiotrópio-n', 'Salmeterol-g', 'Montelucaste-a']).
doenca(rc_alt, temp_normal, ig_nao, tt_seca, d_nao, 'Refluxo gastroesofágico',['Omeprazol-n', 'Ranitidina-g', 'Dompredona-a']).
doenca(rc_alt, temp_normal, ig_nao, tt_espeturacao, d_sim, 'Fibrose cística',['Dornase-n', 'Hipertônico-g', 'Ivacaftor-a']).
doenca(rc_alt, temp_normal, ig_nao, tt_espeturacao, d_nao, 'Bronquite aguda',['Amoxicilina-n', 'Azitromicina-g', 'Ceftriaxona-a']).
doenca(rc_alt, temp_normal, ig_nao, tt_sangue, d_sim, 'Bronquiectasia',['Azitromicina-n', 'Tobramicina-g', 'Ciprofloxacino-a']).
doenca(rc_alt, temp_normal, ig_nao, tt_sangue, d_nao, 'Aspergilose broncopulmonar alérgica',['Itraconazol-n', 'Voriconazol-g', 'Posaconazol-a']).
doenca(rc_alt, temp_normal, ig_nao, tt_nulo, d_sim, 'Insuficiência cardíaca congestiva',['Furosemida-n', 'Espironolactona-g', 'Enalapril-a']).
doenca(rc_alt, temp_normal, ig_nao, tt_nulo, d_nao, 'Taquicardia',['Propranolol-n', 'Atenolol-g', 'Verapamil-a']).
doenca(rc_normal, temp_alta, ig_sim, tt_seca, d_sim, 'Amigdalite',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_alta, ig_sim, tt_seca, d_nao, 'Rinite alérgica',['Desloratadina-n', 'Fexofenadina-g', 'Loratadina-a']).
doenca(rc_normal, temp_alta, ig_sim, tt_espeturacao, d_sim, 'Abcesso pulmonar',['Amoxicilina-n', 'Clavulanato-g', 'Ceftriaxona-a']).
doenca(rc_normal, temp_alta, ig_sim, tt_espeturacao, d_nao, 'Faringite bacteriana',['Amoxicilina-n', 'Clavulanato-g', 'Azitromicina-a']).
doenca(rc_normal, temp_alta, ig_sim, tt_sangue, d_sim, 'Tuberculose',['Isoniazida-n', 'Rifampicina-g', 'Pirazinamida-a']).
doenca(rc_normal, temp_alta, ig_sim, tt_sangue, d_nao, 'Traqueobronquite',['Azitromicina-n', 'Clindamicina-g', 'Ceftriaxona-a']).
doenca(rc_normal, temp_alta, ig_sim, tt_nulo, d_sim, 'Edema pulmonar',['Furosemida-n', 'Bumetanida-g', 'Torasemida-a']).
doenca(rc_normal, temp_alta, ig_sim, tt_nulo, d_nao, 'Amigdalite crônica',['Amoxicilina-n', 'Clavulanato-g', 'Azitromicina-a']).
doenca(rc_normal, temp_alta, ig_nao, tt_seca, d_sim, 'Fibrose pulmonar',['N-acetilcisteína-n', 'Pirfenidona-g', 'Nintedanibe-a']).
doenca(rc_normal, temp_alta, ig_nao, tt_seca, d_nao, 'Infeção respiratória superior',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_alta, ig_nao, tt_espeturacao, d_sim, 'Infeção respiratória aguda',['Amoxicilina-n', 'Clavulanato-g', 'Azitromicina-a']).
doenca(rc_normal, temp_alta, ig_nao, tt_espeturacao, d_nao, 'Constipação comum',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_alta, ig_nao, tt_sangue, d_sim, 'Tuberculose pulmonar',['Isoniazida-n', 'Rifampicina-g', 'Pirazinamida-a']).
doenca(rc_normal, temp_alta, ig_nao, tt_sangue, d_nao, 'Tromboembolia pulmonar',['Heparina-n', 'Varfarina-g', 'Apixabana-a']).
doenca(rc_normal, temp_alta, ig_nao, tt_nulo, d_sim, 'Asma',['Salbutamol-n', 'Beclometasona-g', 'Montelucaste-a']).
doenca(rc_normal, temp_alta, ig_nao, tt_nulo, d_nao, 'Febre comum',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_normal, ig_sim, tt_seca, d_sim, 'Laringite Grave',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_normal, ig_sim, tt_seca, d_nao, 'Laringite Leve',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_normal, ig_sim, tt_espeturacao, d_sim, 'Pneumonia comum',['Amoxicilina-n', 'Clavulanato-g', 'Azitromicina-a']).
doenca(rc_normal, temp_normal, ig_sim, tt_espeturacao, d_nao, 'Faringite aguda bacteriana',['Amoxicilina-n', 'Clavulanato-g', 'Azitromicina-a']).
doenca(rc_normal, temp_normal, ig_sim, tt_sangue, d_sim, 'Embolia pulmonar',['Heparina-n', 'Varfarina-g', 'Apixabana-a']).
doenca(rc_normal, temp_normal, ig_sim, tt_sangue, d_nao, 'Tuberculose laringotraqueobrônquica',['Isoniazida-n', 'Rifampicina-g', 'Pirazinamida-a']).
doenca(rc_normal, temp_normal, ig_sim, tt_nulo, d_sim, 'Epiglotite',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_normal, ig_sim, tt_nulo, d_nao, 'Inflamação na garganta',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_normal, ig_nao, tt_seca, d_sim, 'Fibrose pulmonar idiopática',['N-acetilcisteína-n', 'Pirfenidona-g', 'Nintedanibe-a']).
doenca(rc_normal, temp_normal, ig_nao, tt_seca, d_nao, 'Irritação na garganta',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_normal, ig_nao, tt_espeturacao, d_sim, 'Bronquite crónica',['Salbutamol-n', 'Beclometasona-g', 'Montelucaste-a']).
doenca(rc_normal, temp_normal, ig_nao, tt_espeturacao, d_nao, 'Tosse com obstrução',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_normal, ig_nao, tt_sangue, d_sim, 'Cancro avançado',['Morfina-n', 'Oxicodona-g', 'Fentanil-a']).
doenca(rc_normal, temp_normal, ig_nao, tt_sangue, d_nao, 'Inflamação pulmonar',['Paracetamol-n', 'Ibuprofeno-g', 'Dipirona-a']).
doenca(rc_normal, temp_normal, ig_nao, tt_nulo, d_sim, 'Ataque de asma',['Salbutamol-n', 'Beclometasona-g', 'Montelucaste-a']).
doenca(rc_normal, temp_normal, ig_nao, tt_nulo, d_nao, 'Sem doenças pulmonares, procure ajuda noutra área',[]).

tratamentos('Amoxicilina-clavulanato', normal).
tratamentos('Clindamicina', alergias).

