% Regra para calcular produto escalar
produtoEscalar([], [_|_], 0).
produtoEscalar([_|_], [], 0).
produtoEscalar([], [], 0).
produtoEscalar([H1|T1], [H2|T2], P) :- produtoEscalar(T1, T2, P1), P is (H1 * H2 + P1).