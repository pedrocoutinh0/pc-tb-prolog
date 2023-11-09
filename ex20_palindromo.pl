% Predicado para verificar se uma lista é um palíndromo
palindromo(Lista) :- reverse(Lista, ListaReversa), ListaReversa = Lista.