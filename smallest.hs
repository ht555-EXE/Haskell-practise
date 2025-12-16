smallest :: [Int] -> Int
smallest [x] = x
smallest (x:y:zs)
    | x < y = smallest(x:zs)
    | otherwise = smallest(y:zs)

main :: IO()
main = print $ smallest [12, 17, 2, 4]