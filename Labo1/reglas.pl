
:- [base].

% Regla 1: personaje_armado/1
personaje_armado(Personaje) :-
    arma(Personaje, _).

% Regla 2: tiene_arma_de_fuego/1
tiene_arma_de_fuego(Personaje) :-
    arma(Personaje, pistola).

% Regla 3: en_zona_peligrosa/1
en_zona_peligrosa(Personaje) :-
    ubicacion(Personaje, Lugar),
    dificultad(Lugar, Nivel),
    (Nivel = alta ; Nivel = muy_alta).

% Regla 4 (extra): mayor_edad/2
mayor_edad(P1, P2) :-
    edad(P1, E1),
    edad(P2, E2),
    E1 > E2.

% Regla 5 (extra): comparten_lugar/2
comparten_lugar(P1, P2) :-
    ubicacion(P1, Lugar),
    ubicacion(P2, Lugar),
    P1 \= P2.

% Regla 6 (extra): riesgo_por_enemigo/2
riesgo_por_enemigo(Personaje, Enemigo) :-
    ubicacion(Personaje, Lugar),
    aparicion(Enemigo, Lugar).