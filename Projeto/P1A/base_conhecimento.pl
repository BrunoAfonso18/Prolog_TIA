%Perfis

if rc_alt and temp_alta and ig_sim and tt_seca and d_sim then 1.
if rc_alt and temp_alta and ig_sim and tt_seca and d_nao then 2.
if rc_alt and temp_alta and ig_sim and tt_espeturacao and d_sim then 3.
if rc_alt and temp_alta and ig_sim and tt_espeturacao and d_nao then 4.
if rc_alt and temp_alta and ig_sim and tt_sangue and d_sim then 5.
if rc_alt and temp_alta and ig_sim and tt_sangue and d_nao then 6.
if rc_alt and temp_alta and ig_sim and tt_nulo and d_sim then 7.
if rc_alt and temp_alta and ig_sim and tt_nulo and d_nao then 8.
if rc_alt and temp_alta and ig_nao and tt_seca and d_sim then 9.
if rc_alt and temp_alta and ig_nao and tt_seca and d_nao then 10.
if rc_alt and temp_alta and ig_nao and tt_espeturacao and d_sim then 11.
if rc_alt and temp_alta and ig_nao and tt_espeturacao and d_nao then 12.
if rc_alt and temp_alta and ig_nao and tt_sangue and d_sim then 13.
if rc_alt and temp_alta and ig_nao and tt_sangue and d_nao then 14.
if rc_alt and temp_alta and ig_nao and tt_nulo and d_sim then 15.
if rc_alt and temp_alta and ig_nao and tt_nulo and d_nao then 16.
if rc_alt and temp_normal and ig_sim and tt_seca and d_sim then 17.
if rc_alt and temp_normal and ig_sim and tt_seca and d_nao then 18.
if rc_alt and temp_normal and ig_sim and tt_espeturacao and d_sim then 19.
if rc_alt and temp_normal and ig_sim and tt_espeturacao and d_nao then 20.
if rc_alt and temp_normal and ig_sim and tt_sangue and d_sim then 21.
if rc_alt and temp_normal and ig_sim and tt_sangue and d_nao then 22.
if rc_alt and temp_normal and ig_sim and tt_nulo and d_sim then 23.
if rc_alt and temp_normal and ig_sim and tt_nulo and d_nao then 24.
if rc_alt and temp_normal and ig_nao and tt_seca and d_sim then 25.
if rc_alt and temp_normal and ig_nao and tt_seca and d_nao then 26.
if rc_alt and temp_normal and ig_nao and tt_espeturacao and d_sim then 27.
if rc_alt and temp_normal and ig_nao and tt_espeturacao and d_nao then 28.
if rc_alt and temp_normal and ig_nao and tt_sangue and d_sim then 29.
if rc_alt and temp_normal and ig_nao and tt_sangue and d_nao then 30.
if rc_alt and temp_normal and ig_nao and tt_nulo and d_sim then 31.
if rc_alt and temp_normal and ig_nao and tt_nulo and d_nao then 32.
if rc_normal and temp_alta and ig_sim and tt_seca and d_sim then 33.
if rc_normal and temp_alta and ig_sim and tt_seca and d_nao then 34.
if rc_normal and temp_alta and ig_sim and tt_espeturacao and d_sim then 35.
if rc_normal and temp_alta and ig_sim and tt_espeturacao and d_nao then 36.
if rc_normal and temp_alta and ig_sim and tt_sangue and d_sim then 37.
if rc_normal and temp_alta and ig_sim and tt_sangue and d_nao then 38.
if rc_normal and temp_alta and ig_sim and tt_nulo and d_sim then 39.
if rc_normal and temp_alta and ig_sim and tt_nulo and d_nao then 40.
if rc_normal and temp_alta and ig_nao and tt_seca and d_sim then 41.
if rc_normal and temp_alta and ig_nao and tt_seca and d_nao then 42.
if rc_normal and temp_alta and ig_nao and tt_espeturacao and d_sim then 43.
if rc_normal and temp_alta and ig_nao and tt_espeturacao and d_nao then 44.
if rc_normal and temp_alta and ig_nao and tt_sangue and d_sim then 45.
if rc_normal and temp_alta and ig_nao and tt_sangue and d_nao then 46.
if rc_normal and temp_alta and ig_nao and tt_nulo and d_sim then 47.
if rc_normal and temp_alta and ig_nao and tt_nulo and d_nao then 48.
if rc_normal and temp_normal and ig_sim and tt_seca and d_sim then 49.
if rc_normal and temp_normal and ig_sim and tt_seca and d_nao then 50.
if rc_normal and temp_normal and ig_sim and tt_espeturacao and d_sim then 51.
if rc_normal and temp_normal and ig_sim and tt_espeturacao and d_nao then 52.
if rc_normal and temp_normal and ig_sim and tt_sangue and d_sim then 53.
if rc_normal and temp_normal and ig_sim and tt_sangue and d_nao then 54.
if rc_normal and temp_normal and ig_sim and tt_nulo and d_sim then 55.
if rc_normal and temp_normal and ig_sim and tt_nulo and d_nao then 56.
if rc_normal and temp_normal and ig_nao and tt_seca and d_sim then 57.
if rc_normal and temp_normal and ig_nao and tt_seca and d_nao then 58.
if rc_normal and temp_normal and ig_nao and tt_espeturacao and d_sim then 59.
if rc_normal and temp_normal and ig_nao and tt_espeturacao and d_nao then 60.
if rc_normal and temp_normal and ig_nao and tt_sangue and d_sim then 61.
if rc_normal and temp_normal and ig_nao and tt_sangue and d_nao then 62.
if rc_normal and temp_normal and ig_nao and tt_nulo and d_sim then 63.
if rc_normal and temp_normal and ig_nao and tt_nulo and d_nao then 64.

