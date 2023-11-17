% Predicado para adicionar uma lista à outra
adicionar_lista(Lista1, Lista2, Resultado) :-
    append(Lista1, Lista2, Resultado).
