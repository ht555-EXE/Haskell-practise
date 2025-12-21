small :: Ord a => [a] -> a
small [x] = x
small (x:e:xs)
    | x < e = small (x:xs)
    | x > e = small (e:xs)
    | otherwise = x

main :: IO ()
main = print(small [1,2,4,8,-1,12])