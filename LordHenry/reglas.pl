:- [base].

% Regla 1: motivo del crimen

motivos(X) :- motivacion(X, _).

% Regla 2: lugar del crimen

estaba(X) :- estuvo(X, biblioteca).

% Regla 3: Oportunidad de cometer el crimen

oportunidad(X) :- 
estaba(X),
motivos(X).

% Regla 4: arma del crimen
arma(X) :- acceso(X, cuerda).

culpa(X) :-  oportunidad(X), arma(X).