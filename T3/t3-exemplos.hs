import Data.Char

--1

--exemplos all

verIdades :: [Int] -> Bool
verIdades age = all(>=18)age

pagamentos :: Int -> [Int] -> Bool
pagamentos val pag
			| all(==val)pag = True
			| otherwise  = False 

--exemplos any

verResp :: [Int] -> Bool
verResp age = any(>=18)age

checkLv :: Int -> [Int] -> Bool
checkLv val lv
			| any(>=val)lv = True
			| otherwise    = False

--2

userName :: String -> String
userName str = (take 1  $ head $ words $ map (toLower)str) ++ (last $ words $ map(toLower)str)

func :: [Int] -> [Int]
func var = filter (> 10) $ map (*2) [2..10]


--3

somaTail :: [[Int]] -> [Int]
somaTail lis = map (sum . tail)lis

oddSquareSum :: Integer  
oddSquareSum = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..] 