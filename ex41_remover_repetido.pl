% Predicado para remover elementos repetidos

Repetidos(_, [], 0).

Repetidos(X, [X|T], C1) :- Repetidos(X, T, C), C1 is C + 1.  

Repetidos(X, [_|T], C) :- Repetidos(X, T, C).

List(_, [], []).
List(L, [H|T], [[H, C]|L2]) :- List(L, T, L2), Repetidos(H, L, C).

List(L, L1) :- List(L, L, L1).