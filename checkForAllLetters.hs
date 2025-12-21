import Data.List (nub, sort)
import Data.Char (toLower)

noSpace :: String -> String
noSpace "" = ""
noSpace (x:xs)
    | x == ' ' = noSpace xs
    | otherwise = x : noSpace xs

isPangram :: String -> Bool
isPangram x =
    sort (nub (map toLower (noSpace x))) == "abcdefghijklmnopqrstuvwxyz"

main :: IO()
main = print(isPangram "I am James Austen")