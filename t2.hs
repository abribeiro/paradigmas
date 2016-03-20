

-- Para fazer os exercícios abaixo, consulte os slides de introdução a Haskell. Em especial, estude funções de alta 
-- ordem (map, filter, etc.) e funções anônimas, que estão no final dos slides.

-- Crie uma função somaQuad :: Int -> Int -> Int que calcule a soma dos quadrados de dois números x e y.

somaQuad :: Int -> Int -> Int
somaQuad 
--Crie uma função hasEqHeads :: [Int] -> [Int] -> Bool que verifique se 2 listas possuem o mesmo primeiro elemento. Use o operador lógico '==' para verificar igualdade.
hasEqHeads :: [Int] -> [Int] -> Bool 
hasEqHeads [] [] = True
hasEqHeads (x:_) (y:_) = if x == y then True else False
--Escreva uma função que receba uma lista de nomes e adicione a string "Sr. " no início de cada nome.
addSR :: [String] -> [String]
addSR [] = []
addSR s = ("Sr. " ++ (head s)) : htmlListItems (tail s)

--Crie uma função que receba uma string e retorne o número de espaços nela contidos. Dica: aplique 2 funções consecutivamente.

--Escreva uma função que, dada uma lista de números, calcule 3*n^2 + 2/n + 1 para cada número n da lista. Dica: defina uma função anônima.

auxFunc :: Int -> Int
auxFunc n = ((3*(n^2)) + (2/n) + 1)

mapfuncxy :: [Int] -> [Int]
mapfuncxy [] = []
mapfuncxy (x:xs) = (auxFunc x) : mapfuncxy xs

--Escreva uma função que, dada uma lista de números, selecione somente os que forem negativos.

--Escreva uma função que receba uma lista de números e retorne somente os que estiverem entre 1 e 100, inclusive. Dica 1: use uma função anônima. Dica 2: use o operador '&&' para expressar um 'E' lógico.


--Escreva uma função que, dada uma lista de idades de pessoas no ano atual, retorne uma lista somente com as idades de quem nasceu depois de 1970. Para testar a condição, sua função deverá subtrair a idade do ano atual.

--Escreva uma função que receba uma lista de números e retorne somente aqueles que forem pares.

todosPares :: [Int] -> Bool
todosPares [] = True
todosPares (x:xs) | (mod x 2 == 1) = False -- se o resto da divisão por 2 for 1 é impar
				  | otherwise = todosPares xs 

--Crie uma função charFound :: Char -> String -> Bool que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:

--> charFound 'a' ""  
--False  
--> charFound 'a' "uau"  
--True  
--A função takeWhile :: (a -> Bool) -> [a] -> [a] é uma função de alta ordem. Ela recebe uma função condicional e uma lista, retornando o "menor prefixo" (isto é, porção inicial) da lista que satisfaça a condição dada. Teste os exemplos abaixo no GHCi e depois crie um novo exemplo:
--/
--> takeWhile (< 5) [1,2,3,4,5]
--> takeWhile (/=' ') "Fulana de Tal"
--Obs.: Este exercício deve ser entregue em forma de comentário.

charFound :: Char -> String -> Bool
charFound _ "" = False -- percorre lista e não encontra o caracter
charFound x y = if x == (head y) then True else charFound x (tail y)


--Crie uma função que receba uma lista de nomes e retorne outra lista com somente aqueles nomes que terminarem com a letra 'a'.