% Suma de dos numeros
% is/2 resuelve la operacion y asigna el resultado a R
suma(A, B, R) :-
    number(A), number(B),
    R is A + B.

% Resta de dos numeros
resta(A, B, R) :-
    number(A), number(B),
    R is A - B.
