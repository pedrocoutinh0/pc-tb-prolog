% Regra para calcular e gerar todas as permutações de uma lista
permutacoes(Lista, Permutacoes) :-
    findall(Perm, permutation(Lista, Perm), Permutacoes).

% Regra auxiliar para escrever as permutações
escreverPermutacoes([]).
escreverPermutacoes([Perm | Resto]) :-
    write(Perm), nl,
    escreverPermutacoes(Resto).