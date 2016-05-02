/* 1 Defina um predicado zeroInit(L) que é verdadeiro se L for uma lista que inicia com o número 0 (zero). */
zeroInit(L):-
 L=[H|T],
 H =:= 0.

/* 2 Defina um predicado has5(L) que é verdadeiro se L for uma lista de 5 elementos. Resolva este exercício sem usar um predicado auxiliar.*/
has5(L):-
length(L, T),
T =:= 5.

/* 3 Defina um predicado hasN(L,N) que é verdadeiro se L for uma lista de N elementos.*/
hasN(L,N):-
 length(L,T),
 T =:= N.

/* 4 Defina um predicado potN0(N,L), de forma que L seja uma lista de potências de 2, com expoentes de N a 0 */
potN0(0,[1]).
potN0(N,L):-
 N > 0,
 H is 2^N,
 L = [H|T],
 I is N -1,
 potN0(I,T).

/* 5 Defina um predicado zipmult(L1,L2,L3), de forma que cada elemento da lista L3 seja o produto dos elementos de L1 e L2 na mesma posição do elemento de L3.*/
zipmult([],[],[]).
zipmult(L1,L2,L3):-
 L1=[H|T],
 L2=[R|S],
 A is H * R,
 L3 = [A|B],
 zipmult(T,S,B).

 /* 6 Defina um predicado potencias(N,L), de forma que L seja uma lista com as N primeiras potências de 2, sendo a primeira 2^0 e assim por diante,*/
potencias(0,[]).
potencias(N,L):-
 Lm is N-1,
 auxiliar1(0,Lm,L).

auxiliar1(N,N,[D]):-
 D is 2^N.
auxiliar1(N1,N2,L):-
 N2 > N1,
 L = [H|T],
 H is 2^N1,
 N is N1+1,
 auxiliar1(N,N2,T).

/* 7 Defina um predicado positivos(L1,L2), de forma que L2 seja uma lista só com os elementos positivos de L1,*/
positivos([],[]).
positivos([H|T],L):-
 H > 0, L = [H|T1],
 positivos(T,T1).
positivos([H|T],L):-
 H =< 0, positivos(T,L).

/* 8 Considere que L1 e L2 sejam permutações de uma lista de elementos distintos, sem repetições. Sabendo disso, defina um predicado mesmaPosicao(A,L1,L2) para verificar se um elemento A está na mesma posição nas listas L1 e L2. */
mesmaPosicao(A,[A],[A]).
mesmaPosicao(A,[A|_],[A|_]).
mesmaPosicao(A,[_|T1],[_|T2]):-
 mesmaPosicao(A, T1, T2).

/* 9 Dada uma lista de N alunos, deseja-se escolher NP alunos (NP < N) para formar uma comissão. Para isso, defina um predicado comissao(NP,LP,C), que permita gerar as possíveis combinações C com NP elementos da lista LP. */
comissao(0,_,[]).
comissao(N,[H|T],[H|C]) :-
 N > 0,
 A is N-1,
 comissao(A,T,C).
comissao(N,[_|T],C) :-
 N > 0,
 comissao(N,T,C).

 /* 10 Tem-se N azulejos 10cm x 10cm e, com eles, deve-se montar um conjunto de quadrados de modo a utilizar todos os azulejos dados, sem sobrepô-los. Inicialmente, deve-se montar o maior quadrado possível; então, com os azulejos que sobraram, deve-se montar o maior quadrado possível, e assim sucessivamente. Por exemplo, se forem dados 31 azulejos, o conjunto montado terá 4 quadrados. Para resolver este problema, você deverá definir um predicado azulejos(NA, NQ), de forma que NQ seja o número de quadrados que se deve montar com NA azulejos. Dica: use os predicados sqrt e floor, pré-definidos em Prolog.*/
azulejos(0,0).
azulejos(NA,NQ) :-
 NA > 0,
 Q is floor(sqrt(NA)),
 R is NA - Q*Q,
 azulejos(R,C),
 NQ is 1 + C.
