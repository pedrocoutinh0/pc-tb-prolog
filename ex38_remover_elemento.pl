% Predicado para remover um elemento de uma lista
remover_elemento(Elemento, Lista, ListaSemElemento) :-
    delete(Lista, Elemento, ListaSemElemento).