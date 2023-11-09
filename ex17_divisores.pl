divisores(N) :- divisores_aux(N, 1).

divisores_aux(N, Divisor) :-
    Divisor =< N,
    (N mod Divisor =:= 0 -> write(Divisor), nl ; true),
    NovoDivisor is Divisor + 1,
    divisores_aux(N, NovoDivisor).
