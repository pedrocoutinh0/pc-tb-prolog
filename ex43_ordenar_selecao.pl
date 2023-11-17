% Regra para encontrar o menor elemento em uma lista
encontrarMenor([X], X).
encontrarMenor([H | T], Menor) :-
    encontrarMenor(T, MenorResto),
    (H < MenorResto -> Menor = H ; Menor = MenorResto).

% Regra para remover a primeira ocorrência de um elemento em uma lista
removerElemento(_, [], []).
removerElemento(X, [X | T], T).
removerElemento(X, [H | T], [H | Resto]) :-
    X \= H,
    removerElemento(X, T, Resto).

% Regra para ordenar uma lista pelo método da seleção
ordenarSelecao([], []).
ordenarSelecao(Lista, [Menor | RestoOrdenado]) :-
    encontrarMenor(Lista, Menor),
    removerElemento(Menor, Lista, ListaRestante),
    ordenarSelecao(ListaRestante, RestoOrdenado).

