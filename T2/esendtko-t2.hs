--Ex1:

geraPotencias :: Int -> [Int]
geraPotencias n = [2^n | n <- [n, n-1 .. 0]]

--Ex2

addSuffix :: String -> [String] -> [String]
addSuffix suf str = [(str++suf) | str <- str]

--Ex3

anosDeNascimento :: [Int] -> [Int] 
anosDeNascimento y = [2015-y |  y<-y ,y>20]

