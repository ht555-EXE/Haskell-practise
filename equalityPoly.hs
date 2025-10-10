elem1 :: Eq a => a -> [a] -> Bool
elem1 a []
    = False
elem1 a (x:xs)
    | x == a = True
    | otherwise = elem1 a xs

main :: IO()
main = print(elem1 5 [10,2,4,6,5])