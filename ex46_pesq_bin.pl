Bin(_, 0, _) :- write("Numero não encontrado").

Bin(X, S, L) :- nth(S, L, 0, N), N =:= X, write("Posição"), write(S), write("!").

Bin(X, S, L) :- nth(S, L, 0, N), N > X, S1 = (len(L) + S)/2, pesqBin(X, S1, L).

Bin(X, S, L) :- nth(S, L, 0, N), N < X, S1 = (len(L) - S)/2, pesqBin(X, S1, L).