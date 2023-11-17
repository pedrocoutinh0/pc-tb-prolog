% Regra para calcular a soma dos primeiros N números inteiros
somaDosPrimeirosN(N, Soma) :-
    N > 0,
    N1 is N - 1,
    somaDosPrimeirosN(N1, SomaRestante),
    Soma is SomaRestante + N.
somaDosPrimeirosN(0, 0).
