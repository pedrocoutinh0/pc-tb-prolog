% Predicado para calcular a maior e menor diferença entre elementos consecutivos
amplitude_lista([], 0, 0).
amplitude_lista([_], 0, 0).
amplitude_lista([X, Y | Resto], Maior, Menor) :-
    Diferenca is Y - X,
    amplitude_lista([Y | Resto], MaiorResto, MenorResto),
    max_list([Diferenca, MaiorResto], Maior),
    min_list([Diferenca, MenorResto], Menor).
