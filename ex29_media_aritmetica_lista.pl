% Predicado para calcular a soma dos elementos de uma lista
soma_lista([], 0).
soma_lista([H|T], Soma) :- soma_lista(T, SomaResto), Soma is H + SomaResto.

% Predicado para calcular a média aritmética de uma lista
media_aritmetica(Lista, Media) :-
    length(Lista, Tamanho),
    soma_lista(Lista, Soma),
    Tamanho > 0,
    Media is Soma / Tamanho.