% Caso base: un número de un solo dígito es una lista con ese dígito
almacenar(N, [N]) :- N < 10.

% Caso recursivo: se toma el último dígito (N mod 10) como cabeza
% y se procesa el resto del número (N // 10) para formar la cola
almacenar(N, [D|T]) :-
    N >= 10,
    D is N mod 10,
    N1 is N // 10,
    almacenar(N1, T).