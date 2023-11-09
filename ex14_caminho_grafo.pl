% Defina as arestas do grafo
aresta(a, b).
aresta(b, c).
aresta(b, d).
aresta(c, e).
aresta(d, e).
aresta(e, f).

% Predicado para verificar se há uma aresta entre dois nós
conectado(X, Y) :- aresta(X, Y).
conectado(X, Y) :- aresta(Y, X).

% Predicado para encontrar um caminho entre dois nós
caminho(X, Y, Caminho) :- caminho_aux(X, Y, [X], Caminho).

caminho_aux(X, X, Caminho, Caminho).
caminho_aux(X, Y, Visitados, Caminho) :-
    conectado(X, Z),
    Z \== X,
    \+ member(Z, Visitados),
    caminho_aux(Z, Y, [Z|Visitados], Caminho).