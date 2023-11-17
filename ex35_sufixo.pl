% Predicado para verificar se uma lista é sufixo de outra
eh_sufixo(ListaSufixo, Lista) :-
    append(_, ListaSufixo, Lista).