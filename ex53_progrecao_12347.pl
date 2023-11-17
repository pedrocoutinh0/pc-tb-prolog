prog(1, 1).
prog(2, 2).
prog(N, P) :- N1 is N - 1, N2 is N - 2, prog(N1, P1), prog(N2, P2), R is (P1 - P2), P is (P1 + R + 1).

gerarProgressao(1) :- prog(1, P), write(P).
gerarProgressao(N) :- N1 is N - 1, gerarProgressao(N1), prog(N, P), write(" "), write(P).