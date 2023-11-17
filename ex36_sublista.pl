% Predicado para verificar se uma lista é sublista de outra
eh_sublista(Sublista, Lista) :-
    append(_, Restante, Lista),  % Divide a lista em duas partes: prefixo e o restante
    append(Sublista, _, Restante).