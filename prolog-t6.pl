
 repete(0, _, []).
  
 repete(N, C, L) :- 

   N > 0,
    
   L = [C | T],
 
   N1 is N - 1,
    
 repete(N1, C, T).



% 1. Defina um predicado zeroInit(L) que é verdadeiro se L for uma lista que inicia com o número 0 (zero). Exemplo de uso:

 zeroInit(L) :-  L = [H|T], H=0.
   

  

% 2. Defina um predicado has5(L) que é verdadeiro se L for uma lista de 5 elementos. Resolva este exercício sem usar um predicado auxiliar.

 has5(L). 
   L = [N | T] :-
   N=5,
  
 has5([N-1] | T]). 

   
 hasN (L):-
   L =[N|T]
   
 hasN (N-1|T).


% 3. Defina um predicado hasN(L,N) que é verdadeiro se L for uma lista de N elementos.

% 4. Defina um predicado potN0(N,L), de forma que L seja uma lista de potências de 2, com expoentes de N a 0. 

potencia(N, L) :- A is 0, potenciaa(A, N, L).

potenciaa(_, 0, []).
potenciaa(M, N, [H|T]) :- H is 2^M, M1 is M+1, N1 is N-1, potenciaa(M1, N1, T).

% 5. Defina um predicado zipmult(L1,L2,L3), de forma que cada elemento da lista L3 seja o produto dos elementos de L1 e L2 na mesma posição do elemento de L3. 

zipmult([],[],[0]).
zipmult([H|T],[H1|T1],[H2|T2]) :- H2 is H  * H1, zipmult(T,T1,T2).

% 6. Defina um predicado potencias(N,L), de forma que L seja uma lista com as N primeiras potências de 2, sendo a primeira 2^0 e assim por diante, conforme o exemplo abaixo:

%7. Defina um predicado positivos(L1,L2), de forma que L2 seja uma lista só com os elementos positivos de L1, conforme o exemplo abaixo:

positivos([],[]).
positivos([H1|T1],[H2|T2]) :- H1 > 0, H2 is H1, positivos(T1,T2).
positivos([_|T1],L) :- positivos(T1,L).

%8. Considere que L1 e L2 sejam permutações de uma lista de elementos distintos, sem repetições. Sabendo disso, defina um predicado mesmaPosicao(A,L1,L2) para verificar se um elemento A está na mesma posição nas listas L1 e L2. Exemplo de uso:

mesmaPosicao(_,[],[]) :- false.
mesmaPosicao(A,[H1|_],[H2|_]) :- A = H1, H1 = H2, true.
mesmaPosicao(A,[_|T1],[_|T2]) :- mesmaPosicao(A,T1,T2).

%9. Dada uma lista de N alunos, deseja-se escolher NP alunos (NP < N) para formar uma comissão. Para isso, defina um predicado comissao(NP,LP,C), que permita gerar as possíveis combinações C com NP elementos da lista LP. Exemplo:

% 10. (Adaptado de OBI2006-F1N1) Tem-se N azulejos 10cm x 10cm e, com eles, deve-se montar um conjunto de quadrados de modo a utilizar todos os azulejos dados, sem sobrepô-los. Inicialmente, deve-se montar o maior quadrado possível; então, com os azulejos %que sobraram, deve-se montar o maior quadrado possível, e assim sucessivamente. Por exemplo, se forem dados 31 azulejos, o conjunto montado terá 4 quadrados. Para resolver este problema, você deverá definir um predicado azulejos(NA, NQ), de forma que %NQ seja o número de quadrados que se deve montar com NA azulejos. Dica: use os predicados sqrt e floor, pré-definidos em Prolog.