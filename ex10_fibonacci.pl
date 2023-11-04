fibonacci_series(N) :-
    N >= 0,
    fibonacci_series(N, 0, 1).

fibonacci_series(0, A, _) :-
    write(A).
fibonacci_series(N, A, B) :-
    N > 0,
    write(A), write(' '),
    Soma is A + B,
    N1 is N - 1,
    fibonacci_series(N1, B, Soma).