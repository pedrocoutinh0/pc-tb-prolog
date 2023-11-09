imprimir_numeros_inverso(N) :- imprimir_numeros_inverso_aux(N, 0).

imprimir_numeros_inverso_aux(X, Limite) :-
    X >= Limite,
    write(X), nl,
    NovoX is X - 1,
    imprimir_numeros_inverso_aux(NovoX, Limite).