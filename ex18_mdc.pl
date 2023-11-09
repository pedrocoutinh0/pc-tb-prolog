mdc(X, 0, X) :- X > 0.
mdc(X, Y, Resultado) :- Y > 0, Resto is X mod Y, mdc(Y, Resto, Resultado).
