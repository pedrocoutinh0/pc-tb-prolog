imprimir_serie(N) :- N =< 100, write(N), nl, NovoValor is N + 1, imprimir_serie(NovoValor).
imprimir_serie(N) :- N > 100.
