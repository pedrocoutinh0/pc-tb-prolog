% Regra para verificar se duas listas são permutações uma da outra
saoPermutacoes(Lista1, Lista2) :-
    length(Lista1, Tamanho1),
    length(Lista2, Tamanho2),
    Tamanho1 =:= Tamanho2,
    contarElementos(Lista1, Contagem1),
    contarElementos(Lista2, Contagem2),
    Contagem1 = Contagem2.

% Regra para contar a ocorrência de cada elemento em uma lista
contarElementos([], []).
contarElementos([H | T], [(H, N) | Resto]) :-
    contarElementos(T, Resto),
    contarOcorrencias(H, T, N).

% Regra para contar as ocorrências de um elemento em uma lista
contarOcorrencias(_, [], 0).
contarOcorrencias(X, [X | T], N) :-
    contarOcorrencias(X, T, N1),
    N is N1 + 1.
contarOcorrencias(X, [Y | T], N) :-
    X \= Y,
    contarOcorrencias(X, T, N).
