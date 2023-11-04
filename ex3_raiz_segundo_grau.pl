raizes_eq_segundo_grau(A, B, C, R1, R2) :-
    DELTA is B * B - 4 * A * C,
    (
        DELTA > 0 ->
        R1 is (-B + sqrt(DELTA)) / (2 * A),
        R2 is (-B - sqrt(DELTA)) / (2 * A)
        ;
        DELTA =:= 0 ->
        R1 is -B / (2 * A),
        R2 is R1
    ).