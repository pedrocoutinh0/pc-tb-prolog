% Exemplo de uso do select_max/3
dois_maiores_valores(Lista, Maior1, Maior2) :-
    max_list(Lista, Maior1),
    select_max(Lista, Maior1, Maior2).

% Predicado auxiliar para selecionar o segundo maior valor
select_max(Lista, Maior1, Maior2) :-
    delete(Lista, Maior1, ListaSemMaior1),
    max_list(ListaSemMaior1, Maior2).