% Predicado para remover elementos duplicados de uma lista
remover_duplicatas(Lista, ListaSemDuplicatas) :-
    list_to_set(Lista, ListaSemDuplicatas).