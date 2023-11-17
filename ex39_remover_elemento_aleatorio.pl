:- use_module(library(random)).

% Predicado para remover um elemento aleatório de uma lista
remover_elemento_aleatorio(Lista, ListaSemElemento) :-
    random_member(ElementoRemovido, Lista),
    select(ElementoRemovido, Lista, ListaSemElemento).