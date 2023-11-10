% Predicado para calcular a soma dos valores de uma lista
soma_lista([], 0).
soma_lista([H|T], Soma) :- soma_lista(T, SomaResto), Soma is H + SomaResto.