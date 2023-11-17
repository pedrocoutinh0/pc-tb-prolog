% Regra para calcular e gerar todas as combinações de uma lista
combinacoes(Lista, Combinacoes) :-
    findall(Comb, subset(Lista, Comb), Combinacoes).

% Regra auxiliar para escrever as combinações
escreverCombinacoes([]).
escreverCombinacoes([Comb | Resto]) :-
    write(Comb), nl,
    escreverCombinacoes(Resto).
