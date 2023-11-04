maior_menor(X, Y, Z, MA, ME) :- 
    MA is max(X, max(Y, Z)), 
    ME is min(X, min(Y, Z)). 