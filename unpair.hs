unpair :: [(a, b)] -> ([a], [b])
unpair [] = ([], [])
unpair ((x, y) : rest) = 
    let 
        (xs, ys) = unpair rest
    in 
        (x : xs, y : ys)

main :: IO ()
main = print (unpair  [(1,'A'),(2,'B'),(3,'C')])