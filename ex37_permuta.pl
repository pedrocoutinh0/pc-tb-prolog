% Predicado para permutar uma lista
permutacao([],[]).

permutacao(L, [H|T]) :- seleciona(H, L, RL), permutacao(RL, T).

seleciona(E, [E|R], R).
seleciona(E, [O|R], [O|RS]) :- seleciona(E, R, RS).