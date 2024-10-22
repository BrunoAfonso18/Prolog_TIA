% ------- estrutura da base de dados --------

%doenca(ritmo_cardiaco,temperatura,inchaco_garganta,tipo_tosse[(expetoracao, seca, sangue, nulo)],dispeneia, diagnostico[nome_doenca, nome_doenca, nome_doenca], tratamentos[nome_tratamento, nome_tratamento].

% ritmo_cardiaco (rc_alt, rc_normal)
% temperatura (temp_alta, temp_normal)
% inchaco_garganta (ig_sim, ig_nao)
% tipo_tosse (tt_seca, tt_expetoracao, tt_sangue, tt_nulo)
% dispneia (d_sim, d_nao)

%   As doencas é que terao o nome do tratamento num Array. Depois a selecao do melhor tratamento e feito na base de conhecimento.

% TRATAMENTOS
%  paciente normal
%  gravidas
%  alergias

 
doenca(rc_alt, temp_alta, ig_sim, tt_seca, d_sim, 'Infecao respiratoria grave', ['Amoxicilina-clavulanato','Amoxicilina','Clindamicina']).
doenca(rc_alt, temp_alta, ig_sim, tt_seca, d_nao, 'Gripe viral',['Ibuprofeno','Paracetamol','Aspirina']).
doenca(rc_alt, temp_alta, ig_sim, tt_expetoracao, d_sim, 'Pneumotorax',['Consultar medico']).
doenca(rc_alt, temp_alta, ig_sim, tt_expetoracao, d_nao, 'Infecao bacteriana',['Esomeprazol','Mupirocina','Hidratar']).
doenca(rc_alt, temp_alta, ig_sim, tt_sangue, d_sim, 'Pneumonia bacteriana com hemoptise',['Azitromicina','Amoxicilina','Descanso']).
doenca(rc_alt, temp_alta, ig_sim, tt_sangue, d_nao, 'Tuberculose pulmonar avancada',['Isoniazida','Rifampicina','Consultar medico']).
doenca(rc_alt, temp_alta, ig_sim, tt_nulo, d_sim, 'Pneumonia bacteriana grave',['Levofloxacino','Ceftriaxona','Descanso']).
doenca(rc_alt, temp_alta, ig_sim, tt_nulo, d_nao, 'Infecao respiratoria viral',['Zanamivir','Oseltamivir','Oximetazolina']).
doenca(rc_alt, temp_alta, ig_nao, tt_seca, d_sim, 'Doenca pulmonar intersticial',['Nintedanibe','Prednisona',' Albuterol']).
doenca(rc_alt, temp_alta, ig_nao, tt_seca, d_nao, 'Gripe grave',['Oseltamivir','Oseltamivir','Zanamivir']).
doenca(rc_alt, temp_alta, ig_nao, tt_expetoracao, d_sim, 'Bronquite bacteriana',['Azitromicina','Amoxicilina','Claritromicina']).
doenca(rc_alt, temp_alta, ig_nao, tt_expetoracao, d_nao, 'Pneumonia viral leve',['Paracetamol','Paracetamol','guaifenesina']).
doenca(rc_alt, temp_alta, ig_nao, tt_sangue, d_sim, 'Pneumonia com hemoptise',['Paracetamol','Paracetamol','Guaifenesina']).
doenca(rc_alt, temp_alta, ig_nao, tt_sangue, d_nao, 'Bronquite cronica com hemoptise',['Levofloxacino','Amoxicilina','Consultar medico']).
doenca(rc_alt, temp_alta, ig_nao, tt_nulo, d_sim, 'Insuficiência cardíaca aguda',['Espironolactona','Furosemida','Enalapril']).
doenca(rc_alt, temp_alta, ig_nao, tt_nulo, d_nao, 'Pneumonia bacteriana atípica',['Azitromicina','Eritromicina','Paracetamol']).
doenca(rc_alt, temp_normal, ig_sim, tt_seca, d_sim, 'Asma aguda',['Terbutalina','Salbutamol','Prednisona']).
doenca(rc_alt, temp_normal, ig_sim, tt_seca, d_nao, 'Condicao pulmonar aguda',['Codeina','Paracetamol','Dextrometorfano']).
doenca(rc_alt, temp_normal, ig_sim, tt_expetoracao, d_sim, 'Infecao pulmonar bacteriana',['Levofloxacino', 'Amoxicilina', 'Azitromicina']).
doenca(rc_alt, temp_normal, ig_sim, tt_expetoracao, d_nao, 'Bronquioectasia estavel',['Levofloxacino', 'Amoxicilina', 'Azitromicina']).
doenca(rc_alt, temp_normal, ig_sim, tt_sangue, d_sim, 'Embolia pulmonar',['Heparina', 'Varfarina', 'Apixabana']).
doenca(rc_alt, temp_normal, ig_sim, tt_sangue, d_nao, 'Infecao pulmonar bacteriana com hemoptise',['Levofloxacino', 'Amoxicilina', 'Azitromicina']).
doenca(rc_alt, temp_normal, ig_sim, tt_nulo, d_sim, 'Bronquite aguda com dispneia',['Albuterol', 'Ipratropio', 'Teofilina']).
doenca(rc_alt, temp_normal, ig_sim, tt_nulo, d_nao, 'Infecao viral leve',['Oseltamivir', 'Zanamivir', 'Oximetazolina']).
doenca(rc_alt, temp_normal, ig_nao, tt_seca, d_sim, 'Doenca pulmonar obstrutiva cronica',['Tiotropio', 'Salmeterol', 'Montelucaste']).
doenca(rc_alt, temp_normal, ig_nao, tt_seca, d_nao, 'Refluxo gastroesofagico',['Omeprazol', 'Ranitidina', 'Dompredona']).
doenca(rc_alt, temp_normal, ig_nao, tt_expetoracao, d_sim, 'Fibrose cística',['Dornase', 'Hipertonico', 'Ivacaftor']).
doenca(rc_alt, temp_normal, ig_nao, tt_expetoracao, d_nao, 'Bronquite aguda',['Amoxicilina', 'Azitromicina', 'Ceftriaxona']).
doenca(rc_alt, temp_normal, ig_nao, tt_sangue, d_sim, 'Bronquiectasia',['Azitromicina', 'Tobramicina', 'Ciprofloxacino']).
doenca(rc_alt, temp_normal, ig_nao, tt_sangue, d_nao, 'Aspergilose broncopulmonar alérgica',['Itraconazol', 'Voriconazol', 'Posaconazol']).
doenca(rc_alt, temp_normal, ig_nao, tt_nulo, d_sim, 'Insuficiência cardíaca congestiva',['Furosemida', 'Espironolactona', 'Enalapril']).
doenca(rc_alt, temp_normal, ig_nao, tt_nulo, d_nao, 'Taquicardia',['Propranolol', 'Atenolol', 'Verapamil']).
doenca(rc_normal, temp_alta, ig_sim, tt_seca, d_sim, 'Amigdalite',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_alta, ig_sim, tt_seca, d_nao, 'Rinite alérgica',['Desloratadina', 'Fexofenadina', 'Loratadina']).
doenca(rc_normal, temp_alta, ig_sim, tt_expetoracao, d_sim, 'Abcesso pulmonar',['Amoxicilina', 'Clavulanato', 'Ceftriaxona']).
doenca(rc_normal, temp_alta, ig_sim, tt_expetoracao, d_nao, 'Faringite bacteriana',['Amoxicilina', 'Clavulanato', 'Azitromicina']).
doenca(rc_normal, temp_alta, ig_sim, tt_sangue, d_sim, 'Tuberculose',['Isoniazida', 'Rifampicina', 'Pirazinamida']).
doenca(rc_normal, temp_alta, ig_sim, tt_sangue, d_nao, 'Traqueobronquite',['Azitromicina', 'Clindamicina', 'Ceftriaxona']).
doenca(rc_normal, temp_alta, ig_sim, tt_nulo, d_sim, 'Edema pulmonar',['Furosemida', 'Bumetanida', 'Torasemida']).
doenca(rc_normal, temp_alta, ig_sim, tt_nulo, d_nao, 'Amigdalite cronica',['Amoxicilina', 'Clavulanato', 'Azitromicina']).
doenca(rc_normal, temp_alta, ig_nao, tt_seca, d_sim, 'Fibrose pulmonar',['N-acetilcisteina', 'Pirfenidona', 'Nintedanibe']).
doenca(rc_normal, temp_alta, ig_nao, tt_seca, d_nao, 'Infecao respiratoria superior',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_alta, ig_nao, tt_expetoracao, d_sim, 'Infecao respiratoria aguda',['Amoxicilina', 'Clavulanato', 'Azitromicina']).
doenca(rc_normal, temp_alta, ig_nao, tt_expetoracao, d_nao, 'Constipacao comum',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_alta, ig_nao, tt_sangue, d_sim, 'Tuberculose pulmonar',['Isoniazida', 'Rifampicina', 'Pirazinamida']).
doenca(rc_normal, temp_alta, ig_nao, tt_sangue, d_nao, 'Tromboembolia pulmonar',['Heparina', 'Varfarina', 'Apixabana']).
doenca(rc_normal, temp_alta, ig_nao, tt_nulo, d_sim, 'Asma',['Salbutamol', 'Beclometasona', 'Montelucaste']).
doenca(rc_normal, temp_alta, ig_nao, tt_nulo, d_nao, 'Febre comum',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_normal, ig_sim, tt_seca, d_sim, 'Laringite Grave',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_normal, ig_sim, tt_seca, d_nao, 'Laringite Leve',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_normal, ig_sim, tt_expetoracao, d_sim, 'Pneumonia comum',['Amoxicilina', 'Clavulanato', 'Azitromicina']).
doenca(rc_normal, temp_normal, ig_sim, tt_expetoracao, d_nao, 'Faringite aguda bacteriana',['Amoxicilina', 'Clavulanato', 'Azitromicina']).
doenca(rc_normal, temp_normal, ig_sim, tt_sangue, d_sim, 'Embolia pulmonar',['Heparina', 'Varfarina', 'Apixabana']).
doenca(rc_normal, temp_normal, ig_sim, tt_sangue, d_nao, 'Tuberculose laringotraqueobronquica',['Isoniazida', 'Rifampicina', 'Pirazinamida']).
doenca(rc_normal, temp_normal, ig_sim, tt_nulo, d_sim, 'Epiglotite',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_normal, ig_sim, tt_nulo, d_nao, 'Inflamacao na garganta',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_normal, ig_nao, tt_seca, d_sim, 'Fibrose pulmonar idiopatica',['N-acetilcisteína', 'Pirfenidona', 'Nintedanibe']).
doenca(rc_normal, temp_normal, ig_nao, tt_seca, d_nao, 'Irritacao na garganta',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_normal, ig_nao, tt_expetoracao, d_sim, 'Bronquite cronica',['Salbutamol', 'Beclometasona', 'Montelucaste']).
doenca(rc_normal, temp_normal, ig_nao, tt_expetoracao, d_nao, 'Tosse com obstrucao',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_normal, ig_nao, tt_sangue, d_sim, 'Cancro avancado',['Morfina', 'Oxicodona', 'Fentanil']).
doenca(rc_normal, temp_normal, ig_nao, tt_sangue, d_nao, 'Inflamacao pulmonar',['Paracetamol', 'Ibuprofeno', 'Dipirona']).
doenca(rc_normal, temp_normal, ig_nao, tt_nulo, d_sim, 'Ataque de asma',['Salbutamol', 'Beclometasona', 'Montelucaste']).
doenca(rc_normal, temp_normal, ig_nao, tt_nulo, d_nao, 'Sem doencas pulmonares, procure ajuda noutra area',[]).

tratamentos('Amoxicilina-clavulanato', normal).
tratamentos('Clindamicina', alergias).
tratamentos('Clindamicina', gravidez).
tratamentos('Amoxicilina', gravidez).
tratamentos('Paracetamol', gravidez).
tratamentos('Ibuprofeno', normal).
tratamentos('Ibuprofeno', gravidez).
tratamentos('Aspirina', alergias).
tratamentos('Esomeprazol', normal).
tratamentos('Mupirocina', gravidez).
tratamentos('Hidratar', alergias).
tratamentos('Azitromicina', normal).
tratamentos('Descanso', alergias).
tratamentos('Rifampicina', gravidez).
tratamentos('Isoniazida', normal).
tratamentos('Levofloxacino', normal).
tratamentos('Ceftriaxona', gravidez).
tratamentos('Zanamivir', normal).
tratamentos('Oseltamivir', gravidez).
tratamentos('Oximetazolina', alergias).
tratamentos('Nintedanibe', normal).
tratamentos('Nintedanibe', alergias).
tratamentos('Prednisona', gravidez).
tratamentos('Prednisona', alergias).
tratamentos('Albuterol', alergias).
tratamentos('Oseltamivir', normal).
tratamentos('Zanamivir', alergias).
tratamentos('Claritromicina', alergias).
tratamentos('Paracetamol', normal).
tratamentos('guaifenesina', alergias).
tratamentos('Espironolactona', normal).
tratamentos('Espironolactona', gravidez).
tratamentos('Furosemida', gravidez).
tratamentos('Furosemida', normal).
tratamentos('Enalapril', alergias).
tratamentos('Eritromicina', gravidez).
tratamentos('Paracetamol', alergias).
tratamentos('Codeina', normal).
tratamentos('Dextrometorfano', alergias).
tratamentos('Azitromicina', alergias).
tratamentos('Pirazinamida', alergias).
tratamentos('Heparina', normal).
tratamentos('Varfarina', gravidez).
tratamentos('Apixabana', alergias).
tratamentos('Albuterol', normal).
tratamentos('Ipratropio', gravidez).
tratamentos('Teofilina', alergias).
tratamentos('Zanamivir', gravidez).
tratamentos('Tiotropio', normal).
tratamentos('Salmeterol', gravidez).
tratamentos('Montelucaste', alergias).
tratamentos('Omeprazol', normal).
tratamentos('Ranitidina', gravidez).
tratamentos('Dompredona', alergias).
tratamentos('Dornase', normal).
tratamentos('Hipertonico', gravidez).
tratamentos('Ivacaftor', alergias).
tratamentos('Amoxicilina', normal).
tratamentos('Azitromicina', gravidez).
tratamentos('Ceftriaxona', alergias).
tratamentos('Bumetanida', gravidez).
tratamentos('Torasemida', alergias).
tratamentos('N-acetilcisteina', normal).
tratamentos('Clavulanato', gravidez).
tratamentos('Oxicodona', gravidez).
tratamentos('Dipirona', alergias).
tratamentos('Beclometasona', gravidez).
tratamentos('Pirfenidona', gravidez).
tratamentos('Consultar medico', gravidez).
tratamentos('Consultar medico', normal).
tratamentos('Consultar medico', alergias).
tratamentos('Terbutalina', normal). 
tratamentos('Salbutamol', normal).
tratamentos('Salbutamol', gravidez).
tratamentos('Tobramicina', gravidez). 
tratamentos('Ciprofloxacino', alergias). 
tratamentos('Itraconazol', normal). 
tratamentos('Voriconazol', gravidez). 
tratamentos('Posaconazol', alergias). 
tratamentos('Propranolol', normal).
tratamentos('Atenolol', gravidez).
tratamentos('Verapamil', alergias). 
tratamentos('Desloratadina', normal). 
tratamentos('Fexofenadina', gravidez). 
tratamentos('Loratadina', alergias). 
tratamentos('Morfina', normal). 
tratamentos('Fentanil', alergias).