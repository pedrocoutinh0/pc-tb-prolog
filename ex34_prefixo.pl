% Predicado para verificar se uma lista é prefixo de outra
eh_prefixo(ListaPrefixo, Lista) :-
    append(ListaPrefixo, _, Lista).