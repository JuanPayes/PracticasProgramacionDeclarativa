power_cola(_, 0, 1).

power_cola(X, N, R) :-
    N > 0,
    power_acc(X, N, 1, R).

power_acc(_, 0, Acc, Acc).

power_acc(X, N, Acc, R) :-
    N > 0,
    Acc1 is Acc * X,
    N1 is N - 1,
    power_acc(X, N1, Acc1, R).

%------------------------------------

power(_, 0, 1).

power(X, N, R) :-
    N > 0,
    N1 is N - 1,
    power(X, N1, R1),
    R is X * R1.

