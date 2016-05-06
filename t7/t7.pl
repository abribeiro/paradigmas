
regra1(E) :- E = [f,_,_,_,_,_,_].
regra1(E) :- E = [_,f,_,_,_,_,_].
regra1(E) :- E = [_,_,f,_,_,_,_].

regra2(E) :- E = [h,g,_,_,_,_,_].
regra2(E) :- E = [_,h,g,_,_,_,_].
regra2(E) :- E = [_,_,h,g,_,_,_].
regra2(E) :- E = [_,_,_,h,g,_,_].
regra2(E) :- E = [_,_,_,_,h,g,_].
regra2(E) :- E = [_,_,_,_,_,h,g].

regra3(E) :- E = [_,l,_,_,_,_,_].
regra3(E) :- E = [_,_,l,_,_,_,_].
regra3(E) :- E = [_,_,_,l,_,_,_].
regra3(E) :- E = [_,_,_,_,l,_,_].
regra3(E) :- E = [_,_,_,_,_,l,_].

regra4(E) :- E = [m,_,_,_,_,_,_].
regra4(E) :- E = [_,_,_,_,_,_,m].

regra5(E) :- E = [_,_,_,_,p,_,_].
regra5(E) :- E = [_,_,_,_,_,p,_].
regra5(E) :- E = [_,_,_,_,_,_,p].

perm(List, [H|Perm]) :- delete(H, List, Rest), perm(Rest, Perm).
perm([],[]).

delete(X, [X|T], T).
delete(X, [H|T], [H|NT]) :- delete(X, T, NT).


% regras combinadas
casas(E) :-
	E = [_,_,_,_,_,_,_],
        Casas = [f, g, h, l, m, p,t ],
        perm(Casas, E),
        regra1(E),
	regra2(E),
        regra3(E),
	regra4(E),
	regra5(E).



%questão 1
%(A) - false. so muda ordem nas false
%(B) - ?- casas([h,g,f,l,t,p,m]).  True .
%(C) -false.
%(D) -false.
%(E) -false.




%questão 3
%3 ?- casas([h,_,_,X,_,_,_]).
%X = l ;
%X = l ;
%X = t ;
%X = t ;
%false.

%Letra C(resposta certa) = L .

%questao 4
%  (A) casas([h,_,_,_,_,p,_]).  true(2x)
%  (B) casas([_,h,_,_,_,p,_]).  true(2x)
%  (C) casas([_,_,h,_,_,p,_]).  true(4x)
%  (D) casas([_,_,_,h,_,p,_]).  true(6x)
%  (E) casas([_,_,_,_,h,p,_]).  false

%Letra E = resposta certa



%http://olimpiada.ic.unicamp.br/passadas/pdf/provas/ProvaOBI2007_inic_f1n1.pdf
%meu primeiro computador
% o programa nao responde todos os problemas pois bugou algumas impressoes como quando comeca usando a funcao write mas respondeu 3

numeros(X,Num):- (X == "a",Num is 10);
		             (X == "e"),Num is 0,write(Num);
                 (X == "b" ,Num is -1);
                 (X == "c", Num is -2);
                 (X == "d",Num is 1).



teste([],0).
teste([H|T],Num):- numeros(H,Num),aux(T,Num).


aux([],0).
aux([H|T],Num):- (H == "a"),Num is 10,       aux(T,Num);
		 (H == "e"), write(Num),     aux(T,Num);
                 (H == "b") ,Num2 is Num -1, aux(T,Num2);
                 (H == "c"), Num2 is  Num -2,aux(T,Num2);
                 (H == "d"),Num2 is Num +1,  aux(T,Num2).


%questao 16 -- 11 ?- teste(["a","e","b","e","b","e","b","e"],Num).
%10987
%(B) “A-E-B-E-B-E-B-E”.


%questao 17  -- 23 ?- teste(["d","e","d","d","e","d","d","e"],Num).
%135
%(E) “D-E-D-D-E-D-D-E”.


%questao 20 -- 28 ?- teste(["c","b","c","c","e"],Num).
%-7
%(E) “C-B-C-C”.







