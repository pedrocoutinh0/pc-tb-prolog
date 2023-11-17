% Predicado para calcular a média de uma lista
media(Lista, Media) :- length(Lista, Tamanho), sum_list(Lista, Soma), Media is Soma / Tamanho.

% Predicado para calcular o desvio médio de uma lista
desvio_medio(Lista, DesvioMedio) :-
    media(Lista, Media),
    maplist(diff_quadrado(Media), Lista, DiferencasQuadradas),
    sum_list(DiferencasQuadradas, SomaDiferencasQuadradas),
    length(Lista, Tamanho),
    DesvioMedio is sqrt(SomaDiferencasQuadradas / Tamanho).

% Predicado para calcular a variância de uma lista
variancia(Lista, Variancia) :-
    desvio_medio(Lista, DesvioMedio),
    Variancia is DesvioMedio^2.

% Predicado para calcular o desvio padrão de uma lista
desvio_padrao(Lista, DesvioPadrao) :-
    variancia(Lista, Variancia),
    DesvioPadrao is sqrt(Variancia).

% Predicado auxiliar para calcular o quadrado da diferença
diff_quadrado(Medio, Valor, DiffQuadrado) :-
    Diff is Valor - Medio,
    DiffQuadrado is Diff * Diff.
    
% Para calcular o desvio médio, variância e desvio padrão de uma lista, você pode chamar:
% desvio_medio([1, 2, 3, 10, 11, 0, 16], DesvioMedio), variancia([1, 2, 3, 10, 11, 0, 16], Variancia), desvio_padrao([1, 2, 3, 10, 11, 0, 16], DesvioPadrao).
