smallest :: Ord a => [a] -> a
smallest [x] = x
smallest (x:y:xs)
    | x < y = smallest(x:xs)
    | otherwise = smallest(y:xs)

main :: IO()
main = print $ smallest [12, 17, 2, 4]