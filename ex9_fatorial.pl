fatorial(0, 1).
fatorial(N, Y) :-
    N > 0,
    N1 is N - 1,
    fatorial(N1, Y),
    Resultado is N * Y.