perfil(1):- verdiagnostico(rc_alt, temp_alta, ig_sim, tt_seca, d_sim) .
perfil(2):- verdiagnostico(rc_alt, temp_alta, ig_sim, tt_seca, d_nao) .
perfil(3):- verdiagnostico(rc_alt, temp_alta, ig_sim, tt_espeturacao, d_sim) .
perfil(4):- verdiagnostico(rc_alt, temp_alta, ig_sim, tt_espeturacao, d_nao) .
perfil(5):- verdiagnostico(rc_alt, temp_alta, ig_sim, tt_sangue, d_sim) .
perfil(6):- verdiagnostico(rc_alt, temp_alta, ig_sim, tt_sangue, d_nao) .
perfil(7):- verdiagnostico(rc_alt, temp_alta, ig_sim, tt_nulo, d_sim) .
perfil(8):- verdiagnostico(rc_alt, temp_alta, ig_sim, tt_nulo, d_nao) .
perfil(9):- verdiagnostico(rc_alt, temp_alta, ig_nao, tt_seca, d_sim) .
perfil(10):- verdiagnostico(rc_alt, temp_alta, ig_nao, tt_seca, d_nao) .
perfil(11):- verdiagnostico(rc_alt, temp_alta, ig_nao, tt_espeturacao, d_sim) .
perfil(12):- verdiagnostico(rc_alt, temp_alta, ig_nao, tt_espeturacao, d_nao) .
perfil(13):- verdiagnostico(rc_alt, temp_alta, ig_nao, tt_sangue, d_sim) .
perfil(14):- verdiagnostico(rc_alt, temp_alta, ig_nao, tt_sangue, d_nao) .
perfil(15):- verdiagnostico(rc_alt, temp_alta, ig_nao, tt_nulo, d_sim) .
perfil(16):- verdiagnostico(rc_alt, temp_alta, ig_nao, tt_nulo, d_nao) .
perfil(17):- verdiagnostico(rc_alt, temp_normal, ig_sim, tt_seca, d_sim) .
perfil(18):- verdiagnostico(rc_alt, temp_normal, ig_sim, tt_seca, d_nao) .
perfil(19):- verdiagnostico(rc_alt, temp_normal, ig_sim, tt_espeturacao, d_sim) .
perfil(20):- verdiagnostico(rc_alt, temp_normal, ig_sim, tt_espeturacao, d_nao) .
perfil(21):- verdiagnostico(rc_alt, temp_normal, ig_sim, tt_sangue, d_sim) .
perfil(22):- verdiagnostico(rc_alt, temp_normal, ig_sim, tt_sangue, d_nao) .
perfil(23):- verdiagnostico(rc_alt, temp_normal, ig_sim, tt_nulo, d_sim) .
perfil(24):- verdiagnostico(rc_alt, temp_normal, ig_sim, tt_nulo, d_nao) .
perfil(25):- verdiagnostico(rc_alt, temp_normal, ig_nao, tt_seca, d_sim) .
perfil(26):- verdiagnostico(rc_alt, temp_normal, ig_nao, tt_seca, d_nao) .
perfil(27):- verdiagnostico(rc_alt, temp_normal, ig_nao, tt_espeturacao, d_sim) .
perfil(28):- verdiagnostico(rc_alt, temp_normal, ig_nao, tt_espeturacao, d_nao) .
perfil(29):- verdiagnostico(rc_alt, temp_normal, ig_nao, tt_sangue, d_sim) .
perfil(30):- verdiagnostico(rc_alt, temp_normal, ig_nao, tt_sangue, d_nao) .
perfil(31):- verdiagnostico(rc_alt, temp_normal, ig_nao, tt_nulo, d_sim) .
perfil(32):- verdiagnostico(rc_alt, temp_normal, ig_nao, tt_nulo, d_nao) .
perfil(33):- verdiagnostico(rc_normal, temp_alta, ig_sim, tt_seca, d_sim) .
perfil(34):- verdiagnostico(rc_normal, temp_alta, ig_sim, tt_seca, d_nao) .
perfil(35):- verdiagnostico(rc_normal, temp_alta, ig_sim, tt_espeturacao, d_sim) .
perfil(36):- verdiagnostico(rc_normal, temp_alta, ig_sim, tt_espeturacao, d_nao) .
perfil(37):- verdiagnostico(rc_normal, temp_alta, ig_sim, tt_sangue, d_sim) .
perfil(38):- verdiagnostico(rc_normal, temp_alta, ig_sim, tt_sangue, d_nao) .
perfil(39):- verdiagnostico(rc_normal, temp_alta, ig_sim, tt_nulo, d_sim) .
perfil(40):- verdiagnostico(rc_normal, temp_alta, ig_sim, tt_nulo, d_nao) .
perfil(41):- verdiagnostico(rc_normal, temp_alta, ig_nao, tt_seca, d_sim) .
perfil(42):- verdiagnostico(rc_normal, temp_alta, ig_nao, tt_seca, d_nao) .
perfil(43):- verdiagnostico(rc_normal, temp_alta, ig_nao, tt_espeturacao, d_sim) .
perfil(44):- verdiagnostico(rc_normal, temp_alta, ig_nao, tt_espeturacao, d_nao) .
perfil(45):- verdiagnostico(rc_normal, temp_alta, ig_nao, tt_sangue, d_sim) .
perfil(46):- verdiagnostico(rc_normal, temp_alta, ig_nao, tt_sangue, d_nao) .
perfil(47):- verdiagnostico(rc_normal, temp_alta, ig_nao, tt_nulo, d_sim) .
perfil(48):- verdiagnostico(rc_normal, temp_alta, ig_nao, tt_nulo, d_nao) .
perfil(49):- verdiagnostico(rc_normal, temp_normal, ig_sim, tt_seca, d_sim) .
perfil(50):- verdiagnostico(rc_normal, temp_normal, ig_sim, tt_seca, d_nao) .
perfil(51):- verdiagnostico(rc_normal, temp_normal, ig_sim, tt_espeturacao, d_sim) .
perfil(52):- verdiagnostico(rc_normal, temp_normal, ig_sim, tt_espeturacao, d_nao) .
perfil(53):- verdiagnostico(rc_normal, temp_normal, ig_sim, tt_sangue, d_sim) .
perfil(54):- verdiagnostico(rc_normal, temp_normal, ig_sim, tt_sangue, d_nao) .
perfil(55):- verdiagnostico(rc_normal, temp_normal, ig_sim, tt_nulo, d_sim) .
perfil(56):- verdiagnostico(rc_normal, temp_normal, ig_sim, tt_nulo, d_nao) .
perfil(57):- verdiagnostico(rc_normal, temp_normal, ig_nao, tt_seca, d_sim) .
perfil(58):- verdiagnostico(rc_normal, temp_normal, ig_nao, tt_seca, d_nao) .
perfil(59):- verdiagnostico(rc_normal, temp_normal, ig_nao, tt_espeturacao, d_sim) .
perfil(60):- verdiagnostico(rc_normal, temp_normal, ig_nao, tt_espeturacao, d_nao) .
perfil(61):- verdiagnostico(rc_normal, temp_normal, ig_nao, tt_sangue, d_sim) .
perfil(62):- verdiagnostico(rc_normal, temp_normal, ig_nao, tt_sangue, d_nao) .
perfil(63):- verdiagnostico(rc_normal, temp_normal, ig_nao, tt_nulo, d_sim) .
perfil(64):- verdiagnostico(rc_normal, temp_normal, ig_nao, tt_nulo, d_nao) .



membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).


%lista todas as comidas
%lista_doencas:-findall([Diagnostico],(doenca(_,_,_,_,_,Diagnostico,_)),Lista_doencas), print(Lista_doencas).

%verdiagnostico(Rc,Temp,Inch,Tosse,Disp):- findall([Rc,Temp,Inch,Tosse,Disp],(doenca(Rc,Temp,Inch,Tosse,Disp,_,_)),Lista_doencas), print(Lista_doencas).

%lista_doencas :-
%   findall(Diagnostico, doenca(_, _, _, _, _, Diagnostico, _), Lista_doencas),
%    print(Lista_doencas).

%verdiagnostico(Rc, Temp, Inch, Tosse, Disp) :-
%    findall(Diagnostico, doenca(Rc, Temp, Inch, Tosse, Disp, Diagnostico, _), Lista_doencas),
%    print(Lista_doencas).

%verdiagnostico(Rc, Temp, Inch, Tosse, Disp) :-
%    doenca(Rc, Temp, Inch, Tosse, Disp, Diagnostico, _),
%    writeln(Diagnostico).

verdiagnostico(Rc, Temp, Ig, Tt, D) :-
    doenca(Rc, Temp, Ig, Tt, D, Diagnostico, _),
    writeln(Diagnostico).