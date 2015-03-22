--Ex1 Escreva uma função hasEqHeads :: [Int] -> [Int] -> Bool que verifica se as 2 listas possuem o mesmo primeiro elemento. Exemplo de uso:

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads lis1 lis2 = (head lis1) == (head lis2)

--Ex3 Escreva uma função recursiva add10, que adicione a constante 10 a cada elemento de uma lista, produzindo outra lista.:

add10 :: [Int] -> [Int]
add10 [] = []
add10 lis1 = (head lis1) + 10 : add10 (tail lis1)

--Ex4 Escreva uma função recursiva addComma, que adicione uma vírgula no final de cada string contida numa lista. Dica: (1) Strings são listas de caracteres. (2) Para concatenar listas, use o operador ++ :

addComma :: [String] -> [String]
addComma [] = []
addComma lis1 = (++",")(head lis1) : addComma (tail lis1)

--Ex5Ex3 Refaça os 2 exercícios anteriores usando a função de alta ordem 'map':

add10_2 :: [Int] -> [Int]
add10_2 lis1 = map (10+) lis1

--Ex5Ex4 Refaça os 2 exercícios anteriores usando a função de alta ordem 'map' :

addComma2 :: [String] -> [String]
addComma2 str = map (++",") str

--Ex6 Crie uma função htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas como itens de lista em HTML. Dica: use map e defina uma função auxiliar a ser aplicada a cada elemento. Exemplo de uso da função:

htmlListItems :: [String] -> [String]
htmlListItems [] = []
htmlListItems lis = map(++"</LI>") (map ("<LI>"++) lis)

--Ex7 Crie uma função recursiva charFound :: Char -> String -> Bool, que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:

charFound :: Char -> String -> Bool
charFound x y 
		| y == []		 	=  False
		| x == (head y)		=	True
		| otherwise 		= 	charFound x (tail y)
		
		
