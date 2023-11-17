% Regra para gerar uma progressão geométrica
progressaoGeometrica(Primeiro, Razao, N, Termos) :-
    progressaoGeometricaAux(Primeiro, Razao, N, [], TermosReversos),
    reverse(TermosReversos, Termos).

% Regra auxiliar para gerar uma progressão geométrica (recursiva)
progressaoGeometricaAux(_, _, 0, Acumulador, Acumulador).
progressaoGeometricaAux(Atual, Razao, N, Acumulador, Termos) :-
    NovoTermo is Atual * Razao,
    NovoN is N - 1,
    progressaoGeometricaAux(NovoTermo, Razao, NovoN, [Atual | Acumulador], Termos).
