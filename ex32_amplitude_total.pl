% Predicado para calcular a amplitude total de uma lista
amplitude_total(Lista, AmplitudeTotal) :-
    min_list(Lista, Menor),
    max_list(Lista, Maior),
    AmplitudeTotal is Maior - Menor.