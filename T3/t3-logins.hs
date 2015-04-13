import Data.Char

main :: IO ()
main = do
    strcontent <- readFile "nomes.csv"
    let strlist = lines strcontent
        strnew = [x ++ userName x | x <- strlist]
    writeFile "logins.csv" (unlines strnew)

userName :: String -> String
userName str = ","++(take 1 (head(words (map (toLower)str)))) ++ (last(words (map(toLower)str)))++","

