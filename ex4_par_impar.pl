par_impar(N) :-
    Resto is N mod 2,
    (Resto =:= 0 -> 
        write(N), write(' é um número par.');
        write(N), write(' é um número ímpar.')
    ).