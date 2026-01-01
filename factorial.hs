parfact :: Int -> Int

parfact n 
    | n >= 2 = n * parfact(n-1)
    | otherwise = 1

main :: IO()
main = print(parfact 5)