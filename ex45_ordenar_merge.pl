% Regra para dividir uma lista em duas metades
dividir(Lista, Metade1, Metade2) :-
    length(Lista, Len),
    Meio is Len // 2,
    length(Metade1, Meio),
    append(Metade1, Metade2, Lista).

% Regra para mesclar duas listas ordenadas
mesclar([], Lista, Lista).
mesclar(Lista, [], Lista).
mesclar([H1 | T1], [H2 | T2], [H1 | Resto]) :-
    H1 =< H2,
    mesclar(T1, [H2 | T2], Resto).
mesclar([H1 | T1], [H2 | T2], [H2 | Resto]) :-
    H1 > H2,
    mesclar([H1 | T1], T2, Resto).

% Regra principal para o Merge Sort
mergeSort([], []).
mergeSort([X], [X]).
mergeSort(Lista, Ordenada) :-
    dividir(Lista, Metade1, Metade2),
    mergeSort(Metade1, Ordenada1),
    mergeSort(Metade2, Ordenada2),
    mesclar(Ordenada1, Ordenada2, Ordenada).

