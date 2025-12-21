check :: Eq a => [a] -> a -> Bool
check [] x = False
check (a:as) x
    | x == a = True
    | otherwise = check as x

