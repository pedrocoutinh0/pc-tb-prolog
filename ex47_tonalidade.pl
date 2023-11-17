% Regra para transpor uma nota musical
transporNota(Nota, TonalidadeAtual, TonalidadeDesejada, NotaTransposta) :-
    % Defina os intervalos para cada tonalidade (em semitons)
    intervalo("C", "D", 2),
    intervalo("D", "E", 2),
    intervalo("E", "F", 1),
    intervalo("F", "G", 2),
    intervalo("G", "A", 2),
    intervalo("A", "B", 2),
    intervalo("B", "C", 1),

    % Calcula o intervalo entre as tonalidades
    intervalo(TonalidadeAtual, TonalidadeDesejada, Intervalo),

    % Transpõe a nota baseada no intervalo
    intervalo(Nota, NotaTransposta, Intervalo).

% Regra para calcular o intervalo entre duas notas
intervalo(Nota1, Nota2, Intervalo) :-
    nota(Nota1, Posicao1),
    nota(Nota2, Posicao2),
    Intervalo is Posicao2 - Posicao1.

% Tabela de notas naturais
nota("C", 1).
nota("D", 2).
nota("E", 3).
nota("F", 4).
nota("G", 5).
nota("A", 6).
nota("B", 7).

% Exemplo de uso
exemplo :-
    NotaOriginal = "C",
    TonalidadeAtual = "C",
    TonalidadeDesejada = "G",
    transporNota(NotaOriginal, TonalidadeAtual, TonalidadeDesejada, NotaTransposta),
    write('Nota transposta de '), write(NotaOriginal), write(' em '), write(TonalidadeAtual),
    write(' para '), write(TonalidadeDesejada), write(' é '), write(NotaTransposta).
