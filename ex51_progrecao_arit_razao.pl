% Regra para gerar uma progressão aritmética
progressaoAritmetica(Primeiro, Razao, N, Termos) :-
    progressaoAritmeticaAux(Primeiro, Razao, N, [], TermosReversos),
    reverse(TermosReversos, Termos).

% Regra auxiliar para gerar uma progressão aritmética (recursiva)
progressaoAritmeticaAux(_, _, 0, Acumulador, Acumulador).
progressaoAritmeticaAux(Atual, Razao, N, Acumulador, Termos) :-
    NovoTermo is Atual + Razao,
    NovoN is N - 1,
    progressaoAritmeticaAux(NovoTermo, Razao, NovoN, [Atual | Acumulador], Termos).