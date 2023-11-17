% Regra para inserir um elemento em uma lista ordenada
inserirElemento(Valor, [], [Valor]).
inserirElemento(Valor, [H | T], [Valor, H | T]) :- Valor =< H.
inserirElemento(Valor, [H | T], [H | Resto]) :-
    Valor > H,
    inserirElemento(Valor, T, Resto).

% Regra para ordenar uma lista pelo método da inserção
ordenarInsercao([], []).
ordenarInsercao([H | T], ListaOrdenada) :-
    ordenarInsercao(T, ListaOrdenadaRestante),
    inserirElemento(H, ListaOrdenadaRestante, ListaOrdenada).
