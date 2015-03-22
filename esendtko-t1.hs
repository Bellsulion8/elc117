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
		

--Ex8 Reescreva a função anterior sem recursão, usando outras funções pré-definidas já vistas em aula:

charFound2 :: Char -> String -> Bool
charFound2 x y
		| filter(== x) y == [x]		=	True
		| otherwise					=	False

--Ex9 Use a função de alta ordem 'zipWith' para produzir uma função que obtenha as diferenças, par a par, dos elementos de duas listas. Por exemplo: para listas de entrada [1,2,3,4] e [2,2,1,1], o resultado será [-1,0,2,3] 

calc_dif :: [Int] -> [Int] -> [Int]
calc_dif x y = zipWith (-)(x)(y)

--Funções de Alta Ordem

--Ex1 Dada uma lista de números, calcular 2*n+1 para cada número n contido na lista:

calcula :: [Int] -> [Int]
calcula x =  map(+1)(map(*2) x)

--Ex2 Dadas duas listas X e Y de números inteiros, calcular 4*x+2*y+1 para cada par de números x e y pertencentes às listas:

calcula2 :: [Int] -> [Int] -> [Int]
calcula2 x y = map(+1)(zipWith(+)(map(*4)x)(map(*2)y))

--Ex3 Dada uma lista de strings, produzir outra lista com strings de 10 caracteres, usando o seguinte esquema: strings de entrada com mais de 10 caracteres são truncadas, strings com até 10 caracteres são completadas com '.' até ficarem com 10 caracteres:


--lista_str :: [String] -> [String]
--lista_str x 


--Ex4 Dada uma lista de idades, selecionar as que são maiores que 20 e, para cada uma, calcular o ano de nascimento correspondente (aproximado, considerando o ano atual):

maior_20 :: [Int] -> [Int]
maior_20 x = map(2015-)(filter(>20)x)
		
		
