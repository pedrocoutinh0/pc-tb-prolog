prog2(1, 1).
prog2(N, P) :- N1 is N - 1, prog2(N1,  P1), P is (P1 * P1 + 1).

gerarProgressao2(1) :- prog2(1, P), write(P).
gerarProgressao2(N) :- N1 is N - 1, gerarProgressao2(N1), prog2(N, P), write(" "), write(P). 