decimal_para_binario(0, []).
decimal_para_binario(N, Binario) :- N > 0, Resto is N mod 2, NovoValor is N // 2, decimal_para_binario(NovoValor, RestoBinario), append(RestoBinario, [Resto], Binario).

decimal_para_octal(0, []).
decimal_para_octal(N, Octal) :- N > 0, Resto is N mod 8, NovoValor is N // 8, decimal_para_octal(NovoValor, RestoOctal), append(RestoOctal, [Resto], Octal).

decimal_para_hexadecimal(0, []).
decimal_para_hexadecimal(N, Hexadecimal) :- N > 0, Resto is N mod 16, NovoValor is N // 16, decimal_para_hexadecimal(NovoValor, RestoHexadecimal), converte_hexadecimal(Resto, DigitoHex), append(RestoHexadecimal, [DigitoHex], Hexadecimal).

converte_hexadecimal(10, 'A').
converte_hexadecimal(11, 'B').
converte_hexadecimal(12, 'C').
converte_hexadecimal(13, 'D').
converte_hexadecimal(14, 'E').
converte_hexadecimal(15, 'F').
converte_hexadecimal(N, N) :- N < 10.
