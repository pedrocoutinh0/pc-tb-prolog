% Regra para inverter uma lista
inverter(Lista, Invertida) :-
    inverterAux(Lista, [], Invertida).

% Regra auxiliar para inverter a lista
inverterAux([], Acumulador, Acumulador).
inverterAux([H | T], Acumulador, Invertida) :-
    inverterAux(T, [H | Acumulador], Invertida).

% Exemplo de uso
exemplo :-
    ListaOriginal = [1, 2, 3, 4, 5],
    inverter(ListaOriginal, ListaInvertida),
    write(ListaInvertida).
