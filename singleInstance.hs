singleInstance :: (Eq a) => [a] -> [a]
singleInstance (x:xs)
    | x `elem` xs = singleInstance xs
    | otherwise = x : singleInstance xs
singleInstance [] = []


main :: IO()
main = print(singleInstance [1,2,3,3,5,3,6])