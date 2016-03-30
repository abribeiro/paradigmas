import Data.Char

-- Trabalho 3 Haskell 
-- Alessandro Bueno Ribeiro


-- 1 - Defina uma função recursiva que receba uma lista de números inteiros e produza uma nova lista com cada número elevado ao quadrado.
numQuad :: [Int] -> [Int] 
numQuad [] = []
numQuad (x:xs) = x^2 : numQuad xs


-- 2- Escreva uma função recursiva que receba uma lista de nomes e adicione a string "Sr. " no início de cada nome.

addSr :: [String] -> [String]
addSr [] = []
addSr s = ("Sr. " ++ (head s)) : addSr (tail s)

addSrmap :: [String] -> [String]
addSrmap [] = []
addSrmap x = map ("Sr. " ++ ) x

-- 3 - Crie uma função recursiva que receba uma string e retorne o número de espaços nela contidos

numEspacos :: String -> Int 
numEspacos [] = 0
numEspacos (x:xs) | x == ' ' = 1 
				  | otherwise = numEspacos xs
				  
-- 4 - Escreva uma função recursiva que, dada uma lista de números, calcule 3*n^2 + 2/n + 1 para cada número n da lista.

auxFunc :: Float -> Float
auxFunc n = (3*(n^2)) + (2/n) + 1 

mapfunc :: [Float] -> [Float]
mapfunc [] = []
mapfunc (x:xs) = (auxFunc x) : mapfuncxy xs


-- 5 - Escreva uma função recursiva que, dada uma lista de números, selecione somente os que forem negativos.

-- 6 - Defina uma função não-recursiva que receba uma string e retire suas vogais, conforme os exemplos abaixo.

-- > semVogais "andrea"
--"ndr"
-- > semVogais "xyz"
-- "xyz"
-- > semVogais "ae"
-- ""





-- 8- Defina uma função não-recursiva que receba uma string, possivelmente contendo espaços, e que retorne outra string substituindo os demais caracteres por '-', mas mantendo os espaços. Exemplos:

-- > codifica "Rio Grande do Sul"
-- "--- ------ -- ---"
-- > codifica ""
-- ""

--9- Defina uma função recursiva que resolva o mesmo problema do exercício anterior.


--codifica :: String -> String
--codifica []=[]
--codifica (x:xs) = if (x /= ' ') then x = '-' else x = ' ' : codifica xs

--10- Crie uma função recursiva charFound :: Char -> String -> Bool, que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:

-- > charFound 'a' ""  
-- False  
-- > charFound 'a' "uau"  
-- True  

charFound :: Char -> String -> Bool
charFound _ "" = False -- percorre lista e não encontra o caracter
charFound x y = if x == (head y) then True else charFound x (tail y)

-- 11 -Defina uma função recursiva que receba uma lista de coordenadas de pontos 2D e desloque esses pontos em 2 unidades, conforme o exemplo abaixo:

-- > translate [(0.1,0.2), (1.1,6), (2,3.1)]--
-- [(2.1,2.2),(3.1,8.0),(4.0,5.1)]