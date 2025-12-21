g :: [a] -> [[a]]
g xs = 
    [take i xs | i <- [0..length xs]]

main :: IO()
main = print(g[1,2,3,4,5])
