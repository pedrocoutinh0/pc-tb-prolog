% Predicado para calcular o MDC
mdc(X, 0, X) :- X > 0.
mdc(X, Y, Resultado) :- Y > 0, Resto is X mod Y, mdc(Y, Resto, Resultado).

% Predicado para calcular o MMC
mmc(X, Y, Resultado) :- mdc(X, Y, MDC), Resultado is abs(X * Y) // MDC.