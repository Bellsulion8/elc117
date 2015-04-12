import Data.Char

--Ex. 1

firstName :: String -> String
firstName [] = []
firstName str
		  | head str == ' ' = []
		  | otherwise = head str : firstName (tail str)


--Ex. 2

firstName2 :: String -> String
firstName2 str = head(words str)


--Ex. 3

lastName :: String -> String
lastName str = last(words str)

--Ex. 4

userName :: String -> String
userName str = (take 1 (head(words (map (toLower)str)))) ++ (last(words (map(toLower)str)))

--Ex. 5

encodeName :: String -> String
encodeName str = 
	let d c
		|c == 'a' = "4"
		|c == 'e' = "3"
		|c == 'i' = "1"
		|c == 'o' = "0"
		|c == 'u' = "00"
		|otherwise = [c]
	in concat(map (d) str)

--Ex. 6

isElem :: Int -> [Int] -> Bool 
isElem d el
		| filter(==d)el == []	=	False
		| otherwise	=	True

--Ex. 7

contVogal :: String -> Int
contVogal str 
		|str == [] = 0
		|toLower(head str) `elem` "aeiou" = 1 + contVogal(tail(str))
		|otherwise = contVogal(tail(str))

--Ex. 8

contCons :: String -> Int
contCons str = length [ x | x <- str, ((toLower x) `notElem` "aeiou ")]

--Ex. 9

isInt :: String -> Bool
isInt str
		| (length(filter (`elem` ['0','1'..'9']) str) == length (str)) = True
		| otherwise = False

--Ex. 10

strToInt :: String -> Int 
strToInt str = sum (zipWith (*) (map (10^) [length str - 1, length str - 2..])  (map (digitToInt) (str)))