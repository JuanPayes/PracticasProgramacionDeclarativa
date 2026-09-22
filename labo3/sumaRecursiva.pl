% Dado un número N, se debe sumar N con todos los números anteriores hasta llegar a 1.
% n -> n-1-> n-1-1 -> n-1-1-1 -> ... -> 1

%caso base
suma(1, 1).

suma(N, R) :- 
    N > 1,
    N1 is N - 1,
    suma(N1, R1),
    R is N + R1.
