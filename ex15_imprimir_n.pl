imprimir_numeros(N) :- imprimir_numeros_aux(0, N).

imprimir_numeros_aux(X, N) :-
    X =< N,
    write(X), nl,
    NovoX is X + 1,
    imprimir_numeros_aux(NovoX, N).