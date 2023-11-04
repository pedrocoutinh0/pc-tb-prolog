entre(X, A, B) :-
    (X >= A, X =< B) ; (X >= B, X =< A).